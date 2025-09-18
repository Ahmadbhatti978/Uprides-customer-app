import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

User userFromJson(final String str) => User.fromJson(json.decode(str));

String userToJson(final User data) => json.encode(data.toJson());

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: "last_location") Location? lastLocation,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "designation") String? designation,
    @JsonKey(name: "is_blocked") bool? isBlocked,
    @JsonKey(name: "is_completed") bool? isCompleted,
    @JsonKey(name: "is_deleted") bool? isDeleted,
    @JsonKey(name: "is_email_verified") bool? isEmailVerified,
    @JsonKey(name: "is_phone_verified") bool? isPhoneVerified,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "device_id") String? deviceId,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "full_name") String? fullName,
    @JsonKey(name: "language") String? language,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "profile_pic") String? profilePic,
    @JsonKey(name: "provider") String? provider,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "fcm_token") String? fcmToken,
    @JsonKey(name: "app_version") String? appVersion,
    @JsonKey(name: "device_type") String? deviceType,
    @JsonKey(name: "current_ride_id") String? currentRideId,
    @JsonKey(name: "rating") double? rating,
    @JsonKey(name: "rating_count") int? ratingCount,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class Location with _$Location {
  const factory Location({
    @JsonKey(name: "coordinates") List<double>? coordinates,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}
