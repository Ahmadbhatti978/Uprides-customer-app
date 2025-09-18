// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Driver _$DriverFromJson(Map<String, dynamic> json) => _Driver(
      id: json['_id'] as String?,
      fullName: json['full_name'] as String?,
      profilePhoto: json['profile_photo'] as String?,
      organizationId: json['organization_id'] as String?,
      vehicleId: const VehicalIDConverter().fromJson(json['vehicle_id']),
    );

Map<String, dynamic> _$DriverToJson(_Driver instance) => <String, dynamic>{
      '_id': instance.id,
      'full_name': instance.fullName,
      'profile_photo': instance.profilePhoto,
      'organization_id': instance.organizationId,
      'vehicle_id': const VehicalIDConverter().toJson(instance.vehicleId),
    };

_VehicleId _$VehicleIdFromJson(Map<String, dynamic> json) => _VehicleId(
      id: json['id'] as String?,
      vehicleModel: json['vehicle_model'] as String?,
      color: json['color'] as String?,
      brand: json['brand'] as String?,
      vin: json['vin'] as String?,
      registrationNumber: json['registration_number'] as String?,
      createdBy: json['created_by'] as String?,
      category: json['category'] as String?,
      vehicleId: json['vehicle_id'],
      isActive: json['is_active'] as bool?,
      babySitterAvailable: json['baby_sitter_available'] as bool?,
      jumpStart: json['jump_start'] as bool?,
      rental: json['rental'] as bool?,
      intercity: json['intercity'] as bool?,
      seats: (json['seats'] as num?)?.toInt(),
      rentHourlyCharges: (json['rent_hourly_charges'] as num?)?.toInt(),
      securityDeposit: (json['security_deposit'] as num?)?.toInt(),
      petFriendly: json['pet_friendly'] as bool?,
      assist: json['assist'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      v: (json['v'] as num?)?.toInt(),
      assignedDriver: json['assigned_driver'] as String?,
    );

Map<String, dynamic> _$VehicleIdToJson(_VehicleId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicle_model': instance.vehicleModel,
      'color': instance.color,
      'brand': instance.brand,
      'vin': instance.vin,
      'registration_number': instance.registrationNumber,
      'created_by': instance.createdBy,
      'category': instance.category,
      'vehicle_id': instance.vehicleId,
      'is_active': instance.isActive,
      'baby_sitter_available': instance.babySitterAvailable,
      'jump_start': instance.jumpStart,
      'rental': instance.rental,
      'intercity': instance.intercity,
      'seats': instance.seats,
      'rent_hourly_charges': instance.rentHourlyCharges,
      'security_deposit': instance.securityDeposit,
      'pet_friendly': instance.petFriendly,
      'assist': instance.assist,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
      'assigned_driver': instance.assignedDriver,
    };
