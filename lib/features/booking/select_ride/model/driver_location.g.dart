// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DriverLocation _$DriverLocationFromJson(Map<String, dynamic> json) =>
    _DriverLocation(
      driverId: json['driver_id'] as String?,
      location: json['location'] == null
          ? null
          : Coordinate.fromJson(json['location'] as Map<String, dynamic>),
      rideId: json['ride_id'] as String?,
    );

Map<String, dynamic> _$DriverLocationToJson(_DriverLocation instance) =>
    <String, dynamic>{
      'driver_id': instance.driverId,
      'location': instance.location,
      'ride_id': instance.rideId,
    };
