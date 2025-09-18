// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Rider {
  @JsonKey(name: 'customer_id')
  String? get customerId;
  @JsonKey(name: 'phone')
  String? get phone;
  @JsonKey(name: 'full_name')
  String? get fullName;
  @JsonKey(name: 'is_deleted')
  bool? get isDeleted;
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of Rider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RiderCopyWith<Rider> get copyWith =>
      _$RiderCopyWithImpl<Rider>(this as Rider, _$identity);

  /// Serializes this Rider to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Rider &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, customerId, phone, fullName, isDeleted, id);

  @override
  String toString() {
    return 'Rider(customerId: $customerId, phone: $phone, fullName: $fullName, isDeleted: $isDeleted, id: $id)';
  }
}

/// @nodoc
abstract mixin class $RiderCopyWith<$Res> {
  factory $RiderCopyWith(Rider value, $Res Function(Rider) _then) =
      _$RiderCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') String? customerId,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'is_deleted') bool? isDeleted,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$RiderCopyWithImpl<$Res> implements $RiderCopyWith<$Res> {
  _$RiderCopyWithImpl(this._self, this._then);

  final Rider _self;
  final $Res Function(Rider) _then;

  /// Create a copy of Rider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
    Object? phone = freezed,
    Object? fullName = freezed,
    Object? isDeleted = freezed,
    Object? id = freezed,
  }) {
    return _then(_self.copyWith(
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Rider].
extension RiderPatterns on Rider {
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
    TResult Function(_Rider value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Rider() when $default != null:
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
    TResult Function(_Rider value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Rider():
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
    TResult? Function(_Rider value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Rider() when $default != null:
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
            @JsonKey(name: 'customer_id') String? customerId,
            @JsonKey(name: 'phone') String? phone,
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'is_deleted') bool? isDeleted,
            @JsonKey(name: 'id') String? id)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Rider() when $default != null:
        return $default(_that.customerId, _that.phone, _that.fullName,
            _that.isDeleted, _that.id);
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
            @JsonKey(name: 'customer_id') String? customerId,
            @JsonKey(name: 'phone') String? phone,
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'is_deleted') bool? isDeleted,
            @JsonKey(name: 'id') String? id)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Rider():
        return $default(_that.customerId, _that.phone, _that.fullName,
            _that.isDeleted, _that.id);
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
            @JsonKey(name: 'customer_id') String? customerId,
            @JsonKey(name: 'phone') String? phone,
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'is_deleted') bool? isDeleted,
            @JsonKey(name: 'id') String? id)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Rider() when $default != null:
        return $default(_that.customerId, _that.phone, _that.fullName,
            _that.isDeleted, _that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Rider implements Rider {
  const _Rider(
      {@JsonKey(name: 'customer_id') this.customerId,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'is_deleted') this.isDeleted,
      @JsonKey(name: 'id') this.id});
  factory _Rider.fromJson(Map<String, dynamic> json) => _$RiderFromJson(json);

  @override
  @JsonKey(name: 'customer_id')
  final String? customerId;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'is_deleted')
  final bool? isDeleted;
  @override
  @JsonKey(name: 'id')
  final String? id;

  /// Create a copy of Rider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RiderCopyWith<_Rider> get copyWith =>
      __$RiderCopyWithImpl<_Rider>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RiderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rider &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, customerId, phone, fullName, isDeleted, id);

  @override
  String toString() {
    return 'Rider(customerId: $customerId, phone: $phone, fullName: $fullName, isDeleted: $isDeleted, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$RiderCopyWith<$Res> implements $RiderCopyWith<$Res> {
  factory _$RiderCopyWith(_Rider value, $Res Function(_Rider) _then) =
      __$RiderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') String? customerId,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'is_deleted') bool? isDeleted,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$RiderCopyWithImpl<$Res> implements _$RiderCopyWith<$Res> {
  __$RiderCopyWithImpl(this._self, this._then);

  final _Rider _self;
  final $Res Function(_Rider) _then;

  /// Create a copy of Rider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerId = freezed,
    Object? phone = freezed,
    Object? fullName = freezed,
    Object? isDeleted = freezed,
    Object? id = freezed,
  }) {
    return _then(_Rider(
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
