// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SavedLocations _$SavedLocationsFromJson(Map<String, dynamic> json) =>
    _SavedLocations(
      locations: (json['data'] as List<dynamic>?)
          ?.map((e) => LocationElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SavedLocationsToJson(_SavedLocations instance) =>
    <String, dynamic>{
      'data': instance.locations,
    };

_LocationElement _$LocationElementFromJson(Map<String, dynamic> json) =>
    _LocationElement(
      id: json['_id'] as String?,
      customerId: json['customer_id'] as String?,
      address: json['address'] as String?,
      locationName: json['location_name'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
      isDeleted: json['is_deleted'] as bool?,
      location: coordinateFromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationElementToJson(_LocationElement instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'customer_id': instance.customerId,
      'address': instance.address,
      'location_name': instance.locationName,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'is_deleted': instance.isDeleted,
      'location': instance.location,
    };
