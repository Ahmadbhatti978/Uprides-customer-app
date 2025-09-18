// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {
  @JsonKey(name: "last_location")
  Location? get lastLocation;
  @JsonKey(name: "_id")
  String? get id;
  @JsonKey(name: "email")
  String? get email;
  @JsonKey(name: "__v")
  int? get v;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @JsonKey(name: "designation")
  String? get designation;
  @JsonKey(name: "is_blocked")
  bool? get isBlocked;
  @JsonKey(name: "is_completed")
  bool? get isCompleted;
  @JsonKey(name: "is_deleted")
  bool? get isDeleted;
  @JsonKey(name: "is_email_verified")
  bool? get isEmailVerified;
  @JsonKey(name: "is_phone_verified")
  bool? get isPhoneVerified;
  @JsonKey(name: "role")
  String? get role;
  @JsonKey(name: "status")
  String? get status;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @JsonKey(name: "phone")
  String? get phone;
  @JsonKey(name: "device_id")
  String? get deviceId;
  @JsonKey(name: "first_name")
  String? get firstName;
  @JsonKey(name: "full_name")
  String? get fullName;
  @JsonKey(name: "language")
  String? get language;
  @JsonKey(name: "last_name")
  String? get lastName;
  @JsonKey(name: "profile_pic")
  String? get profilePic;
  @JsonKey(name: "provider")
  String? get provider;
  @JsonKey(name: "username")
  String? get username;
  @JsonKey(name: "fcm_token")
  String? get fcmToken;
  @JsonKey(name: "app_version")
  String? get appVersion;
  @JsonKey(name: "device_type")
  String? get deviceType;
  @JsonKey(name: "current_ride_id")
  String? get currentRideId;
  @JsonKey(name: "rating")
  double? get rating;
  @JsonKey(name: "rating_count")
  int? get ratingCount;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.lastLocation, lastLocation) ||
                other.lastLocation == lastLocation) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.isPhoneVerified, isPhoneVerified) ||
                other.isPhoneVerified == isPhoneVerified) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.currentRideId, currentRideId) ||
                other.currentRideId == currentRideId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        lastLocation,
        id,
        email,
        v,
        createdAt,
        designation,
        isBlocked,
        isCompleted,
        isDeleted,
        isEmailVerified,
        isPhoneVerified,
        role,
        status,
        updatedAt,
        phone,
        deviceId,
        firstName,
        fullName,
        language,
        lastName,
        profilePic,
        provider,
        username,
        fcmToken,
        appVersion,
        deviceType,
        currentRideId,
        rating,
        ratingCount
      ]);

  @override
  String toString() {
    return 'User(lastLocation: $lastLocation, id: $id, email: $email, v: $v, createdAt: $createdAt, designation: $designation, isBlocked: $isBlocked, isCompleted: $isCompleted, isDeleted: $isDeleted, isEmailVerified: $isEmailVerified, isPhoneVerified: $isPhoneVerified, role: $role, status: $status, updatedAt: $updatedAt, phone: $phone, deviceId: $deviceId, firstName: $firstName, fullName: $fullName, language: $language, lastName: $lastName, profilePic: $profilePic, provider: $provider, username: $username, fcmToken: $fcmToken, appVersion: $appVersion, deviceType: $deviceType, currentRideId: $currentRideId, rating: $rating, ratingCount: $ratingCount)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "last_location") Location? lastLocation,
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
      @JsonKey(name: "rating_count") int? ratingCount});

  $LocationCopyWith<$Res>? get lastLocation;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastLocation = freezed,
    Object? id = freezed,
    Object? email = freezed,
    Object? v = freezed,
    Object? createdAt = freezed,
    Object? designation = freezed,
    Object? isBlocked = freezed,
    Object? isCompleted = freezed,
    Object? isDeleted = freezed,
    Object? isEmailVerified = freezed,
    Object? isPhoneVerified = freezed,
    Object? role = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
    Object? phone = freezed,
    Object? deviceId = freezed,
    Object? firstName = freezed,
    Object? fullName = freezed,
    Object? language = freezed,
    Object? lastName = freezed,
    Object? profilePic = freezed,
    Object? provider = freezed,
    Object? username = freezed,
    Object? fcmToken = freezed,
    Object? appVersion = freezed,
    Object? deviceType = freezed,
    Object? currentRideId = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
  }) {
    return _then(_self.copyWith(
      lastLocation: freezed == lastLocation
          ? _self.lastLocation
          : lastLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _self.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      designation: freezed == designation
          ? _self.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocked: freezed == isBlocked
          ? _self.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCompleted: freezed == isCompleted
          ? _self.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEmailVerified: freezed == isEmailVerified
          ? _self.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneVerified: freezed == isPhoneVerified
          ? _self.isPhoneVerified
          : isPhoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _self.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _self.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _self.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      currentRideId: freezed == currentRideId
          ? _self.currentRideId
          : currentRideId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingCount: freezed == ratingCount
          ? _self.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get lastLocation {
    if (_self.lastLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.lastLocation!, (value) {
      return _then(_self.copyWith(lastLocation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_User value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
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
            @JsonKey(name: "rating_count") int? ratingCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(
            _that.lastLocation,
            _that.id,
            _that.email,
            _that.v,
            _that.createdAt,
            _that.designation,
            _that.isBlocked,
            _that.isCompleted,
            _that.isDeleted,
            _that.isEmailVerified,
            _that.isPhoneVerified,
            _that.role,
            _that.status,
            _that.updatedAt,
            _that.phone,
            _that.deviceId,
            _that.firstName,
            _that.fullName,
            _that.language,
            _that.lastName,
            _that.profilePic,
            _that.provider,
            _that.username,
            _that.fcmToken,
            _that.appVersion,
            _that.deviceType,
            _that.currentRideId,
            _that.rating,
            _that.ratingCount);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
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
            @JsonKey(name: "rating_count") int? ratingCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User():
        return $default(
            _that.lastLocation,
            _that.id,
            _that.email,
            _that.v,
            _that.createdAt,
            _that.designation,
            _that.isBlocked,
            _that.isCompleted,
            _that.isDeleted,
            _that.isEmailVerified,
            _that.isPhoneVerified,
            _that.role,
            _that.status,
            _that.updatedAt,
            _that.phone,
            _that.deviceId,
            _that.firstName,
            _that.fullName,
            _that.language,
            _that.lastName,
            _that.profilePic,
            _that.provider,
            _that.username,
            _that.fcmToken,
            _that.appVersion,
            _that.deviceType,
            _that.currentRideId,
            _that.rating,
            _that.ratingCount);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
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
            @JsonKey(name: "rating_count") int? ratingCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(
            _that.lastLocation,
            _that.id,
            _that.email,
            _that.v,
            _that.createdAt,
            _that.designation,
            _that.isBlocked,
            _that.isCompleted,
            _that.isDeleted,
            _that.isEmailVerified,
            _that.isPhoneVerified,
            _that.role,
            _that.status,
            _that.updatedAt,
            _that.phone,
            _that.deviceId,
            _that.firstName,
            _that.fullName,
            _that.language,
            _that.lastName,
            _that.profilePic,
            _that.provider,
            _that.username,
            _that.fcmToken,
            _that.appVersion,
            _that.deviceType,
            _that.currentRideId,
            _that.rating,
            _that.ratingCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _User implements User {
  const _User(
      {@JsonKey(name: "last_location") this.lastLocation,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "designation") this.designation,
      @JsonKey(name: "is_blocked") this.isBlocked,
      @JsonKey(name: "is_completed") this.isCompleted,
      @JsonKey(name: "is_deleted") this.isDeleted,
      @JsonKey(name: "is_email_verified") this.isEmailVerified,
      @JsonKey(name: "is_phone_verified") this.isPhoneVerified,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "device_id") this.deviceId,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "full_name") this.fullName,
      @JsonKey(name: "language") this.language,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "profile_pic") this.profilePic,
      @JsonKey(name: "provider") this.provider,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "fcm_token") this.fcmToken,
      @JsonKey(name: "app_version") this.appVersion,
      @JsonKey(name: "device_type") this.deviceType,
      @JsonKey(name: "current_ride_id") this.currentRideId,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "rating_count") this.ratingCount});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  @JsonKey(name: "last_location")
  final Location? lastLocation;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "designation")
  final String? designation;
  @override
  @JsonKey(name: "is_blocked")
  final bool? isBlocked;
  @override
  @JsonKey(name: "is_completed")
  final bool? isCompleted;
  @override
  @JsonKey(name: "is_deleted")
  final bool? isDeleted;
  @override
  @JsonKey(name: "is_email_verified")
  final bool? isEmailVerified;
  @override
  @JsonKey(name: "is_phone_verified")
  final bool? isPhoneVerified;
  @override
  @JsonKey(name: "role")
  final String? role;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "device_id")
  final String? deviceId;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "full_name")
  final String? fullName;
  @override
  @JsonKey(name: "language")
  final String? language;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "profile_pic")
  final String? profilePic;
  @override
  @JsonKey(name: "provider")
  final String? provider;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "fcm_token")
  final String? fcmToken;
  @override
  @JsonKey(name: "app_version")
  final String? appVersion;
  @override
  @JsonKey(name: "device_type")
  final String? deviceType;
  @override
  @JsonKey(name: "current_ride_id")
  final String? currentRideId;
  @override
  @JsonKey(name: "rating")
  final double? rating;
  @override
  @JsonKey(name: "rating_count")
  final int? ratingCount;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.lastLocation, lastLocation) ||
                other.lastLocation == lastLocation) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.isPhoneVerified, isPhoneVerified) ||
                other.isPhoneVerified == isPhoneVerified) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.currentRideId, currentRideId) ||
                other.currentRideId == currentRideId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        lastLocation,
        id,
        email,
        v,
        createdAt,
        designation,
        isBlocked,
        isCompleted,
        isDeleted,
        isEmailVerified,
        isPhoneVerified,
        role,
        status,
        updatedAt,
        phone,
        deviceId,
        firstName,
        fullName,
        language,
        lastName,
        profilePic,
        provider,
        username,
        fcmToken,
        appVersion,
        deviceType,
        currentRideId,
        rating,
        ratingCount
      ]);

  @override
  String toString() {
    return 'User(lastLocation: $lastLocation, id: $id, email: $email, v: $v, createdAt: $createdAt, designation: $designation, isBlocked: $isBlocked, isCompleted: $isCompleted, isDeleted: $isDeleted, isEmailVerified: $isEmailVerified, isPhoneVerified: $isPhoneVerified, role: $role, status: $status, updatedAt: $updatedAt, phone: $phone, deviceId: $deviceId, firstName: $firstName, fullName: $fullName, language: $language, lastName: $lastName, profilePic: $profilePic, provider: $provider, username: $username, fcmToken: $fcmToken, appVersion: $appVersion, deviceType: $deviceType, currentRideId: $currentRideId, rating: $rating, ratingCount: $ratingCount)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "last_location") Location? lastLocation,
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
      @JsonKey(name: "rating_count") int? ratingCount});

  @override
  $LocationCopyWith<$Res>? get lastLocation;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lastLocation = freezed,
    Object? id = freezed,
    Object? email = freezed,
    Object? v = freezed,
    Object? createdAt = freezed,
    Object? designation = freezed,
    Object? isBlocked = freezed,
    Object? isCompleted = freezed,
    Object? isDeleted = freezed,
    Object? isEmailVerified = freezed,
    Object? isPhoneVerified = freezed,
    Object? role = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
    Object? phone = freezed,
    Object? deviceId = freezed,
    Object? firstName = freezed,
    Object? fullName = freezed,
    Object? language = freezed,
    Object? lastName = freezed,
    Object? profilePic = freezed,
    Object? provider = freezed,
    Object? username = freezed,
    Object? fcmToken = freezed,
    Object? appVersion = freezed,
    Object? deviceType = freezed,
    Object? currentRideId = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
  }) {
    return _then(_User(
      lastLocation: freezed == lastLocation
          ? _self.lastLocation
          : lastLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _self.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      designation: freezed == designation
          ? _self.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocked: freezed == isBlocked
          ? _self.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCompleted: freezed == isCompleted
          ? _self.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEmailVerified: freezed == isEmailVerified
          ? _self.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneVerified: freezed == isPhoneVerified
          ? _self.isPhoneVerified
          : isPhoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _self.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _self.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _self.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      currentRideId: freezed == currentRideId
          ? _self.currentRideId
          : currentRideId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingCount: freezed == ratingCount
          ? _self.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get lastLocation {
    if (_self.lastLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.lastLocation!, (value) {
      return _then(_self.copyWith(lastLocation: value));
    });
  }
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: "coordinates")
  List<double>? get coordinates;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationCopyWith<Location> get copyWith =>
      _$LocationCopyWithImpl<Location>(this as Location, _$identity);

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Location &&
            const DeepCollectionEquality()
                .equals(other.coordinates, coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(coordinates));

  @override
  String toString() {
    return 'Location(coordinates: $coordinates)';
  }
}

/// @nodoc
abstract mixin class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) _then) =
      _$LocationCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: "coordinates") List<double>? coordinates});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._self, this._then);

  final Location _self;
  final $Res Function(Location) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = freezed,
  }) {
    return _then(_self.copyWith(
      coordinates: freezed == coordinates
          ? _self.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Location].
extension LocationPatterns on Location {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Location value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Location value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Location value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: "coordinates") List<double>? coordinates)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
        return $default(_that.coordinates);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: "coordinates") List<double>? coordinates)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location():
        return $default(_that.coordinates);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: "coordinates") List<double>? coordinates)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
        return $default(_that.coordinates);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Location implements Location {
  const _Location(
      {@JsonKey(name: "coordinates") final List<double>? coordinates})
      : _coordinates = coordinates;
  factory _Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  final List<double>? _coordinates;
  @override
  @JsonKey(name: "coordinates")
  List<double>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Location &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_coordinates));

  @override
  String toString() {
    return 'Location(coordinates: $coordinates)';
  }
}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) =
      __$LocationCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: "coordinates") List<double>? coordinates});
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(this._self, this._then);

  final _Location _self;
  final $Res Function(_Location) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coordinates = freezed,
  }) {
    return _then(_Location(
      coordinates: freezed == coordinates
          ? _self._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

// dart format on
