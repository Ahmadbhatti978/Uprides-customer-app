// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Coupon _$CouponFromJson(Map<String, dynamic> json) => _Coupon(
      countryId: json['country_id'] as String?,
      cityId: json['city_id'] as String?,
      zoneId: json['zone_id'],
      couponType: json['coupon_type'] as String?,
      couponName: json['coupon_name'] as String?,
      couponCode: json['coupon_code'] as String?,
      description: json['description'] as String?,
      discountType: json['discount_type'] as String?,
      discountValue: (json['discount_value'] as num?)?.toInt(),
      validFrom: json['valid_from'] == null
          ? null
          : DateTime.parse(json['valid_from'] as String),
      validUntil: json['valid_until'] == null
          ? null
          : DateTime.parse(json['valid_until'] as String),
      usageLimit: (json['usage_limit'] as num?)?.toInt(),
      usedCount: (json['used_count'] as num?)?.toInt(),
      minAmount: (json['min_amount'] as num?)?.toInt(),
      isActive: json['is_active'] as bool?,
      isDeleted: json['is_deleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CouponToJson(_Coupon instance) => <String, dynamic>{
      'country_id': instance.countryId,
      'city_id': instance.cityId,
      'zone_id': instance.zoneId,
      'coupon_type': instance.couponType,
      'coupon_name': instance.couponName,
      'coupon_code': instance.couponCode,
      'description': instance.description,
      'discount_type': instance.discountType,
      'discount_value': instance.discountValue,
      'valid_from': instance.validFrom?.toIso8601String(),
      'valid_until': instance.validUntil?.toIso8601String(),
      'usage_limit': instance.usageLimit,
      'used_count': instance.usedCount,
      'min_amount': instance.minAmount,
      'is_active': instance.isActive,
      'is_deleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'id': instance.id,
    };
