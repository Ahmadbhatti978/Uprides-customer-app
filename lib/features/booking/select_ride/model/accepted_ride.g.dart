// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accepted_ride.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RideAccept _$RideAcceptFromJson(Map<String, dynamic> json) => _RideAccept(
      type: json['type'] as String?,
      payload: json['payload'] == null
          ? null
          : RidePayload.fromJson(json['payload'] as Map<String, dynamic>),
      requiresDeliveryTracking: json['requiresDeliveryTracking'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$RideAcceptToJson(_RideAccept instance) =>
    <String, dynamic>{
      'type': instance.type,
      'payload': instance.payload,
      'requiresDeliveryTracking': instance.requiresDeliveryTracking,
      'metadata': instance.metadata,
    };

_RidePayload _$RidePayloadFromJson(Map<String, dynamic> json) => _RidePayload(
      driver: Driver.fromJson(json['driver'] as Map<String, dynamic>),
      vehicle: Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      pin: json['pin'] as String?,
      conversationId: json['conversation_id'] as String?,
      driverPolyline: json['driver_polyline'] as String?,
    );

Map<String, dynamic> _$RidePayloadToJson(_RidePayload instance) =>
    <String, dynamic>{
      'driver': instance.driver,
      'vehicle': instance.vehicle,
      'pin': instance.pin,
      'conversation_id': instance.conversationId,
      'driver_polyline': instance.driverPolyline,
    };

_Driver _$DriverFromJson(Map<String, dynamic> json) => _Driver(
      id: json['id'] as String?,
      fullName: json['full_name'] as String?,
      profilePic: json['profile_pic'] as String?,
      currentLocation: json['current_location'] == null
          ? null
          : Coordinate.fromJson(
              json['current_location'] as Map<String, dynamic>),
      ratings: (json['ratings'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DriverToJson(_Driver instance) => <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'profile_pic': instance.profilePic,
      'current_location': instance.currentLocation,
      'ratings': instance.ratings,
    };

_Vehicle _$VehicleFromJson(Map<String, dynamic> json) => _Vehicle(
      name: json['name'] as String?,
      vin: json['vin'] as String?,
      color: json['color'] as String?,
      image: json['image'] as String?,
      vehicleType: json['vehicle_type'] as String?,
      model: json['model'] as String?,
    );

Map<String, dynamic> _$VehicleToJson(_Vehicle instance) => <String, dynamic>{
      'name': instance.name,
      'vin': instance.vin,
      'color': instance.color,
      'image': instance.image,
      'vehicle_type': instance.vehicleType,
      'model': instance.model,
    };
