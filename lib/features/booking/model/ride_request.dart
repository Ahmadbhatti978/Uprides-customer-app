import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../core/decode_poly.dart';

import '../../../core/extensions/coor_to_latlng.dart';
import '../../../core/extensions/list_to_coordinate.dart';
import '../../../core/model/optimized_stop.dart';
import '../../../core/model/stop.dart';
import '../../../core/model/stops_eta.dart';
import '../../home/model/location.dart';
part 'ride_request.freezed.dart';
part 'ride_request.g.dart';

RideRequest rideDetailFromString(RideRequest data) {
  try {
    return data.copyWith(route: decodePoly(data.polyline!));
  } catch (e) {
    return data;
  }
}

@freezed
abstract class RideRequest with _$RideRequest {
  const factory RideRequest({
    // Fields from Model 1
    @JsonKey(name: "pickup_location") Location? pickupLocation,
    @JsonKey(name: "dropoff_location") Location? dropoffLocation,
    @JsonKey(name: "country_id") String? countryId,
    @JsonKey(name: "city_id") String? cityId,
    @JsonKey(name: "zone_id") String? zoneId,
    @JsonKey(name: "customer_id") String? customerId,
    @JsonKey(name: "pickup_address") String? pickupAddress,
    @JsonKey(name: "dropoff_address") String? dropoffAddress,
    @JsonKey(name: "stops") List<Stop>? stops,
    @JsonKey(name: "booked_for") String? bookedFor,
    @JsonKey(name: "accessiblity") String? accessiblity,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "distance_in_meters") int? distanceInMeters,
    @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
    @JsonKey(name: "server_scheduled_at") DateTime? serverScheduledAt,
    @JsonKey(name: "is_deleted") bool? isDeleted,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "id") String? id,

    // Fields from Model 2
    @JsonKey(name: 'ride_id') String? rideId,
    @JsonKey(includeFromJson: false, includeToJson: false) List<LatLng>? route,
    @JsonKey(includeFromJson: false, includeToJson: false) String? polyline,
    @JsonKey(name: "pickup_area") Area? pickupArea,
    @JsonKey(name: "dropoff_area") Area? dropoffArea,

    // Shared / Conflicting Fields (Resolved)
    @JsonKey(name: "total_eta") int? totalEta,
    @JsonKey(name: "stops_eta") List<StopsEta>? stopsEta,
    // **CONFLICT RESOLVED**: Chose List<StopsEta> as the type for the merged model.
    @JsonKey(name: "optimized_stops") List<OptimizedStop>? optimizedStops,
  }) = _RideRequest;

  factory RideRequest.fromJson(Map<String, dynamic> json) => _$RideRequestFromJson(json);

  // Custom logic from Model 2
  const RideRequest._();

  List<LatLng> getPointsByPickupandDropoff() {
    final List<LatLng> route = [];
    final LatLng? pickUP = pickupLocation?.coordinates.getLatLng;
    if (pickUP != null) route.add(pickUP);

    // Assuming you want to get LatLng from StopsEta as well
    final List<StopsEta> rideStops = [...(stopsEta ?? [])]..removeWhere((s) => s.stop == null);
    route.addAll(rideStops.map((stpEta) => stpEta.stop.latLng!));

    final LatLng? dropOff = dropoffLocation?.coordinates.getLatLng;
    if (dropOff != null) route.add(dropOff);

    return route;
  }

  List<LatLng> getRoutePoints({bool stops = true}) {
    final List<LatLng> r = [];
    if (route?.firstOrNull != null) r.add((route?.first)!);

    if (stops) {
      final List<StopsEta> rideStops = [...(stopsEta ?? [])]..removeWhere((s) => s.stop == null); // Modify based on your StopsEta model

      r.addAll(rideStops.map((d) => d.stop!.latLng!).toList());
    }

    if (route?.lastOrNull != null) r.add((route?.last)!);

    return r;
  }
}

@freezed
abstract class Area with _$Area {
  const factory Area({@JsonKey(name: "zone_id") String? zoneId, @JsonKey(name: "city_id") String? cityId}) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}
