import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart'; // Import fpdart for Either
// import 'package:http/src/response.dart'; // No longer needed directly
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/failure/failure.dart';
// import '../../../util/api/api_helper.dart'; // No longer needed directly
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart'; // Import the Request helper
import '../model/intercity_rides.dart';
import '../model/select_trip.dart';
import 'select_trip.dart';

part 'get_intercity_ride.g.dart';

@riverpod
Future<IntercityRides> getIntercityRide(final Ref ref) async {
  final SelectTrip sectedTRip = ref.watch(selectedTripProvider);
  final Map<String, dynamic> payload = sectedTRip.toJson();

  // Log the payload before sending
  log(payload.toString(), name: 'getIntercityRide Payload');

  // Use Request.post helper
  final Either<ErrorDetails, IntercityRides> result = await Request.post<IntercityRides>(
    path: Api.intracity,
    payload: payload,
    jsonAsString: true, // Because intercityRidesFromJson expects a String
    onSuccess: (final json) {
      // json is the raw response body string because jsonAsString is true
      final String responseBody = json as String;
      // Log the raw response body (Request.post also logs success)
      // log(responseBody, name: 'getIntercityRide Response');
      // Parse the raw JSON string using the dedicated function
      return intercityRidesFromJson(responseBody);
    },
  );

  // Fold the result from Request.post to match the provider's expected return type
  return result.fold((final ErrorDetails error) {
    // Log the error from Request.post itself for better debugging
    log('Error fetching intercity rides: ${error.message}', error: error.error, stackTrace: error.stackTrace);
    // Propagate the error as required by the Future<IntercityRides> signature
    return Future.error(error);
  }, (final IntercityRides successData) => successData);
}
