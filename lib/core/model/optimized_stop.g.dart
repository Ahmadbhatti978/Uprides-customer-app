// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'optimized_stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OptimizedStop _$OptimizedStopFromJson(Map<String, dynamic> json) =>
    _OptimizedStop(
      location: json['location'] == null
          ? null
          : Coordinate.fromJson(json['location'] as Map<String, dynamic>),
      order: (json['order'] as num?)?.toInt(),
      address: json['address'] as String?,
      id: json['_id'] as String?,
      optimizedStopId: json['id'] as String?,
    );

Map<String, dynamic> _$OptimizedStopToJson(_OptimizedStop instance) =>
    <String, dynamic>{
      'location': instance.location,
      'order': instance.order,
      'address': instance.address,
      '_id': instance.id,
      'id': instance.optimizedStopId,
    };
