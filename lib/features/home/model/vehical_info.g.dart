// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehical_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VehicleInfo _$VehicleInfoFromJson(Map<String, dynamic> json) => _VehicleInfo(
      id: json['id'] as String?,
      vin: json['vin'] as String?,
      registrationNumber: json['registration_number'] as String?,
    );

Map<String, dynamic> _$VehicleInfoToJson(_VehicleInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vin': instance.vin,
      'registration_number': instance.registrationNumber,
    };
