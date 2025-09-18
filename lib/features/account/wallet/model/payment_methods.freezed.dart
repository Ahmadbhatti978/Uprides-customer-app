// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_methods.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentMethods {
  @JsonKey(name: "id")
  String? get id;
  @JsonKey(name: "object")
  String? get object;
  @JsonKey(name: "allow_redisplay")
  String? get allowRedisplay;
  @JsonKey(name: "billing_details")
  BillingDetails? get billingDetails;
  @JsonKey(name: "card")
  Card? get card;
  @JsonKey(name: "created")
  int? get created;
  @JsonKey(name: "customer")
  String? get customer;
  @JsonKey(name: "livemode")
  bool? get livemode; //  @JsonKey(name: "metadata") Metadata? metadata,
  @JsonKey(name: "type")
  String? get type;
  @JsonKey(name: "isDefault")
  bool? get isDefault;

  /// Create a copy of PaymentMethods
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentMethodsCopyWith<PaymentMethods> get copyWith =>
      _$PaymentMethodsCopyWithImpl<PaymentMethods>(
          this as PaymentMethods, _$identity);

  /// Serializes this PaymentMethods to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentMethods &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.allowRedisplay, allowRedisplay) ||
                other.allowRedisplay == allowRedisplay) &&
            (identical(other.billingDetails, billingDetails) ||
                other.billingDetails == billingDetails) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.livemode, livemode) ||
                other.livemode == livemode) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, allowRedisplay,
      billingDetails, card, created, customer, livemode, type, isDefault);

  @override
  String toString() {
    return 'PaymentMethods(id: $id, object: $object, allowRedisplay: $allowRedisplay, billingDetails: $billingDetails, card: $card, created: $created, customer: $customer, livemode: $livemode, type: $type, isDefault: $isDefault)';
  }
}

/// @nodoc
abstract mixin class $PaymentMethodsCopyWith<$Res> {
  factory $PaymentMethodsCopyWith(
          PaymentMethods value, $Res Function(PaymentMethods) _then) =
      _$PaymentMethodsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "object") String? object,
      @JsonKey(name: "allow_redisplay") String? allowRedisplay,
      @JsonKey(name: "billing_details") BillingDetails? billingDetails,
      @JsonKey(name: "card") Card? card,
      @JsonKey(name: "created") int? created,
      @JsonKey(name: "customer") String? customer,
      @JsonKey(name: "livemode") bool? livemode,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "isDefault") bool? isDefault});

  $BillingDetailsCopyWith<$Res>? get billingDetails;
  $CardCopyWith<$Res>? get card;
}

/// @nodoc
class _$PaymentMethodsCopyWithImpl<$Res>
    implements $PaymentMethodsCopyWith<$Res> {
  _$PaymentMethodsCopyWithImpl(this._self, this._then);

  final PaymentMethods _self;
  final $Res Function(PaymentMethods) _then;

  /// Create a copy of PaymentMethods
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? allowRedisplay = freezed,
    Object? billingDetails = freezed,
    Object? card = freezed,
    Object? created = freezed,
    Object? customer = freezed,
    Object? livemode = freezed,
    Object? type = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _self.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      allowRedisplay: freezed == allowRedisplay
          ? _self.allowRedisplay
          : allowRedisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      billingDetails: freezed == billingDetails
          ? _self.billingDetails
          : billingDetails // ignore: cast_nullable_to_non_nullable
              as BillingDetails?,
      card: freezed == card
          ? _self.card
          : card // ignore: cast_nullable_to_non_nullable
              as Card?,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      customer: freezed == customer
          ? _self.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      livemode: freezed == livemode
          ? _self.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of PaymentMethods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillingDetailsCopyWith<$Res>? get billingDetails {
    if (_self.billingDetails == null) {
      return null;
    }

    return $BillingDetailsCopyWith<$Res>(_self.billingDetails!, (value) {
      return _then(_self.copyWith(billingDetails: value));
    });
  }

  /// Create a copy of PaymentMethods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardCopyWith<$Res>? get card {
    if (_self.card == null) {
      return null;
    }

    return $CardCopyWith<$Res>(_self.card!, (value) {
      return _then(_self.copyWith(card: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PaymentMethods].
extension PaymentMethodsPatterns on PaymentMethods {
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
    TResult Function(_PaymentMethods value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaymentMethods() when $default != null:
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
    TResult Function(_PaymentMethods value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentMethods():
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
    TResult? Function(_PaymentMethods value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentMethods() when $default != null:
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
            @JsonKey(name: "id") String? id,
            @JsonKey(name: "object") String? object,
            @JsonKey(name: "allow_redisplay") String? allowRedisplay,
            @JsonKey(name: "billing_details") BillingDetails? billingDetails,
            @JsonKey(name: "card") Card? card,
            @JsonKey(name: "created") int? created,
            @JsonKey(name: "customer") String? customer,
            @JsonKey(name: "livemode") bool? livemode,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "isDefault") bool? isDefault)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaymentMethods() when $default != null:
        return $default(
            _that.id,
            _that.object,
            _that.allowRedisplay,
            _that.billingDetails,
            _that.card,
            _that.created,
            _that.customer,
            _that.livemode,
            _that.type,
            _that.isDefault);
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
            @JsonKey(name: "id") String? id,
            @JsonKey(name: "object") String? object,
            @JsonKey(name: "allow_redisplay") String? allowRedisplay,
            @JsonKey(name: "billing_details") BillingDetails? billingDetails,
            @JsonKey(name: "card") Card? card,
            @JsonKey(name: "created") int? created,
            @JsonKey(name: "customer") String? customer,
            @JsonKey(name: "livemode") bool? livemode,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "isDefault") bool? isDefault)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentMethods():
        return $default(
            _that.id,
            _that.object,
            _that.allowRedisplay,
            _that.billingDetails,
            _that.card,
            _that.created,
            _that.customer,
            _that.livemode,
            _that.type,
            _that.isDefault);
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
            @JsonKey(name: "id") String? id,
            @JsonKey(name: "object") String? object,
            @JsonKey(name: "allow_redisplay") String? allowRedisplay,
            @JsonKey(name: "billing_details") BillingDetails? billingDetails,
            @JsonKey(name: "card") Card? card,
            @JsonKey(name: "created") int? created,
            @JsonKey(name: "customer") String? customer,
            @JsonKey(name: "livemode") bool? livemode,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "isDefault") bool? isDefault)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentMethods() when $default != null:
        return $default(
            _that.id,
            _that.object,
            _that.allowRedisplay,
            _that.billingDetails,
            _that.card,
            _that.created,
            _that.customer,
            _that.livemode,
            _that.type,
            _that.isDefault);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PaymentMethods implements PaymentMethods {
  const _PaymentMethods(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "object") this.object,
      @JsonKey(name: "allow_redisplay") this.allowRedisplay,
      @JsonKey(name: "billing_details") this.billingDetails,
      @JsonKey(name: "card") this.card,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "customer") this.customer,
      @JsonKey(name: "livemode") this.livemode,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "isDefault") this.isDefault});
  factory _PaymentMethods.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodsFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "object")
  final String? object;
  @override
  @JsonKey(name: "allow_redisplay")
  final String? allowRedisplay;
  @override
  @JsonKey(name: "billing_details")
  final BillingDetails? billingDetails;
  @override
  @JsonKey(name: "card")
  final Card? card;
  @override
  @JsonKey(name: "created")
  final int? created;
  @override
  @JsonKey(name: "customer")
  final String? customer;
  @override
  @JsonKey(name: "livemode")
  final bool? livemode;
//  @JsonKey(name: "metadata") Metadata? metadata,
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "isDefault")
  final bool? isDefault;

  /// Create a copy of PaymentMethods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentMethodsCopyWith<_PaymentMethods> get copyWith =>
      __$PaymentMethodsCopyWithImpl<_PaymentMethods>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentMethodsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentMethods &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.allowRedisplay, allowRedisplay) ||
                other.allowRedisplay == allowRedisplay) &&
            (identical(other.billingDetails, billingDetails) ||
                other.billingDetails == billingDetails) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.livemode, livemode) ||
                other.livemode == livemode) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, allowRedisplay,
      billingDetails, card, created, customer, livemode, type, isDefault);

  @override
  String toString() {
    return 'PaymentMethods(id: $id, object: $object, allowRedisplay: $allowRedisplay, billingDetails: $billingDetails, card: $card, created: $created, customer: $customer, livemode: $livemode, type: $type, isDefault: $isDefault)';
  }
}

/// @nodoc
abstract mixin class _$PaymentMethodsCopyWith<$Res>
    implements $PaymentMethodsCopyWith<$Res> {
  factory _$PaymentMethodsCopyWith(
          _PaymentMethods value, $Res Function(_PaymentMethods) _then) =
      __$PaymentMethodsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "object") String? object,
      @JsonKey(name: "allow_redisplay") String? allowRedisplay,
      @JsonKey(name: "billing_details") BillingDetails? billingDetails,
      @JsonKey(name: "card") Card? card,
      @JsonKey(name: "created") int? created,
      @JsonKey(name: "customer") String? customer,
      @JsonKey(name: "livemode") bool? livemode,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "isDefault") bool? isDefault});

  @override
  $BillingDetailsCopyWith<$Res>? get billingDetails;
  @override
  $CardCopyWith<$Res>? get card;
}

/// @nodoc
class __$PaymentMethodsCopyWithImpl<$Res>
    implements _$PaymentMethodsCopyWith<$Res> {
  __$PaymentMethodsCopyWithImpl(this._self, this._then);

  final _PaymentMethods _self;
  final $Res Function(_PaymentMethods) _then;

  /// Create a copy of PaymentMethods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? allowRedisplay = freezed,
    Object? billingDetails = freezed,
    Object? card = freezed,
    Object? created = freezed,
    Object? customer = freezed,
    Object? livemode = freezed,
    Object? type = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_PaymentMethods(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _self.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      allowRedisplay: freezed == allowRedisplay
          ? _self.allowRedisplay
          : allowRedisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      billingDetails: freezed == billingDetails
          ? _self.billingDetails
          : billingDetails // ignore: cast_nullable_to_non_nullable
              as BillingDetails?,
      card: freezed == card
          ? _self.card
          : card // ignore: cast_nullable_to_non_nullable
              as Card?,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      customer: freezed == customer
          ? _self.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      livemode: freezed == livemode
          ? _self.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of PaymentMethods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillingDetailsCopyWith<$Res>? get billingDetails {
    if (_self.billingDetails == null) {
      return null;
    }

    return $BillingDetailsCopyWith<$Res>(_self.billingDetails!, (value) {
      return _then(_self.copyWith(billingDetails: value));
    });
  }

  /// Create a copy of PaymentMethods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardCopyWith<$Res>? get card {
    if (_self.card == null) {
      return null;
    }

    return $CardCopyWith<$Res>(_self.card!, (value) {
      return _then(_self.copyWith(card: value));
    });
  }
}

/// @nodoc
mixin _$BillingDetails {
  @JsonKey(name: "address")
  Address? get address;
  @JsonKey(name: "email")
  dynamic get email;
  @JsonKey(name: "name")
  dynamic get name;
  @JsonKey(name: "phone")
  dynamic get phone;

  /// Create a copy of BillingDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BillingDetailsCopyWith<BillingDetails> get copyWith =>
      _$BillingDetailsCopyWithImpl<BillingDetails>(
          this as BillingDetails, _$identity);

  /// Serializes this BillingDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BillingDetails &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone));

  @override
  String toString() {
    return 'BillingDetails(address: $address, email: $email, name: $name, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $BillingDetailsCopyWith<$Res> {
  factory $BillingDetailsCopyWith(
          BillingDetails value, $Res Function(BillingDetails) _then) =
      _$BillingDetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "address") Address? address,
      @JsonKey(name: "email") dynamic email,
      @JsonKey(name: "name") dynamic name,
      @JsonKey(name: "phone") dynamic phone});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$BillingDetailsCopyWithImpl<$Res>
    implements $BillingDetailsCopyWith<$Res> {
  _$BillingDetailsCopyWithImpl(this._self, this._then);

  final BillingDetails _self;
  final $Res Function(BillingDetails) _then;

  /// Create a copy of BillingDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_self.copyWith(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  /// Create a copy of BillingDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.address!, (value) {
      return _then(_self.copyWith(address: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BillingDetails].
extension BillingDetailsPatterns on BillingDetails {
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
    TResult Function(_BillingDetails value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BillingDetails() when $default != null:
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
    TResult Function(_BillingDetails value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BillingDetails():
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
    TResult? Function(_BillingDetails value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BillingDetails() when $default != null:
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
            @JsonKey(name: "address") Address? address,
            @JsonKey(name: "email") dynamic email,
            @JsonKey(name: "name") dynamic name,
            @JsonKey(name: "phone") dynamic phone)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BillingDetails() when $default != null:
        return $default(_that.address, _that.email, _that.name, _that.phone);
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
            @JsonKey(name: "address") Address? address,
            @JsonKey(name: "email") dynamic email,
            @JsonKey(name: "name") dynamic name,
            @JsonKey(name: "phone") dynamic phone)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BillingDetails():
        return $default(_that.address, _that.email, _that.name, _that.phone);
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
            @JsonKey(name: "address") Address? address,
            @JsonKey(name: "email") dynamic email,
            @JsonKey(name: "name") dynamic name,
            @JsonKey(name: "phone") dynamic phone)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BillingDetails() when $default != null:
        return $default(_that.address, _that.email, _that.name, _that.phone);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BillingDetails implements BillingDetails {
  const _BillingDetails(
      {@JsonKey(name: "address") this.address,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "phone") this.phone});
  factory _BillingDetails.fromJson(Map<String, dynamic> json) =>
      _$BillingDetailsFromJson(json);

  @override
  @JsonKey(name: "address")
  final Address? address;
  @override
  @JsonKey(name: "email")
  final dynamic email;
  @override
  @JsonKey(name: "name")
  final dynamic name;
  @override
  @JsonKey(name: "phone")
  final dynamic phone;

  /// Create a copy of BillingDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BillingDetailsCopyWith<_BillingDetails> get copyWith =>
      __$BillingDetailsCopyWithImpl<_BillingDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BillingDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BillingDetails &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone));

  @override
  String toString() {
    return 'BillingDetails(address: $address, email: $email, name: $name, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$BillingDetailsCopyWith<$Res>
    implements $BillingDetailsCopyWith<$Res> {
  factory _$BillingDetailsCopyWith(
          _BillingDetails value, $Res Function(_BillingDetails) _then) =
      __$BillingDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "address") Address? address,
      @JsonKey(name: "email") dynamic email,
      @JsonKey(name: "name") dynamic name,
      @JsonKey(name: "phone") dynamic phone});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$BillingDetailsCopyWithImpl<$Res>
    implements _$BillingDetailsCopyWith<$Res> {
  __$BillingDetailsCopyWithImpl(this._self, this._then);

  final _BillingDetails _self;
  final $Res Function(_BillingDetails) _then;

  /// Create a copy of BillingDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_BillingDetails(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  /// Create a copy of BillingDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.address!, (value) {
      return _then(_self.copyWith(address: value));
    });
  }
}

/// @nodoc
mixin _$Address {
  @JsonKey(name: "city")
  dynamic get city;
  @JsonKey(name: "country")
  String? get country;
  @JsonKey(name: "line1")
  dynamic get line1;
  @JsonKey(name: "line2")
  dynamic get line2;
  @JsonKey(name: "postal_code")
  dynamic get postalCode;
  @JsonKey(name: "state")
  dynamic get state;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressCopyWith<Address> get copyWith =>
      _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Address &&
            const DeepCollectionEquality().equals(other.city, city) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other.line1, line1) &&
            const DeepCollectionEquality().equals(other.line2, line2) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      country,
      const DeepCollectionEquality().hash(line1),
      const DeepCollectionEquality().hash(line2),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(state));

  @override
  String toString() {
    return 'Address(city: $city, country: $country, line1: $line1, line2: $line2, postalCode: $postalCode, state: $state)';
  }
}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) =
      _$AddressCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "city") dynamic city,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "line1") dynamic line1,
      @JsonKey(name: "line2") dynamic line2,
      @JsonKey(name: "postal_code") dynamic postalCode,
      @JsonKey(name: "state") dynamic state});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? country = freezed,
    Object? line1 = freezed,
    Object? line2 = freezed,
    Object? postalCode = freezed,
    Object? state = freezed,
  }) {
    return _then(_self.copyWith(
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      line1: freezed == line1
          ? _self.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      line2: freezed == line2
          ? _self.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// Adds pattern-matching-related methods to [Address].
extension AddressPatterns on Address {
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
    TResult Function(_Address value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Address() when $default != null:
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
    TResult Function(_Address value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Address():
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
    TResult? Function(_Address value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Address() when $default != null:
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
            @JsonKey(name: "city") dynamic city,
            @JsonKey(name: "country") String? country,
            @JsonKey(name: "line1") dynamic line1,
            @JsonKey(name: "line2") dynamic line2,
            @JsonKey(name: "postal_code") dynamic postalCode,
            @JsonKey(name: "state") dynamic state)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Address() when $default != null:
        return $default(_that.city, _that.country, _that.line1, _that.line2,
            _that.postalCode, _that.state);
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
            @JsonKey(name: "city") dynamic city,
            @JsonKey(name: "country") String? country,
            @JsonKey(name: "line1") dynamic line1,
            @JsonKey(name: "line2") dynamic line2,
            @JsonKey(name: "postal_code") dynamic postalCode,
            @JsonKey(name: "state") dynamic state)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Address():
        return $default(_that.city, _that.country, _that.line1, _that.line2,
            _that.postalCode, _that.state);
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
            @JsonKey(name: "city") dynamic city,
            @JsonKey(name: "country") String? country,
            @JsonKey(name: "line1") dynamic line1,
            @JsonKey(name: "line2") dynamic line2,
            @JsonKey(name: "postal_code") dynamic postalCode,
            @JsonKey(name: "state") dynamic state)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Address() when $default != null:
        return $default(_that.city, _that.country, _that.line1, _that.line2,
            _that.postalCode, _that.state);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Address implements Address {
  const _Address(
      {@JsonKey(name: "city") this.city,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "line1") this.line1,
      @JsonKey(name: "line2") this.line2,
      @JsonKey(name: "postal_code") this.postalCode,
      @JsonKey(name: "state") this.state});
  factory _Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  @override
  @JsonKey(name: "city")
  final dynamic city;
  @override
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "line1")
  final dynamic line1;
  @override
  @JsonKey(name: "line2")
  final dynamic line2;
  @override
  @JsonKey(name: "postal_code")
  final dynamic postalCode;
  @override
  @JsonKey(name: "state")
  final dynamic state;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddressCopyWith<_Address> get copyWith =>
      __$AddressCopyWithImpl<_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Address &&
            const DeepCollectionEquality().equals(other.city, city) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other.line1, line1) &&
            const DeepCollectionEquality().equals(other.line2, line2) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      country,
      const DeepCollectionEquality().hash(line1),
      const DeepCollectionEquality().hash(line2),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(state));

  @override
  String toString() {
    return 'Address(city: $city, country: $country, line1: $line1, line2: $line2, postalCode: $postalCode, state: $state)';
  }
}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) =
      __$AddressCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "city") dynamic city,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "line1") dynamic line1,
      @JsonKey(name: "line2") dynamic line2,
      @JsonKey(name: "postal_code") dynamic postalCode,
      @JsonKey(name: "state") dynamic state});
}

/// @nodoc
class __$AddressCopyWithImpl<$Res> implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? city = freezed,
    Object? country = freezed,
    Object? line1 = freezed,
    Object? line2 = freezed,
    Object? postalCode = freezed,
    Object? state = freezed,
  }) {
    return _then(_Address(
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      line1: freezed == line1
          ? _self.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      line2: freezed == line2
          ? _self.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
mixin _$Card {
  @JsonKey(name: "brand")
  String? get brand;
  @JsonKey(name: "checks")
  Checks? get checks;
  @JsonKey(name: "country")
  String? get country;
  @JsonKey(name: "display_brand")
  String? get displayBrand;
  @JsonKey(name: "exp_month")
  int? get expMonth;
  @JsonKey(name: "exp_year")
  int? get expYear;
  @JsonKey(name: "fingerprint")
  String? get fingerprint;
  @JsonKey(name: "funding")
  String? get funding;
  @JsonKey(name: "generated_from")
  dynamic get generatedFrom;
  @JsonKey(name: "last4")
  String? get last4;
  @JsonKey(name: "networks")
  Networks? get networks;
  @JsonKey(name: "regulated_status")
  String? get regulatedStatus;
  @JsonKey(name: "three_d_secure_usage")
  ThreeDSecureUsage? get threeDSecureUsage;
  @JsonKey(name: "wallet")
  dynamic get wallet;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CardCopyWith<Card> get copyWith =>
      _$CardCopyWithImpl<Card>(this as Card, _$identity);

  /// Serializes this Card to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Card &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.checks, checks) || other.checks == checks) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.displayBrand, displayBrand) ||
                other.displayBrand == displayBrand) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.fingerprint, fingerprint) ||
                other.fingerprint == fingerprint) &&
            (identical(other.funding, funding) || other.funding == funding) &&
            const DeepCollectionEquality()
                .equals(other.generatedFrom, generatedFrom) &&
            (identical(other.last4, last4) || other.last4 == last4) &&
            (identical(other.networks, networks) ||
                other.networks == networks) &&
            (identical(other.regulatedStatus, regulatedStatus) ||
                other.regulatedStatus == regulatedStatus) &&
            (identical(other.threeDSecureUsage, threeDSecureUsage) ||
                other.threeDSecureUsage == threeDSecureUsage) &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      brand,
      checks,
      country,
      displayBrand,
      expMonth,
      expYear,
      fingerprint,
      funding,
      const DeepCollectionEquality().hash(generatedFrom),
      last4,
      networks,
      regulatedStatus,
      threeDSecureUsage,
      const DeepCollectionEquality().hash(wallet));

  @override
  String toString() {
    return 'Card(brand: $brand, checks: $checks, country: $country, displayBrand: $displayBrand, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, generatedFrom: $generatedFrom, last4: $last4, networks: $networks, regulatedStatus: $regulatedStatus, threeDSecureUsage: $threeDSecureUsage, wallet: $wallet)';
  }
}

/// @nodoc
abstract mixin class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) _then) =
      _$CardCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "brand") String? brand,
      @JsonKey(name: "checks") Checks? checks,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "display_brand") String? displayBrand,
      @JsonKey(name: "exp_month") int? expMonth,
      @JsonKey(name: "exp_year") int? expYear,
      @JsonKey(name: "fingerprint") String? fingerprint,
      @JsonKey(name: "funding") String? funding,
      @JsonKey(name: "generated_from") dynamic generatedFrom,
      @JsonKey(name: "last4") String? last4,
      @JsonKey(name: "networks") Networks? networks,
      @JsonKey(name: "regulated_status") String? regulatedStatus,
      @JsonKey(name: "three_d_secure_usage")
      ThreeDSecureUsage? threeDSecureUsage,
      @JsonKey(name: "wallet") dynamic wallet});

  $ChecksCopyWith<$Res>? get checks;
  $NetworksCopyWith<$Res>? get networks;
  $ThreeDSecureUsageCopyWith<$Res>? get threeDSecureUsage;
}

/// @nodoc
class _$CardCopyWithImpl<$Res> implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._self, this._then);

  final Card _self;
  final $Res Function(Card) _then;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? checks = freezed,
    Object? country = freezed,
    Object? displayBrand = freezed,
    Object? expMonth = freezed,
    Object? expYear = freezed,
    Object? fingerprint = freezed,
    Object? funding = freezed,
    Object? generatedFrom = freezed,
    Object? last4 = freezed,
    Object? networks = freezed,
    Object? regulatedStatus = freezed,
    Object? threeDSecureUsage = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_self.copyWith(
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      checks: freezed == checks
          ? _self.checks
          : checks // ignore: cast_nullable_to_non_nullable
              as Checks?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      displayBrand: freezed == displayBrand
          ? _self.displayBrand
          : displayBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      expMonth: freezed == expMonth
          ? _self.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      expYear: freezed == expYear
          ? _self.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as int?,
      fingerprint: freezed == fingerprint
          ? _self.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
      funding: freezed == funding
          ? _self.funding
          : funding // ignore: cast_nullable_to_non_nullable
              as String?,
      generatedFrom: freezed == generatedFrom
          ? _self.generatedFrom
          : generatedFrom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      last4: freezed == last4
          ? _self.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String?,
      networks: freezed == networks
          ? _self.networks
          : networks // ignore: cast_nullable_to_non_nullable
              as Networks?,
      regulatedStatus: freezed == regulatedStatus
          ? _self.regulatedStatus
          : regulatedStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      threeDSecureUsage: freezed == threeDSecureUsage
          ? _self.threeDSecureUsage
          : threeDSecureUsage // ignore: cast_nullable_to_non_nullable
              as ThreeDSecureUsage?,
      wallet: freezed == wallet
          ? _self.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChecksCopyWith<$Res>? get checks {
    if (_self.checks == null) {
      return null;
    }

    return $ChecksCopyWith<$Res>(_self.checks!, (value) {
      return _then(_self.copyWith(checks: value));
    });
  }

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworksCopyWith<$Res>? get networks {
    if (_self.networks == null) {
      return null;
    }

    return $NetworksCopyWith<$Res>(_self.networks!, (value) {
      return _then(_self.copyWith(networks: value));
    });
  }

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThreeDSecureUsageCopyWith<$Res>? get threeDSecureUsage {
    if (_self.threeDSecureUsage == null) {
      return null;
    }

    return $ThreeDSecureUsageCopyWith<$Res>(_self.threeDSecureUsage!, (value) {
      return _then(_self.copyWith(threeDSecureUsage: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Card].
extension CardPatterns on Card {
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
    TResult Function(_Card value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Card() when $default != null:
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
    TResult Function(_Card value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Card():
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
    TResult? Function(_Card value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Card() when $default != null:
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
            @JsonKey(name: "brand") String? brand,
            @JsonKey(name: "checks") Checks? checks,
            @JsonKey(name: "country") String? country,
            @JsonKey(name: "display_brand") String? displayBrand,
            @JsonKey(name: "exp_month") int? expMonth,
            @JsonKey(name: "exp_year") int? expYear,
            @JsonKey(name: "fingerprint") String? fingerprint,
            @JsonKey(name: "funding") String? funding,
            @JsonKey(name: "generated_from") dynamic generatedFrom,
            @JsonKey(name: "last4") String? last4,
            @JsonKey(name: "networks") Networks? networks,
            @JsonKey(name: "regulated_status") String? regulatedStatus,
            @JsonKey(name: "three_d_secure_usage")
            ThreeDSecureUsage? threeDSecureUsage,
            @JsonKey(name: "wallet") dynamic wallet)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Card() when $default != null:
        return $default(
            _that.brand,
            _that.checks,
            _that.country,
            _that.displayBrand,
            _that.expMonth,
            _that.expYear,
            _that.fingerprint,
            _that.funding,
            _that.generatedFrom,
            _that.last4,
            _that.networks,
            _that.regulatedStatus,
            _that.threeDSecureUsage,
            _that.wallet);
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
            @JsonKey(name: "brand") String? brand,
            @JsonKey(name: "checks") Checks? checks,
            @JsonKey(name: "country") String? country,
            @JsonKey(name: "display_brand") String? displayBrand,
            @JsonKey(name: "exp_month") int? expMonth,
            @JsonKey(name: "exp_year") int? expYear,
            @JsonKey(name: "fingerprint") String? fingerprint,
            @JsonKey(name: "funding") String? funding,
            @JsonKey(name: "generated_from") dynamic generatedFrom,
            @JsonKey(name: "last4") String? last4,
            @JsonKey(name: "networks") Networks? networks,
            @JsonKey(name: "regulated_status") String? regulatedStatus,
            @JsonKey(name: "three_d_secure_usage")
            ThreeDSecureUsage? threeDSecureUsage,
            @JsonKey(name: "wallet") dynamic wallet)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Card():
        return $default(
            _that.brand,
            _that.checks,
            _that.country,
            _that.displayBrand,
            _that.expMonth,
            _that.expYear,
            _that.fingerprint,
            _that.funding,
            _that.generatedFrom,
            _that.last4,
            _that.networks,
            _that.regulatedStatus,
            _that.threeDSecureUsage,
            _that.wallet);
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
            @JsonKey(name: "brand") String? brand,
            @JsonKey(name: "checks") Checks? checks,
            @JsonKey(name: "country") String? country,
            @JsonKey(name: "display_brand") String? displayBrand,
            @JsonKey(name: "exp_month") int? expMonth,
            @JsonKey(name: "exp_year") int? expYear,
            @JsonKey(name: "fingerprint") String? fingerprint,
            @JsonKey(name: "funding") String? funding,
            @JsonKey(name: "generated_from") dynamic generatedFrom,
            @JsonKey(name: "last4") String? last4,
            @JsonKey(name: "networks") Networks? networks,
            @JsonKey(name: "regulated_status") String? regulatedStatus,
            @JsonKey(name: "three_d_secure_usage")
            ThreeDSecureUsage? threeDSecureUsage,
            @JsonKey(name: "wallet") dynamic wallet)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Card() when $default != null:
        return $default(
            _that.brand,
            _that.checks,
            _that.country,
            _that.displayBrand,
            _that.expMonth,
            _that.expYear,
            _that.fingerprint,
            _that.funding,
            _that.generatedFrom,
            _that.last4,
            _that.networks,
            _that.regulatedStatus,
            _that.threeDSecureUsage,
            _that.wallet);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Card implements Card {
  const _Card(
      {@JsonKey(name: "brand") this.brand,
      @JsonKey(name: "checks") this.checks,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "display_brand") this.displayBrand,
      @JsonKey(name: "exp_month") this.expMonth,
      @JsonKey(name: "exp_year") this.expYear,
      @JsonKey(name: "fingerprint") this.fingerprint,
      @JsonKey(name: "funding") this.funding,
      @JsonKey(name: "generated_from") this.generatedFrom,
      @JsonKey(name: "last4") this.last4,
      @JsonKey(name: "networks") this.networks,
      @JsonKey(name: "regulated_status") this.regulatedStatus,
      @JsonKey(name: "three_d_secure_usage") this.threeDSecureUsage,
      @JsonKey(name: "wallet") this.wallet});
  factory _Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  @override
  @JsonKey(name: "brand")
  final String? brand;
  @override
  @JsonKey(name: "checks")
  final Checks? checks;
  @override
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "display_brand")
  final String? displayBrand;
  @override
  @JsonKey(name: "exp_month")
  final int? expMonth;
  @override
  @JsonKey(name: "exp_year")
  final int? expYear;
  @override
  @JsonKey(name: "fingerprint")
  final String? fingerprint;
  @override
  @JsonKey(name: "funding")
  final String? funding;
  @override
  @JsonKey(name: "generated_from")
  final dynamic generatedFrom;
  @override
  @JsonKey(name: "last4")
  final String? last4;
  @override
  @JsonKey(name: "networks")
  final Networks? networks;
  @override
  @JsonKey(name: "regulated_status")
  final String? regulatedStatus;
  @override
  @JsonKey(name: "three_d_secure_usage")
  final ThreeDSecureUsage? threeDSecureUsage;
  @override
  @JsonKey(name: "wallet")
  final dynamic wallet;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CardCopyWith<_Card> get copyWith =>
      __$CardCopyWithImpl<_Card>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CardToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Card &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.checks, checks) || other.checks == checks) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.displayBrand, displayBrand) ||
                other.displayBrand == displayBrand) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.fingerprint, fingerprint) ||
                other.fingerprint == fingerprint) &&
            (identical(other.funding, funding) || other.funding == funding) &&
            const DeepCollectionEquality()
                .equals(other.generatedFrom, generatedFrom) &&
            (identical(other.last4, last4) || other.last4 == last4) &&
            (identical(other.networks, networks) ||
                other.networks == networks) &&
            (identical(other.regulatedStatus, regulatedStatus) ||
                other.regulatedStatus == regulatedStatus) &&
            (identical(other.threeDSecureUsage, threeDSecureUsage) ||
                other.threeDSecureUsage == threeDSecureUsage) &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      brand,
      checks,
      country,
      displayBrand,
      expMonth,
      expYear,
      fingerprint,
      funding,
      const DeepCollectionEquality().hash(generatedFrom),
      last4,
      networks,
      regulatedStatus,
      threeDSecureUsage,
      const DeepCollectionEquality().hash(wallet));

  @override
  String toString() {
    return 'Card(brand: $brand, checks: $checks, country: $country, displayBrand: $displayBrand, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, generatedFrom: $generatedFrom, last4: $last4, networks: $networks, regulatedStatus: $regulatedStatus, threeDSecureUsage: $threeDSecureUsage, wallet: $wallet)';
  }
}

/// @nodoc
abstract mixin class _$CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$CardCopyWith(_Card value, $Res Function(_Card) _then) =
      __$CardCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "brand") String? brand,
      @JsonKey(name: "checks") Checks? checks,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "display_brand") String? displayBrand,
      @JsonKey(name: "exp_month") int? expMonth,
      @JsonKey(name: "exp_year") int? expYear,
      @JsonKey(name: "fingerprint") String? fingerprint,
      @JsonKey(name: "funding") String? funding,
      @JsonKey(name: "generated_from") dynamic generatedFrom,
      @JsonKey(name: "last4") String? last4,
      @JsonKey(name: "networks") Networks? networks,
      @JsonKey(name: "regulated_status") String? regulatedStatus,
      @JsonKey(name: "three_d_secure_usage")
      ThreeDSecureUsage? threeDSecureUsage,
      @JsonKey(name: "wallet") dynamic wallet});

  @override
  $ChecksCopyWith<$Res>? get checks;
  @override
  $NetworksCopyWith<$Res>? get networks;
  @override
  $ThreeDSecureUsageCopyWith<$Res>? get threeDSecureUsage;
}

/// @nodoc
class __$CardCopyWithImpl<$Res> implements _$CardCopyWith<$Res> {
  __$CardCopyWithImpl(this._self, this._then);

  final _Card _self;
  final $Res Function(_Card) _then;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? brand = freezed,
    Object? checks = freezed,
    Object? country = freezed,
    Object? displayBrand = freezed,
    Object? expMonth = freezed,
    Object? expYear = freezed,
    Object? fingerprint = freezed,
    Object? funding = freezed,
    Object? generatedFrom = freezed,
    Object? last4 = freezed,
    Object? networks = freezed,
    Object? regulatedStatus = freezed,
    Object? threeDSecureUsage = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_Card(
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      checks: freezed == checks
          ? _self.checks
          : checks // ignore: cast_nullable_to_non_nullable
              as Checks?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      displayBrand: freezed == displayBrand
          ? _self.displayBrand
          : displayBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      expMonth: freezed == expMonth
          ? _self.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      expYear: freezed == expYear
          ? _self.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as int?,
      fingerprint: freezed == fingerprint
          ? _self.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
      funding: freezed == funding
          ? _self.funding
          : funding // ignore: cast_nullable_to_non_nullable
              as String?,
      generatedFrom: freezed == generatedFrom
          ? _self.generatedFrom
          : generatedFrom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      last4: freezed == last4
          ? _self.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String?,
      networks: freezed == networks
          ? _self.networks
          : networks // ignore: cast_nullable_to_non_nullable
              as Networks?,
      regulatedStatus: freezed == regulatedStatus
          ? _self.regulatedStatus
          : regulatedStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      threeDSecureUsage: freezed == threeDSecureUsage
          ? _self.threeDSecureUsage
          : threeDSecureUsage // ignore: cast_nullable_to_non_nullable
              as ThreeDSecureUsage?,
      wallet: freezed == wallet
          ? _self.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChecksCopyWith<$Res>? get checks {
    if (_self.checks == null) {
      return null;
    }

    return $ChecksCopyWith<$Res>(_self.checks!, (value) {
      return _then(_self.copyWith(checks: value));
    });
  }

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworksCopyWith<$Res>? get networks {
    if (_self.networks == null) {
      return null;
    }

    return $NetworksCopyWith<$Res>(_self.networks!, (value) {
      return _then(_self.copyWith(networks: value));
    });
  }

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThreeDSecureUsageCopyWith<$Res>? get threeDSecureUsage {
    if (_self.threeDSecureUsage == null) {
      return null;
    }

    return $ThreeDSecureUsageCopyWith<$Res>(_self.threeDSecureUsage!, (value) {
      return _then(_self.copyWith(threeDSecureUsage: value));
    });
  }
}

/// @nodoc
mixin _$Checks {
  @JsonKey(name: "address_line1_check")
  dynamic get addressLine1Check;
  @JsonKey(name: "address_postal_code_check")
  dynamic get addressPostalCodeCheck;
  @JsonKey(name: "cvc_check")
  String? get cvcCheck;

  /// Create a copy of Checks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChecksCopyWith<Checks> get copyWith =>
      _$ChecksCopyWithImpl<Checks>(this as Checks, _$identity);

  /// Serializes this Checks to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Checks &&
            const DeepCollectionEquality()
                .equals(other.addressLine1Check, addressLine1Check) &&
            const DeepCollectionEquality()
                .equals(other.addressPostalCodeCheck, addressPostalCodeCheck) &&
            (identical(other.cvcCheck, cvcCheck) ||
                other.cvcCheck == cvcCheck));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addressLine1Check),
      const DeepCollectionEquality().hash(addressPostalCodeCheck),
      cvcCheck);

  @override
  String toString() {
    return 'Checks(addressLine1Check: $addressLine1Check, addressPostalCodeCheck: $addressPostalCodeCheck, cvcCheck: $cvcCheck)';
  }
}

/// @nodoc
abstract mixin class $ChecksCopyWith<$Res> {
  factory $ChecksCopyWith(Checks value, $Res Function(Checks) _then) =
      _$ChecksCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "address_line1_check") dynamic addressLine1Check,
      @JsonKey(name: "address_postal_code_check")
      dynamic addressPostalCodeCheck,
      @JsonKey(name: "cvc_check") String? cvcCheck});
}

/// @nodoc
class _$ChecksCopyWithImpl<$Res> implements $ChecksCopyWith<$Res> {
  _$ChecksCopyWithImpl(this._self, this._then);

  final Checks _self;
  final $Res Function(Checks) _then;

  /// Create a copy of Checks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressLine1Check = freezed,
    Object? addressPostalCodeCheck = freezed,
    Object? cvcCheck = freezed,
  }) {
    return _then(_self.copyWith(
      addressLine1Check: freezed == addressLine1Check
          ? _self.addressLine1Check
          : addressLine1Check // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressPostalCodeCheck: freezed == addressPostalCodeCheck
          ? _self.addressPostalCodeCheck
          : addressPostalCodeCheck // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cvcCheck: freezed == cvcCheck
          ? _self.cvcCheck
          : cvcCheck // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Checks].
extension ChecksPatterns on Checks {
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
    TResult Function(_Checks value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Checks() when $default != null:
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
    TResult Function(_Checks value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Checks():
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
    TResult? Function(_Checks value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Checks() when $default != null:
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
            @JsonKey(name: "address_line1_check") dynamic addressLine1Check,
            @JsonKey(name: "address_postal_code_check")
            dynamic addressPostalCodeCheck,
            @JsonKey(name: "cvc_check") String? cvcCheck)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Checks() when $default != null:
        return $default(_that.addressLine1Check, _that.addressPostalCodeCheck,
            _that.cvcCheck);
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
            @JsonKey(name: "address_line1_check") dynamic addressLine1Check,
            @JsonKey(name: "address_postal_code_check")
            dynamic addressPostalCodeCheck,
            @JsonKey(name: "cvc_check") String? cvcCheck)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Checks():
        return $default(_that.addressLine1Check, _that.addressPostalCodeCheck,
            _that.cvcCheck);
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
            @JsonKey(name: "address_line1_check") dynamic addressLine1Check,
            @JsonKey(name: "address_postal_code_check")
            dynamic addressPostalCodeCheck,
            @JsonKey(name: "cvc_check") String? cvcCheck)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Checks() when $default != null:
        return $default(_that.addressLine1Check, _that.addressPostalCodeCheck,
            _that.cvcCheck);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Checks implements Checks {
  const _Checks(
      {@JsonKey(name: "address_line1_check") this.addressLine1Check,
      @JsonKey(name: "address_postal_code_check") this.addressPostalCodeCheck,
      @JsonKey(name: "cvc_check") this.cvcCheck});
  factory _Checks.fromJson(Map<String, dynamic> json) => _$ChecksFromJson(json);

  @override
  @JsonKey(name: "address_line1_check")
  final dynamic addressLine1Check;
  @override
  @JsonKey(name: "address_postal_code_check")
  final dynamic addressPostalCodeCheck;
  @override
  @JsonKey(name: "cvc_check")
  final String? cvcCheck;

  /// Create a copy of Checks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChecksCopyWith<_Checks> get copyWith =>
      __$ChecksCopyWithImpl<_Checks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChecksToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Checks &&
            const DeepCollectionEquality()
                .equals(other.addressLine1Check, addressLine1Check) &&
            const DeepCollectionEquality()
                .equals(other.addressPostalCodeCheck, addressPostalCodeCheck) &&
            (identical(other.cvcCheck, cvcCheck) ||
                other.cvcCheck == cvcCheck));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addressLine1Check),
      const DeepCollectionEquality().hash(addressPostalCodeCheck),
      cvcCheck);

  @override
  String toString() {
    return 'Checks(addressLine1Check: $addressLine1Check, addressPostalCodeCheck: $addressPostalCodeCheck, cvcCheck: $cvcCheck)';
  }
}

/// @nodoc
abstract mixin class _$ChecksCopyWith<$Res> implements $ChecksCopyWith<$Res> {
  factory _$ChecksCopyWith(_Checks value, $Res Function(_Checks) _then) =
      __$ChecksCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "address_line1_check") dynamic addressLine1Check,
      @JsonKey(name: "address_postal_code_check")
      dynamic addressPostalCodeCheck,
      @JsonKey(name: "cvc_check") String? cvcCheck});
}

/// @nodoc
class __$ChecksCopyWithImpl<$Res> implements _$ChecksCopyWith<$Res> {
  __$ChecksCopyWithImpl(this._self, this._then);

  final _Checks _self;
  final $Res Function(_Checks) _then;

  /// Create a copy of Checks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addressLine1Check = freezed,
    Object? addressPostalCodeCheck = freezed,
    Object? cvcCheck = freezed,
  }) {
    return _then(_Checks(
      addressLine1Check: freezed == addressLine1Check
          ? _self.addressLine1Check
          : addressLine1Check // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressPostalCodeCheck: freezed == addressPostalCodeCheck
          ? _self.addressPostalCodeCheck
          : addressPostalCodeCheck // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cvcCheck: freezed == cvcCheck
          ? _self.cvcCheck
          : cvcCheck // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Networks {
  @JsonKey(name: "available")
  List<String>? get available;
  @JsonKey(name: "preferred")
  dynamic get preferred;

  /// Create a copy of Networks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworksCopyWith<Networks> get copyWith =>
      _$NetworksCopyWithImpl<Networks>(this as Networks, _$identity);

  /// Serializes this Networks to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Networks &&
            const DeepCollectionEquality().equals(other.available, available) &&
            const DeepCollectionEquality().equals(other.preferred, preferred));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(available),
      const DeepCollectionEquality().hash(preferred));

  @override
  String toString() {
    return 'Networks(available: $available, preferred: $preferred)';
  }
}

/// @nodoc
abstract mixin class $NetworksCopyWith<$Res> {
  factory $NetworksCopyWith(Networks value, $Res Function(Networks) _then) =
      _$NetworksCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "available") List<String>? available,
      @JsonKey(name: "preferred") dynamic preferred});
}

/// @nodoc
class _$NetworksCopyWithImpl<$Res> implements $NetworksCopyWith<$Res> {
  _$NetworksCopyWithImpl(this._self, this._then);

  final Networks _self;
  final $Res Function(Networks) _then;

  /// Create a copy of Networks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? preferred = freezed,
  }) {
    return _then(_self.copyWith(
      available: freezed == available
          ? _self.available
          : available // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      preferred: freezed == preferred
          ? _self.preferred
          : preferred // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// Adds pattern-matching-related methods to [Networks].
extension NetworksPatterns on Networks {
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
    TResult Function(_Networks value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Networks() when $default != null:
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
    TResult Function(_Networks value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Networks():
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
    TResult? Function(_Networks value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Networks() when $default != null:
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
    TResult Function(@JsonKey(name: "available") List<String>? available,
            @JsonKey(name: "preferred") dynamic preferred)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Networks() when $default != null:
        return $default(_that.available, _that.preferred);
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
    TResult Function(@JsonKey(name: "available") List<String>? available,
            @JsonKey(name: "preferred") dynamic preferred)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Networks():
        return $default(_that.available, _that.preferred);
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
    TResult? Function(@JsonKey(name: "available") List<String>? available,
            @JsonKey(name: "preferred") dynamic preferred)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Networks() when $default != null:
        return $default(_that.available, _that.preferred);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Networks implements Networks {
  const _Networks(
      {@JsonKey(name: "available") final List<String>? available,
      @JsonKey(name: "preferred") this.preferred})
      : _available = available;
  factory _Networks.fromJson(Map<String, dynamic> json) =>
      _$NetworksFromJson(json);

  final List<String>? _available;
  @override
  @JsonKey(name: "available")
  List<String>? get available {
    final value = _available;
    if (value == null) return null;
    if (_available is EqualUnmodifiableListView) return _available;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "preferred")
  final dynamic preferred;

  /// Create a copy of Networks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworksCopyWith<_Networks> get copyWith =>
      __$NetworksCopyWithImpl<_Networks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworksToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Networks &&
            const DeepCollectionEquality()
                .equals(other._available, _available) &&
            const DeepCollectionEquality().equals(other.preferred, preferred));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_available),
      const DeepCollectionEquality().hash(preferred));

  @override
  String toString() {
    return 'Networks(available: $available, preferred: $preferred)';
  }
}

/// @nodoc
abstract mixin class _$NetworksCopyWith<$Res>
    implements $NetworksCopyWith<$Res> {
  factory _$NetworksCopyWith(_Networks value, $Res Function(_Networks) _then) =
      __$NetworksCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "available") List<String>? available,
      @JsonKey(name: "preferred") dynamic preferred});
}

/// @nodoc
class __$NetworksCopyWithImpl<$Res> implements _$NetworksCopyWith<$Res> {
  __$NetworksCopyWithImpl(this._self, this._then);

  final _Networks _self;
  final $Res Function(_Networks) _then;

  /// Create a copy of Networks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? available = freezed,
    Object? preferred = freezed,
  }) {
    return _then(_Networks(
      available: freezed == available
          ? _self._available
          : available // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      preferred: freezed == preferred
          ? _self.preferred
          : preferred // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
mixin _$ThreeDSecureUsage {
  @JsonKey(name: "supported")
  bool? get supported;

  /// Create a copy of ThreeDSecureUsage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThreeDSecureUsageCopyWith<ThreeDSecureUsage> get copyWith =>
      _$ThreeDSecureUsageCopyWithImpl<ThreeDSecureUsage>(
          this as ThreeDSecureUsage, _$identity);

  /// Serializes this ThreeDSecureUsage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThreeDSecureUsage &&
            (identical(other.supported, supported) ||
                other.supported == supported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, supported);

  @override
  String toString() {
    return 'ThreeDSecureUsage(supported: $supported)';
  }
}

/// @nodoc
abstract mixin class $ThreeDSecureUsageCopyWith<$Res> {
  factory $ThreeDSecureUsageCopyWith(
          ThreeDSecureUsage value, $Res Function(ThreeDSecureUsage) _then) =
      _$ThreeDSecureUsageCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: "supported") bool? supported});
}

/// @nodoc
class _$ThreeDSecureUsageCopyWithImpl<$Res>
    implements $ThreeDSecureUsageCopyWith<$Res> {
  _$ThreeDSecureUsageCopyWithImpl(this._self, this._then);

  final ThreeDSecureUsage _self;
  final $Res Function(ThreeDSecureUsage) _then;

  /// Create a copy of ThreeDSecureUsage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supported = freezed,
  }) {
    return _then(_self.copyWith(
      supported: freezed == supported
          ? _self.supported
          : supported // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ThreeDSecureUsage].
extension ThreeDSecureUsagePatterns on ThreeDSecureUsage {
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
    TResult Function(_ThreeDSecureUsage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ThreeDSecureUsage() when $default != null:
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
    TResult Function(_ThreeDSecureUsage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThreeDSecureUsage():
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
    TResult? Function(_ThreeDSecureUsage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThreeDSecureUsage() when $default != null:
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
    TResult Function(@JsonKey(name: "supported") bool? supported)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ThreeDSecureUsage() when $default != null:
        return $default(_that.supported);
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
    TResult Function(@JsonKey(name: "supported") bool? supported) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThreeDSecureUsage():
        return $default(_that.supported);
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
    TResult? Function(@JsonKey(name: "supported") bool? supported)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThreeDSecureUsage() when $default != null:
        return $default(_that.supported);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ThreeDSecureUsage implements ThreeDSecureUsage {
  const _ThreeDSecureUsage({@JsonKey(name: "supported") this.supported});
  factory _ThreeDSecureUsage.fromJson(Map<String, dynamic> json) =>
      _$ThreeDSecureUsageFromJson(json);

  @override
  @JsonKey(name: "supported")
  final bool? supported;

  /// Create a copy of ThreeDSecureUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThreeDSecureUsageCopyWith<_ThreeDSecureUsage> get copyWith =>
      __$ThreeDSecureUsageCopyWithImpl<_ThreeDSecureUsage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ThreeDSecureUsageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThreeDSecureUsage &&
            (identical(other.supported, supported) ||
                other.supported == supported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, supported);

  @override
  String toString() {
    return 'ThreeDSecureUsage(supported: $supported)';
  }
}

/// @nodoc
abstract mixin class _$ThreeDSecureUsageCopyWith<$Res>
    implements $ThreeDSecureUsageCopyWith<$Res> {
  factory _$ThreeDSecureUsageCopyWith(
          _ThreeDSecureUsage value, $Res Function(_ThreeDSecureUsage) _then) =
      __$ThreeDSecureUsageCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: "supported") bool? supported});
}

/// @nodoc
class __$ThreeDSecureUsageCopyWithImpl<$Res>
    implements _$ThreeDSecureUsageCopyWith<$Res> {
  __$ThreeDSecureUsageCopyWithImpl(this._self, this._then);

  final _ThreeDSecureUsage _self;
  final $Res Function(_ThreeDSecureUsage) _then;

  /// Create a copy of ThreeDSecureUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? supported = freezed,
  }) {
    return _then(_ThreeDSecureUsage(
      supported: freezed == supported
          ? _self.supported
          : supported // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
