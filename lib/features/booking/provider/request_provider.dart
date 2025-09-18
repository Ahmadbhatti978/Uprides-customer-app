import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/extensions/coor_to_latlng.dart';
import '../../../core/failure/failure.dart';
import '../../../util/variable.dart';
import '../../home/model/compute_routes.dart';
import '../addlocation/model/config.dart';
import '../addlocation/model/place.dart';
import '../addlocation/notifier/pickedlocation.dart';
import '../addlocation/repo/add_location_repo.dart';
import '../booking_repo.dart/booking_repo.dart';
import '../model/ride_request.dart';
import 'config_provider.dart';
import 'selected_ride.dart';
part 'request_provider.g.dart';

@riverpod
Future<RideRequest> requestRide(final Ref ref, {final List<Place>? places, final String? bookedFor, final String? accessibility, final String? type}) async {
  try {
    final Config config = ref.watch(configPProvider);
    final List<Place> pLocations = List.from(ref.watch(pickedlocationProvider));
    if (ref.exists(selectedRideProvider)) ref.read(selectedRideProvider.notifier).updateState(null);
    pLocations.removeWhere((t) => t.location == null);

    return (await (rideRequest?.rideId == null
            ? (ref
                .read(bookingRepoProvider)
                .request(
                  places ?? pLocations,
                  bookedFor ?? config.bookedFor.name,
                  accessibility ?? config.accessibility.name,
                  type ?? config.type.name,
                  config.scheduledAt,
                  config.customerRiderId,
                ))
            : (ref
                .read(bookingRepoProvider)
                .editRide(
                  places ?? pLocations,
                  bookedFor ?? config.bookedFor.name,
                  accessibility ?? config.accessibility.name,
                  type ?? config.type.name,
                  rideRequest!.rideId!,
                  config.scheduledAt,
                  config.customerRiderId,
                ))))
        .fold(Future.error, (final String r) async {
          log(r);

          final String poly = await getPolylineMarkers(pLocations.where((p) => p.location != null).map((final Place e) => e.location!.latLng!).toList());
          final RideRequest rideRequest = RideRequest.fromJson(jsonDecode(r)['data']).copyWith(polyline: poly);
          return compute<RideRequest, RideRequest>(rideDetailFromString, rideRequest);
        });
  } catch (e) {
    return Future.error(ErrorDetails(stackTrace: StackTrace.current, error: e));
  }
}

Future<String> getPolylineMarkers(List<LatLng> locations) async {
  String polylines = "";
  final List<Route> route = await AddLocationRepo.getRoute(locations);
  if (route.first.polyline?.encodedPolyline != null) {
    polylines = route.first.polyline!.encodedPolyline!;
  }
  return polylines;
}
