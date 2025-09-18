// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Ride _$RideFromJson(Map<String, dynamic> json) => _Ride(
      rideTypeId: json['ride_type_id'] as String?,
      rideName: json['ride_name'] as String?,
      nearestDriver: json['nearest_driver'] as String?,
      tag: json['tag'] as String?,
      totalSeats: (json['total_seats'] as num?)?.toInt(),
      farePerKm: (json['fare_per_km'] as num?)?.toDouble(),
      farePerMin: (json['fare_per_min'] as num?)?.toDouble(),
      vatPercentage: (json['vat_percentage'] as num?)?.toInt(),
      waitingChargesPerMin:
          (json['waiting_charges_per_min'] as num?)?.toDouble(),
      discountedPriceWithoutVat:
          (json['discounted_price_without_vat'] as num?)?.toDouble(),
      priceWithoutVat: (json['price_without_vat'] as num?)?.toDouble(),
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      vatAmount: (json['vat_amount'] as num?)?.toDouble(),
      discountAmount: (json['discount_amount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RideToJson(_Ride instance) => <String, dynamic>{
      'ride_type_id': instance.rideTypeId,
      'ride_name': instance.rideName,
      'nearest_driver': instance.nearestDriver,
      'tag': instance.tag,
      'total_seats': instance.totalSeats,
      'fare_per_km': instance.farePerKm,
      'fare_per_min': instance.farePerMin,
      'vat_percentage': instance.vatPercentage,
      'waiting_charges_per_min': instance.waitingChargesPerMin,
      'discounted_price_without_vat': instance.discountedPriceWithoutVat,
      'price_without_vat': instance.priceWithoutVat,
      'total_amount': instance.totalAmount,
      'vat_amount': instance.vatAmount,
      'discount_amount': instance.discountAmount,
    };
