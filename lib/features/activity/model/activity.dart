import 'package:freezed_annotation/freezed_annotation.dart';
import '../../home/model/ride_data.dart';
part 'activity.freezed.dart';
part 'activity.g.dart';

@freezed
abstract class Activity with _$Activity {
  const factory Activity({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "statusCode") int? statusCode,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({@JsonKey(name: "rides") Rides? rides}) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Rides with _$Rides {
  const factory Rides({
    @JsonKey(name: "results") List<Result>? results,
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "limit") int? limit,
    @JsonKey(name: "totalPages") int? totalPages,
    @JsonKey(name: "totalResults") int? totalResults,
    @JsonKey(name: "isNextPage") bool? isNextPage,
    @JsonKey(name: "isPreviousPage") bool? isPreviousPage,
  }) = _Rides;

  factory Rides.fromJson(Map<String, dynamic> json) => _$RidesFromJson(json);
}

@freezed
abstract class Result with _$Result {
  const factory Result({
    @JsonKey(name: "customer_info") ErInfo? customerInfo,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "country_id") String? countryId,
    @JsonKey(name: "city_id") String? cityId,
    @JsonKey(name: "zone_id") String? zoneId,
    @JsonKey(name: "customer_id") String? customerId,
    @JsonKey(name: "driver_id") String? driverId,
    @JsonKey(name: "ride_type_id") RideTypeId? rideTypeId,
    @JsonKey(name: "ride_request") RideRequest? rideRequest,
    @JsonKey(name: "payment_intent_id") String? paymentIntentId,
    @JsonKey(name: "payment_method_id") String? paymentMethodId,
    @JsonKey(name: "customer_stripe_id") String? customerStripeId,
    @JsonKey(name: "charge_amount") int? chargeAmount,
    @JsonKey(name: "captured_amount") int? capturedAmount,
    @JsonKey(name: "fare_price") double? farePrice,
    @JsonKey(name: "total_price") double? totalPrice,
    @JsonKey(name: "vat") double? vat,
    @JsonKey(name: "pay_to_driver") double? payToDriver,
    @JsonKey(name: "platform_charges") double? platformCharges,
    @JsonKey(name: "to_currency") String? toCurrency,
    @JsonKey(name: "from_currency") String? fromCurrency,
    @JsonKey(name: "cancellation_charges") double? cancellationCharges,
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
    @JsonKey(name: "started_at") dynamic startedAt,
    @JsonKey(name: "onroute_at") DateTime? onrouteAt,
    @JsonKey(name: "arrived_at") DateTime? arrivedAt,
    @JsonKey(name: "accepted_at") DateTime? acceptedAt,
    @JsonKey(name: "rejected_at") dynamic rejectedAt,
    @JsonKey(name: "cancelled_at") DateTime? cancelledAt,
    @JsonKey(name: "validate_at") dynamic validateAt,
    @JsonKey(name: "completed_at") dynamic completedAt,
    @JsonKey(name: "end_at") dynamic endAt,
    @JsonKey(name: "customer_invoice_seen_at") dynamic customerInvoiceSeenAt,
    @JsonKey(name: "driver_invoice_seen_at") dynamic driverInvoiceSeenAt,
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
    @JsonKey(name: "cancelled_reason") String? cancelledReason,
    @JsonKey(name: "driver_info") ErInfo? driverInfo,
    @JsonKey(name: "vehicle_info") VehicleInfo? vehicleInfo,
    @JsonKey(name: "conversation_id") String? conversationId,
    @JsonKey(name: "organization_id") String? organizationId,
    @JsonKey(name: "vehicle_id") String? vehicleId,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
abstract class RideTypeId with _$RideTypeId {
  const factory RideTypeId({@JsonKey(name: "_id") String? id, @JsonKey(name: "name") String? name}) = _RideTypeId;

  factory RideTypeId.fromJson(Map<String, dynamic> json) => _$RideTypeIdFromJson(json);
}
