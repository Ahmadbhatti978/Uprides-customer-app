// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Options _$OptionsFromJson(Map<String, dynamic> json) => _Options(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OptionsToJson(_Options instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Ride.fromJson(e as Map<String, dynamic>))
          .toList(),
      promotion: json['promotion'] == null
          ? null
          : Promotion.fromJson(json['promotion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'options': instance.options,
      'promotion': instance.promotion,
    };

_Promotion _$PromotionFromJson(Map<String, dynamic> json) => _Promotion(
      type: json['type'] as String?,
      value: (json['value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PromotionToJson(_Promotion instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
