import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/model/coordinate.dart';

part 'accepted_ride.freezed.dart';
part 'accepted_ride.g.dart';

@freezed
abstract class RideAccept with _$RideAccept {
  const factory RideAccept({final String? type, final RidePayload? payload, final bool? requiresDeliveryTracking, final Map<String, dynamic>? metadata}) =
      _RideAccept;

  factory RideAccept.fromJson(final Map<String, dynamic> json) => _$RideAcceptFromJson(json);
}

@freezed
abstract class RidePayload with _$RidePayload {
  const factory RidePayload({
    required final Driver driver,
    required final Vehicle vehicle,
    @JsonKey(name: 'pin') final String? pin,
    @JsonKey(name: 'conversation_id') final String? conversationId,
    @JsonKey(name: 'driver_polyline') final String? driverPolyline,
  }) = _RidePayload;

  factory RidePayload.fromJson(final Map<String, dynamic> json) => _$RidePayloadFromJson(json);
}

@freezed
abstract class Driver with _$Driver {
  const factory Driver({
    @JsonKey(name: 'id') final String? id,
    @JsonKey(name: 'full_name') final String? fullName,
    @JsonKey(name: 'profile_pic') final String? profilePic,
    @JsonKey(name: 'current_location') final Coordinate? currentLocation,
    final double? ratings,
  }) = _Driver;

  factory Driver.fromJson(final Map<String, dynamic> json) => _$DriverFromJson(json);
}

@freezed
abstract class Vehicle with _$Vehicle {
  const factory Vehicle(
      {final String? name,
      final String? vin,
      final String? color,
      final String? image,
      @JsonKey(name: 'vehicle_type') final String? vehicleType,
      final String? model}) = _Vehicle;

  factory Vehicle.fromJson(final Map<String, dynamic> json) => _$VehicleFromJson(json);
}
