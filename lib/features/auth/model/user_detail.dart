// To parse this JSON data, do
//
//     final userDetail = userDetailFromMap(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'ride_details.dart';
import 'user.dart';

part 'user_detail.freezed.dart';
part 'user_detail.g.dart';

UserDetail userDetailFromMap(String str) => UserDetail.fromJson(json.decode(str));

String userDetailToMap(UserDetail data) => json.encode(data.toJson());

@freezed
abstract class UserDetail with _$UserDetail {
  const factory UserDetail({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "user") User? user,
    @JsonKey(name: "accessToken") String? accessToken,
    @JsonKey(name: "refreshToken") String? refreshToken,
    @JsonKey(name: "ride") RideDetails? ride,
  }) = _UserDetail;

  factory UserDetail.fromJson(Map<String, dynamic> json) => _$UserDetailFromJson(json);
}
