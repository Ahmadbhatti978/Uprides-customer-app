// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jump.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Jump {
  String? get vehicalName;
  String? get vehicalNumber;

  /// Create a copy of Jump
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JumpCopyWith<Jump> get copyWith =>
      _$JumpCopyWithImpl<Jump>(this as Jump, _$identity);

  /// Serializes this Jump to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Jump &&
            (identical(other.vehicalName, vehicalName) ||
                other.vehicalName == vehicalName) &&
            (identical(other.vehicalNumber, vehicalNumber) ||
                other.vehicalNumber == vehicalNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vehicalName, vehicalNumber);

  @override
  String toString() {
    return 'Jump(vehicalName: $vehicalName, vehicalNumber: $vehicalNumber)';
  }
}

/// @nodoc
abstract mixin class $JumpCopyWith<$Res> {
  factory $JumpCopyWith(Jump value, $Res Function(Jump) _then) =
      _$JumpCopyWithImpl;
  @useResult
  $Res call({String? vehicalName, String? vehicalNumber});
}

/// @nodoc
class _$JumpCopyWithImpl<$Res> implements $JumpCopyWith<$Res> {
  _$JumpCopyWithImpl(this._self, this._then);

  final Jump _self;
  final $Res Function(Jump) _then;

  /// Create a copy of Jump
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicalName = freezed,
    Object? vehicalNumber = freezed,
  }) {
    return _then(_self.copyWith(
      vehicalName: freezed == vehicalName
          ? _self.vehicalName
          : vehicalName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicalNumber: freezed == vehicalNumber
          ? _self.vehicalNumber
          : vehicalNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Jump].
extension JumpPatterns on Jump {
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
    TResult Function(_Jump value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Jump() when $default != null:
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
    TResult Function(_Jump value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Jump():
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
    TResult? Function(_Jump value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Jump() when $default != null:
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
    TResult Function(String? vehicalName, String? vehicalNumber)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Jump() when $default != null:
        return $default(_that.vehicalName, _that.vehicalNumber);
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
    TResult Function(String? vehicalName, String? vehicalNumber) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Jump():
        return $default(_that.vehicalName, _that.vehicalNumber);
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
    TResult? Function(String? vehicalName, String? vehicalNumber)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Jump() when $default != null:
        return $default(_that.vehicalName, _that.vehicalNumber);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Jump implements Jump {
  const _Jump({this.vehicalName, this.vehicalNumber});
  factory _Jump.fromJson(Map<String, dynamic> json) => _$JumpFromJson(json);

  @override
  final String? vehicalName;
  @override
  final String? vehicalNumber;

  /// Create a copy of Jump
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JumpCopyWith<_Jump> get copyWith =>
      __$JumpCopyWithImpl<_Jump>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JumpToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Jump &&
            (identical(other.vehicalName, vehicalName) ||
                other.vehicalName == vehicalName) &&
            (identical(other.vehicalNumber, vehicalNumber) ||
                other.vehicalNumber == vehicalNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vehicalName, vehicalNumber);

  @override
  String toString() {
    return 'Jump(vehicalName: $vehicalName, vehicalNumber: $vehicalNumber)';
  }
}

/// @nodoc
abstract mixin class _$JumpCopyWith<$Res> implements $JumpCopyWith<$Res> {
  factory _$JumpCopyWith(_Jump value, $Res Function(_Jump) _then) =
      __$JumpCopyWithImpl;
  @override
  @useResult
  $Res call({String? vehicalName, String? vehicalNumber});
}

/// @nodoc
class __$JumpCopyWithImpl<$Res> implements _$JumpCopyWith<$Res> {
  __$JumpCopyWithImpl(this._self, this._then);

  final _Jump _self;
  final $Res Function(_Jump) _then;

  /// Create a copy of Jump
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? vehicalName = freezed,
    Object? vehicalNumber = freezed,
  }) {
    return _then(_Jump(
      vehicalName: freezed == vehicalName
          ? _self.vehicalName
          : vehicalName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicalNumber: freezed == vehicalNumber
          ? _self.vehicalNumber
          : vehicalNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
