// To parse this JSON data, do
//
//     final paymentRequest = paymentRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

import 'ride_request.dart';

part 'payment_req.freezed.dart';
part 'payment_req.g.dart';

@freezed
abstract class PaymentRequest with _$PaymentRequest {
  const factory PaymentRequest({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") PaymentRequestData? data,
    @JsonKey(name: "statusCode") int? statusCode,
  }) = _PaymentRequest;

  factory PaymentRequest.fromJson(Map<String, dynamic> json) => _$PaymentRequestFromJson(json);
}

@freezed
abstract class PaymentRequestData with _$PaymentRequestData {
  const factory PaymentRequestData({@JsonKey(name: "data") DataData? data}) = _PaymentRequestData;

  factory PaymentRequestData.fromJson(Map<String, dynamic> json) => _$PaymentRequestDataFromJson(json);
}

@freezed
abstract class DataData with _$DataData {
  const factory DataData({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "country_id") String? countryId,
    @JsonKey(name: "city_id") String? cityId,
    @JsonKey(name: "zone_id") String? zoneId,
    @JsonKey(name: "customer_id") String? customerId,
    @JsonKey(name: "paid_by_id") String? paidById,
    @JsonKey(name: "ride_type_id") RideTypeId? rideTypeId,
    @JsonKey(name: "ride_request") RideRequest? rideRequest,
    @JsonKey(name: "quoted_fare") String? quotedFare,
    @JsonKey(name: "customer_fullname") String? customerFullname,
    @JsonKey(name: "paid_by_fullname") String? paidByFullname,
    @JsonKey(name: "ride_service") String? rideService,
    @JsonKey(name: "total_amount") double? totalAmount,
    @JsonKey(name: "price_without_vat") double? priceWithoutVat,
    @JsonKey(name: "discounted_price_without_vat") double? discountedPriceWithoutVat,
    @JsonKey(name: "vat_amount") double? vatAmount,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "is_deleted") bool? isDeleted,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "customer_details") CustomerDetails? customerDetails,
  }) = _DataData;

  factory DataData.fromJson(Map<String, dynamic> json) => _$DataDataFromJson(json);
}

@freezed
abstract class CustomerDetails with _$CustomerDetails {
  const factory CustomerDetails({
    @JsonKey(name: "customer_id") String? customerId,
    @JsonKey(name: "full_name") String? fullName,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "profile_pic") String? profilePic,
    @JsonKey(name: "fcm_token") String? fcmToken,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "current_ride_id") String? currentRideId,
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "rating_count") int? ratingCount,
    @JsonKey(name: "_id") String? id,
  }) = _CustomerDetails;

  factory CustomerDetails.fromJson(Map<String, dynamic> json) => _$CustomerDetailsFromJson(json);
}

@freezed
abstract class RideTypeId with _$RideTypeId {
  const factory RideTypeId({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "is_deleted") bool? isDeleted,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "ride_image") String? rideImage,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "ride_category") String? rideCategory,
    @JsonKey(name: "is_active") bool? isActive,
    @JsonKey(name: "number_of_seats") int? numberOfSeats,
    @JsonKey(name: "tag") String? tag,
  }) = _RideTypeId;

  factory RideTypeId.fromJson(Map<String, dynamic> json) => _$RideTypeIdFromJson(json);
}
