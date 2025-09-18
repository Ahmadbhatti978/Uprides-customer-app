// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adjusted_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdjustedPrice _$AdjustedPriceFromJson(Map<String, dynamic> json) =>
    _AdjustedPrice(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AdjustedPriceToJson(_AdjustedPrice instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      totalVat: (json['total_vat'] as num?)?.toDouble(),
      adjustedFare: (json['adjusted_fare'] as num?)?.toDouble(),
      adjustedVat: (json['adjusted_vat'] as num?)?.toDouble(),
      adjustedTotalAmount: (json['adjusted_total_amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'total_amount': instance.totalAmount,
      'total_vat': instance.totalVat,
      'adjusted_fare': instance.adjustedFare,
      'adjusted_vat': instance.adjustedVat,
      'adjusted_total_amount': instance.adjustedTotalAmount,
    };
