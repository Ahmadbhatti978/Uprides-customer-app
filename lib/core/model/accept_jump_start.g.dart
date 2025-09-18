// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_jump_start.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AcceptedJumpStart _$AcceptedJumpStartFromJson(Map<String, dynamic> json) =>
    _AcceptedJumpStart(
      mapData: json['mapData'] == null
          ? null
          : MapData.fromJson(json['mapData'] as Map<String, dynamic>),
      distanceFare: (json['distance_fare'] as num?)?.toInt(),
      driverId: json['driver_id'] as String?,
      rideId: json['ride_id'] as String?,
      jumpstartData: json['jumpstart_data'] == null
          ? null
          : JumpstartData.fromJson(
              json['jumpstart_data'] as Map<String, dynamic>),
      driver: json['driver'] == null
          ? null
          : Driver.fromJson(json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AcceptedJumpStartToJson(_AcceptedJumpStart instance) =>
    <String, dynamic>{
      'mapData': instance.mapData?.toJson(),
      'distance_fare': instance.distanceFare,
      'driver_id': instance.driverId,
      'ride_id': instance.rideId,
      'jumpstart_data': instance.jumpstartData?.toJson(),
      'driver': instance.driver?.toJson(),
    };

_JumpstartData _$JumpstartDataFromJson(Map<String, dynamic> json) =>
    _JumpstartData(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JumpstartDataToJson(_JumpstartData instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'body': instance.body?.toJson(),
    };

_Body _$BodyFromJson(Map<String, dynamic> json) => _Body(
      currentLocation: json['current_location'] == null
          ? null
          : Coordinate.fromJson(
              json['current_location'] as Map<String, dynamic>),
      model: json['model'] as String?,
      vin: json['vin'] as String?,
    );

Map<String, dynamic> _$BodyToJson(_Body instance) => <String, dynamic>{
      'current_location': instance.currentLocation,
      'model': instance.model,
      'vin': instance.vin,
    };

_MapData _$MapDataFromJson(Map<String, dynamic> json) => _MapData(
      distance: (json['distance'] as num?)?.toInt(),
      distanceInKm: json['distanceInKm'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      dropoffAddress: json['dropoff_address'] as String?,
      pickupAddress: json['pickup_address'] as String?,
      polyline: json['polyline'] as String?,
    );

Map<String, dynamic> _$MapDataToJson(_MapData instance) => <String, dynamic>{
      'distance': instance.distance,
      'distanceInKm': instance.distanceInKm,
      'duration': instance.duration,
      'dropoff_address': instance.dropoffAddress,
      'pickup_address': instance.pickupAddress,
      'polyline': instance.polyline,
    };
