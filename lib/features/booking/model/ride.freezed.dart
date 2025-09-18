// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Ride {
  @JsonKey(name: 'ride_type_id')
  String? get rideTypeId;
  @JsonKey(name: 'ride_name')
  String? get rideName;
  @JsonKey(name: 'nearest_driver')
  String? get nearestDriver;
  @JsonKey(name: 'tag')
  String? get tag;
  @JsonKey(name: 'total_seats')
  int? get totalSeats;
  @JsonKey(name: 'fare_per_km')
  double? get farePerKm;
  @JsonKey(name: 'fare_per_min')
  double? get farePerMin;
  @JsonKey(name: 'vat_percentage')
  int? get vatPercentage;
  @JsonKey(name: 'waiting_charges_per_min')
  double? get waitingChargesPerMin;
  @JsonKey(name: 'discounted_price_without_vat')
  double? get discountedPriceWithoutVat;
  @JsonKey(name: 'price_without_vat')
  double? get priceWithoutVat;
  @JsonKey(name: 'total_amount')
  double? get totalAmount;
  @JsonKey(name: 'vat_amount')
  double? get vatAmount;
  @JsonKey(name: 'discount_amount')
  int? get discountAmount;

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideCopyWith<Ride> get copyWith =>
      _$RideCopyWithImpl<Ride>(this as Ride, _$identity);

  /// Serializes this Ride to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Ride &&
            (identical(other.rideTypeId, rideTypeId) ||
                other.rideTypeId == rideTypeId) &&
            (identical(other.rideName, rideName) ||
                other.rideName == rideName) &&
            (identical(other.nearestDriver, nearestDriver) ||
                other.nearestDriver == nearestDriver) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.totalSeats, totalSeats) ||
                other.totalSeats == totalSeats) &&
            (identical(other.farePerKm, farePerKm) ||
                other.farePerKm == farePerKm) &&
            (identical(other.farePerMin, farePerMin) ||
                other.farePerMin == farePerMin) &&
            (identical(other.vatPercentage, vatPercentage) ||
                other.vatPercentage == vatPercentage) &&
            (identical(other.waitingChargesPerMin, waitingChargesPerMin) ||
                other.waitingChargesPerMin == waitingChargesPerMin) &&
            (identical(other.discountedPriceWithoutVat,
                    discountedPriceWithoutVat) ||
                other.discountedPriceWithoutVat == discountedPriceWithoutVat) &&
            (identical(other.priceWithoutVat, priceWithoutVat) ||
                other.priceWithoutVat == priceWithoutVat) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rideTypeId,
      rideName,
      nearestDriver,
      tag,
      totalSeats,
      farePerKm,
      farePerMin,
      vatPercentage,
      waitingChargesPerMin,
      discountedPriceWithoutVat,
      priceWithoutVat,
      totalAmount,
      vatAmount,
      discountAmount);

  @override
  String toString() {
    return 'Ride(rideTypeId: $rideTypeId, rideName: $rideName, nearestDriver: $nearestDriver, tag: $tag, totalSeats: $totalSeats, farePerKm: $farePerKm, farePerMin: $farePerMin, vatPercentage: $vatPercentage, waitingChargesPerMin: $waitingChargesPerMin, discountedPriceWithoutVat: $discountedPriceWithoutVat, priceWithoutVat: $priceWithoutVat, totalAmount: $totalAmount, vatAmount: $vatAmount, discountAmount: $discountAmount)';
  }
}

/// @nodoc
abstract mixin class $RideCopyWith<$Res> {
  factory $RideCopyWith(Ride value, $Res Function(Ride) _then) =
      _$RideCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'ride_type_id') String? rideTypeId,
      @JsonKey(name: 'ride_name') String? rideName,
      @JsonKey(name: 'nearest_driver') String? nearestDriver,
      @JsonKey(name: 'tag') String? tag,
      @JsonKey(name: 'total_seats') int? totalSeats,
      @JsonKey(name: 'fare_per_km') double? farePerKm,
      @JsonKey(name: 'fare_per_min') double? farePerMin,
      @JsonKey(name: 'vat_percentage') int? vatPercentage,
      @JsonKey(name: 'waiting_charges_per_min') double? waitingChargesPerMin,
      @JsonKey(name: 'discounted_price_without_vat')
      double? discountedPriceWithoutVat,
      @JsonKey(name: 'price_without_vat') double? priceWithoutVat,
      @JsonKey(name: 'total_amount') double? totalAmount,
      @JsonKey(name: 'vat_amount') double? vatAmount,
      @JsonKey(name: 'discount_amount') int? discountAmount});
}

/// @nodoc
class _$RideCopyWithImpl<$Res> implements $RideCopyWith<$Res> {
  _$RideCopyWithImpl(this._self, this._then);

  final Ride _self;
  final $Res Function(Ride) _then;

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideTypeId = freezed,
    Object? rideName = freezed,
    Object? nearestDriver = freezed,
    Object? tag = freezed,
    Object? totalSeats = freezed,
    Object? farePerKm = freezed,
    Object? farePerMin = freezed,
    Object? vatPercentage = freezed,
    Object? waitingChargesPerMin = freezed,
    Object? discountedPriceWithoutVat = freezed,
    Object? priceWithoutVat = freezed,
    Object? totalAmount = freezed,
    Object? vatAmount = freezed,
    Object? discountAmount = freezed,
  }) {
    return _then(_self.copyWith(
      rideTypeId: freezed == rideTypeId
          ? _self.rideTypeId
          : rideTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideName: freezed == rideName
          ? _self.rideName
          : rideName // ignore: cast_nullable_to_non_nullable
              as String?,
      nearestDriver: freezed == nearestDriver
          ? _self.nearestDriver
          : nearestDriver // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSeats: freezed == totalSeats
          ? _self.totalSeats
          : totalSeats // ignore: cast_nullable_to_non_nullable
              as int?,
      farePerKm: freezed == farePerKm
          ? _self.farePerKm
          : farePerKm // ignore: cast_nullable_to_non_nullable
              as double?,
      farePerMin: freezed == farePerMin
          ? _self.farePerMin
          : farePerMin // ignore: cast_nullable_to_non_nullable
              as double?,
      vatPercentage: freezed == vatPercentage
          ? _self.vatPercentage
          : vatPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      waitingChargesPerMin: freezed == waitingChargesPerMin
          ? _self.waitingChargesPerMin
          : waitingChargesPerMin // ignore: cast_nullable_to_non_nullable
              as double?,
      discountedPriceWithoutVat: freezed == discountedPriceWithoutVat
          ? _self.discountedPriceWithoutVat
          : discountedPriceWithoutVat // ignore: cast_nullable_to_non_nullable
              as double?,
      priceWithoutVat: freezed == priceWithoutVat
          ? _self.priceWithoutVat
          : priceWithoutVat // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vatAmount: freezed == vatAmount
          ? _self.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Ride].
extension RidePatterns on Ride {
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
    TResult Function(_Ride value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Ride() when $default != null:
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
    TResult Function(_Ride value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ride():
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
    TResult? Function(_Ride value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ride() when $default != null:
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
            @JsonKey(name: 'ride_type_id') String? rideTypeId,
            @JsonKey(name: 'ride_name') String? rideName,
            @JsonKey(name: 'nearest_driver') String? nearestDriver,
            @JsonKey(name: 'tag') String? tag,
            @JsonKey(name: 'total_seats') int? totalSeats,
            @JsonKey(name: 'fare_per_km') double? farePerKm,
            @JsonKey(name: 'fare_per_min') double? farePerMin,
            @JsonKey(name: 'vat_percentage') int? vatPercentage,
            @JsonKey(name: 'waiting_charges_per_min')
            double? waitingChargesPerMin,
            @JsonKey(name: 'discounted_price_without_vat')
            double? discountedPriceWithoutVat,
            @JsonKey(name: 'price_without_vat') double? priceWithoutVat,
            @JsonKey(name: 'total_amount') double? totalAmount,
            @JsonKey(name: 'vat_amount') double? vatAmount,
            @JsonKey(name: 'discount_amount') int? discountAmount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Ride() when $default != null:
        return $default(
            _that.rideTypeId,
            _that.rideName,
            _that.nearestDriver,
            _that.tag,
            _that.totalSeats,
            _that.farePerKm,
            _that.farePerMin,
            _that.vatPercentage,
            _that.waitingChargesPerMin,
            _that.discountedPriceWithoutVat,
            _that.priceWithoutVat,
            _that.totalAmount,
            _that.vatAmount,
            _that.discountAmount);
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
            @JsonKey(name: 'ride_type_id') String? rideTypeId,
            @JsonKey(name: 'ride_name') String? rideName,
            @JsonKey(name: 'nearest_driver') String? nearestDriver,
            @JsonKey(name: 'tag') String? tag,
            @JsonKey(name: 'total_seats') int? totalSeats,
            @JsonKey(name: 'fare_per_km') double? farePerKm,
            @JsonKey(name: 'fare_per_min') double? farePerMin,
            @JsonKey(name: 'vat_percentage') int? vatPercentage,
            @JsonKey(name: 'waiting_charges_per_min')
            double? waitingChargesPerMin,
            @JsonKey(name: 'discounted_price_without_vat')
            double? discountedPriceWithoutVat,
            @JsonKey(name: 'price_without_vat') double? priceWithoutVat,
            @JsonKey(name: 'total_amount') double? totalAmount,
            @JsonKey(name: 'vat_amount') double? vatAmount,
            @JsonKey(name: 'discount_amount') int? discountAmount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ride():
        return $default(
            _that.rideTypeId,
            _that.rideName,
            _that.nearestDriver,
            _that.tag,
            _that.totalSeats,
            _that.farePerKm,
            _that.farePerMin,
            _that.vatPercentage,
            _that.waitingChargesPerMin,
            _that.discountedPriceWithoutVat,
            _that.priceWithoutVat,
            _that.totalAmount,
            _that.vatAmount,
            _that.discountAmount);
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
            @JsonKey(name: 'ride_type_id') String? rideTypeId,
            @JsonKey(name: 'ride_name') String? rideName,
            @JsonKey(name: 'nearest_driver') String? nearestDriver,
            @JsonKey(name: 'tag') String? tag,
            @JsonKey(name: 'total_seats') int? totalSeats,
            @JsonKey(name: 'fare_per_km') double? farePerKm,
            @JsonKey(name: 'fare_per_min') double? farePerMin,
            @JsonKey(name: 'vat_percentage') int? vatPercentage,
            @JsonKey(name: 'waiting_charges_per_min')
            double? waitingChargesPerMin,
            @JsonKey(name: 'discounted_price_without_vat')
            double? discountedPriceWithoutVat,
            @JsonKey(name: 'price_without_vat') double? priceWithoutVat,
            @JsonKey(name: 'total_amount') double? totalAmount,
            @JsonKey(name: 'vat_amount') double? vatAmount,
            @JsonKey(name: 'discount_amount') int? discountAmount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ride() when $default != null:
        return $default(
            _that.rideTypeId,
            _that.rideName,
            _that.nearestDriver,
            _that.tag,
            _that.totalSeats,
            _that.farePerKm,
            _that.farePerMin,
            _that.vatPercentage,
            _that.waitingChargesPerMin,
            _that.discountedPriceWithoutVat,
            _that.priceWithoutVat,
            _that.totalAmount,
            _that.vatAmount,
            _that.discountAmount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Ride implements Ride {
  const _Ride(
      {@JsonKey(name: 'ride_type_id') this.rideTypeId,
      @JsonKey(name: 'ride_name') this.rideName,
      @JsonKey(name: 'nearest_driver') this.nearestDriver,
      @JsonKey(name: 'tag') this.tag,
      @JsonKey(name: 'total_seats') this.totalSeats,
      @JsonKey(name: 'fare_per_km') this.farePerKm,
      @JsonKey(name: 'fare_per_min') this.farePerMin,
      @JsonKey(name: 'vat_percentage') this.vatPercentage,
      @JsonKey(name: 'waiting_charges_per_min') this.waitingChargesPerMin,
      @JsonKey(name: 'discounted_price_without_vat')
      this.discountedPriceWithoutVat,
      @JsonKey(name: 'price_without_vat') this.priceWithoutVat,
      @JsonKey(name: 'total_amount') this.totalAmount,
      @JsonKey(name: 'vat_amount') this.vatAmount,
      @JsonKey(name: 'discount_amount') this.discountAmount});
  factory _Ride.fromJson(Map<String, dynamic> json) => _$RideFromJson(json);

  @override
  @JsonKey(name: 'ride_type_id')
  final String? rideTypeId;
  @override
  @JsonKey(name: 'ride_name')
  final String? rideName;
  @override
  @JsonKey(name: 'nearest_driver')
  final String? nearestDriver;
  @override
  @JsonKey(name: 'tag')
  final String? tag;
  @override
  @JsonKey(name: 'total_seats')
  final int? totalSeats;
  @override
  @JsonKey(name: 'fare_per_km')
  final double? farePerKm;
  @override
  @JsonKey(name: 'fare_per_min')
  final double? farePerMin;
  @override
  @JsonKey(name: 'vat_percentage')
  final int? vatPercentage;
  @override
  @JsonKey(name: 'waiting_charges_per_min')
  final double? waitingChargesPerMin;
  @override
  @JsonKey(name: 'discounted_price_without_vat')
  final double? discountedPriceWithoutVat;
  @override
  @JsonKey(name: 'price_without_vat')
  final double? priceWithoutVat;
  @override
  @JsonKey(name: 'total_amount')
  final double? totalAmount;
  @override
  @JsonKey(name: 'vat_amount')
  final double? vatAmount;
  @override
  @JsonKey(name: 'discount_amount')
  final int? discountAmount;

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideCopyWith<_Ride> get copyWith =>
      __$RideCopyWithImpl<_Ride>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ride &&
            (identical(other.rideTypeId, rideTypeId) ||
                other.rideTypeId == rideTypeId) &&
            (identical(other.rideName, rideName) ||
                other.rideName == rideName) &&
            (identical(other.nearestDriver, nearestDriver) ||
                other.nearestDriver == nearestDriver) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.totalSeats, totalSeats) ||
                other.totalSeats == totalSeats) &&
            (identical(other.farePerKm, farePerKm) ||
                other.farePerKm == farePerKm) &&
            (identical(other.farePerMin, farePerMin) ||
                other.farePerMin == farePerMin) &&
            (identical(other.vatPercentage, vatPercentage) ||
                other.vatPercentage == vatPercentage) &&
            (identical(other.waitingChargesPerMin, waitingChargesPerMin) ||
                other.waitingChargesPerMin == waitingChargesPerMin) &&
            (identical(other.discountedPriceWithoutVat,
                    discountedPriceWithoutVat) ||
                other.discountedPriceWithoutVat == discountedPriceWithoutVat) &&
            (identical(other.priceWithoutVat, priceWithoutVat) ||
                other.priceWithoutVat == priceWithoutVat) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rideTypeId,
      rideName,
      nearestDriver,
      tag,
      totalSeats,
      farePerKm,
      farePerMin,
      vatPercentage,
      waitingChargesPerMin,
      discountedPriceWithoutVat,
      priceWithoutVat,
      totalAmount,
      vatAmount,
      discountAmount);

  @override
  String toString() {
    return 'Ride(rideTypeId: $rideTypeId, rideName: $rideName, nearestDriver: $nearestDriver, tag: $tag, totalSeats: $totalSeats, farePerKm: $farePerKm, farePerMin: $farePerMin, vatPercentage: $vatPercentage, waitingChargesPerMin: $waitingChargesPerMin, discountedPriceWithoutVat: $discountedPriceWithoutVat, priceWithoutVat: $priceWithoutVat, totalAmount: $totalAmount, vatAmount: $vatAmount, discountAmount: $discountAmount)';
  }
}

/// @nodoc
abstract mixin class _$RideCopyWith<$Res> implements $RideCopyWith<$Res> {
  factory _$RideCopyWith(_Ride value, $Res Function(_Ride) _then) =
      __$RideCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ride_type_id') String? rideTypeId,
      @JsonKey(name: 'ride_name') String? rideName,
      @JsonKey(name: 'nearest_driver') String? nearestDriver,
      @JsonKey(name: 'tag') String? tag,
      @JsonKey(name: 'total_seats') int? totalSeats,
      @JsonKey(name: 'fare_per_km') double? farePerKm,
      @JsonKey(name: 'fare_per_min') double? farePerMin,
      @JsonKey(name: 'vat_percentage') int? vatPercentage,
      @JsonKey(name: 'waiting_charges_per_min') double? waitingChargesPerMin,
      @JsonKey(name: 'discounted_price_without_vat')
      double? discountedPriceWithoutVat,
      @JsonKey(name: 'price_without_vat') double? priceWithoutVat,
      @JsonKey(name: 'total_amount') double? totalAmount,
      @JsonKey(name: 'vat_amount') double? vatAmount,
      @JsonKey(name: 'discount_amount') int? discountAmount});
}

/// @nodoc
class __$RideCopyWithImpl<$Res> implements _$RideCopyWith<$Res> {
  __$RideCopyWithImpl(this._self, this._then);

  final _Ride _self;
  final $Res Function(_Ride) _then;

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rideTypeId = freezed,
    Object? rideName = freezed,
    Object? nearestDriver = freezed,
    Object? tag = freezed,
    Object? totalSeats = freezed,
    Object? farePerKm = freezed,
    Object? farePerMin = freezed,
    Object? vatPercentage = freezed,
    Object? waitingChargesPerMin = freezed,
    Object? discountedPriceWithoutVat = freezed,
    Object? priceWithoutVat = freezed,
    Object? totalAmount = freezed,
    Object? vatAmount = freezed,
    Object? discountAmount = freezed,
  }) {
    return _then(_Ride(
      rideTypeId: freezed == rideTypeId
          ? _self.rideTypeId
          : rideTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideName: freezed == rideName
          ? _self.rideName
          : rideName // ignore: cast_nullable_to_non_nullable
              as String?,
      nearestDriver: freezed == nearestDriver
          ? _self.nearestDriver
          : nearestDriver // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSeats: freezed == totalSeats
          ? _self.totalSeats
          : totalSeats // ignore: cast_nullable_to_non_nullable
              as int?,
      farePerKm: freezed == farePerKm
          ? _self.farePerKm
          : farePerKm // ignore: cast_nullable_to_non_nullable
              as double?,
      farePerMin: freezed == farePerMin
          ? _self.farePerMin
          : farePerMin // ignore: cast_nullable_to_non_nullable
              as double?,
      vatPercentage: freezed == vatPercentage
          ? _self.vatPercentage
          : vatPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      waitingChargesPerMin: freezed == waitingChargesPerMin
          ? _self.waitingChargesPerMin
          : waitingChargesPerMin // ignore: cast_nullable_to_non_nullable
              as double?,
      discountedPriceWithoutVat: freezed == discountedPriceWithoutVat
          ? _self.discountedPriceWithoutVat
          : discountedPriceWithoutVat // ignore: cast_nullable_to_non_nullable
              as double?,
      priceWithoutVat: freezed == priceWithoutVat
          ? _self.priceWithoutVat
          : priceWithoutVat // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vatAmount: freezed == vatAmount
          ? _self.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
