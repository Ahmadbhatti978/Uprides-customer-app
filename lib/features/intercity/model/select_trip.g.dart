// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SelectTrip _$SelectTripFromJson(Map<String, dynamic> json) => _SelectTrip(
      pickupLocation: json['pickup_location'] == null
          ? null
          : Coordinate.fromJson(
              json['pickup_location'] as Map<String, dynamic>),
      pickName: json['pickName'] as String?,
      dropoffLocation: json['dropoff_location'] == null
          ? null
          : Coordinate.fromJson(
              json['dropoff_location'] as Map<String, dynamic>),
      dropoffName: json['dropoffName'] as String?,
      seats: (json['seats'] as num?)?.toInt(),
      carType: json['car_type'] as String? ?? 'all',
      on: json['on'] == null ? null : DateTime.parse(json['on'] as String),
    );

Map<String, dynamic> _$SelectTripToJson(_SelectTrip instance) =>
    <String, dynamic>{
      'pickup_location': instance.pickupLocation,
      'dropoff_location': instance.dropoffLocation,
      'seats': instance.seats,
      'car_type': instance.carType,
      'on': _dateTimeToIso8601String(instance.on),
    };
