// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Coupon {
  @JsonKey(name: 'country_id')
  String? get countryId;
  @JsonKey(name: 'city_id')
  String? get cityId;
  @JsonKey(name: 'zone_id')
  dynamic get zoneId;
  @JsonKey(name: 'coupon_type')
  String? get couponType;
  @JsonKey(name: 'coupon_name')
  String? get couponName;
  @JsonKey(name: 'coupon_code')
  String? get couponCode;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'discount_type')
  String? get discountType;
  @JsonKey(name: 'discount_value')
  int? get discountValue;
  @JsonKey(name: 'valid_from')
  DateTime? get validFrom;
  @JsonKey(name: 'valid_until')
  DateTime? get validUntil;
  @JsonKey(name: 'usage_limit')
  int? get usageLimit;
  @JsonKey(name: 'used_count')
  int? get usedCount;
  @JsonKey(name: 'min_amount')
  int? get minAmount;
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @JsonKey(name: 'is_deleted')
  bool? get isDeleted;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CouponCopyWith<Coupon> get copyWith =>
      _$CouponCopyWithImpl<Coupon>(this as Coupon, _$identity);

  /// Serializes this Coupon to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Coupon &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            const DeepCollectionEquality().equals(other.zoneId, zoneId) &&
            (identical(other.couponType, couponType) ||
                other.couponType == couponType) &&
            (identical(other.couponName, couponName) ||
                other.couponName == couponName) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.usageLimit, usageLimit) ||
                other.usageLimit == usageLimit) &&
            (identical(other.usedCount, usedCount) ||
                other.usedCount == usedCount) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        countryId,
        cityId,
        const DeepCollectionEquality().hash(zoneId),
        couponType,
        couponName,
        couponCode,
        description,
        discountType,
        discountValue,
        validFrom,
        validUntil,
        usageLimit,
        usedCount,
        minAmount,
        isActive,
        isDeleted,
        createdAt,
        updatedAt,
        id
      ]);

  @override
  String toString() {
    return 'Coupon(countryId: $countryId, cityId: $cityId, zoneId: $zoneId, couponType: $couponType, couponName: $couponName, couponCode: $couponCode, description: $description, discountType: $discountType, discountValue: $discountValue, validFrom: $validFrom, validUntil: $validUntil, usageLimit: $usageLimit, usedCount: $usedCount, minAmount: $minAmount, isActive: $isActive, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class $CouponCopyWith<$Res> {
  factory $CouponCopyWith(Coupon value, $Res Function(Coupon) _then) =
      _$CouponCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'country_id') String? countryId,
      @JsonKey(name: 'city_id') String? cityId,
      @JsonKey(name: 'zone_id') dynamic zoneId,
      @JsonKey(name: 'coupon_type') String? couponType,
      @JsonKey(name: 'coupon_name') String? couponName,
      @JsonKey(name: 'coupon_code') String? couponCode,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'discount_type') String? discountType,
      @JsonKey(name: 'discount_value') int? discountValue,
      @JsonKey(name: 'valid_from') DateTime? validFrom,
      @JsonKey(name: 'valid_until') DateTime? validUntil,
      @JsonKey(name: 'usage_limit') int? usageLimit,
      @JsonKey(name: 'used_count') int? usedCount,
      @JsonKey(name: 'min_amount') int? minAmount,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'is_deleted') bool? isDeleted,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$CouponCopyWithImpl<$Res> implements $CouponCopyWith<$Res> {
  _$CouponCopyWithImpl(this._self, this._then);

  final Coupon _self;
  final $Res Function(Coupon) _then;

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? zoneId = freezed,
    Object? couponType = freezed,
    Object? couponName = freezed,
    Object? couponCode = freezed,
    Object? description = freezed,
    Object? discountType = freezed,
    Object? discountValue = freezed,
    Object? validFrom = freezed,
    Object? validUntil = freezed,
    Object? usageLimit = freezed,
    Object? usedCount = freezed,
    Object? minAmount = freezed,
    Object? isActive = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_self.copyWith(
      countryId: freezed == countryId
          ? _self.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId: freezed == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      couponType: freezed == couponType
          ? _self.couponType
          : couponType // ignore: cast_nullable_to_non_nullable
              as String?,
      couponName: freezed == couponName
          ? _self.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String?,
      couponCode: freezed == couponCode
          ? _self.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _self.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discountValue: freezed == discountValue
          ? _self.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as int?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntil: freezed == validUntil
          ? _self.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usageLimit: freezed == usageLimit
          ? _self.usageLimit
          : usageLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      usedCount: freezed == usedCount
          ? _self.usedCount
          : usedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      minAmount: freezed == minAmount
          ? _self.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Coupon].
extension CouponPatterns on Coupon {
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
    TResult Function(_Coupon value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Coupon() when $default != null:
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
    TResult Function(_Coupon value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Coupon():
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
    TResult? Function(_Coupon value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Coupon() when $default != null:
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
            @JsonKey(name: 'country_id') String? countryId,
            @JsonKey(name: 'city_id') String? cityId,
            @JsonKey(name: 'zone_id') dynamic zoneId,
            @JsonKey(name: 'coupon_type') String? couponType,
            @JsonKey(name: 'coupon_name') String? couponName,
            @JsonKey(name: 'coupon_code') String? couponCode,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'discount_type') String? discountType,
            @JsonKey(name: 'discount_value') int? discountValue,
            @JsonKey(name: 'valid_from') DateTime? validFrom,
            @JsonKey(name: 'valid_until') DateTime? validUntil,
            @JsonKey(name: 'usage_limit') int? usageLimit,
            @JsonKey(name: 'used_count') int? usedCount,
            @JsonKey(name: 'min_amount') int? minAmount,
            @JsonKey(name: 'is_active') bool? isActive,
            @JsonKey(name: 'is_deleted') bool? isDeleted,
            @JsonKey(name: 'createdAt') DateTime? createdAt,
            @JsonKey(name: 'updatedAt') DateTime? updatedAt,
            @JsonKey(name: 'id') String? id)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Coupon() when $default != null:
        return $default(
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.couponType,
            _that.couponName,
            _that.couponCode,
            _that.description,
            _that.discountType,
            _that.discountValue,
            _that.validFrom,
            _that.validUntil,
            _that.usageLimit,
            _that.usedCount,
            _that.minAmount,
            _that.isActive,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.id);
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
            @JsonKey(name: 'country_id') String? countryId,
            @JsonKey(name: 'city_id') String? cityId,
            @JsonKey(name: 'zone_id') dynamic zoneId,
            @JsonKey(name: 'coupon_type') String? couponType,
            @JsonKey(name: 'coupon_name') String? couponName,
            @JsonKey(name: 'coupon_code') String? couponCode,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'discount_type') String? discountType,
            @JsonKey(name: 'discount_value') int? discountValue,
            @JsonKey(name: 'valid_from') DateTime? validFrom,
            @JsonKey(name: 'valid_until') DateTime? validUntil,
            @JsonKey(name: 'usage_limit') int? usageLimit,
            @JsonKey(name: 'used_count') int? usedCount,
            @JsonKey(name: 'min_amount') int? minAmount,
            @JsonKey(name: 'is_active') bool? isActive,
            @JsonKey(name: 'is_deleted') bool? isDeleted,
            @JsonKey(name: 'createdAt') DateTime? createdAt,
            @JsonKey(name: 'updatedAt') DateTime? updatedAt,
            @JsonKey(name: 'id') String? id)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Coupon():
        return $default(
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.couponType,
            _that.couponName,
            _that.couponCode,
            _that.description,
            _that.discountType,
            _that.discountValue,
            _that.validFrom,
            _that.validUntil,
            _that.usageLimit,
            _that.usedCount,
            _that.minAmount,
            _that.isActive,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.id);
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
            @JsonKey(name: 'country_id') String? countryId,
            @JsonKey(name: 'city_id') String? cityId,
            @JsonKey(name: 'zone_id') dynamic zoneId,
            @JsonKey(name: 'coupon_type') String? couponType,
            @JsonKey(name: 'coupon_name') String? couponName,
            @JsonKey(name: 'coupon_code') String? couponCode,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'discount_type') String? discountType,
            @JsonKey(name: 'discount_value') int? discountValue,
            @JsonKey(name: 'valid_from') DateTime? validFrom,
            @JsonKey(name: 'valid_until') DateTime? validUntil,
            @JsonKey(name: 'usage_limit') int? usageLimit,
            @JsonKey(name: 'used_count') int? usedCount,
            @JsonKey(name: 'min_amount') int? minAmount,
            @JsonKey(name: 'is_active') bool? isActive,
            @JsonKey(name: 'is_deleted') bool? isDeleted,
            @JsonKey(name: 'createdAt') DateTime? createdAt,
            @JsonKey(name: 'updatedAt') DateTime? updatedAt,
            @JsonKey(name: 'id') String? id)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Coupon() when $default != null:
        return $default(
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.couponType,
            _that.couponName,
            _that.couponCode,
            _that.description,
            _that.discountType,
            _that.discountValue,
            _that.validFrom,
            _that.validUntil,
            _that.usageLimit,
            _that.usedCount,
            _that.minAmount,
            _that.isActive,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Coupon implements Coupon {
  const _Coupon(
      {@JsonKey(name: 'country_id') this.countryId,
      @JsonKey(name: 'city_id') this.cityId,
      @JsonKey(name: 'zone_id') this.zoneId,
      @JsonKey(name: 'coupon_type') this.couponType,
      @JsonKey(name: 'coupon_name') this.couponName,
      @JsonKey(name: 'coupon_code') this.couponCode,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'discount_type') this.discountType,
      @JsonKey(name: 'discount_value') this.discountValue,
      @JsonKey(name: 'valid_from') this.validFrom,
      @JsonKey(name: 'valid_until') this.validUntil,
      @JsonKey(name: 'usage_limit') this.usageLimit,
      @JsonKey(name: 'used_count') this.usedCount,
      @JsonKey(name: 'min_amount') this.minAmount,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'is_deleted') this.isDeleted,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      @JsonKey(name: 'id') this.id});
  factory _Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);

  @override
  @JsonKey(name: 'country_id')
  final String? countryId;
  @override
  @JsonKey(name: 'city_id')
  final String? cityId;
  @override
  @JsonKey(name: 'zone_id')
  final dynamic zoneId;
  @override
  @JsonKey(name: 'coupon_type')
  final String? couponType;
  @override
  @JsonKey(name: 'coupon_name')
  final String? couponName;
  @override
  @JsonKey(name: 'coupon_code')
  final String? couponCode;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'discount_type')
  final String? discountType;
  @override
  @JsonKey(name: 'discount_value')
  final int? discountValue;
  @override
  @JsonKey(name: 'valid_from')
  final DateTime? validFrom;
  @override
  @JsonKey(name: 'valid_until')
  final DateTime? validUntil;
  @override
  @JsonKey(name: 'usage_limit')
  final int? usageLimit;
  @override
  @JsonKey(name: 'used_count')
  final int? usedCount;
  @override
  @JsonKey(name: 'min_amount')
  final int? minAmount;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'is_deleted')
  final bool? isDeleted;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'id')
  final String? id;

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CouponCopyWith<_Coupon> get copyWith =>
      __$CouponCopyWithImpl<_Coupon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CouponToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Coupon &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            const DeepCollectionEquality().equals(other.zoneId, zoneId) &&
            (identical(other.couponType, couponType) ||
                other.couponType == couponType) &&
            (identical(other.couponName, couponName) ||
                other.couponName == couponName) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.usageLimit, usageLimit) ||
                other.usageLimit == usageLimit) &&
            (identical(other.usedCount, usedCount) ||
                other.usedCount == usedCount) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        countryId,
        cityId,
        const DeepCollectionEquality().hash(zoneId),
        couponType,
        couponName,
        couponCode,
        description,
        discountType,
        discountValue,
        validFrom,
        validUntil,
        usageLimit,
        usedCount,
        minAmount,
        isActive,
        isDeleted,
        createdAt,
        updatedAt,
        id
      ]);

  @override
  String toString() {
    return 'Coupon(countryId: $countryId, cityId: $cityId, zoneId: $zoneId, couponType: $couponType, couponName: $couponName, couponCode: $couponCode, description: $description, discountType: $discountType, discountValue: $discountValue, validFrom: $validFrom, validUntil: $validUntil, usageLimit: $usageLimit, usedCount: $usedCount, minAmount: $minAmount, isActive: $isActive, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$CouponCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$CouponCopyWith(_Coupon value, $Res Function(_Coupon) _then) =
      __$CouponCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'country_id') String? countryId,
      @JsonKey(name: 'city_id') String? cityId,
      @JsonKey(name: 'zone_id') dynamic zoneId,
      @JsonKey(name: 'coupon_type') String? couponType,
      @JsonKey(name: 'coupon_name') String? couponName,
      @JsonKey(name: 'coupon_code') String? couponCode,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'discount_type') String? discountType,
      @JsonKey(name: 'discount_value') int? discountValue,
      @JsonKey(name: 'valid_from') DateTime? validFrom,
      @JsonKey(name: 'valid_until') DateTime? validUntil,
      @JsonKey(name: 'usage_limit') int? usageLimit,
      @JsonKey(name: 'used_count') int? usedCount,
      @JsonKey(name: 'min_amount') int? minAmount,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'is_deleted') bool? isDeleted,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$CouponCopyWithImpl<$Res> implements _$CouponCopyWith<$Res> {
  __$CouponCopyWithImpl(this._self, this._then);

  final _Coupon _self;
  final $Res Function(_Coupon) _then;

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? zoneId = freezed,
    Object? couponType = freezed,
    Object? couponName = freezed,
    Object? couponCode = freezed,
    Object? description = freezed,
    Object? discountType = freezed,
    Object? discountValue = freezed,
    Object? validFrom = freezed,
    Object? validUntil = freezed,
    Object? usageLimit = freezed,
    Object? usedCount = freezed,
    Object? minAmount = freezed,
    Object? isActive = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_Coupon(
      countryId: freezed == countryId
          ? _self.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId: freezed == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      couponType: freezed == couponType
          ? _self.couponType
          : couponType // ignore: cast_nullable_to_non_nullable
              as String?,
      couponName: freezed == couponName
          ? _self.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String?,
      couponCode: freezed == couponCode
          ? _self.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _self.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discountValue: freezed == discountValue
          ? _self.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as int?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntil: freezed == validUntil
          ? _self.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usageLimit: freezed == usageLimit
          ? _self.usageLimit
          : usageLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      usedCount: freezed == usedCount
          ? _self.usedCount
          : usedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      minAmount: freezed == minAmount
          ? _self.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
