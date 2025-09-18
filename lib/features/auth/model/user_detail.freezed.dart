// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDetail {
  @JsonKey(name: "success")
  bool? get success;
  @JsonKey(name: "message")
  String? get message;
  @JsonKey(name: "user")
  User? get user;
  @JsonKey(name: "accessToken")
  String? get accessToken;
  @JsonKey(name: "refreshToken")
  String? get refreshToken;
  @JsonKey(name: "ride")
  RideDetails? get ride;

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserDetailCopyWith<UserDetail> get copyWith =>
      _$UserDetailCopyWithImpl<UserDetail>(this as UserDetail, _$identity);

  /// Serializes this UserDetail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDetail &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.ride, ride) || other.ride == ride));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, message, user, accessToken, refreshToken, ride);

  @override
  String toString() {
    return 'UserDetail(success: $success, message: $message, user: $user, accessToken: $accessToken, refreshToken: $refreshToken, ride: $ride)';
  }
}

/// @nodoc
abstract mixin class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) _then) =
      _$UserDetailCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "user") User? user,
      @JsonKey(name: "accessToken") String? accessToken,
      @JsonKey(name: "refreshToken") String? refreshToken,
      @JsonKey(name: "ride") RideDetails? ride});

  $UserCopyWith<$Res>? get user;
  $RideDetailsCopyWith<$Res>? get ride;
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res> implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._self, this._then);

  final UserDetail _self;
  final $Res Function(UserDetail) _then;

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? user = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? ride = freezed,
  }) {
    return _then(_self.copyWith(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      accessToken: freezed == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      ride: freezed == ride
          ? _self.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as RideDetails?,
    ));
  }

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideDetailsCopyWith<$Res>? get ride {
    if (_self.ride == null) {
      return null;
    }

    return $RideDetailsCopyWith<$Res>(_self.ride!, (value) {
      return _then(_self.copyWith(ride: value));
    });
  }
}

/// Adds pattern-matching-related methods to [UserDetail].
extension UserDetailPatterns on UserDetail {
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
    TResult Function(_UserDetail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserDetail() when $default != null:
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
    TResult Function(_UserDetail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDetail():
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
    TResult? Function(_UserDetail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDetail() when $default != null:
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
            @JsonKey(name: "success") bool? success,
            @JsonKey(name: "message") String? message,
            @JsonKey(name: "user") User? user,
            @JsonKey(name: "accessToken") String? accessToken,
            @JsonKey(name: "refreshToken") String? refreshToken,
            @JsonKey(name: "ride") RideDetails? ride)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserDetail() when $default != null:
        return $default(_that.success, _that.message, _that.user,
            _that.accessToken, _that.refreshToken, _that.ride);
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
            @JsonKey(name: "success") bool? success,
            @JsonKey(name: "message") String? message,
            @JsonKey(name: "user") User? user,
            @JsonKey(name: "accessToken") String? accessToken,
            @JsonKey(name: "refreshToken") String? refreshToken,
            @JsonKey(name: "ride") RideDetails? ride)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDetail():
        return $default(_that.success, _that.message, _that.user,
            _that.accessToken, _that.refreshToken, _that.ride);
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
            @JsonKey(name: "success") bool? success,
            @JsonKey(name: "message") String? message,
            @JsonKey(name: "user") User? user,
            @JsonKey(name: "accessToken") String? accessToken,
            @JsonKey(name: "refreshToken") String? refreshToken,
            @JsonKey(name: "ride") RideDetails? ride)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDetail() when $default != null:
        return $default(_that.success, _that.message, _that.user,
            _that.accessToken, _that.refreshToken, _that.ride);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserDetail implements UserDetail {
  const _UserDetail(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "user") this.user,
      @JsonKey(name: "accessToken") this.accessToken,
      @JsonKey(name: "refreshToken") this.refreshToken,
      @JsonKey(name: "ride") this.ride});
  factory _UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "user")
  final User? user;
  @override
  @JsonKey(name: "accessToken")
  final String? accessToken;
  @override
  @JsonKey(name: "refreshToken")
  final String? refreshToken;
  @override
  @JsonKey(name: "ride")
  final RideDetails? ride;

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserDetailCopyWith<_UserDetail> get copyWith =>
      __$UserDetailCopyWithImpl<_UserDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserDetailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetail &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.ride, ride) || other.ride == ride));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, message, user, accessToken, refreshToken, ride);

  @override
  String toString() {
    return 'UserDetail(success: $success, message: $message, user: $user, accessToken: $accessToken, refreshToken: $refreshToken, ride: $ride)';
  }
}

/// @nodoc
abstract mixin class _$UserDetailCopyWith<$Res>
    implements $UserDetailCopyWith<$Res> {
  factory _$UserDetailCopyWith(
          _UserDetail value, $Res Function(_UserDetail) _then) =
      __$UserDetailCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "user") User? user,
      @JsonKey(name: "accessToken") String? accessToken,
      @JsonKey(name: "refreshToken") String? refreshToken,
      @JsonKey(name: "ride") RideDetails? ride});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $RideDetailsCopyWith<$Res>? get ride;
}

/// @nodoc
class __$UserDetailCopyWithImpl<$Res> implements _$UserDetailCopyWith<$Res> {
  __$UserDetailCopyWithImpl(this._self, this._then);

  final _UserDetail _self;
  final $Res Function(_UserDetail) _then;

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? user = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? ride = freezed,
  }) {
    return _then(_UserDetail(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      accessToken: freezed == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      ride: freezed == ride
          ? _self.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as RideDetails?,
    ));
  }

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideDetailsCopyWith<$Res>? get ride {
    if (_self.ride == null) {
      return null;
    }

    return $RideDetailsCopyWith<$Res>(_self.ride!, (value) {
      return _then(_self.copyWith(ride: value));
    });
  }
}

// dart format on
