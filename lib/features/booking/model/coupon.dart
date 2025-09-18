// To parse this JSON data, do
//
//       coupon = couponFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon.freezed.dart';
part 'coupon.g.dart';

@freezed
abstract class Coupon with _$Coupon {
  const factory Coupon({
    @JsonKey(name: 'country_id') String? countryId,
    @JsonKey(name: 'city_id') String? cityId,
    @JsonKey(name: 'zone_id') zoneId,
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
    @JsonKey(name: 'id') String? id,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}
