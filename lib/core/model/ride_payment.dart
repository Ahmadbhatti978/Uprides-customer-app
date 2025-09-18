import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'coordinate.dart';
import 'optimized_stop.dart';

part 'ride_payment.freezed.dart';
part 'ride_payment.g.dart';

// Custom converter for the nested JSON string in the 'payload' field
class RidePaymentPayloadConverter implements JsonConverter<RidePaymentPayload, String> {
  const RidePaymentPayloadConverter();

  @override
  RidePaymentPayload fromJson(String jsonString) => RidePaymentPayload.fromJson(jsonDecode(json.decode(jsonString)) as Map<String, dynamic>);

  @override
  String toJson(RidePaymentPayload object) => json.encode(object.toJson());
}

@freezed
abstract class RidePaymentModel with _$RidePaymentModel {
  factory RidePaymentModel({@RidePaymentPayloadConverter() RidePaymentPayload? payload, String? body}) = _RidePaymentModel;

  factory RidePaymentModel.fromJson(Map<String, dynamic> json) => _$RidePaymentModelFromJson(json);
}

@freezed
abstract class RidePaymentPayload with _$RidePaymentPayload {
  factory RidePaymentPayload({String? type, @JsonKey(name: 'payload') RidePayload? rideDetails}) = _RidePaymentPayload;

  factory RidePaymentPayload.fromJson(Map<String, dynamic> json) => _$RidePaymentPayloadFromJson(json);
}

@freezed
abstract class RidePayload with _$RidePayload {
  factory RidePayload({
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
    @JsonKey(name: 'customer_name') String? customerName,
    String? status,
    String? note,
  }) = _RidePayload;

  factory RidePayload.fromJson(Map<String, dynamic> json) => _$RidePayloadFromJson(json);
}

@freezed
abstract class Location with _$Location {
  factory Location({@JsonKey(name: 'drop_off') LocationPoint? dropOff, LocationPoint? pickup, List<dynamic>? stops, List<OptimizedStop>? optimizedStops}) =
      _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}

@freezed
abstract class LocationPoint with _$LocationPoint {
  factory LocationPoint({Coordinate? coordinates, String? address}) = _LocationPoint;

  factory LocationPoint.fromJson(Map<String, dynamic> json) => _$LocationPointFromJson(json);
}
