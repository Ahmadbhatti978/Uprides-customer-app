import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/model/coordinate.dart';
import '../../../core/model/driver.dart';
import 'city.dart';
import 'select_ride.dart';
part 'iride.freezed.dart';
part 'iride.g.dart';

@freezed
abstract class IRide with _$IRide {
  const factory IRide({
    @JsonKey(name: 'pickup_location') final Coordinate? pickupLocation,
    @JsonKey(name: 'dropoff_location') final Coordinate? dropoffLocation,
    @JsonKey(name: '_id') final String? id,
    @DriverIDConverter() @JsonKey(name: 'driver') final Driver? driver,
    @JsonKey(name: 'pickup_city') final City? pickupCity,
    @JsonKey(name: 'dropoff_city') final City? dropoffCity,
    @JsonKey(name: 'pickup_address') final String? pickupAddress,
    @JsonKey(name: 'dropoff_address') final String? dropoffAddress,
    @JsonKey(name: 'charge_per_seat') final int? chargePerSeat,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'total_seats') final int? totalSeats,
    @JsonKey(name: 'expected_duration') final int? expectedDuration,
    @JsonKey(name: 'distance_in_kms') final double? distanceInKms,
    @CityIDConverter() @JsonKey(name: 'vehicle_type') final City? vehicleType,
    @JsonKey(name: 'dated') final DateTime? pickupat,
    @JsonKey(name: '__v') final int? v,
    @JsonKey(name: 'completed') final bool? completed,
    @JsonKey(name: 'totalPassengers') final int? totalPassengers,
  }) = _IRide;

  factory IRide.fromJson(final Map<String, dynamic> json) => _$IRideFromJson(json);
}
