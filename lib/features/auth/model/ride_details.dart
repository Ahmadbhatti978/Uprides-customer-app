import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_details.freezed.dart';
part 'ride_details.g.dart';

@freezed
abstract class RideDetails with _$RideDetails {
  const factory RideDetails({
    @JsonKey(name: "ride_id") String? rideId,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "customer_id") String? customerId,
    @JsonKey(name: "driver_id") String? driverId,
    @JsonKey(name: "canceled") bool? canceled,
    @JsonKey(name: "canceled_by_customer") bool? canceledByCustomer,
    @JsonKey(name: "canceled_by_driver") bool? canceledByDriver,
  }) = _RideDetails;

  factory RideDetails.fromJson(Map<String, dynamic> json) => _$RideDetailsFromJson(json);
}
