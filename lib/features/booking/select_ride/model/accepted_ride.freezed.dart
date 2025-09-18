// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accepted_ride.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RideAccept {
  String? get type;
  RidePayload? get payload;
  bool? get requiresDeliveryTracking;
  Map<String, dynamic>? get metadata;

  /// Create a copy of RideAccept
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideAcceptCopyWith<RideAccept> get copyWith =>
      _$RideAcceptCopyWithImpl<RideAccept>(this as RideAccept, _$identity);

  /// Serializes this RideAccept to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideAccept &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(
                    other.requiresDeliveryTracking, requiresDeliveryTracking) ||
                other.requiresDeliveryTracking == requiresDeliveryTracking) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, payload,
      requiresDeliveryTracking, const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'RideAccept(type: $type, payload: $payload, requiresDeliveryTracking: $requiresDeliveryTracking, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $RideAcceptCopyWith<$Res> {
  factory $RideAcceptCopyWith(
          RideAccept value, $Res Function(RideAccept) _then) =
      _$RideAcceptCopyWithImpl;
  @useResult
  $Res call(
      {String? type,
      RidePayload? payload,
      bool? requiresDeliveryTracking,
      Map<String, dynamic>? metadata});

  $RidePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$RideAcceptCopyWithImpl<$Res> implements $RideAcceptCopyWith<$Res> {
  _$RideAcceptCopyWithImpl(this._self, this._then);

  final RideAccept _self;
  final $Res Function(RideAccept) _then;

  /// Create a copy of RideAccept
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? payload = freezed,
    Object? requiresDeliveryTracking = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as RidePayload?,
      requiresDeliveryTracking: freezed == requiresDeliveryTracking
          ? _self.requiresDeliveryTracking
          : requiresDeliveryTracking // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of RideAccept
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RidePayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
      return null;
    }

    return $RidePayloadCopyWith<$Res>(_self.payload!, (value) {
      return _then(_self.copyWith(payload: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RideAccept].
extension RideAcceptPatterns on RideAccept {
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
    TResult Function(_RideAccept value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideAccept() when $default != null:
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
    TResult Function(_RideAccept value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideAccept():
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
    TResult? Function(_RideAccept value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideAccept() when $default != null:
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
    TResult Function(String? type, RidePayload? payload,
            bool? requiresDeliveryTracking, Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideAccept() when $default != null:
        return $default(_that.type, _that.payload,
            _that.requiresDeliveryTracking, _that.metadata);
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
    TResult Function(String? type, RidePayload? payload,
            bool? requiresDeliveryTracking, Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideAccept():
        return $default(_that.type, _that.payload,
            _that.requiresDeliveryTracking, _that.metadata);
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
    TResult? Function(String? type, RidePayload? payload,
            bool? requiresDeliveryTracking, Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideAccept() when $default != null:
        return $default(_that.type, _that.payload,
            _that.requiresDeliveryTracking, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RideAccept implements RideAccept {
  const _RideAccept(
      {this.type,
      this.payload,
      this.requiresDeliveryTracking,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _RideAccept.fromJson(Map<String, dynamic> json) =>
      _$RideAcceptFromJson(json);

  @override
  final String? type;
  @override
  final RidePayload? payload;
  @override
  final bool? requiresDeliveryTracking;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of RideAccept
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideAcceptCopyWith<_RideAccept> get copyWith =>
      __$RideAcceptCopyWithImpl<_RideAccept>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideAcceptToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideAccept &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(
                    other.requiresDeliveryTracking, requiresDeliveryTracking) ||
                other.requiresDeliveryTracking == requiresDeliveryTracking) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, payload,
      requiresDeliveryTracking, const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'RideAccept(type: $type, payload: $payload, requiresDeliveryTracking: $requiresDeliveryTracking, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$RideAcceptCopyWith<$Res>
    implements $RideAcceptCopyWith<$Res> {
  factory _$RideAcceptCopyWith(
          _RideAccept value, $Res Function(_RideAccept) _then) =
      __$RideAcceptCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? type,
      RidePayload? payload,
      bool? requiresDeliveryTracking,
      Map<String, dynamic>? metadata});

  @override
  $RidePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$RideAcceptCopyWithImpl<$Res> implements _$RideAcceptCopyWith<$Res> {
  __$RideAcceptCopyWithImpl(this._self, this._then);

  final _RideAccept _self;
  final $Res Function(_RideAccept) _then;

  /// Create a copy of RideAccept
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? payload = freezed,
    Object? requiresDeliveryTracking = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_RideAccept(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as RidePayload?,
      requiresDeliveryTracking: freezed == requiresDeliveryTracking
          ? _self.requiresDeliveryTracking
          : requiresDeliveryTracking // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of RideAccept
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RidePayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
      return null;
    }

    return $RidePayloadCopyWith<$Res>(_self.payload!, (value) {
      return _then(_self.copyWith(payload: value));
    });
  }
}

/// @nodoc
mixin _$RidePayload {
  Driver get driver;
  Vehicle get vehicle;
  @JsonKey(name: 'pin')
  String? get pin;
  @JsonKey(name: 'conversation_id')
  String? get conversationId;
  @JsonKey(name: 'driver_polyline')
  String? get driverPolyline;

  /// Create a copy of RidePayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RidePayloadCopyWith<RidePayload> get copyWith =>
      _$RidePayloadCopyWithImpl<RidePayload>(this as RidePayload, _$identity);

  /// Serializes this RidePayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RidePayload &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.driverPolyline, driverPolyline) ||
                other.driverPolyline == driverPolyline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, driver, vehicle, pin, conversationId, driverPolyline);

  @override
  String toString() {
    return 'RidePayload(driver: $driver, vehicle: $vehicle, pin: $pin, conversationId: $conversationId, driverPolyline: $driverPolyline)';
  }
}

/// @nodoc
abstract mixin class $RidePayloadCopyWith<$Res> {
  factory $RidePayloadCopyWith(
          RidePayload value, $Res Function(RidePayload) _then) =
      _$RidePayloadCopyWithImpl;
  @useResult
  $Res call(
      {Driver driver,
      Vehicle vehicle,
      @JsonKey(name: 'pin') String? pin,
      @JsonKey(name: 'conversation_id') String? conversationId,
      @JsonKey(name: 'driver_polyline') String? driverPolyline});

  $DriverCopyWith<$Res> get driver;
  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class _$RidePayloadCopyWithImpl<$Res> implements $RidePayloadCopyWith<$Res> {
  _$RidePayloadCopyWithImpl(this._self, this._then);

  final RidePayload _self;
  final $Res Function(RidePayload) _then;

  /// Create a copy of RidePayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driver = null,
    Object? vehicle = null,
    Object? pin = freezed,
    Object? conversationId = freezed,
    Object? driverPolyline = freezed,
  }) {
    return _then(_self.copyWith(
      driver: null == driver
          ? _self.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver,
      vehicle: null == vehicle
          ? _self.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      pin: freezed == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationId: freezed == conversationId
          ? _self.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverPolyline: freezed == driverPolyline
          ? _self.driverPolyline
          : driverPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RidePayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverCopyWith<$Res> get driver {
    return $DriverCopyWith<$Res>(_self.driver, (value) {
      return _then(_self.copyWith(driver: value));
    });
  }

  /// Create a copy of RidePayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res> get vehicle {
    return $VehicleCopyWith<$Res>(_self.vehicle, (value) {
      return _then(_self.copyWith(vehicle: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RidePayload].
extension RidePayloadPatterns on RidePayload {
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
    TResult Function(_RidePayload value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RidePayload() when $default != null:
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
    TResult Function(_RidePayload value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePayload():
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
    TResult? Function(_RidePayload value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePayload() when $default != null:
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
            Driver driver,
            Vehicle vehicle,
            @JsonKey(name: 'pin') String? pin,
            @JsonKey(name: 'conversation_id') String? conversationId,
            @JsonKey(name: 'driver_polyline') String? driverPolyline)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RidePayload() when $default != null:
        return $default(_that.driver, _that.vehicle, _that.pin,
            _that.conversationId, _that.driverPolyline);
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
            Driver driver,
            Vehicle vehicle,
            @JsonKey(name: 'pin') String? pin,
            @JsonKey(name: 'conversation_id') String? conversationId,
            @JsonKey(name: 'driver_polyline') String? driverPolyline)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePayload():
        return $default(_that.driver, _that.vehicle, _that.pin,
            _that.conversationId, _that.driverPolyline);
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
            Driver driver,
            Vehicle vehicle,
            @JsonKey(name: 'pin') String? pin,
            @JsonKey(name: 'conversation_id') String? conversationId,
            @JsonKey(name: 'driver_polyline') String? driverPolyline)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePayload() when $default != null:
        return $default(_that.driver, _that.vehicle, _that.pin,
            _that.conversationId, _that.driverPolyline);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RidePayload implements RidePayload {
  const _RidePayload(
      {required this.driver,
      required this.vehicle,
      @JsonKey(name: 'pin') this.pin,
      @JsonKey(name: 'conversation_id') this.conversationId,
      @JsonKey(name: 'driver_polyline') this.driverPolyline});
  factory _RidePayload.fromJson(Map<String, dynamic> json) =>
      _$RidePayloadFromJson(json);

  @override
  final Driver driver;
  @override
  final Vehicle vehicle;
  @override
  @JsonKey(name: 'pin')
  final String? pin;
  @override
  @JsonKey(name: 'conversation_id')
  final String? conversationId;
  @override
  @JsonKey(name: 'driver_polyline')
  final String? driverPolyline;

  /// Create a copy of RidePayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RidePayloadCopyWith<_RidePayload> get copyWith =>
      __$RidePayloadCopyWithImpl<_RidePayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RidePayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RidePayload &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.driverPolyline, driverPolyline) ||
                other.driverPolyline == driverPolyline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, driver, vehicle, pin, conversationId, driverPolyline);

  @override
  String toString() {
    return 'RidePayload(driver: $driver, vehicle: $vehicle, pin: $pin, conversationId: $conversationId, driverPolyline: $driverPolyline)';
  }
}

/// @nodoc
abstract mixin class _$RidePayloadCopyWith<$Res>
    implements $RidePayloadCopyWith<$Res> {
  factory _$RidePayloadCopyWith(
          _RidePayload value, $Res Function(_RidePayload) _then) =
      __$RidePayloadCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Driver driver,
      Vehicle vehicle,
      @JsonKey(name: 'pin') String? pin,
      @JsonKey(name: 'conversation_id') String? conversationId,
      @JsonKey(name: 'driver_polyline') String? driverPolyline});

  @override
  $DriverCopyWith<$Res> get driver;
  @override
  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$RidePayloadCopyWithImpl<$Res> implements _$RidePayloadCopyWith<$Res> {
  __$RidePayloadCopyWithImpl(this._self, this._then);

  final _RidePayload _self;
  final $Res Function(_RidePayload) _then;

  /// Create a copy of RidePayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? driver = null,
    Object? vehicle = null,
    Object? pin = freezed,
    Object? conversationId = freezed,
    Object? driverPolyline = freezed,
  }) {
    return _then(_RidePayload(
      driver: null == driver
          ? _self.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver,
      vehicle: null == vehicle
          ? _self.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      pin: freezed == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationId: freezed == conversationId
          ? _self.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverPolyline: freezed == driverPolyline
          ? _self.driverPolyline
          : driverPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RidePayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverCopyWith<$Res> get driver {
    return $DriverCopyWith<$Res>(_self.driver, (value) {
      return _then(_self.copyWith(driver: value));
    });
  }

  /// Create a copy of RidePayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res> get vehicle {
    return $VehicleCopyWith<$Res>(_self.vehicle, (value) {
      return _then(_self.copyWith(vehicle: value));
    });
  }
}

/// @nodoc
mixin _$Driver {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'full_name')
  String? get fullName;
  @JsonKey(name: 'profile_pic')
  String? get profilePic;
  @JsonKey(name: 'current_location')
  Coordinate? get currentLocation;
  double? get ratings;

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DriverCopyWith<Driver> get copyWith =>
      _$DriverCopyWithImpl<Driver>(this as Driver, _$identity);

  /// Serializes this Driver to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Driver &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.ratings, ratings) || other.ratings == ratings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fullName, profilePic, currentLocation, ratings);

  @override
  String toString() {
    return 'Driver(id: $id, fullName: $fullName, profilePic: $profilePic, currentLocation: $currentLocation, ratings: $ratings)';
  }
}

/// @nodoc
abstract mixin class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) _then) =
      _$DriverCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'profile_pic') String? profilePic,
      @JsonKey(name: 'current_location') Coordinate? currentLocation,
      double? ratings});

  $CoordinateCopyWith<$Res>? get currentLocation;
}

/// @nodoc
class _$DriverCopyWithImpl<$Res> implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._self, this._then);

  final Driver _self;
  final $Res Function(Driver) _then;

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? profilePic = freezed,
    Object? currentLocation = freezed,
    Object? ratings = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _self.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      currentLocation: freezed == currentLocation
          ? _self.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      ratings: freezed == ratings
          ? _self.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get currentLocation {
    if (_self.currentLocation == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.currentLocation!, (value) {
      return _then(_self.copyWith(currentLocation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Driver].
extension DriverPatterns on Driver {
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
    TResult Function(_Driver value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Driver() when $default != null:
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
    TResult Function(_Driver value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Driver():
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
    TResult? Function(_Driver value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Driver() when $default != null:
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'profile_pic') String? profilePic,
            @JsonKey(name: 'current_location') Coordinate? currentLocation,
            double? ratings)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Driver() when $default != null:
        return $default(_that.id, _that.fullName, _that.profilePic,
            _that.currentLocation, _that.ratings);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'profile_pic') String? profilePic,
            @JsonKey(name: 'current_location') Coordinate? currentLocation,
            double? ratings)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Driver():
        return $default(_that.id, _that.fullName, _that.profilePic,
            _that.currentLocation, _that.ratings);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'profile_pic') String? profilePic,
            @JsonKey(name: 'current_location') Coordinate? currentLocation,
            double? ratings)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Driver() when $default != null:
        return $default(_that.id, _that.fullName, _that.profilePic,
            _that.currentLocation, _that.ratings);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Driver implements Driver {
  const _Driver(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'profile_pic') this.profilePic,
      @JsonKey(name: 'current_location') this.currentLocation,
      this.ratings});
  factory _Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'profile_pic')
  final String? profilePic;
  @override
  @JsonKey(name: 'current_location')
  final Coordinate? currentLocation;
  @override
  final double? ratings;

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DriverCopyWith<_Driver> get copyWith =>
      __$DriverCopyWithImpl<_Driver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DriverToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Driver &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.ratings, ratings) || other.ratings == ratings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fullName, profilePic, currentLocation, ratings);

  @override
  String toString() {
    return 'Driver(id: $id, fullName: $fullName, profilePic: $profilePic, currentLocation: $currentLocation, ratings: $ratings)';
  }
}

/// @nodoc
abstract mixin class _$DriverCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$DriverCopyWith(_Driver value, $Res Function(_Driver) _then) =
      __$DriverCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'profile_pic') String? profilePic,
      @JsonKey(name: 'current_location') Coordinate? currentLocation,
      double? ratings});

  @override
  $CoordinateCopyWith<$Res>? get currentLocation;
}

/// @nodoc
class __$DriverCopyWithImpl<$Res> implements _$DriverCopyWith<$Res> {
  __$DriverCopyWithImpl(this._self, this._then);

  final _Driver _self;
  final $Res Function(_Driver) _then;

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? profilePic = freezed,
    Object? currentLocation = freezed,
    Object? ratings = freezed,
  }) {
    return _then(_Driver(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _self.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      currentLocation: freezed == currentLocation
          ? _self.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      ratings: freezed == ratings
          ? _self.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get currentLocation {
    if (_self.currentLocation == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.currentLocation!, (value) {
      return _then(_self.copyWith(currentLocation: value));
    });
  }
}

/// @nodoc
mixin _$Vehicle {
  String? get name;
  String? get vin;
  String? get color;
  String? get image;
  @JsonKey(name: 'vehicle_type')
  String? get vehicleType;
  String? get model;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<Vehicle> get copyWith =>
      _$VehicleCopyWithImpl<Vehicle>(this as Vehicle, _$identity);

  /// Serializes this Vehicle to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Vehicle &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, vin, color, image, vehicleType, model);

  @override
  String toString() {
    return 'Vehicle(name: $name, vin: $vin, color: $color, image: $image, vehicleType: $vehicleType, model: $model)';
  }
}

/// @nodoc
abstract mixin class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) _then) =
      _$VehicleCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      String? vin,
      String? color,
      String? image,
      @JsonKey(name: 'vehicle_type') String? vehicleType,
      String? model});
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res> implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._self, this._then);

  final Vehicle _self;
  final $Res Function(Vehicle) _then;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? vin = freezed,
    Object? color = freezed,
    Object? image = freezed,
    Object? vehicleType = freezed,
    Object? model = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _self.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Vehicle].
extension VehiclePatterns on Vehicle {
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
    TResult Function(_Vehicle value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Vehicle() when $default != null:
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
    TResult Function(_Vehicle value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Vehicle():
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
    TResult? Function(_Vehicle value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Vehicle() when $default != null:
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
    TResult Function(String? name, String? vin, String? color, String? image,
            @JsonKey(name: 'vehicle_type') String? vehicleType, String? model)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Vehicle() when $default != null:
        return $default(_that.name, _that.vin, _that.color, _that.image,
            _that.vehicleType, _that.model);
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
    TResult Function(String? name, String? vin, String? color, String? image,
            @JsonKey(name: 'vehicle_type') String? vehicleType, String? model)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Vehicle():
        return $default(_that.name, _that.vin, _that.color, _that.image,
            _that.vehicleType, _that.model);
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
    TResult? Function(String? name, String? vin, String? color, String? image,
            @JsonKey(name: 'vehicle_type') String? vehicleType, String? model)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Vehicle() when $default != null:
        return $default(_that.name, _that.vin, _that.color, _that.image,
            _that.vehicleType, _that.model);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Vehicle implements Vehicle {
  const _Vehicle(
      {this.name,
      this.vin,
      this.color,
      this.image,
      @JsonKey(name: 'vehicle_type') this.vehicleType,
      this.model});
  factory _Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);

  @override
  final String? name;
  @override
  final String? vin;
  @override
  final String? color;
  @override
  final String? image;
  @override
  @JsonKey(name: 'vehicle_type')
  final String? vehicleType;
  @override
  final String? model;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VehicleCopyWith<_Vehicle> get copyWith =>
      __$VehicleCopyWithImpl<_Vehicle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VehicleToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Vehicle &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, vin, color, image, vehicleType, model);

  @override
  String toString() {
    return 'Vehicle(name: $name, vin: $vin, color: $color, image: $image, vehicleType: $vehicleType, model: $model)';
  }
}

/// @nodoc
abstract mixin class _$VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$VehicleCopyWith(_Vehicle value, $Res Function(_Vehicle) _then) =
      __$VehicleCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      String? vin,
      String? color,
      String? image,
      @JsonKey(name: 'vehicle_type') String? vehicleType,
      String? model});
}

/// @nodoc
class __$VehicleCopyWithImpl<$Res> implements _$VehicleCopyWith<$Res> {
  __$VehicleCopyWithImpl(this._self, this._then);

  final _Vehicle _self;
  final $Res Function(_Vehicle) _then;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? vin = freezed,
    Object? color = freezed,
    Object? image = freezed,
    Object? vehicleType = freezed,
    Object? model = freezed,
  }) {
    return _then(_Vehicle(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _self.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
