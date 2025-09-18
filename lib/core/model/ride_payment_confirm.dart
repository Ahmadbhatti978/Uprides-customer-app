import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'coordinate.dart';

part 'ride_payment_confirm.freezed.dart';
part 'ride_payment_confirm.g.dart';

// Custom JSON converter for decoding the payload string
class PayloadWrapperConverter implements JsonConverter<PayloadWrapper?, dynamic> {
  const PayloadWrapperConverter();

  @override
  PayloadWrapper? fromJson(dynamic json) {
    if (json is String) {
      try {
        return PayloadWrapper.fromJson(jsonDecode(json));
      } catch (e) {
        return null;
      }
    } else if (json is Map<String, dynamic>) {
      return PayloadWrapper.fromJson(json);
    }
    return null;
  }

  @override
  dynamic toJson(PayloadWrapper? object) => object?.toJson();
}

@freezed
abstract class RidePaymentConfirm with _$RidePaymentConfirm {
  const factory RidePaymentConfirm({
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'payload') PayloadWrapper? payload,
    @JsonKey(name: 'metadata') Metadata? metadata,
    @JsonKey(name: 'requiresDeliveryTracking') bool? requiresDeliveryTracking,
  }) = _RidePaymentConfirm;

  factory RidePaymentConfirm.fromJson(Map<String, dynamic> json) => _$RidePaymentConfirmFromJson(json);
}

@freezed
abstract class Metadata with _$Metadata {
  const factory Metadata({@JsonKey(name: 'ride_id') String? rideId, @JsonKey(name: 'captured_amount') String? capturedAmount}) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);
}

@freezed
abstract class PayloadWrapper with _$PayloadWrapper {
  const factory PayloadWrapper({String? type, RideModel? payload}) = _PayloadWrapper;

  factory PayloadWrapper.fromJson(Map<String, dynamic> json) => _$PayloadWrapperFromJson(json);
}

@freezed
abstract class RideModel with _$RideModel {
  const factory RideModel({
    String? accessability,
    @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
    @JsonKey(name: 'eta_in_seconds') int? etaInSeconds,
    Coordinate? location,
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
    String? polyline,
    String? status,
    String? note,
    @JsonKey(name: 'scheduled_at') DateTime? scheduledAt,
  }) = _RideModel;

  factory RideModel.fromJson(Map<String, dynamic> json) => _$RideModelFromJson(json);
}
