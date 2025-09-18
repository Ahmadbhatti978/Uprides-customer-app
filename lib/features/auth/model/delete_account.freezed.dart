// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteAccount {
  @JsonKey(includeToJson: false)
  String? get reason;
  String? get token;
  String? get phone;
  String? get otp;

  /// Create a copy of DeleteAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteAccountCopyWith<DeleteAccount> get copyWith =>
      _$DeleteAccountCopyWithImpl<DeleteAccount>(
          this as DeleteAccount, _$identity);

  /// Serializes this DeleteAccount to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteAccount &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, token, phone, otp);

  @override
  String toString() {
    return 'DeleteAccount(reason: $reason, token: $token, phone: $phone, otp: $otp)';
  }
}

/// @nodoc
abstract mixin class $DeleteAccountCopyWith<$Res> {
  factory $DeleteAccountCopyWith(
          DeleteAccount value, $Res Function(DeleteAccount) _then) =
      _$DeleteAccountCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String? reason,
      String? token,
      String? phone,
      String? otp});
}

/// @nodoc
class _$DeleteAccountCopyWithImpl<$Res>
    implements $DeleteAccountCopyWith<$Res> {
  _$DeleteAccountCopyWithImpl(this._self, this._then);

  final DeleteAccount _self;
  final $Res Function(DeleteAccount) _then;

  /// Create a copy of DeleteAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
    Object? token = freezed,
    Object? phone = freezed,
    Object? otp = freezed,
  }) {
    return _then(_self.copyWith(
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _self.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DeleteAccount].
extension DeleteAccountPatterns on DeleteAccount {
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
    TResult Function(_DeleteAccount value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeleteAccount() when $default != null:
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
    TResult Function(_DeleteAccount value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteAccount():
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
    TResult? Function(_DeleteAccount value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteAccount() when $default != null:
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
    TResult Function(@JsonKey(includeToJson: false) String? reason,
            String? token, String? phone, String? otp)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeleteAccount() when $default != null:
        return $default(_that.reason, _that.token, _that.phone, _that.otp);
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
    TResult Function(@JsonKey(includeToJson: false) String? reason,
            String? token, String? phone, String? otp)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteAccount():
        return $default(_that.reason, _that.token, _that.phone, _that.otp);
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
    TResult? Function(@JsonKey(includeToJson: false) String? reason,
            String? token, String? phone, String? otp)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteAccount() when $default != null:
        return $default(_that.reason, _that.token, _that.phone, _that.otp);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DeleteAccount implements DeleteAccount {
  const _DeleteAccount(
      {@JsonKey(includeToJson: false) this.reason,
      this.token,
      this.phone,
      this.otp});
  factory _DeleteAccount.fromJson(Map<String, dynamic> json) =>
      _$DeleteAccountFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String? reason;
  @override
  final String? token;
  @override
  final String? phone;
  @override
  final String? otp;

  /// Create a copy of DeleteAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeleteAccountCopyWith<_DeleteAccount> get copyWith =>
      __$DeleteAccountCopyWithImpl<_DeleteAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeleteAccountToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteAccount &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, token, phone, otp);

  @override
  String toString() {
    return 'DeleteAccount(reason: $reason, token: $token, phone: $phone, otp: $otp)';
  }
}

/// @nodoc
abstract mixin class _$DeleteAccountCopyWith<$Res>
    implements $DeleteAccountCopyWith<$Res> {
  factory _$DeleteAccountCopyWith(
          _DeleteAccount value, $Res Function(_DeleteAccount) _then) =
      __$DeleteAccountCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String? reason,
      String? token,
      String? phone,
      String? otp});
}

/// @nodoc
class __$DeleteAccountCopyWithImpl<$Res>
    implements _$DeleteAccountCopyWith<$Res> {
  __$DeleteAccountCopyWithImpl(this._self, this._then);

  final _DeleteAccount _self;
  final $Res Function(_DeleteAccount) _then;

  /// Create a copy of DeleteAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = freezed,
    Object? token = freezed,
    Object? phone = freezed,
    Object? otp = freezed,
  }) {
    return _then(_DeleteAccount(
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _self.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
