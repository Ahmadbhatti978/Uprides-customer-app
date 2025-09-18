// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RideRequest _$RideRequestFromJson(Map<String, dynamic> json) => _RideRequest(
      pickupLocation: json['pickup_location'] == null
          ? null
          : Location.fromJson(json['pickup_location'] as Map<String, dynamic>),
      dropoffLocation: json['dropoff_location'] == null
          ? null
          : Location.fromJson(json['dropoff_location'] as Map<String, dynamic>),
      countryId: json['country_id'] as String?,
      cityId: json['city_id'] as String?,
      zoneId: json['zone_id'] as String?,
      customerId: json['customer_id'] as String?,
      pickupAddress: json['pickup_address'] as String?,
      dropoffAddress: json['dropoff_address'] as String?,
      stops: (json['stops'] as List<dynamic>?)
          ?.map((e) => Stop.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookedFor: json['booked_for'] as String?,
      accessiblity: json['accessiblity'] as String?,
      type: json['type'] as String?,
      distanceInMeters: (json['distance_in_meters'] as num?)?.toInt(),
      scheduledAt: json['scheduled_at'] == null
          ? null
          : DateTime.parse(json['scheduled_at'] as String),
      serverScheduledAt: json['server_scheduled_at'] == null
          ? null
          : DateTime.parse(json['server_scheduled_at'] as String),
      isDeleted: json['is_deleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      id: json['id'] as String?,
      rideId: json['ride_id'] as String?,
      pickupArea: json['pickup_area'] == null
          ? null
          : Area.fromJson(json['pickup_area'] as Map<String, dynamic>),
      dropoffArea: json['dropoff_area'] == null
          ? null
          : Area.fromJson(json['dropoff_area'] as Map<String, dynamic>),
      totalEta: (json['total_eta'] as num?)?.toInt(),
      stopsEta: (json['stops_eta'] as List<dynamic>?)
          ?.map((e) => StopsEta.fromJson(e as Map<String, dynamic>))
          .toList(),
      optimizedStops: (json['optimized_stops'] as List<dynamic>?)
          ?.map((e) => OptimizedStop.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RideRequestToJson(_RideRequest instance) =>
    <String, dynamic>{
      'pickup_location': instance.pickupLocation,
      'dropoff_location': instance.dropoffLocation,
      'country_id': instance.countryId,
      'city_id': instance.cityId,
      'zone_id': instance.zoneId,
      'customer_id': instance.customerId,
      'pickup_address': instance.pickupAddress,
      'dropoff_address': instance.dropoffAddress,
      'stops': instance.stops,
      'booked_for': instance.bookedFor,
      'accessiblity': instance.accessiblity,
      'type': instance.type,
      'distance_in_meters': instance.distanceInMeters,
      'scheduled_at': instance.scheduledAt?.toIso8601String(),
      'server_scheduled_at': instance.serverScheduledAt?.toIso8601String(),
      'is_deleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'id': instance.id,
      'ride_id': instance.rideId,
      'pickup_area': instance.pickupArea,
      'dropoff_area': instance.dropoffArea,
      'total_eta': instance.totalEta,
      'stops_eta': instance.stopsEta,
      'optimized_stops': instance.optimizedStops,
    };

_Area _$AreaFromJson(Map<String, dynamic> json) => _Area(
      zoneId: json['zone_id'] as String?,
      cityId: json['city_id'] as String?,
    );

Map<String, dynamic> _$AreaToJson(_Area instance) => <String, dynamic>{
      'zone_id': instance.zoneId,
      'city_id': instance.cityId,
    };
