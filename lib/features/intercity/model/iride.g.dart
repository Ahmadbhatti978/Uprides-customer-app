// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iride.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IRide _$IRideFromJson(Map<String, dynamic> json) => _IRide(
      pickupLocation: json['pickup_location'] == null
          ? null
          : Coordinate.fromJson(
              json['pickup_location'] as Map<String, dynamic>),
      dropoffLocation: json['dropoff_location'] == null
          ? null
          : Coordinate.fromJson(
              json['dropoff_location'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      driver: const DriverIDConverter().fromJson(json['driver']),
      pickupCity: json['pickup_city'] == null
          ? null
          : City.fromJson(json['pickup_city'] as Map<String, dynamic>),
      dropoffCity: json['dropoff_city'] == null
          ? null
          : City.fromJson(json['dropoff_city'] as Map<String, dynamic>),
      pickupAddress: json['pickup_address'] as String?,
      dropoffAddress: json['dropoff_address'] as String?,
      chargePerSeat: (json['charge_per_seat'] as num?)?.toInt(),
      description: json['description'] as String?,
      totalSeats: (json['total_seats'] as num?)?.toInt(),
      expectedDuration: (json['expected_duration'] as num?)?.toInt(),
      distanceInKms: (json['distance_in_kms'] as num?)?.toDouble(),
      vehicleType: const CityIDConverter().fromJson(json['vehicle_type']),
      pickupat: json['dated'] == null
          ? null
          : DateTime.parse(json['dated'] as String),
      v: (json['__v'] as num?)?.toInt(),
      completed: json['completed'] as bool?,
      totalPassengers: (json['totalPassengers'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IRideToJson(_IRide instance) => <String, dynamic>{
      'pickup_location': instance.pickupLocation,
      'dropoff_location': instance.dropoffLocation,
      '_id': instance.id,
      'driver': const DriverIDConverter().toJson(instance.driver),
      'pickup_city': instance.pickupCity,
      'dropoff_city': instance.dropoffCity,
      'pickup_address': instance.pickupAddress,
      'dropoff_address': instance.dropoffAddress,
      'charge_per_seat': instance.chargePerSeat,
      'description': instance.description,
      'total_seats': instance.totalSeats,
      'expected_duration': instance.expectedDuration,
      'distance_in_kms': instance.distanceInKms,
      'vehicle_type': const CityIDConverter().toJson(instance.vehicleType),
      'dated': instance.pickupat?.toIso8601String(),
      '__v': instance.v,
      'completed': instance.completed,
      'totalPassengers': instance.totalPassengers,
    };
