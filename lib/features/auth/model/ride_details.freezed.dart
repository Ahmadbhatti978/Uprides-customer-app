// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RideDetails {
  @JsonKey(name: "ride_id")
  String? get rideId;
  @JsonKey(name: "status")
  String? get status;
  @JsonKey(name: "customer_id")
  String? get customerId;
  @JsonKey(name: "driver_id")
  String? get driverId;
  @JsonKey(name: "canceled")
  bool? get canceled;
  @JsonKey(name: "canceled_by_customer")
  bool? get canceledByCustomer;
  @JsonKey(name: "canceled_by_driver")
  bool? get canceledByDriver;

  /// Create a copy of RideDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideDetailsCopyWith<RideDetails> get copyWith =>
      _$RideDetailsCopyWithImpl<RideDetails>(this as RideDetails, _$identity);

  /// Serializes this RideDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideDetails &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.canceled, canceled) ||
                other.canceled == canceled) &&
            (identical(other.canceledByCustomer, canceledByCustomer) ||
                other.canceledByCustomer == canceledByCustomer) &&
            (identical(other.canceledByDriver, canceledByDriver) ||
                other.canceledByDriver == canceledByDriver));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideId, status, customerId,
      driverId, canceled, canceledByCustomer, canceledByDriver);

  @override
  String toString() {
    return 'RideDetails(rideId: $rideId, status: $status, customerId: $customerId, driverId: $driverId, canceled: $canceled, canceledByCustomer: $canceledByCustomer, canceledByDriver: $canceledByDriver)';
  }
}

/// @nodoc
abstract mixin class $RideDetailsCopyWith<$Res> {
  factory $RideDetailsCopyWith(
          RideDetails value, $Res Function(RideDetails) _then) =
      _$RideDetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "ride_id") String? rideId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "driver_id") String? driverId,
      @JsonKey(name: "canceled") bool? canceled,
      @JsonKey(name: "canceled_by_customer") bool? canceledByCustomer,
      @JsonKey(name: "canceled_by_driver") bool? canceledByDriver});
}

/// @nodoc
class _$RideDetailsCopyWithImpl<$Res> implements $RideDetailsCopyWith<$Res> {
  _$RideDetailsCopyWithImpl(this._self, this._then);

  final RideDetails _self;
  final $Res Function(RideDetails) _then;

  /// Create a copy of RideDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = freezed,
    Object? status = freezed,
    Object? customerId = freezed,
    Object? driverId = freezed,
    Object? canceled = freezed,
    Object? canceledByCustomer = freezed,
    Object? canceledByDriver = freezed,
  }) {
    return _then(_self.copyWith(
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _self.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      canceled: freezed == canceled
          ? _self.canceled
          : canceled // ignore: cast_nullable_to_non_nullable
              as bool?,
      canceledByCustomer: freezed == canceledByCustomer
          ? _self.canceledByCustomer
          : canceledByCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      canceledByDriver: freezed == canceledByDriver
          ? _self.canceledByDriver
          : canceledByDriver // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RideDetails].
extension RideDetailsPatterns on RideDetails {
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
    TResult Function(_RideDetails value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideDetails() when $default != null:
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
    TResult Function(_RideDetails value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideDetails():
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
    TResult? Function(_RideDetails value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideDetails() when $default != null:
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
            @JsonKey(name: "ride_id") String? rideId,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "driver_id") String? driverId,
            @JsonKey(name: "canceled") bool? canceled,
            @JsonKey(name: "canceled_by_customer") bool? canceledByCustomer,
            @JsonKey(name: "canceled_by_driver") bool? canceledByDriver)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideDetails() when $default != null:
        return $default(
            _that.rideId,
            _that.status,
            _that.customerId,
            _that.driverId,
            _that.canceled,
            _that.canceledByCustomer,
            _that.canceledByDriver);
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
            @JsonKey(name: "ride_id") String? rideId,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "driver_id") String? driverId,
            @JsonKey(name: "canceled") bool? canceled,
            @JsonKey(name: "canceled_by_customer") bool? canceledByCustomer,
            @JsonKey(name: "canceled_by_driver") bool? canceledByDriver)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideDetails():
        return $default(
            _that.rideId,
            _that.status,
            _that.customerId,
            _that.driverId,
            _that.canceled,
            _that.canceledByCustomer,
            _that.canceledByDriver);
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
            @JsonKey(name: "ride_id") String? rideId,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "driver_id") String? driverId,
            @JsonKey(name: "canceled") bool? canceled,
            @JsonKey(name: "canceled_by_customer") bool? canceledByCustomer,
            @JsonKey(name: "canceled_by_driver") bool? canceledByDriver)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideDetails() when $default != null:
        return $default(
            _that.rideId,
            _that.status,
            _that.customerId,
            _that.driverId,
            _that.canceled,
            _that.canceledByCustomer,
            _that.canceledByDriver);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RideDetails implements RideDetails {
  const _RideDetails(
      {@JsonKey(name: "ride_id") this.rideId,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "driver_id") this.driverId,
      @JsonKey(name: "canceled") this.canceled,
      @JsonKey(name: "canceled_by_customer") this.canceledByCustomer,
      @JsonKey(name: "canceled_by_driver") this.canceledByDriver});
  factory _RideDetails.fromJson(Map<String, dynamic> json) =>
      _$RideDetailsFromJson(json);

  @override
  @JsonKey(name: "ride_id")
  final String? rideId;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "driver_id")
  final String? driverId;
  @override
  @JsonKey(name: "canceled")
  final bool? canceled;
  @override
  @JsonKey(name: "canceled_by_customer")
  final bool? canceledByCustomer;
  @override
  @JsonKey(name: "canceled_by_driver")
  final bool? canceledByDriver;

  /// Create a copy of RideDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideDetailsCopyWith<_RideDetails> get copyWith =>
      __$RideDetailsCopyWithImpl<_RideDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideDetails &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.canceled, canceled) ||
                other.canceled == canceled) &&
            (identical(other.canceledByCustomer, canceledByCustomer) ||
                other.canceledByCustomer == canceledByCustomer) &&
            (identical(other.canceledByDriver, canceledByDriver) ||
                other.canceledByDriver == canceledByDriver));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideId, status, customerId,
      driverId, canceled, canceledByCustomer, canceledByDriver);

  @override
  String toString() {
    return 'RideDetails(rideId: $rideId, status: $status, customerId: $customerId, driverId: $driverId, canceled: $canceled, canceledByCustomer: $canceledByCustomer, canceledByDriver: $canceledByDriver)';
  }
}

/// @nodoc
abstract mixin class _$RideDetailsCopyWith<$Res>
    implements $RideDetailsCopyWith<$Res> {
  factory _$RideDetailsCopyWith(
          _RideDetails value, $Res Function(_RideDetails) _then) =
      __$RideDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ride_id") String? rideId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "driver_id") String? driverId,
      @JsonKey(name: "canceled") bool? canceled,
      @JsonKey(name: "canceled_by_customer") bool? canceledByCustomer,
      @JsonKey(name: "canceled_by_driver") bool? canceledByDriver});
}

/// @nodoc
class __$RideDetailsCopyWithImpl<$Res> implements _$RideDetailsCopyWith<$Res> {
  __$RideDetailsCopyWithImpl(this._self, this._then);

  final _RideDetails _self;
  final $Res Function(_RideDetails) _then;

  /// Create a copy of RideDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rideId = freezed,
    Object? status = freezed,
    Object? customerId = freezed,
    Object? driverId = freezed,
    Object? canceled = freezed,
    Object? canceledByCustomer = freezed,
    Object? canceledByDriver = freezed,
  }) {
    return _then(_RideDetails(
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _self.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      canceled: freezed == canceled
          ? _self.canceled
          : canceled // ignore: cast_nullable_to_non_nullable
              as bool?,
      canceledByCustomer: freezed == canceledByCustomer
          ? _self.canceledByCustomer
          : canceledByCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      canceledByDriver: freezed == canceledByDriver
          ? _self.canceledByDriver
          : canceledByDriver // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
