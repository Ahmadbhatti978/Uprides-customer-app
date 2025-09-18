import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
// Assuming these files exist and contain the respective Freezed models.
import 'coordinate.dart';
import 'optimized_stop.dart';
import 'stop.dart';

part 'ride_payment_req.freezed.dart';
part 'ride_payment_req.g.dart';

/// Custom converter for the nested JSON string in the 'payload' field.
/// It decodes the JSON string into a RidePaymentPayload object.
class PayloadConverter implements JsonConverter<RidePaymentPayload?, String?> {
  const PayloadConverter();

  @override
  RidePaymentPayload? fromJson(String? jsonString) {
    if (jsonString == null) return null;
    return RidePaymentPayload.fromJson(json.decode(jsonString) as Map<String, dynamic>);
  }

  @override
  String? toJson(RidePaymentPayload? ridePaymentPayload) {
    if (ridePaymentPayload == null) return null;
    return json.encode(ridePaymentPayload.toJson());
  }
}

/// Main model for the entire API response.
@freezed
abstract class RidePaymentResponse with _$RidePaymentResponse {
  const factory RidePaymentResponse({
    @PayloadConverter() RidePaymentPayload? payload,
    @JsonKey(name: 'requiresDeliveryTracking') bool? requiresDeliveryTracking,
    String? body,
  }) = _RidePaymentResponse;

  factory RidePaymentResponse.fromJson(Map<String, dynamic> json) => _$RidePaymentResponseFromJson(json);
}

/// Model for the content of the 'payload' JSON string.
@freezed
abstract class RidePaymentPayload with _$RidePaymentPayload {
  const factory RidePaymentPayload({@JsonKey(name: 'type') String? type, @JsonKey(name: 'payload') RideDetails? rideDetails}) = _RidePaymentPayload;

  factory RidePaymentPayload.fromJson(Map<String, dynamic> json) => _$RidePaymentPayloadFromJson(json);
}

/// Model for the nested 'payload' object within the main payload.
@freezed
abstract class RideDetails with _$RideDetails {
  const factory RideDetails({
    String? accessability,
    @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
    @JsonKey(name: 'eta_in_seconds') int? etaInSeconds,
    Location? location,
    @JsonKey(name: 'total_amount') int? totalAmount,
    @JsonKey(name: 'discounted_price_without_vat') int? discountedPriceWithoutVat,
    @JsonKey(name: 'vat_amount') int? vatAmount,
    @JsonKey(name: 'payment_request_id') String? paymentRequestId,
    @JsonKey(name: 'ride_req_id') String? rideReqId,
    @JsonKey(name: 'ride_type_id') String? rideTypeId,
    @JsonKey(name: 'booked_for') String? bookedFor,
    String? type,
    @JsonKey(name: 'ride_service') String? rideService,
    @JsonKey(name: 'ride_name') String? rideName,
    @JsonKey(name: 'customer_fullname') String? customerFullname,
    String? status,
    String? note,
  }) = _RideDetails;

  factory RideDetails.fromJson(Map<String, dynamic> json) => _$RideDetailsFromJson(json);
}

/// Model for the location details.
@freezed
abstract class Location with _$Location {
  const factory Location({@JsonKey(name: 'drop_off') Spot? dropOff, Spot? pickup, List<Stop?>? stops, List<OptimizedStop?>? optimizedStops}) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}

/// Model for pickup and drop-off places.
@freezed
abstract class Spot with _$Spot {
  const factory Spot({Coordinate? coordinates, String? address}) = _Spot;

  factory Spot.fromJson(Map<String, dynamic> json) => _$SpotFromJson(json);
}
