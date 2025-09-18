// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Config {
  BookedFor get bookedFor;
  RideType get type;
  BookingType get bookingType;
  Accessibility get accessibility;
  String? get scheduledAt;
  String? get customerRiderId;

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConfigCopyWith<Config> get copyWith =>
      _$ConfigCopyWithImpl<Config>(this as Config, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Config &&
            (identical(other.bookedFor, bookedFor) ||
                other.bookedFor == bookedFor) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.bookingType, bookingType) ||
                other.bookingType == bookingType) &&
            (identical(other.accessibility, accessibility) ||
                other.accessibility == accessibility) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.customerRiderId, customerRiderId) ||
                other.customerRiderId == customerRiderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookedFor, type, bookingType,
      accessibility, scheduledAt, customerRiderId);

  @override
  String toString() {
    return 'Config(bookedFor: $bookedFor, type: $type, bookingType: $bookingType, accessibility: $accessibility, scheduledAt: $scheduledAt, customerRiderId: $customerRiderId)';
  }
}

/// @nodoc
abstract mixin class $ConfigCopyWith<$Res> {
  factory $ConfigCopyWith(Config value, $Res Function(Config) _then) =
      _$ConfigCopyWithImpl;
  @useResult
  $Res call(
      {BookedFor bookedFor,
      RideType type,
      BookingType bookingType,
      Accessibility accessibility,
      String? scheduledAt,
      String? customerRiderId});
}

/// @nodoc
class _$ConfigCopyWithImpl<$Res> implements $ConfigCopyWith<$Res> {
  _$ConfigCopyWithImpl(this._self, this._then);

  final Config _self;
  final $Res Function(Config) _then;

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookedFor = null,
    Object? type = null,
    Object? bookingType = null,
    Object? accessibility = null,
    Object? scheduledAt = freezed,
    Object? customerRiderId = freezed,
  }) {
    return _then(_self.copyWith(
      bookedFor: null == bookedFor
          ? _self.bookedFor
          : bookedFor // ignore: cast_nullable_to_non_nullable
              as BookedFor,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RideType,
      bookingType: null == bookingType
          ? _self.bookingType
          : bookingType // ignore: cast_nullable_to_non_nullable
              as BookingType,
      accessibility: null == accessibility
          ? _self.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as Accessibility,
      scheduledAt: freezed == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as String?,
      customerRiderId: freezed == customerRiderId
          ? _self.customerRiderId
          : customerRiderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Config].
extension ConfigPatterns on Config {
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
    TResult Function(_Config value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Config() when $default != null:
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
    TResult Function(_Config value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Config():
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
    TResult? Function(_Config value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Config() when $default != null:
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
            BookedFor bookedFor,
            RideType type,
            BookingType bookingType,
            Accessibility accessibility,
            String? scheduledAt,
            String? customerRiderId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Config() when $default != null:
        return $default(_that.bookedFor, _that.type, _that.bookingType,
            _that.accessibility, _that.scheduledAt, _that.customerRiderId);
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
            BookedFor bookedFor,
            RideType type,
            BookingType bookingType,
            Accessibility accessibility,
            String? scheduledAt,
            String? customerRiderId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Config():
        return $default(_that.bookedFor, _that.type, _that.bookingType,
            _that.accessibility, _that.scheduledAt, _that.customerRiderId);
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
            BookedFor bookedFor,
            RideType type,
            BookingType bookingType,
            Accessibility accessibility,
            String? scheduledAt,
            String? customerRiderId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Config() when $default != null:
        return $default(_that.bookedFor, _that.type, _that.bookingType,
            _that.accessibility, _that.scheduledAt, _that.customerRiderId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Config extends Config {
  const _Config(
      {this.bookedFor = BookedFor.SELF,
      this.type = RideType.ON_DEMAND,
      this.bookingType = BookingType.manual,
      this.accessibility = Accessibility.NONE,
      this.scheduledAt,
      this.customerRiderId})
      : super._();

  @override
  @JsonKey()
  final BookedFor bookedFor;
  @override
  @JsonKey()
  final RideType type;
  @override
  @JsonKey()
  final BookingType bookingType;
  @override
  @JsonKey()
  final Accessibility accessibility;
  @override
  final String? scheduledAt;
  @override
  final String? customerRiderId;

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConfigCopyWith<_Config> get copyWith =>
      __$ConfigCopyWithImpl<_Config>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Config &&
            (identical(other.bookedFor, bookedFor) ||
                other.bookedFor == bookedFor) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.bookingType, bookingType) ||
                other.bookingType == bookingType) &&
            (identical(other.accessibility, accessibility) ||
                other.accessibility == accessibility) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.customerRiderId, customerRiderId) ||
                other.customerRiderId == customerRiderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookedFor, type, bookingType,
      accessibility, scheduledAt, customerRiderId);

  @override
  String toString() {
    return 'Config(bookedFor: $bookedFor, type: $type, bookingType: $bookingType, accessibility: $accessibility, scheduledAt: $scheduledAt, customerRiderId: $customerRiderId)';
  }
}

/// @nodoc
abstract mixin class _$ConfigCopyWith<$Res> implements $ConfigCopyWith<$Res> {
  factory _$ConfigCopyWith(_Config value, $Res Function(_Config) _then) =
      __$ConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {BookedFor bookedFor,
      RideType type,
      BookingType bookingType,
      Accessibility accessibility,
      String? scheduledAt,
      String? customerRiderId});
}

/// @nodoc
class __$ConfigCopyWithImpl<$Res> implements _$ConfigCopyWith<$Res> {
  __$ConfigCopyWithImpl(this._self, this._then);

  final _Config _self;
  final $Res Function(_Config) _then;

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bookedFor = null,
    Object? type = null,
    Object? bookingType = null,
    Object? accessibility = null,
    Object? scheduledAt = freezed,
    Object? customerRiderId = freezed,
  }) {
    return _then(_Config(
      bookedFor: null == bookedFor
          ? _self.bookedFor
          : bookedFor // ignore: cast_nullable_to_non_nullable
              as BookedFor,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RideType,
      bookingType: null == bookingType
          ? _self.bookingType
          : bookingType // ignore: cast_nullable_to_non_nullable
              as BookingType,
      accessibility: null == accessibility
          ? _self.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as Accessibility,
      scheduledAt: freezed == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as String?,
      customerRiderId: freezed == customerRiderId
          ? _self.customerRiderId
          : customerRiderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
