// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_payment_confirm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RidePaymentConfirm {
  @JsonKey(name: 'body')
  String? get body;
  @JsonKey(name: 'payload')
  PayloadWrapper? get payload;
  @JsonKey(name: 'metadata')
  Metadata? get metadata;
  @JsonKey(name: 'requiresDeliveryTracking')
  bool? get requiresDeliveryTracking;

  /// Create a copy of RidePaymentConfirm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RidePaymentConfirmCopyWith<RidePaymentConfirm> get copyWith =>
      _$RidePaymentConfirmCopyWithImpl<RidePaymentConfirm>(
          this as RidePaymentConfirm, _$identity);

  /// Serializes this RidePaymentConfirm to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RidePaymentConfirm &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(
                    other.requiresDeliveryTracking, requiresDeliveryTracking) ||
                other.requiresDeliveryTracking == requiresDeliveryTracking));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, body, payload, metadata, requiresDeliveryTracking);

  @override
  String toString() {
    return 'RidePaymentConfirm(body: $body, payload: $payload, metadata: $metadata, requiresDeliveryTracking: $requiresDeliveryTracking)';
  }
}

/// @nodoc
abstract mixin class $RidePaymentConfirmCopyWith<$Res> {
  factory $RidePaymentConfirmCopyWith(
          RidePaymentConfirm value, $Res Function(RidePaymentConfirm) _then) =
      _$RidePaymentConfirmCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'body') String? body,
      @JsonKey(name: 'payload') PayloadWrapper? payload,
      @JsonKey(name: 'metadata') Metadata? metadata,
      @JsonKey(name: 'requiresDeliveryTracking')
      bool? requiresDeliveryTracking});

  $PayloadWrapperCopyWith<$Res>? get payload;
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$RidePaymentConfirmCopyWithImpl<$Res>
    implements $RidePaymentConfirmCopyWith<$Res> {
  _$RidePaymentConfirmCopyWithImpl(this._self, this._then);

  final RidePaymentConfirm _self;
  final $Res Function(RidePaymentConfirm) _then;

  /// Create a copy of RidePaymentConfirm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = freezed,
    Object? payload = freezed,
    Object? metadata = freezed,
    Object? requiresDeliveryTracking = freezed,
  }) {
    return _then(_self.copyWith(
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PayloadWrapper?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      requiresDeliveryTracking: freezed == requiresDeliveryTracking
          ? _self.requiresDeliveryTracking
          : requiresDeliveryTracking // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of RidePaymentConfirm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayloadWrapperCopyWith<$Res>? get payload {
    if (_self.payload == null) {
      return null;
    }

    return $PayloadWrapperCopyWith<$Res>(_self.payload!, (value) {
      return _then(_self.copyWith(payload: value));
    });
  }

  /// Create a copy of RidePaymentConfirm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_self.metadata!, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RidePaymentConfirm].
extension RidePaymentConfirmPatterns on RidePaymentConfirm {
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
    TResult Function(_RidePaymentConfirm value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RidePaymentConfirm() when $default != null:
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
    TResult Function(_RidePaymentConfirm value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentConfirm():
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
    TResult? Function(_RidePaymentConfirm value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentConfirm() when $default != null:
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
            @JsonKey(name: 'body') String? body,
            @JsonKey(name: 'payload') PayloadWrapper? payload,
            @JsonKey(name: 'metadata') Metadata? metadata,
            @JsonKey(name: 'requiresDeliveryTracking')
            bool? requiresDeliveryTracking)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RidePaymentConfirm() when $default != null:
        return $default(_that.body, _that.payload, _that.metadata,
            _that.requiresDeliveryTracking);
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
            @JsonKey(name: 'body') String? body,
            @JsonKey(name: 'payload') PayloadWrapper? payload,
            @JsonKey(name: 'metadata') Metadata? metadata,
            @JsonKey(name: 'requiresDeliveryTracking')
            bool? requiresDeliveryTracking)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentConfirm():
        return $default(_that.body, _that.payload, _that.metadata,
            _that.requiresDeliveryTracking);
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
            @JsonKey(name: 'body') String? body,
            @JsonKey(name: 'payload') PayloadWrapper? payload,
            @JsonKey(name: 'metadata') Metadata? metadata,
            @JsonKey(name: 'requiresDeliveryTracking')
            bool? requiresDeliveryTracking)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RidePaymentConfirm() when $default != null:
        return $default(_that.body, _that.payload, _that.metadata,
            _that.requiresDeliveryTracking);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RidePaymentConfirm implements RidePaymentConfirm {
  const _RidePaymentConfirm(
      {@JsonKey(name: 'body') this.body,
      @JsonKey(name: 'payload') this.payload,
      @JsonKey(name: 'metadata') this.metadata,
      @JsonKey(name: 'requiresDeliveryTracking')
      this.requiresDeliveryTracking});
  factory _RidePaymentConfirm.fromJson(Map<String, dynamic> json) =>
      _$RidePaymentConfirmFromJson(json);

  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'payload')
  final PayloadWrapper? payload;
  @override
  @JsonKey(name: 'metadata')
  final Metadata? metadata;
  @override
  @JsonKey(name: 'requiresDeliveryTracking')
  final bool? requiresDeliveryTracking;

  /// Create a copy of RidePaymentConfirm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RidePaymentConfirmCopyWith<_RidePaymentConfirm> get copyWith =>
      __$RidePaymentConfirmCopyWithImpl<_RidePaymentConfirm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RidePaymentConfirmToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RidePaymentConfirm &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(
                    other.requiresDeliveryTracking, requiresDeliveryTracking) ||
                other.requiresDeliveryTracking == requiresDeliveryTracking));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, body, payload, metadata, requiresDeliveryTracking);

  @override
  String toString() {
    return 'RidePaymentConfirm(body: $body, payload: $payload, metadata: $metadata, requiresDeliveryTracking: $requiresDeliveryTracking)';
  }
}

/// @nodoc
abstract mixin class _$RidePaymentConfirmCopyWith<$Res>
    implements $RidePaymentConfirmCopyWith<$Res> {
  factory _$RidePaymentConfirmCopyWith(
          _RidePaymentConfirm value, $Res Function(_RidePaymentConfirm) _then) =
      __$RidePaymentConfirmCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'body') String? body,
      @JsonKey(name: 'payload') PayloadWrapper? payload,
      @JsonKey(name: 'metadata') Metadata? metadata,
      @JsonKey(name: 'requiresDeliveryTracking')
      bool? requiresDeliveryTracking});

  @override
  $PayloadWrapperCopyWith<$Res>? get payload;
  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$RidePaymentConfirmCopyWithImpl<$Res>
    implements _$RidePaymentConfirmCopyWith<$Res> {
  __$RidePaymentConfirmCopyWithImpl(this._self, this._then);

  final _RidePaymentConfirm _self;
  final $Res Function(_RidePaymentConfirm) _then;

  /// Create a copy of RidePaymentConfirm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? body = freezed,
    Object? payload = freezed,
    Object? metadata = freezed,
    Object? requiresDeliveryTracking = freezed,
  }) {
    return _then(_RidePaymentConfirm(
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PayloadWrapper?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      requiresDeliveryTracking: freezed == requiresDeliveryTracking
          ? _self.requiresDeliveryTracking
          : requiresDeliveryTracking // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of RidePaymentConfirm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayloadWrapperCopyWith<$Res>? get payload {
    if (_self.payload == null) {
      return null;
    }

    return $PayloadWrapperCopyWith<$Res>(_self.payload!, (value) {
      return _then(_self.copyWith(payload: value));
    });
  }

  /// Create a copy of RidePaymentConfirm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_self.metadata!, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// @nodoc
mixin _$Metadata {
  @JsonKey(name: 'ride_id')
  String? get rideId;
  @JsonKey(name: 'captured_amount')
  String? get capturedAmount;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<Metadata> get copyWith =>
      _$MetadataCopyWithImpl<Metadata>(this as Metadata, _$identity);

  /// Serializes this Metadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Metadata &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            (identical(other.capturedAmount, capturedAmount) ||
                other.capturedAmount == capturedAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideId, capturedAmount);

  @override
  String toString() {
    return 'Metadata(rideId: $rideId, capturedAmount: $capturedAmount)';
  }
}

/// @nodoc
abstract mixin class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) _then) =
      _$MetadataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'ride_id') String? rideId,
      @JsonKey(name: 'captured_amount') String? capturedAmount});
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res> implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._self, this._then);

  final Metadata _self;
  final $Res Function(Metadata) _then;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = freezed,
    Object? capturedAmount = freezed,
  }) {
    return _then(_self.copyWith(
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      capturedAmount: freezed == capturedAmount
          ? _self.capturedAmount
          : capturedAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Metadata].
extension MetadataPatterns on Metadata {
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
    TResult Function(_Metadata value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Metadata() when $default != null:
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
    TResult Function(_Metadata value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Metadata():
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
    TResult? Function(_Metadata value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Metadata() when $default != null:
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
    TResult Function(@JsonKey(name: 'ride_id') String? rideId,
            @JsonKey(name: 'captured_amount') String? capturedAmount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Metadata() when $default != null:
        return $default(_that.rideId, _that.capturedAmount);
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
    TResult Function(@JsonKey(name: 'ride_id') String? rideId,
            @JsonKey(name: 'captured_amount') String? capturedAmount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Metadata():
        return $default(_that.rideId, _that.capturedAmount);
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
    TResult? Function(@JsonKey(name: 'ride_id') String? rideId,
            @JsonKey(name: 'captured_amount') String? capturedAmount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Metadata() when $default != null:
        return $default(_that.rideId, _that.capturedAmount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Metadata implements Metadata {
  const _Metadata(
      {@JsonKey(name: 'ride_id') this.rideId,
      @JsonKey(name: 'captured_amount') this.capturedAmount});
  factory _Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);

  @override
  @JsonKey(name: 'ride_id')
  final String? rideId;
  @override
  @JsonKey(name: 'captured_amount')
  final String? capturedAmount;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MetadataCopyWith<_Metadata> get copyWith =>
      __$MetadataCopyWithImpl<_Metadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Metadata &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            (identical(other.capturedAmount, capturedAmount) ||
                other.capturedAmount == capturedAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideId, capturedAmount);

  @override
  String toString() {
    return 'Metadata(rideId: $rideId, capturedAmount: $capturedAmount)';
  }
}

/// @nodoc
abstract mixin class _$MetadataCopyWith<$Res>
    implements $MetadataCopyWith<$Res> {
  factory _$MetadataCopyWith(_Metadata value, $Res Function(_Metadata) _then) =
      __$MetadataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ride_id') String? rideId,
      @JsonKey(name: 'captured_amount') String? capturedAmount});
}

/// @nodoc
class __$MetadataCopyWithImpl<$Res> implements _$MetadataCopyWith<$Res> {
  __$MetadataCopyWithImpl(this._self, this._then);

  final _Metadata _self;
  final $Res Function(_Metadata) _then;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rideId = freezed,
    Object? capturedAmount = freezed,
  }) {
    return _then(_Metadata(
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      capturedAmount: freezed == capturedAmount
          ? _self.capturedAmount
          : capturedAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PayloadWrapper {
  String? get type;
  RideModel? get payload;

  /// Create a copy of PayloadWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayloadWrapperCopyWith<PayloadWrapper> get copyWith =>
      _$PayloadWrapperCopyWithImpl<PayloadWrapper>(
          this as PayloadWrapper, _$identity);

  /// Serializes this PayloadWrapper to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayloadWrapper &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, payload);

  @override
  String toString() {
    return 'PayloadWrapper(type: $type, payload: $payload)';
  }
}

/// @nodoc
abstract mixin class $PayloadWrapperCopyWith<$Res> {
  factory $PayloadWrapperCopyWith(
          PayloadWrapper value, $Res Function(PayloadWrapper) _then) =
      _$PayloadWrapperCopyWithImpl;
  @useResult
  $Res call({String? type, RideModel? payload});

  $RideModelCopyWith<$Res>? get payload;
}

/// @nodoc
class _$PayloadWrapperCopyWithImpl<$Res>
    implements $PayloadWrapperCopyWith<$Res> {
  _$PayloadWrapperCopyWithImpl(this._self, this._then);

  final PayloadWrapper _self;
  final $Res Function(PayloadWrapper) _then;

  /// Create a copy of PayloadWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? payload = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as RideModel?,
    ));
  }

  /// Create a copy of PayloadWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideModelCopyWith<$Res>? get payload {
    if (_self.payload == null) {
      return null;
    }

    return $RideModelCopyWith<$Res>(_self.payload!, (value) {
      return _then(_self.copyWith(payload: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PayloadWrapper].
extension PayloadWrapperPatterns on PayloadWrapper {
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
    TResult Function(_PayloadWrapper value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PayloadWrapper() when $default != null:
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
    TResult Function(_PayloadWrapper value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayloadWrapper():
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
    TResult? Function(_PayloadWrapper value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayloadWrapper() when $default != null:
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
    TResult Function(String? type, RideModel? payload)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PayloadWrapper() when $default != null:
        return $default(_that.type, _that.payload);
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
    TResult Function(String? type, RideModel? payload) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayloadWrapper():
        return $default(_that.type, _that.payload);
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
    TResult? Function(String? type, RideModel? payload)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayloadWrapper() when $default != null:
        return $default(_that.type, _that.payload);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PayloadWrapper implements PayloadWrapper {
  const _PayloadWrapper({this.type, this.payload});
  factory _PayloadWrapper.fromJson(Map<String, dynamic> json) =>
      _$PayloadWrapperFromJson(json);

  @override
  final String? type;
  @override
  final RideModel? payload;

  /// Create a copy of PayloadWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PayloadWrapperCopyWith<_PayloadWrapper> get copyWith =>
      __$PayloadWrapperCopyWithImpl<_PayloadWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PayloadWrapperToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PayloadWrapper &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, payload);

  @override
  String toString() {
    return 'PayloadWrapper(type: $type, payload: $payload)';
  }
}

/// @nodoc
abstract mixin class _$PayloadWrapperCopyWith<$Res>
    implements $PayloadWrapperCopyWith<$Res> {
  factory _$PayloadWrapperCopyWith(
          _PayloadWrapper value, $Res Function(_PayloadWrapper) _then) =
      __$PayloadWrapperCopyWithImpl;
  @override
  @useResult
  $Res call({String? type, RideModel? payload});

  @override
  $RideModelCopyWith<$Res>? get payload;
}

/// @nodoc
class __$PayloadWrapperCopyWithImpl<$Res>
    implements _$PayloadWrapperCopyWith<$Res> {
  __$PayloadWrapperCopyWithImpl(this._self, this._then);

  final _PayloadWrapper _self;
  final $Res Function(_PayloadWrapper) _then;

  /// Create a copy of PayloadWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? payload = freezed,
  }) {
    return _then(_PayloadWrapper(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as RideModel?,
    ));
  }

  /// Create a copy of PayloadWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideModelCopyWith<$Res>? get payload {
    if (_self.payload == null) {
      return null;
    }

    return $RideModelCopyWith<$Res>(_self.payload!, (value) {
      return _then(_self.copyWith(payload: value));
    });
  }
}

/// @nodoc
mixin _$RideModel {
  String? get accessability;
  @JsonKey(name: 'distance_in_meters')
  int? get distanceInMeters;
  @JsonKey(name: 'eta_in_seconds')
  int? get etaInSeconds;
  Coordinate? get location;
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
  String? get polyline;
  String? get status;
  String? get note;
  @JsonKey(name: 'scheduled_at')
  DateTime? get scheduledAt;

  /// Create a copy of RideModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideModelCopyWith<RideModel> get copyWith =>
      _$RideModelCopyWithImpl<RideModel>(this as RideModel, _$identity);

  /// Serializes this RideModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideModel &&
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
            (identical(other.polyline, polyline) ||
                other.polyline == polyline) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
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
        polyline,
        status,
        note,
        scheduledAt
      ]);

  @override
  String toString() {
    return 'RideModel(accessability: $accessability, distanceInMeters: $distanceInMeters, etaInSeconds: $etaInSeconds, location: $location, totalAmount: $totalAmount, discountedPriceWithoutVat: $discountedPriceWithoutVat, vatAmount: $vatAmount, paymentRequestId: $paymentRequestId, rideReqId: $rideReqId, rideTypeId: $rideTypeId, bookedFor: $bookedFor, type: $type, rideService: $rideService, rideName: $rideName, customerFullname: $customerFullname, polyline: $polyline, status: $status, note: $note, scheduledAt: $scheduledAt)';
  }
}

/// @nodoc
abstract mixin class $RideModelCopyWith<$Res> {
  factory $RideModelCopyWith(RideModel value, $Res Function(RideModel) _then) =
      _$RideModelCopyWithImpl;
  @useResult
  $Res call(
      {String? accessability,
      @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
      @JsonKey(name: 'eta_in_seconds') int? etaInSeconds,
      Coordinate? location,
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
      String? polyline,
      String? status,
      String? note,
      @JsonKey(name: 'scheduled_at') DateTime? scheduledAt});

  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class _$RideModelCopyWithImpl<$Res> implements $RideModelCopyWith<$Res> {
  _$RideModelCopyWithImpl(this._self, this._then);

  final RideModel _self;
  final $Res Function(RideModel) _then;

  /// Create a copy of RideModel
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
    Object? polyline = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? scheduledAt = freezed,
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
              as Coordinate?,
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
      polyline: freezed == polyline
          ? _self.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledAt: freezed == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of RideModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RideModel].
extension RideModelPatterns on RideModel {
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
    TResult Function(_RideModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideModel() when $default != null:
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
    TResult Function(_RideModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideModel():
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
    TResult? Function(_RideModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideModel() when $default != null:
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
            Coordinate? location,
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
            String? polyline,
            String? status,
            String? note,
            @JsonKey(name: 'scheduled_at') DateTime? scheduledAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideModel() when $default != null:
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
            _that.polyline,
            _that.status,
            _that.note,
            _that.scheduledAt);
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
            Coordinate? location,
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
            String? polyline,
            String? status,
            String? note,
            @JsonKey(name: 'scheduled_at') DateTime? scheduledAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideModel():
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
            _that.polyline,
            _that.status,
            _that.note,
            _that.scheduledAt);
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
            Coordinate? location,
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
            String? polyline,
            String? status,
            String? note,
            @JsonKey(name: 'scheduled_at') DateTime? scheduledAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideModel() when $default != null:
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
            _that.polyline,
            _that.status,
            _that.note,
            _that.scheduledAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RideModel implements RideModel {
  const _RideModel(
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
      this.polyline,
      this.status,
      this.note,
      @JsonKey(name: 'scheduled_at') this.scheduledAt});
  factory _RideModel.fromJson(Map<String, dynamic> json) =>
      _$RideModelFromJson(json);

  @override
  final String? accessability;
  @override
  @JsonKey(name: 'distance_in_meters')
  final int? distanceInMeters;
  @override
  @JsonKey(name: 'eta_in_seconds')
  final int? etaInSeconds;
  @override
  final Coordinate? location;
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
  final String? polyline;
  @override
  final String? status;
  @override
  final String? note;
  @override
  @JsonKey(name: 'scheduled_at')
  final DateTime? scheduledAt;

  /// Create a copy of RideModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideModelCopyWith<_RideModel> get copyWith =>
      __$RideModelCopyWithImpl<_RideModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideModel &&
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
            (identical(other.polyline, polyline) ||
                other.polyline == polyline) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
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
        polyline,
        status,
        note,
        scheduledAt
      ]);

  @override
  String toString() {
    return 'RideModel(accessability: $accessability, distanceInMeters: $distanceInMeters, etaInSeconds: $etaInSeconds, location: $location, totalAmount: $totalAmount, discountedPriceWithoutVat: $discountedPriceWithoutVat, vatAmount: $vatAmount, paymentRequestId: $paymentRequestId, rideReqId: $rideReqId, rideTypeId: $rideTypeId, bookedFor: $bookedFor, type: $type, rideService: $rideService, rideName: $rideName, customerFullname: $customerFullname, polyline: $polyline, status: $status, note: $note, scheduledAt: $scheduledAt)';
  }
}

/// @nodoc
abstract mixin class _$RideModelCopyWith<$Res>
    implements $RideModelCopyWith<$Res> {
  factory _$RideModelCopyWith(
          _RideModel value, $Res Function(_RideModel) _then) =
      __$RideModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? accessability,
      @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
      @JsonKey(name: 'eta_in_seconds') int? etaInSeconds,
      Coordinate? location,
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
      String? polyline,
      String? status,
      String? note,
      @JsonKey(name: 'scheduled_at') DateTime? scheduledAt});

  @override
  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class __$RideModelCopyWithImpl<$Res> implements _$RideModelCopyWith<$Res> {
  __$RideModelCopyWithImpl(this._self, this._then);

  final _RideModel _self;
  final $Res Function(_RideModel) _then;

  /// Create a copy of RideModel
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
    Object? polyline = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? scheduledAt = freezed,
  }) {
    return _then(_RideModel(
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
              as Coordinate?,
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
      polyline: freezed == polyline
          ? _self.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledAt: freezed == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of RideModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

// dart format on
