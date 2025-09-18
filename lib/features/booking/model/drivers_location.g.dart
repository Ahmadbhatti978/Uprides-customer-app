// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drivers_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DriversLocation _$DriversLocationFromJson(Map<String, dynamic> json) =>
    _DriversLocation(
      id: json['id'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : Coordinate.fromJson(json['coordinates'] as Map<String, dynamic>),
      brandName: json['brand_name'] as String?,
      vehicleId: json['vehicle_id'] as String?,
      vehicleType: json['vehicle_type'] as String?,
      organizationId: json['organization_id'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      pic: json['pic'] as String?,
      email: json['email'] as String?,
      rideTypeId: json['ride_type_id'] as String?,
      model: json['model'] as String?,
    );

Map<String, dynamic> _$DriversLocationToJson(_DriversLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coordinates': instance.coordinates,
      'brand_name': instance.brandName,
      'vehicle_id': instance.vehicleId,
      'vehicle_type': instance.vehicleType,
      'organization_id': instance.organizationId,
      'name': instance.name,
      'phone': instance.phone,
      'pic': instance.pic,
      'email': instance.email,
      'ride_type_id': instance.rideTypeId,
      'model': instance.model,
    };
