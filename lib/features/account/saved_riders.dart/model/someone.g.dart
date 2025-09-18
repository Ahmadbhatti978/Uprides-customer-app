// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'someone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Someone _$SomeoneFromJson(Map<String, dynamic> json) => _Someone(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      riders: (json['riders'] as List<dynamic>?)
          ?.map((e) => Rider.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: (json['statusCode'] as num?)?.toInt(),
      originalError: json['originalError'] as String?,
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalResults: (json['totalResults'] as num?)?.toInt(),
      isNextPage: json['isNextPage'] as bool?,
      isPreviousPage: json['isPreviousPage'] as bool?,
    );

Map<String, dynamic> _$SomeoneToJson(_Someone instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'riders': instance.riders,
      'statusCode': instance.statusCode,
      'originalError': instance.originalError,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
      'isNextPage': instance.isNextPage,
      'isPreviousPage': instance.isPreviousPage,
    };
