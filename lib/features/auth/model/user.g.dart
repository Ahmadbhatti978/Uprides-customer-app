// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      lastLocation: json['last_location'] == null
          ? null
          : Location.fromJson(json['last_location'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      email: json['email'] as String?,
      v: (json['__v'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      designation: json['designation'] as String?,
      isBlocked: json['is_blocked'] as bool?,
      isCompleted: json['is_completed'] as bool?,
      isDeleted: json['is_deleted'] as bool?,
      isEmailVerified: json['is_email_verified'] as bool?,
      isPhoneVerified: json['is_phone_verified'] as bool?,
      role: json['role'] as String?,
      status: json['status'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      phone: json['phone'] as String?,
      deviceId: json['device_id'] as String?,
      firstName: json['first_name'] as String?,
      fullName: json['full_name'] as String?,
      language: json['language'] as String?,
      lastName: json['last_name'] as String?,
      profilePic: json['profile_pic'] as String?,
      provider: json['provider'] as String?,
      username: json['username'] as String?,
      fcmToken: json['fcm_token'] as String?,
      appVersion: json['app_version'] as String?,
      deviceType: json['device_type'] as String?,
      currentRideId: json['current_ride_id'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      ratingCount: (json['rating_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'last_location': instance.lastLocation,
      '_id': instance.id,
      'email': instance.email,
      '__v': instance.v,
      'createdAt': instance.createdAt?.toIso8601String(),
      'designation': instance.designation,
      'is_blocked': instance.isBlocked,
      'is_completed': instance.isCompleted,
      'is_deleted': instance.isDeleted,
      'is_email_verified': instance.isEmailVerified,
      'is_phone_verified': instance.isPhoneVerified,
      'role': instance.role,
      'status': instance.status,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'phone': instance.phone,
      'device_id': instance.deviceId,
      'first_name': instance.firstName,
      'full_name': instance.fullName,
      'language': instance.language,
      'last_name': instance.lastName,
      'profile_pic': instance.profilePic,
      'provider': instance.provider,
      'username': instance.username,
      'fcm_token': instance.fcmToken,
      'app_version': instance.appVersion,
      'device_type': instance.deviceType,
      'current_ride_id': instance.currentRideId,
      'rating': instance.rating,
      'rating_count': instance.ratingCount,
    };

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
      'coordinates': instance.coordinates,
    };
