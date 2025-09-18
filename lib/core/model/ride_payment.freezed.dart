// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RidePaymentModel {
  @RidePaymentPayloadConverter()
  RidePaymentPayload? get payload;
  String? get body;

  /// Create a copy of RidePaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RidePaymentModelCopyWith<RidePaymentModel> get copyWith =>
      _$RidePaymentModelCopyWithImpl<RidePaymentModel>(
          this as RidePaymentModel, _$identity);

  /// Serializes this RidePaymentModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RidePaymentModel &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, payload, body);

  @override
  String toString() {
    return 'RidePaymentModel(payload: $payload, body: $body)';
  }
}

/// @nodoc
abstract mixin class $RidePaymentModelCopyWith<$Res> {
  factory $RidePaymentModelCopyWith(
          RidePaymentModel value, $Res Function(RidePaymentModel) _then) =
      _$RidePaymentModelCopyWithImpl;
  @useResult
  $Res call(
      {@RidePaymentPayloadConverter() RidePaymentPayload? payload,
      String? body});

  $RidePaymentPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$RidePaymentModelCopyWithImpl<$Res>
    implements $RidePaymentModelCopyWith<$Res> {
  _$RidePaymentModelCopyWithImpl(this._self, this._then);

  final RidePaymentModel _self;
  final $Res Function(RidePaymentModel) _then;

  /// Create a copy of RidePaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = freezed,
    Object? body = freezed,
  }) {
    return _then(_self.copyWith(
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as RidePaymentPayload?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RidePaymentModel
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

/// Adds pattern-matching-related methods to [RidePaymentModel].
extension RidePaymentModelPatterns on RidePaymentModel {
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
    TResult Function(_RidePaymentModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RidePaymentModel() when $default != null:
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
    TResult Function(_RidePaymentModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentModel():
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
    TResult? Function(_RidePaymentModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentModel() when $default != null:
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
    TResult Function(@RidePaymentPayloadConverter() RidePaymentPayload? payload,
            String? body)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RidePaymentModel() when $default != null:
        return $default(_that.payload, _that.body);
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
    TResult Function(@RidePaymentPayloadConverter() RidePaymentPayload? payload,
            String? body)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentModel():
        return $default(_that.payload, _that.body);
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
            @RidePaymentPayloadConverter() RidePaymentPayload? payload,
            String? body)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentModel() when $default != null:
        return $default(_that.payload, _that.body);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RidePaymentModel implements RidePaymentModel {
  _RidePaymentModel({@RidePaymentPayloadConverter() this.payload, this.body});
  factory _RidePaymentModel.fromJson(Map<String, dynamic> json) =>
      _$RidePaymentModelFromJson(json);

  @override
  @RidePaymentPayloadConverter()
  final RidePaymentPayload? payload;
  @override
  final String? body;

  /// Create a copy of RidePaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RidePaymentModelCopyWith<_RidePaymentModel> get copyWith =>
      __$RidePaymentModelCopyWithImpl<_RidePaymentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RidePaymentModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RidePaymentModel &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, payload, body);

  @override
  String toString() {
    return 'RidePaymentModel(payload: $payload, body: $body)';
  }
}

/// @nodoc
abstract mixin class _$RidePaymentModelCopyWith<$Res>
    implements $RidePaymentModelCopyWith<$Res> {
  factory _$RidePaymentModelCopyWith(
          _RidePaymentModel value, $Res Function(_RidePaymentModel) _then) =
      __$RidePaymentModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@RidePaymentPayloadConverter() RidePaymentPayload? payload,
      String? body});

  @override
  $RidePaymentPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$RidePaymentModelCopyWithImpl<$Res>
    implements _$RidePaymentModelCopyWith<$Res> {
  __$RidePaymentModelCopyWithImpl(this._self, this._then);

  final _RidePaymentModel _self;
  final $Res Function(_RidePaymentModel) _then;

  /// Create a copy of RidePaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? payload = freezed,
    Object? body = freezed,
  }) {
    return _then(_RidePaymentModel(
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as RidePaymentPayload?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RidePaymentModel
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
  String? get type;
  @JsonKey(name: 'payload')
  RidePayload? get rideDetails;

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
  $Res call({String? type, @JsonKey(name: 'payload') RidePayload? rideDetails});

  $RidePayloadCopyWith<$Res>? get rideDetails;
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
              as RidePayload?,
    ));
  }

  /// Create a copy of RidePaymentPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RidePayloadCopyWith<$Res>? get rideDetails {
    if (_self.rideDetails == null) {
      return null;
    }

    return $RidePayloadCopyWith<$Res>(_self.rideDetails!, (value) {
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
    TResult Function(
            String? type, @JsonKey(name: 'payload') RidePayload? rideDetails)?
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
    TResult Function(
            String? type, @JsonKey(name: 'payload') RidePayload? rideDetails)
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
    TResult? Function(
            String? type, @JsonKey(name: 'payload') RidePayload? rideDetails)?
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
  _RidePaymentPayload({this.type, @JsonKey(name: 'payload') this.rideDetails});
  factory _RidePaymentPayload.fromJson(Map<String, dynamic> json) =>
      _$RidePaymentPayloadFromJson(json);

  @override
  final String? type;
  @override
  @JsonKey(name: 'payload')
  final RidePayload? rideDetails;

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
  $Res call({String? type, @JsonKey(name: 'payload') RidePayload? rideDetails});

  @override
  $RidePayloadCopyWith<$Res>? get rideDetails;
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
              as RidePayload?,
    ));
  }

  /// Create a copy of RidePaymentPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RidePayloadCopyWith<$Res>? get rideDetails {
    if (_self.rideDetails == null) {
      return null;
    }

    return $RidePayloadCopyWith<$Res>(_self.rideDetails!, (value) {
      return _then(_self.copyWith(rideDetails: value));
    });
  }
}

/// @nodoc
mixin _$RidePayload {
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
  @JsonKey(name: 'customer_name')
  String? get customerName;
  String? get status;
  String? get note;

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
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
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
      customerName,
      status,
      note);

  @override
  String toString() {
    return 'RidePayload(accessability: $accessability, distanceInMeters: $distanceInMeters, etaInSeconds: $etaInSeconds, location: $location, totalAmount: $totalAmount, discountedPriceWithoutVat: $discountedPriceWithoutVat, vatAmount: $vatAmount, paymentRequestId: $paymentRequestId, rideReqId: $rideReqId, rideTypeId: $rideTypeId, bookedFor: $bookedFor, type: $type, rideService: $rideService, rideName: $rideName, customerName: $customerName, status: $status, note: $note)';
  }
}

/// @nodoc
abstract mixin class $RidePayloadCopyWith<$Res> {
  factory $RidePayloadCopyWith(
          RidePayload value, $Res Function(RidePayload) _then) =
      _$RidePayloadCopyWithImpl;
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
      @JsonKey(name: 'customer_name') String? customerName,
      String? status,
      String? note});

  $LocationCopyWith<$Res>? get location;
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
    Object? customerName = freezed,
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
      customerName: freezed == customerName
          ? _self.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of RidePayload
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
            @JsonKey(name: 'customer_name') String? customerName,
            String? status,
            String? note)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RidePayload() when $default != null:
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
            _that.customerName,
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
            @JsonKey(name: 'customer_name') String? customerName,
            String? status,
            String? note)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePayload():
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
            _that.customerName,
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
            @JsonKey(name: 'customer_name') String? customerName,
            String? status,
            String? note)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePayload() when $default != null:
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
            _that.customerName,
            _that.status,
            _that.note);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RidePayload implements RidePayload {
  _RidePayload(
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
      @JsonKey(name: 'customer_name') this.customerName,
      this.status,
      this.note});
  factory _RidePayload.fromJson(Map<String, dynamic> json) =>
      _$RidePayloadFromJson(json);

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
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @override
  final String? status;
  @override
  final String? note;

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
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
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
      customerName,
      status,
      note);

  @override
  String toString() {
    return 'RidePayload(accessability: $accessability, distanceInMeters: $distanceInMeters, etaInSeconds: $etaInSeconds, location: $location, totalAmount: $totalAmount, discountedPriceWithoutVat: $discountedPriceWithoutVat, vatAmount: $vatAmount, paymentRequestId: $paymentRequestId, rideReqId: $rideReqId, rideTypeId: $rideTypeId, bookedFor: $bookedFor, type: $type, rideService: $rideService, rideName: $rideName, customerName: $customerName, status: $status, note: $note)';
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
      @JsonKey(name: 'customer_name') String? customerName,
      String? status,
      String? note});

  @override
  $LocationCopyWith<$Res>? get location;
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
    Object? customerName = freezed,
    Object? status = freezed,
    Object? note = freezed,
  }) {
    return _then(_RidePayload(
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
      customerName: freezed == customerName
          ? _self.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of RidePayload
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
  LocationPoint? get dropOff;
  LocationPoint? get pickup;
  List<dynamic>? get stops;
  List<OptimizedStop>? get optimizedStops;

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
      {@JsonKey(name: 'drop_off') LocationPoint? dropOff,
      LocationPoint? pickup,
      List<dynamic>? stops,
      List<OptimizedStop>? optimizedStops});

  $LocationPointCopyWith<$Res>? get dropOff;
  $LocationPointCopyWith<$Res>? get pickup;
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
              as LocationPoint?,
      pickup: freezed == pickup
          ? _self.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as LocationPoint?,
      stops: freezed == stops
          ? _self.stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      optimizedStops: freezed == optimizedStops
          ? _self.optimizedStops
          : optimizedStops // ignore: cast_nullable_to_non_nullable
              as List<OptimizedStop>?,
    ));
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationPointCopyWith<$Res>? get dropOff {
    if (_self.dropOff == null) {
      return null;
    }

    return $LocationPointCopyWith<$Res>(_self.dropOff!, (value) {
      return _then(_self.copyWith(dropOff: value));
    });
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationPointCopyWith<$Res>? get pickup {
    if (_self.pickup == null) {
      return null;
    }

    return $LocationPointCopyWith<$Res>(_self.pickup!, (value) {
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
    TResult Function(
            @JsonKey(name: 'drop_off') LocationPoint? dropOff,
            LocationPoint? pickup,
            List<dynamic>? stops,
            List<OptimizedStop>? optimizedStops)?
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
    TResult Function(
            @JsonKey(name: 'drop_off') LocationPoint? dropOff,
            LocationPoint? pickup,
            List<dynamic>? stops,
            List<OptimizedStop>? optimizedStops)
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
    TResult? Function(
            @JsonKey(name: 'drop_off') LocationPoint? dropOff,
            LocationPoint? pickup,
            List<dynamic>? stops,
            List<OptimizedStop>? optimizedStops)?
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
  _Location(
      {@JsonKey(name: 'drop_off') this.dropOff,
      this.pickup,
      final List<dynamic>? stops,
      final List<OptimizedStop>? optimizedStops})
      : _stops = stops,
        _optimizedStops = optimizedStops;
  factory _Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  @override
  @JsonKey(name: 'drop_off')
  final LocationPoint? dropOff;
  @override
  final LocationPoint? pickup;
  final List<dynamic>? _stops;
  @override
  List<dynamic>? get stops {
    final value = _stops;
    if (value == null) return null;
    if (_stops is EqualUnmodifiableListView) return _stops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OptimizedStop>? _optimizedStops;
  @override
  List<OptimizedStop>? get optimizedStops {
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
      {@JsonKey(name: 'drop_off') LocationPoint? dropOff,
      LocationPoint? pickup,
      List<dynamic>? stops,
      List<OptimizedStop>? optimizedStops});

  @override
  $LocationPointCopyWith<$Res>? get dropOff;
  @override
  $LocationPointCopyWith<$Res>? get pickup;
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
              as LocationPoint?,
      pickup: freezed == pickup
          ? _self.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as LocationPoint?,
      stops: freezed == stops
          ? _self._stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      optimizedStops: freezed == optimizedStops
          ? _self._optimizedStops
          : optimizedStops // ignore: cast_nullable_to_non_nullable
              as List<OptimizedStop>?,
    ));
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationPointCopyWith<$Res>? get dropOff {
    if (_self.dropOff == null) {
      return null;
    }

    return $LocationPointCopyWith<$Res>(_self.dropOff!, (value) {
      return _then(_self.copyWith(dropOff: value));
    });
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationPointCopyWith<$Res>? get pickup {
    if (_self.pickup == null) {
      return null;
    }

    return $LocationPointCopyWith<$Res>(_self.pickup!, (value) {
      return _then(_self.copyWith(pickup: value));
    });
  }
}

/// @nodoc
mixin _$LocationPoint {
  Coordinate? get coordinates;
  String? get address;

  /// Create a copy of LocationPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationPointCopyWith<LocationPoint> get copyWith =>
      _$LocationPointCopyWithImpl<LocationPoint>(
          this as LocationPoint, _$identity);

  /// Serializes this LocationPoint to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationPoint &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coordinates, address);

  @override
  String toString() {
    return 'LocationPoint(coordinates: $coordinates, address: $address)';
  }
}

/// @nodoc
abstract mixin class $LocationPointCopyWith<$Res> {
  factory $LocationPointCopyWith(
          LocationPoint value, $Res Function(LocationPoint) _then) =
      _$LocationPointCopyWithImpl;
  @useResult
  $Res call({Coordinate? coordinates, String? address});

  $CoordinateCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$LocationPointCopyWithImpl<$Res>
    implements $LocationPointCopyWith<$Res> {
  _$LocationPointCopyWithImpl(this._self, this._then);

  final LocationPoint _self;
  final $Res Function(LocationPoint) _then;

  /// Create a copy of LocationPoint
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

  /// Create a copy of LocationPoint
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

/// Adds pattern-matching-related methods to [LocationPoint].
extension LocationPointPatterns on LocationPoint {
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
    TResult Function(_LocationPoint value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocationPoint() when $default != null:
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
    TResult Function(_LocationPoint value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationPoint():
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
    TResult? Function(_LocationPoint value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationPoint() when $default != null:
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
      case _LocationPoint() when $default != null:
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
      case _LocationPoint():
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
      case _LocationPoint() when $default != null:
        return $default(_that.coordinates, _that.address);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LocationPoint implements LocationPoint {
  _LocationPoint({this.coordinates, this.address});
  factory _LocationPoint.fromJson(Map<String, dynamic> json) =>
      _$LocationPointFromJson(json);

  @override
  final Coordinate? coordinates;
  @override
  final String? address;

  /// Create a copy of LocationPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationPointCopyWith<_LocationPoint> get copyWith =>
      __$LocationPointCopyWithImpl<_LocationPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocationPointToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationPoint &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coordinates, address);

  @override
  String toString() {
    return 'LocationPoint(coordinates: $coordinates, address: $address)';
  }
}

/// @nodoc
abstract mixin class _$LocationPointCopyWith<$Res>
    implements $LocationPointCopyWith<$Res> {
  factory _$LocationPointCopyWith(
          _LocationPoint value, $Res Function(_LocationPoint) _then) =
      __$LocationPointCopyWithImpl;
  @override
  @useResult
  $Res call({Coordinate? coordinates, String? address});

  @override
  $CoordinateCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$LocationPointCopyWithImpl<$Res>
    implements _$LocationPointCopyWith<$Res> {
  __$LocationPointCopyWithImpl(this._self, this._then);

  final _LocationPoint _self;
  final $Res Function(_LocationPoint) _then;

  /// Create a copy of LocationPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coordinates = freezed,
    Object? address = freezed,
  }) {
    return _then(_LocationPoint(
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

  /// Create a copy of LocationPoint
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
