// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReqData _$ReqDataFromJson(Map<String, dynamic> json) => _ReqData(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReqDataToJson(_ReqData instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      id: json['id'] as String?,
      rideRequest: json['ride_request'] as String?,
      status: json['status'] as String?,
      customerFullname: json['customer_fullname'] as String?,
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'id': instance.id,
      'ride_request': instance.rideRequest,
      'status': instance.status,
      'customer_fullname': instance.customerFullname,
    };
