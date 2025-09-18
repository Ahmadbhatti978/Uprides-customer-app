// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stops_eta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StopsEta _$StopsEtaFromJson(Map<String, dynamic> json) => _StopsEta(
      stop: json['stop'] == null
          ? null
          : Coordinate.fromJson(json['stop'] as Map<String, dynamic>),
      etaSeconds: (json['eta_seconds'] as num?)?.toInt(),
      id: json['_id'] as String?,
      stopsEtaId: json['id'] as String?,
    );

Map<String, dynamic> _$StopsEtaToJson(_StopsEta instance) => <String, dynamic>{
      'stop': instance.stop,
      'eta_seconds': instance.etaSeconds,
      '_id': instance.id,
      'id': instance.stopsEtaId,
    };
