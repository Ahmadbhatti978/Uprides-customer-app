// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDetail _$UserDetailFromJson(Map<String, dynamic> json) => _UserDetail(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      ride: json['ride'] == null
          ? null
          : RideDetails.fromJson(json['ride'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDetailToJson(_UserDetail instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'user': instance.user,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'ride': instance.ride,
    };
