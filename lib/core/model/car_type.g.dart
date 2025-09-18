// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CarType _$CarTypeFromJson(Map<String, dynamic> json) => _CarType(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdBy: json['created_by'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CarTypeToJson(_CarType instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_by': instance.createdBy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
