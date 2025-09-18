// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteAccount _$DeleteAccountFromJson(Map<String, dynamic> json) =>
    _DeleteAccount(
      reason: json['reason'] as String?,
      token: json['token'] as String?,
      phone: json['phone'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$DeleteAccountToJson(_DeleteAccount instance) =>
    <String, dynamic>{
      'token': instance.token,
      'phone': instance.phone,
      'otp': instance.otp,
    };
