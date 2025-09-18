// To parse this JSON data, do
//
//     final ride = rideFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride.freezed.dart';
part 'ride.g.dart';

@freezed
abstract class Ride with _$Ride {
  const factory Ride({
    @JsonKey(name: 'ride_type_id') final String? rideTypeId,
    @JsonKey(name: 'ride_name') final String? rideName,
    @JsonKey(name: 'nearest_driver') final String? nearestDriver,
    @JsonKey(name: 'tag') final String? tag,
    @JsonKey(name: 'total_seats') final int? totalSeats,
    @JsonKey(name: 'fare_per_km') final double? farePerKm,
    @JsonKey(name: 'fare_per_min') final double? farePerMin,
    @JsonKey(name: 'vat_percentage') final int? vatPercentage,
    @JsonKey(name: 'waiting_charges_per_min') final double? waitingChargesPerMin,
    @JsonKey(name: 'discounted_price_without_vat') final double? discountedPriceWithoutVat,
    @JsonKey(name: 'price_without_vat') final double? priceWithoutVat,
    @JsonKey(name: 'total_amount') final double? totalAmount,
    @JsonKey(name: 'vat_amount') final double? vatAmount,
    @JsonKey(name: 'discount_amount') final int? discountAmount,
  }) = _Ride;

  factory Ride.fromJson(final Map<String, dynamic> json) => _$RideFromJson(json);
}
