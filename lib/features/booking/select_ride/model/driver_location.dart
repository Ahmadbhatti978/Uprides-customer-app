//
//     final driverLocation = driverLocationFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/model/coordinate.dart';

part 'driver_location.freezed.dart';
part 'driver_location.g.dart';

DriverLocation driverLocationFromJson(final String str) => DriverLocation.fromJson(json.decode(str));

String driverLocationToJson(final DriverLocation data) => json.encode(data.toJson());

@freezed
abstract class DriverLocation with _$DriverLocation {
  const factory DriverLocation({
    @JsonKey(name: 'driver_id') final String? driverId,
    @JsonKey(name: 'location') final Coordinate? location,
    @JsonKey(name: 'ride_id') final String? rideId,
  }) = _DriverLocation;

  factory DriverLocation.fromJson(final Map<String, dynamic> json) => _$DriverLocationFromJson(json);
}
