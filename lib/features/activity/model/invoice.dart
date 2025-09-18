// To parse this JSON data, do
//
//     final invoice = invoiceFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

Invoice invoiceFromJson(String str) => Invoice.fromJson(json.decode(str));

String invoiceToJson(Invoice data) => json.encode(data.toJson());

@freezed
abstract class Invoice with _$Invoice {
  const factory Invoice({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "statusCode") int? statusCode,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, dynamic> json) => _$InvoiceFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: "driver_name") String? driverName,
    @JsonKey(name: "vehicle") String? vehicle,
    @JsonKey(name: "vehicleDetails") VehicleDetails? vehicleDetails,
    @JsonKey(name: "vin") String? vin,
    @JsonKey(name: "pickup_address") String? pickupAddress,
    @JsonKey(name: "dropoff_address") String? dropoffAddress,
    @JsonKey(name: "pickup_to_dropoff_polyline") String? pickupToDropoffPolyline,
    @JsonKey(name: "fare") double? fare,
    @JsonKey(name: "total") double? total,
    @JsonKey(name: "vat") double? vat,
    @JsonKey(name: "amount_paid") double? amountPaid,
    @JsonKey(name: "duration") int? duration,
    @JsonKey(name: "distance") double? distance,
    @JsonKey(name: "ride_created_at") DateTime? rideCreatedAt,
    @JsonKey(name: "cancellation_charges") int? cancellationCharges,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class VehicleDetails with _$VehicleDetails {
  const factory VehicleDetails({@JsonKey(name: "vehicle") Vehicle? vehicle}) = _VehicleDetails;

  factory VehicleDetails.fromJson(Map<String, dynamic> json) => _$VehicleDetailsFromJson(json);
}

@freezed
abstract class Vehicle with _$Vehicle {
  const factory Vehicle({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "organization_id") String? organizationId,
    @JsonKey(name: "registration_number") String? registrationNumber,
    @JsonKey(name: "brand_name") String? brandName,
    @JsonKey(name: "seats") int? seats,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "model_year") int? modelYear,
    @JsonKey(name: "is_pet_friendly") bool? isPetFriendly,
    @JsonKey(name: "is_assist") bool? isAssist,
    @JsonKey(name: "is_jumpstart") bool? isJumpstart,
    @JsonKey(name: "is_listing") bool? isListing,
    @JsonKey(name: "is_bold_miles") bool? isBoldMiles,
    @JsonKey(name: "rental_security_deposit") int? rentalSecurityDeposit,
    @JsonKey(name: "rental_daily_charges") int? rentalDailyCharges,
    @JsonKey(name: "is_active") bool? isActive,
    @JsonKey(name: "is_blocked") bool? isBlocked,
    @JsonKey(name: "is_deleted") bool? isDeleted,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "vin") String? vin,
    @JsonKey(name: "vehicle_type") VehicleType? vehicleType,
    @JsonKey(name: "vehicle_image") String? vehicleImage,
    @JsonKey(name: "vehicle_model") String? vehicleModel,
    @JsonKey(name: "vehicle_id") String? vehicleId,
    @JsonKey(name: "ride_type_category") RideTypeCategory? rideTypeCategory,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) => _$VehicleFromJson(json);
}

@freezed
abstract class RideTypeCategory with _$RideTypeCategory {
  const factory RideTypeCategory({@JsonKey(name: "type_id") String? typeId, @JsonKey(name: "type") String? type}) = _RideTypeCategory;

  factory RideTypeCategory.fromJson(Map<String, dynamic> json) => _$RideTypeCategoryFromJson(json);
}

@freezed
abstract class VehicleType with _$VehicleType {
  const factory VehicleType({@JsonKey(name: "id") String? id, @JsonKey(name: "name") String? name}) = _VehicleType;

  factory VehicleType.fromJson(Map<String, dynamic> json) => _$VehicleTypeFromJson(json);
}
