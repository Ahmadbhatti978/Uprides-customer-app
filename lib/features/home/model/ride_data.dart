import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/model/optimized_stop.dart';
import '../../../core/model/stop.dart';
import '../../../core/model/stops_eta.dart';
import 'location.dart';
part 'ride_data.freezed.dart';
part 'ride_data.g.dart';

@freezed
abstract class RideData with _$RideData {
  const factory RideData({@JsonKey(name: "success") bool? success, @JsonKey(name: "message") String? message, @JsonKey(name: "data") Data? data}) = _RideData;

  factory RideData.fromJson(Map<String, dynamic> json) => _$RideDataFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: "ride") Ride? ride,
    @JsonKey(name: "pin") int? pin,
    @JsonKey(name: "driver_info") DriverInfo? driverInfo,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "driver_to_pick_up_polyline") String? driverToPickUpPolyline,
    @JsonKey(name: "pick_up_to_drop_off_polyline") String? pickUpToDropOffPolyline,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class DriverInfo with _$DriverInfo {
  const factory DriverInfo({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "full_name") String? fullName,
    @JsonKey(name: "profile_pic") String? profilePic,
    @JsonKey(name: "current_location") CurrentLocation? currentLocation,
    @JsonKey(name: "ratings") double? ratings,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "vin") String? vin,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "vehicle_type") String? vehicleType,
    @JsonKey(name: "model") String? model,
    @JsonKey(name: "driver_eta") List<DriverEta>? driverEta,
  }) = _DriverInfo;

  factory DriverInfo.fromJson(Map<String, dynamic> json) => _$DriverInfoFromJson(json);
}

@freezed
abstract class CurrentLocation with _$CurrentLocation {
  const factory CurrentLocation({
    @JsonKey(name: "longitude") double? longitude,
    @JsonKey(name: "latitude") double? latitude,
  }) = _CurrentLocation;

  factory CurrentLocation.fromJson(Map<String, dynamic> json) => _$CurrentLocationFromJson(json);
}

@freezed
abstract class DriverEta with _$DriverEta {
  const factory DriverEta({@JsonKey(name: "eta") int? eta, @JsonKey(name: "distance") int? distance, @JsonKey(name: "_id") String? id}) = _DriverEta;

  factory DriverEta.fromJson(Map<String, dynamic> json) => _$DriverEtaFromJson(json);
}

@freezed
abstract class Ride with _$Ride {
  const factory Ride({
    @JsonKey(name: "customer_info") ErInfo? customerInfo,
    @JsonKey(name: "driver_info") ErInfo? driverInfo,
    @JsonKey(name: "vehicle_info") VehicleInfo? vehicleInfo,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "country_id") String? countryId,
    @JsonKey(name: "city_id") String? cityId,
    @JsonKey(name: "zone_id") String? zoneId,
    @JsonKey(name: "customer_id") String? customerId,
    @JsonKey(name: "driver_id") String? driverId,
    @JsonKey(name: "ride_type_id") String? rideTypeId,
    @JsonKey(name: "ride_request") RideRequest? rideRequest,
    @JsonKey(name: "payment_intent_id") String? paymentIntentId,
    @JsonKey(name: "payment_method_id") String? paymentMethodId,
    @JsonKey(name: "customer_stripe_id") String? customerStripeId,
    @JsonKey(name: "charge_amount") int? chargeAmount,
    @JsonKey(name: "captured_amount") double? capturedAmount,
    @JsonKey(name: "fare_price") double? farePrice,
    @JsonKey(name: "total_price") double? totalPrice,
    @JsonKey(name: "vat") double? vat,
    @JsonKey(name: "pay_to_driver") double? payToDriver,
    @JsonKey(name: "platform_charges") double? platformCharges,
    @JsonKey(name: "to_currency") String? toCurrency,
    @JsonKey(name: "from_currency") String? fromCurrency,
    @JsonKey(name: "cancellation_charges") int? cancellationCharges,
    @JsonKey(name: "bid_count") int? bidCount,
    @JsonKey(name: "retry_drivers_count") int? retryDriversCount,
    @JsonKey(name: "max_retry_drivers_count") int? maxRetryDriversCount,
    @JsonKey(name: "is_bidding") bool? isBidding,
    @JsonKey(name: "quoted_fare") String? quotedFare,
    @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
    @JsonKey(name: "requested_at") DateTime? requestedAt,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "payment_status") String? paymentStatus,
    @JsonKey(name: "nano_id") int? nanoId,
    @JsonKey(name: "ride_service") String? rideService,
    @JsonKey(name: "started_at") DateTime? startedAt,
    @JsonKey(name: "onroute_at") DateTime? onrouteAt,
    @JsonKey(name: "arrived_at") DateTime? arrivedAt,
    @JsonKey(name: "accepted_at") DateTime? acceptedAt,
    @JsonKey(name: "rejected_at") DateTime? rejectedAt,
    @JsonKey(name: "cancelled_at") DateTime? cancelledAt,
    @JsonKey(name: "validate_at") DateTime? validateAt,
    @JsonKey(name: "completed_at") DateTime? completedAt,
    @JsonKey(name: "end_at") DateTime? endAt,
    @JsonKey(name: "customer_invoice_seen_at") DateTime? customerInvoiceSeenAt,
    @JsonKey(name: "driver_invoice_seen_at") DateTime? driverInvoiceSeenAt,
    @JsonKey(name: "rejected_drivers") List<dynamic>? rejectedDrivers,
    @JsonKey(name: "requested_drivers") List<String>? requestedDrivers,
    @JsonKey(name: "is_driver_cancelled") bool? isDriverCancelled,
    @JsonKey(name: "is_customer_cancelled") bool? isCustomerCancelled,
    @JsonKey(name: "is_system_cancelled") bool? isSystemCancelled,
    @JsonKey(name: "is_ride_end") bool? isRideEnd,
    @JsonKey(name: "is_customer_invoice_seen") bool? isCustomerInvoiceSeen,
    @JsonKey(name: "is_driver_invoice_seen") bool? isDriverInvoiceSeen,
    @JsonKey(name: "is_deleted") bool? isDeleted,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "time_to_respond") int? timeToRespond,
    @JsonKey(name: "conversation_id") String? conversationId,
    @JsonKey(name: "organization_id") String? organizationId,
    @JsonKey(name: "vehicle_id") String? vehicleId,
  }) = _Ride;

  factory Ride.fromJson(Map<String, dynamic> json) => _$RideFromJson(json);
}

@freezed
abstract class ErInfo with _$ErInfo {
  const factory ErInfo({
    @JsonKey(name: "full_name") String? fullName,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "username") String? username,
  }) = _ErInfo;

  factory ErInfo.fromJson(Map<String, dynamic> json) => _$ErInfoFromJson(json);
}

@freezed
abstract class RideRequest with _$RideRequest {
  const factory RideRequest({
    @JsonKey(name: "pickup_location") Location? pickupLocation,
    @JsonKey(name: "dropoff_location") Location? dropoffLocation,
    @JsonKey(name: "country_id") String? countryId,
    @JsonKey(name: "city_id") String? cityId,
    @JsonKey(name: "zone_id") String? zoneId,
    @JsonKey(name: "customer_id") String? customerId,
    @JsonKey(name: "pickup_address") String? pickupAddress,
    @JsonKey(name: "dropoff_address") String? dropoffAddress,
    @JsonKey(name: "stops") List<Stop>? stops,
    @JsonKey(name: "optimized_stops") List<OptimizedStop>? optimizedStops,
    @JsonKey(name: "booked_for") String? bookedFor,
    @JsonKey(name: "accessiblity") String? accessiblity,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "distance_in_meters") int? distanceInMeters,
    @JsonKey(name: "total_eta") int? totalEta,
    @JsonKey(name: "stops_eta") List<StopsEta>? stopsEta,
    @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
    @JsonKey(name: "server_scheduled_at") DateTime? serverScheduledAt,
    @JsonKey(name: "is_deleted") bool? isDeleted,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "id") String? id,
  }) = _RideRequest;

  factory RideRequest.fromJson(Map<String, dynamic> json) => _$RideRequestFromJson(json);
}

@freezed
abstract class VehicleInfo with _$VehicleInfo {
  const factory VehicleInfo({@JsonKey(name: "vin") String? vin, @JsonKey(name: "registration_number") String? registrationNumber}) = _VehicleInfo;

  factory VehicleInfo.fromJson(Map<String, dynamic> json) => _$VehicleInfoFromJson(json);
}
