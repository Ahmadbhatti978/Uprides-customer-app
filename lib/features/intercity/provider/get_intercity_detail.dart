import 'dart:async';
import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart'; // Import fpdart for Either and fold
// import 'package:http/src/response.dart'; // No longer needed directly
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/failure/failure.dart';
// import '../../../util/api/api_helper.dart'; // No longer needed directly
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart'; // Import the Request helper
import '../../../util/variable.dart';
import '../../home/model/compute_routes.dart';
import '../../home/repo/google_place_repo.dart';
import '../model/select_ride.dart';
import '../model/select_trip.dart';
import 'select_trip.dart';
part 'get_intercity_detail.g.dart';

@riverpod
Future<SelectRide> getIntercityRideDetail(final Ref ref, final String rideID) async {
  final SelectTrip sectedTRip = ref.watch(selectedTripProvider);

  // Ensure currentCoordinate and locations are not null before proceeding
  if (currentCoordinate.latitude == null ||
      currentCoordinate.longitude == null ||
      sectedTRip.pickupLocation?.latitude == null ||
      sectedTRip.pickupLocation?.longitude == null ||
      sectedTRip.dropoffLocation?.latitude == null ||
      sectedTRip.dropoffLocation?.longitude == null) {
    log('Error: Missing coordinate data for intercity detail request.');
    return  Future.error(
      ErrorDetails(message: 'Missing coordinate data (current, pickup, or dropoff)', stackTrace: StackTrace.current, route: 'getIntercityRideDetail'),
    );
  }

  final Map<String, Object> payload = <String, Object>{'current_location': currentCoordinate.toJson(), 'ride_id': rideID};

  final Either<ErrorDetails, SelectRide> initialResult = await Request.post<SelectRide>(
    path: Api.intracityDetails,
    payload: payload,
    jsonAsString: true,
    onSuccess: (final json) {
      final String responseBody = json as String;
      log(responseBody);
      // Simply parse the response and return
      return selectRideFromJson(responseBody);
    },
  );

  return initialResult.fold(
    (final ErrorDetails error) {
      log('Error fetching intercity details: ${error.message}', error: error.error, stackTrace: error.stackTrace);
      return Future.error(error);
    },
    (final SelectRide data) async {
      // Ensure parsed data has required locations before computing routes
      if (data.ride?.pickupLocation?.latitude == null ||
          data.ride?.pickupLocation?.longitude == null ||
          data.ride?.dropoffLocation?.latitude == null ||
          data.ride?.dropoffLocation?.longitude == null) {
        log('Error: Missing pickup/dropoff location in parsed ride details from API.');
        throw Exception('Incomplete ride details received from API (missing locations)');
      }

      // --- Compute additional routes using GooglePlaceRepo ---
      // 1. Pickup Location (User) to Pickup City (Ride)
      final Either<ErrorDetails, ComputeRoutes> plPcRoute = await GooglePlaceRepo.computeRoutes(
        origin: sectedTRip.pickupLocation!, // Already checked for null
        destination: data.ride!.pickupLocation!, // Already checked for null
      );

      // 2. Dropoff City (Ride) to Dropoff Location (User)
      final Either<ErrorDetails, ComputeRoutes> dlDcRoute = await GooglePlaceRepo.computeRoutes(
        destination: data.ride!.dropoffLocation!, // Already checked for null
        origin: sectedTRip.dropoffLocation!, // Already checked for null
      );

      // Update the data object with computed distances using fold
      final SelectRide updatedData = dlDcRoute.fold(
        (final ErrorDetails error) {
          log('Error computing dlDcRoute: ${error.message}');
          return data.copyWith(dlDcDistance: 0);
        },
        (final ComputeRoutes computeRoutes) {
          final int? distance = computeRoutes.routes?.firstOrNull?.distanceMeters;
          return data.copyWith(dlDcDistance: distance ?? 0);
        },
      );

      return plPcRoute.fold(
        (final ErrorDetails error) {
          log('Error computing plPcRoute: ${error.message}');
          return updatedData.copyWith(plPcDistance: 0);
        },
        (final ComputeRoutes computeRoutes) {
          final int? distance = computeRoutes.routes?.firstOrNull?.distanceMeters;
          return updatedData.copyWith(plPcDistance: distance ?? 0);
        },
      );
    },
  );
}
