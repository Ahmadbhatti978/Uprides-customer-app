// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_payment_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RidePaymentResponse {
  @PayloadConverter()
  RidePaymentPayload? get payload;
  @JsonKey(name: 'requiresDeliveryTracking')
  bool? get requiresDeliveryTracking;
  String? get body;

  /// Create a copy of RidePaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RidePaymentResponseCopyWith<RidePaymentResponse> get copyWith =>
      _$RidePaymentResponseCopyWithImpl<RidePaymentResponse>(
          this as RidePaymentResponse, _$identity);

  /// Serializes this RidePaymentResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RidePaymentResponse &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(
                    other.requiresDeliveryTracking, requiresDeliveryTracking) ||
                other.requiresDeliveryTracking == requiresDeliveryTracking) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, payload, requiresDeliveryTracking, body);

  @override
  String toString() {
    return 'RidePaymentResponse(payload: $payload, requiresDeliveryTracking: $requiresDeliveryTracking, body: $body)';
  }
}

/// @nodoc
abstract mixin class $RidePaymentResponseCopyWith<$Res> {
  factory $RidePaymentResponseCopyWith(
          RidePaymentResponse value, $Res Function(RidePaymentResponse) _then) =
      _$RidePaymentResponseCopyWithImpl;
  @useResult
  $Res call(
      {@PayloadConverter() RidePaymentPayload? payload,
      @JsonKey(name: 'requiresDeliveryTracking') bool? requiresDeliveryTracking,
      String? body});

  $RidePaymentPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$RidePaymentResponseCopyWithImpl<$Res>
    implements $RidePaymentResponseCopyWith<$Res> {
  _$RidePaymentResponseCopyWithImpl(this._self, this._then);

  final RidePaymentResponse _self;
  final $Res Function(RidePaymentResponse) _then;

  /// Create a copy of RidePaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = freezed,
    Object? requiresDeliveryTracking = freezed,
    Object? body = freezed,
  }) {
    return _then(_self.copyWith(
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as RidePaymentPayload?,
      requiresDeliveryTracking: freezed == requiresDeliveryTracking
          ? _self.requiresDeliveryTracking
          : requiresDeliveryTracking // ignore: cast_nullable_to_non_nullable
              as bool?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RidePaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RidePaymentPayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
      return null;
    }

    return $RidePaymentPayloadCopyWith<$Res>(_self.payload!, (value) {
      return _then(_self.copyWith(payload: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RidePaymentResponse].
extension RidePaymentResponsePatterns on RidePaymentResponse {
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
    TResult Function(_RidePaymentResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RidePaymentResponse() when $default != null:
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
    TResult Function(_RidePaymentResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentResponse():
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
    TResult? Function(_RidePaymentResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentResponse() when $default != null:
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
            @PayloadConverter() RidePaymentPayload? payload,
            @JsonKey(name: 'requiresDeliveryTracking')
            bool? requiresDeliveryTracking,
            String? body)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RidePaymentResponse() when $default != null:
        return $default(
            _that.payload, _that.requiresDeliveryTracking, _that.body);
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
            @PayloadConverter() RidePaymentPayload? payload,
            @JsonKey(name: 'requiresDeliveryTracking')
            bool? requiresDeliveryTracking,
            String? body)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentResponse():
        return $default(
            _that.payload, _that.requiresDeliveryTracking, _that.body);
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
            @PayloadConverter() RidePaymentPayload? payload,
            @JsonKey(name: 'requiresDeliveryTracking')
            bool? requiresDeliveryTracking,
            String? body)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentResponse() when $default != null:
        return $default(
            _that.payload, _that.requiresDeliveryTracking, _that.body);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RidePaymentResponse implements RidePaymentResponse {
  const _RidePaymentResponse(
      {@PayloadConverter() this.payload,
      @JsonKey(name: 'requiresDeliveryTracking') this.requiresDeliveryTracking,
      this.body});
  factory _RidePaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$RidePaymentResponseFromJson(json);

  @override
  @PayloadConverter()
  final RidePaymentPayload? payload;
  @override
  @JsonKey(name: 'requiresDeliveryTracking')
  final bool? requiresDeliveryTracking;
  @override
  final String? body;

  /// Create a copy of RidePaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RidePaymentResponseCopyWith<_RidePaymentResponse> get copyWith =>
      __$RidePaymentResponseCopyWithImpl<_RidePaymentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RidePaymentResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RidePaymentResponse &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(
                    other.requiresDeliveryTracking, requiresDeliveryTracking) ||
                other.requiresDeliveryTracking == requiresDeliveryTracking) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, payload, requiresDeliveryTracking, body);

  @override
  String toString() {
    return 'RidePaymentResponse(payload: $payload, requiresDeliveryTracking: $requiresDeliveryTracking, body: $body)';
  }
}

/// @nodoc
abstract mixin class _$RidePaymentResponseCopyWith<$Res>
    implements $RidePaymentResponseCopyWith<$Res> {
  factory _$RidePaymentResponseCopyWith(_RidePaymentResponse value,
          $Res Function(_RidePaymentResponse) _then) =
      __$RidePaymentResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@PayloadConverter() RidePaymentPayload? payload,
      @JsonKey(name: 'requiresDeliveryTracking') bool? requiresDeliveryTracking,
      String? body});

  @override
  $RidePaymentPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$RidePaymentResponseCopyWithImpl<$Res>
    implements _$RidePaymentResponseCopyWith<$Res> {
  __$RidePaymentResponseCopyWithImpl(this._self, this._then);

  final _RidePaymentResponse _self;
  final $Res Function(_RidePaymentResponse) _then;

  /// Create a copy of RidePaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? payload = freezed,
    Object? requiresDeliveryTracking = freezed,
    Object? body = freezed,
  }) {
    return _then(_RidePaymentResponse(
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as RidePaymentPayload?,
      requiresDeliveryTracking: freezed == requiresDeliveryTracking
          ? _self.requiresDeliveryTracking
          : requiresDeliveryTracking // ignore: cast_nullable_to_non_nullable
              as bool?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RidePaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RidePaymentPayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
      return null;
    }

    return $RidePaymentPayloadCopyWith<$Res>(_self.payload!, (value) {
      return _then(_self.copyWith(payload: value));
    });
  }
}

/// @nodoc
mixin _$RidePaymentPayload {
  @JsonKey(name: 'type')
  String? get type;
  @JsonKey(name: 'payload')
  RideDetails? get rideDetails;

  /// Create a copy of RidePaymentPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RidePaymentPayloadCopyWith<RidePaymentPayload> get copyWith =>
      _$RidePaymentPayloadCopyWithImpl<RidePaymentPayload>(
          this as RidePaymentPayload, _$identity);

  /// Serializes this RidePaymentPayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RidePaymentPayload &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rideDetails, rideDetails) ||
                other.rideDetails == rideDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, rideDetails);

  @override
  String toString() {
    return 'RidePaymentPayload(type: $type, rideDetails: $rideDetails)';
  }
}

/// @nodoc
abstract mixin class $RidePaymentPayloadCopyWith<$Res> {
  factory $RidePaymentPayloadCopyWith(
          RidePaymentPayload value, $Res Function(RidePaymentPayload) _then) =
      _$RidePaymentPayloadCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'payload') RideDetails? rideDetails});

  $RideDetailsCopyWith<$Res>? get rideDetails;
}

/// @nodoc
class _$RidePaymentPayloadCopyWithImpl<$Res>
    implements $RidePaymentPayloadCopyWith<$Res> {
  _$RidePaymentPayloadCopyWithImpl(this._self, this._then);

  final RidePaymentPayload _self;
  final $Res Function(RidePaymentPayload) _then;

  /// Create a copy of RidePaymentPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? rideDetails = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rideDetails: freezed == rideDetails
          ? _self.rideDetails
          : rideDetails // ignore: cast_nullable_to_non_nullable
              as RideDetails?,
    ));
  }

  /// Create a copy of RidePaymentPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideDetailsCopyWith<$Res>? get rideDetails {
    if (_self.rideDetails == null) {
      return null;
    }

    return $RideDetailsCopyWith<$Res>(_self.rideDetails!, (value) {
      return _then(_self.copyWith(rideDetails: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RidePaymentPayload].
extension RidePaymentPayloadPatterns on RidePaymentPayload {
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
    TResult Function(_RidePaymentPayload value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RidePaymentPayload() when $default != null:
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
    TResult Function(_RidePaymentPayload value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentPayload():
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
    TResult? Function(_RidePaymentPayload value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentPayload() when $default != null:
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
    TResult Function(@JsonKey(name: 'type') String? type,
            @JsonKey(name: 'payload') RideDetails? rideDetails)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RidePaymentPayload() when $default != null:
        return $default(_that.type, _that.rideDetails);
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
    TResult Function(@JsonKey(name: 'type') String? type,
            @JsonKey(name: 'payload') RideDetails? rideDetails)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentPayload():
        return $default(_that.type, _that.rideDetails);
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
    TResult? Function(@JsonKey(name: 'type') String? type,
            @JsonKey(name: 'payload') RideDetails? rideDetails)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentPayload() when $default != null:
        return $default(_that.type, _that.rideDetails);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RidePaymentPayload implements RidePaymentPayload {
  const _RidePaymentPayload(
      {@JsonKey(name: 'type') this.type,
      @JsonKey(name: 'payload') this.rideDetails});
  factory _RidePaymentPayload.fromJson(Map<String, dynamic> json) =>
      _$RidePaymentPayloadFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'payload')
  final RideDetails? rideDetails;

  /// Create a copy of RidePaymentPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RidePaymentPayloadCopyWith<_RidePaymentPayload> get copyWith =>
      __$RidePaymentPayloadCopyWithImpl<_RidePaymentPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RidePaymentPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RidePaymentPayload &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rideDetails, rideDetails) ||
                other.rideDetails == rideDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, rideDetails);

  @override
  String toString() {
    return 'RidePaymentPayload(type: $type, rideDetails: $rideDetails)';
  }
}

/// @nodoc
abstract mixin class _$RidePaymentPayloadCopyWith<$Res>
    implements $RidePaymentPayloadCopyWith<$Res> {
  factory _$RidePaymentPayloadCopyWith(
          _RidePaymentPayload value, $Res Function(_RidePaymentPayload) _then) =
      __$RidePaymentPayloadCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'payload') RideDetails? rideDetails});

  @override
  $RideDetailsCopyWith<$Res>? get rideDetails;
}

/// @nodoc
class __$RidePaymentPayloadCopyWithImpl<$Res>
    implements _$RidePaymentPayloadCopyWith<$Res> {
  __$RidePaymentPayloadCopyWithImpl(this._self, this._then);

  final _RidePaymentPayload _self;
  final $Res Function(_RidePaymentPayload) _then;

  /// Create a copy of RidePaymentPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? rideDetails = freezed,
  }) {
    return _then(_RidePaymentPayload(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rideDetails: freezed == rideDetails
          ? _self.rideDetails
          : rideDetails // ignore: cast_nullable_to_non_nullable
              as RideDetails?,
    ));
  }

  /// Create a copy of RidePaymentPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideDetailsCopyWith<$Res>? get rideDetails {
    if (_self.rideDetails == null) {
      return null;
    }

    return $RideDetailsCopyWith<$Res>(_self.rideDetails!, (value) {
      return _then(_self.copyWith(rideDetails: value));
    });
  }
}

/// @nodoc
mixin _$RideDetails {
  String? get accessability;
  @JsonKey(name: 'distance_in_meters')
  int? get distanceInMeters;
  @JsonKey(name: 'eta_in_seconds')
  int? get etaInSeconds;
  Location? get location;
  @JsonKey(name: 'total_amount')
  int? get totalAmount;
  @JsonKey(name: 'discounted_price_without_vat')
  int? get discountedPriceWithoutVat;
  @JsonKey(name: 'vat_amount')
  int? get vatAmount;
  @JsonKey(name: 'payment_request_id')
  String? get paymentRequestId;
  @JsonKey(name: 'ride_req_id')
  String? get rideReqId;
  @JsonKey(name: 'ride_type_id')
  String? get rideTypeId;
  @JsonKey(name: 'booked_for')
  String? get bookedFor;
  String? get type;
  @JsonKey(name: 'ride_service')
  String? get rideService;
  @JsonKey(name: 'ride_name')
  String? get rideName;
  @JsonKey(name: 'customer_fullname')
  String? get customerFullname;
  String? get status;
  String? get note;

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
            (identical(other.accessability, accessability) ||
                other.accessability == accessability) &&
            (identical(other.distanceInMeters, distanceInMeters) ||
                other.distanceInMeters == distanceInMeters) &&
            (identical(other.etaInSeconds, etaInSeconds) ||
                other.etaInSeconds == etaInSeconds) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.discountedPriceWithoutVat,
                    discountedPriceWithoutVat) ||
                other.discountedPriceWithoutVat == discountedPriceWithoutVat) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.paymentRequestId, paymentRequestId) ||
                other.paymentRequestId == paymentRequestId) &&
            (identical(other.rideReqId, rideReqId) ||
                other.rideReqId == rideReqId) &&
            (identical(other.rideTypeId, rideTypeId) ||
                other.rideTypeId == rideTypeId) &&
            (identical(other.bookedFor, bookedFor) ||
                other.bookedFor == bookedFor) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rideService, rideService) ||
                other.rideService == rideService) &&
            (identical(other.rideName, rideName) ||
                other.rideName == rideName) &&
            (identical(other.customerFullname, customerFullname) ||
                other.customerFullname == customerFullname) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accessability,
      distanceInMeters,
      etaInSeconds,
      location,
      totalAmount,
      discountedPriceWithoutVat,
      vatAmount,
      paymentRequestId,
      rideReqId,
      rideTypeId,
      bookedFor,
      type,
      rideService,
      rideName,
      customerFullname,
      status,
      note);

  @override
  String toString() {
    return 'RideDetails(accessability: $accessability, distanceInMeters: $distanceInMeters, etaInSeconds: $etaInSeconds, location: $location, totalAmount: $totalAmount, discountedPriceWithoutVat: $discountedPriceWithoutVat, vatAmount: $vatAmount, paymentRequestId: $paymentRequestId, rideReqId: $rideReqId, rideTypeId: $rideTypeId, bookedFor: $bookedFor, type: $type, rideService: $rideService, rideName: $rideName, customerFullname: $customerFullname, status: $status, note: $note)';
  }
}

/// @nodoc
abstract mixin class $RideDetailsCopyWith<$Res> {
  factory $RideDetailsCopyWith(
          RideDetails value, $Res Function(RideDetails) _then) =
      _$RideDetailsCopyWithImpl;
  @useResult
  $Res call(
      {String? accessability,
      @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
      @JsonKey(name: 'eta_in_seconds') int? etaInSeconds,
      Location? location,
      @JsonKey(name: 'total_amount') int? totalAmount,
      @JsonKey(name: 'discounted_price_without_vat')
      int? discountedPriceWithoutVat,
      @JsonKey(name: 'vat_amount') int? vatAmount,
      @JsonKey(name: 'payment_request_id') String? paymentRequestId,
      @JsonKey(name: 'ride_req_id') String? rideReqId,
      @JsonKey(name: 'ride_type_id') String? rideTypeId,
      @JsonKey(name: 'booked_for') String? bookedFor,
      String? type,
      @JsonKey(name: 'ride_service') String? rideService,
      @JsonKey(name: 'ride_name') String? rideName,
      @JsonKey(name: 'customer_fullname') String? customerFullname,
      String? status,
      String? note});

  $LocationCopyWith<$Res>? get location;
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
    Object? accessability = freezed,
    Object? distanceInMeters = freezed,
    Object? etaInSeconds = freezed,
    Object? location = freezed,
    Object? totalAmount = freezed,
    Object? discountedPriceWithoutVat = freezed,
    Object? vatAmount = freezed,
    Object? paymentRequestId = freezed,
    Object? rideReqId = freezed,
    Object? rideTypeId = freezed,
    Object? bookedFor = freezed,
    Object? type = freezed,
    Object? rideService = freezed,
    Object? rideName = freezed,
    Object? customerFullname = freezed,
    Object? status = freezed,
    Object? note = freezed,
  }) {
    return _then(_self.copyWith(
      accessability: freezed == accessability
          ? _self.accessability
          : accessability // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceInMeters: freezed == distanceInMeters
          ? _self.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      etaInSeconds: freezed == etaInSeconds
          ? _self.etaInSeconds
          : etaInSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      totalAmount: freezed == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountedPriceWithoutVat: freezed == discountedPriceWithoutVat
          ? _self.discountedPriceWithoutVat
          : discountedPriceWithoutVat // ignore: cast_nullable_to_non_nullable
              as int?,
      vatAmount: freezed == vatAmount
          ? _self.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentRequestId: freezed == paymentRequestId
          ? _self.paymentRequestId
          : paymentRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideReqId: freezed == rideReqId
          ? _self.rideReqId
          : rideReqId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideTypeId: freezed == rideTypeId
          ? _self.rideTypeId
          : rideTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedFor: freezed == bookedFor
          ? _self.bookedFor
          : bookedFor // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rideService: freezed == rideService
          ? _self.rideService
          : rideService // ignore: cast_nullable_to_non_nullable
              as String?,
      rideName: freezed == rideName
          ? _self.rideName
          : rideName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerFullname: freezed == customerFullname
          ? _self.customerFullname
          : customerFullname // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RideDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
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
            String? accessability,
            @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
            @JsonKey(name: 'eta_in_seconds') int? etaInSeconds,
            Location? location,
            @JsonKey(name: 'total_amount') int? totalAmount,
            @JsonKey(name: 'discounted_price_without_vat')
            int? discountedPriceWithoutVat,
            @JsonKey(name: 'vat_amount') int? vatAmount,
            @JsonKey(name: 'payment_request_id') String? paymentRequestId,
            @JsonKey(name: 'ride_req_id') String? rideReqId,
            @JsonKey(name: 'ride_type_id') String? rideTypeId,
            @JsonKey(name: 'booked_for') String? bookedFor,
            String? type,
            @JsonKey(name: 'ride_service') String? rideService,
            @JsonKey(name: 'ride_name') String? rideName,
            @JsonKey(name: 'customer_fullname') String? customerFullname,
            String? status,
            String? note)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideDetails() when $default != null:
        return $default(
            _that.accessability,
            _that.distanceInMeters,
            _that.etaInSeconds,
            _that.location,
            _that.totalAmount,
            _that.discountedPriceWithoutVat,
            _that.vatAmount,
            _that.paymentRequestId,
            _that.rideReqId,
            _that.rideTypeId,
            _that.bookedFor,
            _that.type,
            _that.rideService,
            _that.rideName,
            _that.customerFullname,
            _that.status,
            _that.note);
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
            String? accessability,
            @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
            @JsonKey(name: 'eta_in_seconds') int? etaInSeconds,
            Location? location,
            @JsonKey(name: 'total_amount') int? totalAmount,
            @JsonKey(name: 'discounted_price_without_vat')
            int? discountedPriceWithoutVat,
            @JsonKey(name: 'vat_amount') int? vatAmount,
            @JsonKey(name: 'payment_request_id') String? paymentRequestId,
            @JsonKey(name: 'ride_req_id') String? rideReqId,
            @JsonKey(name: 'ride_type_id') String? rideTypeId,
            @JsonKey(name: 'booked_for') String? bookedFor,
            String? type,
            @JsonKey(name: 'ride_service') String? rideService,
            @JsonKey(name: 'ride_name') String? rideName,
            @JsonKey(name: 'customer_fullname') String? customerFullname,
            String? status,
            String? note)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideDetails():
        return $default(
            _that.accessability,
            _that.distanceInMeters,
            _that.etaInSeconds,
            _that.location,
            _that.totalAmount,
            _that.discountedPriceWithoutVat,
            _that.vatAmount,
            _that.paymentRequestId,
            _that.rideReqId,
            _that.rideTypeId,
            _that.bookedFor,
            _that.type,
            _that.rideService,
            _that.rideName,
            _that.customerFullname,
            _that.status,
            _that.note);
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
            String? accessability,
            @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
            @JsonKey(name: 'eta_in_seconds') int? etaInSeconds,
            Location? location,
            @JsonKey(name: 'total_amount') int? totalAmount,
            @JsonKey(name: 'discounted_price_without_vat')
            int? discountedPriceWithoutVat,
            @JsonKey(name: 'vat_amount') int? vatAmount,
            @JsonKey(name: 'payment_request_id') String? paymentRequestId,
            @JsonKey(name: 'ride_req_id') String? rideReqId,
            @JsonKey(name: 'ride_type_id') String? rideTypeId,
            @JsonKey(name: 'booked_for') String? bookedFor,
            String? type,
            @JsonKey(name: 'ride_service') String? rideService,
            @JsonKey(name: 'ride_name') String? rideName,
            @JsonKey(name: 'customer_fullname') String? customerFullname,
            String? status,
            String? note)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideDetails() when $default != null:
        return $default(
            _that.accessability,
            _that.distanceInMeters,
            _that.etaInSeconds,
            _that.location,
            _that.totalAmount,
            _that.discountedPriceWithoutVat,
            _that.vatAmount,
            _that.paymentRequestId,
            _that.rideReqId,
            _that.rideTypeId,
            _that.bookedFor,
            _that.type,
            _that.rideService,
            _that.rideName,
            _that.customerFullname,
            _that.status,
            _that.note);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RideDetails implements RideDetails {
  const _RideDetails(
      {this.accessability,
      @JsonKey(name: 'distance_in_meters') this.distanceInMeters,
      @JsonKey(name: 'eta_in_seconds') this.etaInSeconds,
      this.location,
      @JsonKey(name: 'total_amount') this.totalAmount,
      @JsonKey(name: 'discounted_price_without_vat')
      this.discountedPriceWithoutVat,
      @JsonKey(name: 'vat_amount') this.vatAmount,
      @JsonKey(name: 'payment_request_id') this.paymentRequestId,
      @JsonKey(name: 'ride_req_id') this.rideReqId,
      @JsonKey(name: 'ride_type_id') this.rideTypeId,
      @JsonKey(name: 'booked_for') this.bookedFor,
      this.type,
      @JsonKey(name: 'ride_service') this.rideService,
      @JsonKey(name: 'ride_name') this.rideName,
      @JsonKey(name: 'customer_fullname') this.customerFullname,
      this.status,
      this.note});
  factory _RideDetails.fromJson(Map<String, dynamic> json) =>
      _$RideDetailsFromJson(json);

  @override
  final String? accessability;
  @override
  @JsonKey(name: 'distance_in_meters')
  final int? distanceInMeters;
  @override
  @JsonKey(name: 'eta_in_seconds')
  final int? etaInSeconds;
  @override
  final Location? location;
  @override
  @JsonKey(name: 'total_amount')
  final int? totalAmount;
  @override
  @JsonKey(name: 'discounted_price_without_vat')
  final int? discountedPriceWithoutVat;
  @override
  @JsonKey(name: 'vat_amount')
  final int? vatAmount;
  @override
  @JsonKey(name: 'payment_request_id')
  final String? paymentRequestId;
  @override
  @JsonKey(name: 'ride_req_id')
  final String? rideReqId;
  @override
  @JsonKey(name: 'ride_type_id')
  final String? rideTypeId;
  @override
  @JsonKey(name: 'booked_for')
  final String? bookedFor;
  @override
  final String? type;
  @override
  @JsonKey(name: 'ride_service')
  final String? rideService;
  @override
  @JsonKey(name: 'ride_name')
  final String? rideName;
  @override
  @JsonKey(name: 'customer_fullname')
  final String? customerFullname;
  @override
  final String? status;
  @override
  final String? note;

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
            (identical(other.accessability, accessability) ||
                other.accessability == accessability) &&
            (identical(other.distanceInMeters, distanceInMeters) ||
                other.distanceInMeters == distanceInMeters) &&
            (identical(other.etaInSeconds, etaInSeconds) ||
                other.etaInSeconds == etaInSeconds) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.discountedPriceWithoutVat,
                    discountedPriceWithoutVat) ||
                other.discountedPriceWithoutVat == discountedPriceWithoutVat) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.paymentRequestId, paymentRequestId) ||
                other.paymentRequestId == paymentRequestId) &&
            (identical(other.rideReqId, rideReqId) ||
                other.rideReqId == rideReqId) &&
            (identical(other.rideTypeId, rideTypeId) ||
                other.rideTypeId == rideTypeId) &&
            (identical(other.bookedFor, bookedFor) ||
                other.bookedFor == bookedFor) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rideService, rideService) ||
                other.rideService == rideService) &&
            (identical(other.rideName, rideName) ||
                other.rideName == rideName) &&
            (identical(other.customerFullname, customerFullname) ||
                other.customerFullname == customerFullname) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accessability,
      distanceInMeters,
      etaInSeconds,
      location,
      totalAmount,
      discountedPriceWithoutVat,
      vatAmount,
      paymentRequestId,
      rideReqId,
      rideTypeId,
      bookedFor,
      type,
      rideService,
      rideName,
      customerFullname,
      status,
      note);

  @override
  String toString() {
    return 'RideDetails(accessability: $accessability, distanceInMeters: $distanceInMeters, etaInSeconds: $etaInSeconds, location: $location, totalAmount: $totalAmount, discountedPriceWithoutVat: $discountedPriceWithoutVat, vatAmount: $vatAmount, paymentRequestId: $paymentRequestId, rideReqId: $rideReqId, rideTypeId: $rideTypeId, bookedFor: $bookedFor, type: $type, rideService: $rideService, rideName: $rideName, customerFullname: $customerFullname, status: $status, note: $note)';
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
      {String? accessability,
      @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
      @JsonKey(name: 'eta_in_seconds') int? etaInSeconds,
      Location? location,
      @JsonKey(name: 'total_amount') int? totalAmount,
      @JsonKey(name: 'discounted_price_without_vat')
      int? discountedPriceWithoutVat,
      @JsonKey(name: 'vat_amount') int? vatAmount,
      @JsonKey(name: 'payment_request_id') String? paymentRequestId,
      @JsonKey(name: 'ride_req_id') String? rideReqId,
      @JsonKey(name: 'ride_type_id') String? rideTypeId,
      @JsonKey(name: 'booked_for') String? bookedFor,
      String? type,
      @JsonKey(name: 'ride_service') String? rideService,
      @JsonKey(name: 'ride_name') String? rideName,
      @JsonKey(name: 'customer_fullname') String? customerFullname,
      String? status,
      String? note});

  @override
  $LocationCopyWith<$Res>? get location;
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
    Object? accessability = freezed,
    Object? distanceInMeters = freezed,
    Object? etaInSeconds = freezed,
    Object? location = freezed,
    Object? totalAmount = freezed,
    Object? discountedPriceWithoutVat = freezed,
    Object? vatAmount = freezed,
    Object? paymentRequestId = freezed,
    Object? rideReqId = freezed,
    Object? rideTypeId = freezed,
    Object? bookedFor = freezed,
    Object? type = freezed,
    Object? rideService = freezed,
    Object? rideName = freezed,
    Object? customerFullname = freezed,
    Object? status = freezed,
    Object? note = freezed,
  }) {
    return _then(_RideDetails(
      accessability: freezed == accessability
          ? _self.accessability
          : accessability // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceInMeters: freezed == distanceInMeters
          ? _self.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      etaInSeconds: freezed == etaInSeconds
          ? _self.etaInSeconds
          : etaInSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      totalAmount: freezed == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountedPriceWithoutVat: freezed == discountedPriceWithoutVat
          ? _self.discountedPriceWithoutVat
          : discountedPriceWithoutVat // ignore: cast_nullable_to_non_nullable
              as int?,
      vatAmount: freezed == vatAmount
          ? _self.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentRequestId: freezed == paymentRequestId
          ? _self.paymentRequestId
          : paymentRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideReqId: freezed == rideReqId
          ? _self.rideReqId
          : rideReqId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideTypeId: freezed == rideTypeId
          ? _self.rideTypeId
          : rideTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedFor: freezed == bookedFor
          ? _self.bookedFor
          : bookedFor // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rideService: freezed == rideService
          ? _self.rideService
          : rideService // ignore: cast_nullable_to_non_nullable
              as String?,
      rideName: freezed == rideName
          ? _self.rideName
          : rideName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerFullname: freezed == customerFullname
          ? _self.customerFullname
          : customerFullname // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RideDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: 'drop_off')
  Spot? get dropOff;
  Spot? get pickup;
  List<Stop?>? get stops;
  List<OptimizedStop?>? get optimizedStops;

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
            (identical(other.dropOff, dropOff) || other.dropOff == dropOff) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            const DeepCollectionEquality().equals(other.stops, stops) &&
            const DeepCollectionEquality()
                .equals(other.optimizedStops, optimizedStops));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dropOff,
      pickup,
      const DeepCollectionEquality().hash(stops),
      const DeepCollectionEquality().hash(optimizedStops));

  @override
  String toString() {
    return 'Location(dropOff: $dropOff, pickup: $pickup, stops: $stops, optimizedStops: $optimizedStops)';
  }
}

/// @nodoc
abstract mixin class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) _then) =
      _$LocationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'drop_off') Spot? dropOff,
      Spot? pickup,
      List<Stop?>? stops,
      List<OptimizedStop?>? optimizedStops});

  $SpotCopyWith<$Res>? get dropOff;
  $SpotCopyWith<$Res>? get pickup;
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
    Object? dropOff = freezed,
    Object? pickup = freezed,
    Object? stops = freezed,
    Object? optimizedStops = freezed,
  }) {
    return _then(_self.copyWith(
      dropOff: freezed == dropOff
          ? _self.dropOff
          : dropOff // ignore: cast_nullable_to_non_nullable
              as Spot?,
      pickup: freezed == pickup
          ? _self.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as Spot?,
      stops: freezed == stops
          ? _self.stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<Stop?>?,
      optimizedStops: freezed == optimizedStops
          ? _self.optimizedStops
          : optimizedStops // ignore: cast_nullable_to_non_nullable
              as List<OptimizedStop?>?,
    ));
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotCopyWith<$Res>? get dropOff {
    if (_self.dropOff == null) {
      return null;
    }

    return $SpotCopyWith<$Res>(_self.dropOff!, (value) {
      return _then(_self.copyWith(dropOff: value));
    });
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotCopyWith<$Res>? get pickup {
    if (_self.pickup == null) {
      return null;
    }

    return $SpotCopyWith<$Res>(_self.pickup!, (value) {
      return _then(_self.copyWith(pickup: value));
    });
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
    TResult Function(@JsonKey(name: 'drop_off') Spot? dropOff, Spot? pickup,
            List<Stop?>? stops, List<OptimizedStop?>? optimizedStops)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
        return $default(
            _that.dropOff, _that.pickup, _that.stops, _that.optimizedStops);
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
    TResult Function(@JsonKey(name: 'drop_off') Spot? dropOff, Spot? pickup,
            List<Stop?>? stops, List<OptimizedStop?>? optimizedStops)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location():
        return $default(
            _that.dropOff, _that.pickup, _that.stops, _that.optimizedStops);
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
    TResult? Function(@JsonKey(name: 'drop_off') Spot? dropOff, Spot? pickup,
            List<Stop?>? stops, List<OptimizedStop?>? optimizedStops)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
        return $default(
            _that.dropOff, _that.pickup, _that.stops, _that.optimizedStops);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Location implements Location {
  const _Location(
      {@JsonKey(name: 'drop_off') this.dropOff,
      this.pickup,
      final List<Stop?>? stops,
      final List<OptimizedStop?>? optimizedStops})
      : _stops = stops,
        _optimizedStops = optimizedStops;
  factory _Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  @override
  @JsonKey(name: 'drop_off')
  final Spot? dropOff;
  @override
  final Spot? pickup;
  final List<Stop?>? _stops;
  @override
  List<Stop?>? get stops {
    final value = _stops;
    if (value == null) return null;
    if (_stops is EqualUnmodifiableListView) return _stops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OptimizedStop?>? _optimizedStops;
  @override
  List<OptimizedStop?>? get optimizedStops {
    final value = _optimizedStops;
    if (value == null) return null;
    if (_optimizedStops is EqualUnmodifiableListView) return _optimizedStops;
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
            (identical(other.dropOff, dropOff) || other.dropOff == dropOff) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            const DeepCollectionEquality().equals(other._stops, _stops) &&
            const DeepCollectionEquality()
                .equals(other._optimizedStops, _optimizedStops));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dropOff,
      pickup,
      const DeepCollectionEquality().hash(_stops),
      const DeepCollectionEquality().hash(_optimizedStops));

  @override
  String toString() {
    return 'Location(dropOff: $dropOff, pickup: $pickup, stops: $stops, optimizedStops: $optimizedStops)';
  }
}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) =
      __$LocationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'drop_off') Spot? dropOff,
      Spot? pickup,
      List<Stop?>? stops,
      List<OptimizedStop?>? optimizedStops});

  @override
  $SpotCopyWith<$Res>? get dropOff;
  @override
  $SpotCopyWith<$Res>? get pickup;
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
    Object? dropOff = freezed,
    Object? pickup = freezed,
    Object? stops = freezed,
    Object? optimizedStops = freezed,
  }) {
    return _then(_Location(
      dropOff: freezed == dropOff
          ? _self.dropOff
          : dropOff // ignore: cast_nullable_to_non_nullable
              as Spot?,
      pickup: freezed == pickup
          ? _self.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as Spot?,
      stops: freezed == stops
          ? _self._stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<Stop?>?,
      optimizedStops: freezed == optimizedStops
          ? _self._optimizedStops
          : optimizedStops // ignore: cast_nullable_to_non_nullable
              as List<OptimizedStop?>?,
    ));
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotCopyWith<$Res>? get dropOff {
    if (_self.dropOff == null) {
      return null;
    }

    return $SpotCopyWith<$Res>(_self.dropOff!, (value) {
      return _then(_self.copyWith(dropOff: value));
    });
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotCopyWith<$Res>? get pickup {
    if (_self.pickup == null) {
      return null;
    }

    return $SpotCopyWith<$Res>(_self.pickup!, (value) {
      return _then(_self.copyWith(pickup: value));
    });
  }
}

/// @nodoc
mixin _$Spot {
  Coordinate? get coordinates;
  String? get address;

  /// Create a copy of Spot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpotCopyWith<Spot> get copyWith =>
      _$SpotCopyWithImpl<Spot>(this as Spot, _$identity);

  /// Serializes this Spot to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Spot &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coordinates, address);

  @override
  String toString() {
    return 'Spot(coordinates: $coordinates, address: $address)';
  }
}

/// @nodoc
abstract mixin class $SpotCopyWith<$Res> {
  factory $SpotCopyWith(Spot value, $Res Function(Spot) _then) =
      _$SpotCopyWithImpl;
  @useResult
  $Res call({Coordinate? coordinates, String? address});

  $CoordinateCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$SpotCopyWithImpl<$Res> implements $SpotCopyWith<$Res> {
  _$SpotCopyWithImpl(this._self, this._then);

  final Spot _self;
  final $Res Function(Spot) _then;

  /// Create a copy of Spot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = freezed,
    Object? address = freezed,
  }) {
    return _then(_self.copyWith(
      coordinates: freezed == coordinates
          ? _self.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Spot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get coordinates {
    if (_self.coordinates == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.coordinates!, (value) {
      return _then(_self.copyWith(coordinates: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Spot].
extension SpotPatterns on Spot {
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
    TResult Function(_Spot value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Spot() when $default != null:
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
    TResult Function(_Spot value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Spot():
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
    TResult? Function(_Spot value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Spot() when $default != null:
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
    TResult Function(Coordinate? coordinates, String? address)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Spot() when $default != null:
        return $default(_that.coordinates, _that.address);
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
    TResult Function(Coordinate? coordinates, String? address) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Spot():
        return $default(_that.coordinates, _that.address);
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
    TResult? Function(Coordinate? coordinates, String? address)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Spot() when $default != null:
        return $default(_that.coordinates, _that.address);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Spot implements Spot {
  const _Spot({this.coordinates, this.address});
  factory _Spot.fromJson(Map<String, dynamic> json) => _$SpotFromJson(json);

  @override
  final Coordinate? coordinates;
  @override
  final String? address;

  /// Create a copy of Spot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpotCopyWith<_Spot> get copyWith =>
      __$SpotCopyWithImpl<_Spot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpotToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Spot &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coordinates, address);

  @override
  String toString() {
    return 'Spot(coordinates: $coordinates, address: $address)';
  }
}

/// @nodoc
abstract mixin class _$SpotCopyWith<$Res> implements $SpotCopyWith<$Res> {
  factory _$SpotCopyWith(_Spot value, $Res Function(_Spot) _then) =
      __$SpotCopyWithImpl;
  @override
  @useResult
  $Res call({Coordinate? coordinates, String? address});

  @override
  $CoordinateCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$SpotCopyWithImpl<$Res> implements _$SpotCopyWith<$Res> {
  __$SpotCopyWithImpl(this._self, this._then);

  final _Spot _self;
  final $Res Function(_Spot) _then;

  /// Create a copy of Spot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coordinates = freezed,
    Object? address = freezed,
  }) {
    return _then(_Spot(
      coordinates: freezed == coordinates
          ? _self.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Spot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get coordinates {
    if (_self.coordinates == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.coordinates!, (value) {
      return _then(_self.copyWith(coordinates: value));
    });
  }
}

// dart format on
