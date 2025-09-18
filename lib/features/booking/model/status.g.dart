// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Status _$StatusFromJson(Map<String, dynamic> json) => _Status(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StatusToJson(_Status instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      retry: json['retry'] as bool?,
      currentRetry: (json['current_retry'] as num?)?.toInt(),
      maxRetries: (json['max_retries'] as num?)?.toInt(),
      waitingTime: (json['waiting_time'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'retry': instance.retry,
      'current_retry': instance.currentRetry,
      'max_retries': instance.maxRetries,
      'waiting_time': instance.waitingTime,
    };
