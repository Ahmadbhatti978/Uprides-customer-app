// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_ride.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SelectRide _$SelectRideFromJson(Map<String, dynamic> json) => _SelectRide(
      ride: json['ride'] == null
          ? null
          : IRide.fromJson(json['ride'] as Map<String, dynamic>),
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SelectRideToJson(_SelectRide instance) =>
    <String, dynamic>{
      'ride': instance.ride,
      'vehicle': instance.vehicle,
    };

_Vehicle _$VehicleFromJson(Map<String, dynamic> json) => _Vehicle(
      id: json['_id'] as String?,
      petFriendly: json['pet_friendly'] as bool?,
    );

Map<String, dynamic> _$VehicleToJson(_Vehicle instance) => <String, dynamic>{
      '_id': instance.id,
      'pet_friendly': instance.petFriendly,
    };
