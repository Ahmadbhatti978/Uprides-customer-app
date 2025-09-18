// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Rider _$RiderFromJson(Map<String, dynamic> json) => _Rider(
      customerId: json['customer_id'] as String?,
      phone: json['phone'] as String?,
      fullName: json['full_name'] as String?,
      isDeleted: json['is_deleted'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$RiderToJson(_Rider instance) => <String, dynamic>{
      'customer_id': instance.customerId,
      'phone': instance.phone,
      'full_name': instance.fullName,
      'is_deleted': instance.isDeleted,
      'id': instance.id,
    };
