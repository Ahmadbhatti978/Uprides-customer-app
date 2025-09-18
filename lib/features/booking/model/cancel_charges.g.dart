// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_charges.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CancelCharges _$CancelChargesFromJson(Map<String, dynamic> json) =>
    _CancelCharges(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CancelChargesToJson(_CancelCharges instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      charges: json['charges'] == null
          ? null
          : Charges.fromJson(json['charges'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'charges': instance.charges,
    };

_Charges _$ChargesFromJson(Map<String, dynamic> json) => _Charges(
      cancellationCharges: (json['cancellationCharges'] as num?)?.toDouble(),
      refundAmount: (json['refundAmount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ChargesToJson(_Charges instance) => <String, dynamic>{
      'cancellationCharges': instance.cancellationCharges,
      'refundAmount': instance.refundAmount,
    };
