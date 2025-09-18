// To parse this JSON data, do
//
//     final receiveDetail = receiveDetailFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'receive_detail.freezed.dart';
part 'receive_detail.g.dart';

ReceiveDetail receiveDetailFromJson(final String str) => ReceiveDetail.fromJson(json.decode(str));

String receiveDetailToJson(final ReceiveDetail data) => json.encode(data.toJson());

@freezed
abstract class ReceiveDetail with _$ReceiveDetail {
  const factory ReceiveDetail({
    @JsonKey(name: 'type') final String? type,
    @JsonKey(name: 'data') final Data? data,
  }) = _ReceiveDetail;

  factory ReceiveDetail.fromJson(final Map<String, dynamic> json) => _$ReceiveDetailFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'ride') final Ride? ride,
    @JsonKey(name: 'packages') final List<Package>? packages,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Package with _$Package {
  const factory Package({
    @JsonKey(name: 'reciever_details') final RecieverDetails? recieverDetails,
    @JsonKey(name: 'delivery_location') final Location? deliveryLocation,
    @JsonKey(name: 'dimensions') final Dimensions? dimensions,
    @JsonKey(name: 'charges') final Charges? charges,
    @JsonKey(name: 'driver_remarks') final DriverRemarks? driverRemarks,
    @JsonKey(name: '_id') final String? id,
    @JsonKey(name: 'package_ride') final String? packageRide,
    @JsonKey(name: 'package_status') final String? packageStatus,
    @JsonKey(name: 'package_tid') final String? packageTid,
    @JsonKey(name: 'package_type') final String? packageType,
    @JsonKey(name: 'order') final int? order,
    @JsonKey(name: 'media') final List<dynamic>? media,
    @JsonKey(name: '__v') final int? v,
    @JsonKey(name: 'delivery_adddress') final String? deliveryAdddress,
    @JsonKey(name: 'delivery_address') final String? deliveryAddress,
  }) = _Package;

  factory Package.fromJson(final Map<String, dynamic> json) => _$PackageFromJson(json);
}

@freezed
abstract class Charges with _$Charges {
  const factory Charges({
    @JsonKey(name: 'amount') final int? amount,
    @JsonKey(name: 'currency') final String? currency,
    @JsonKey(name: 'payment') final String? payment,
  }) = _Charges;

  factory Charges.fromJson(final Map<String, dynamic> json) => _$ChargesFromJson(json);
}

@freezed
abstract class Location with _$Location {
  const factory Location({
    @JsonKey(name: 'longitude') final double? longitude,
    @JsonKey(name: 'latitude') final double? latitude,
  }) = _Location;

  factory Location.fromJson(final Map<String, dynamic> json) => _$LocationFromJson(json);
}

@freezed
abstract class Dimensions with _$Dimensions {
  const factory Dimensions({
    @JsonKey(name: 'width') final int? width,
    @JsonKey(name: 'height') final int? height,
    @JsonKey(name: 'weight') final int? weight,
  }) = _Dimensions;

  factory Dimensions.fromJson(final Map<String, dynamic> json) => _$DimensionsFromJson(json);
}

@freezed
abstract class DriverRemarks with _$DriverRemarks {
  const factory DriverRemarks({
    @JsonKey(name: 'media') final List<dynamic>? media,
  }) = _DriverRemarks;

  factory DriverRemarks.fromJson(final Map<String, dynamic> json) => _$DriverRemarksFromJson(json);
}

@freezed
abstract class RecieverDetails with _$RecieverDetails {
  const factory RecieverDetails({
    @JsonKey(name: 'full_name') final String? fullName,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @JsonKey(name: 'reg_on_db') final bool? regOnDb,
  }) = _RecieverDetails;

  factory RecieverDetails.fromJson(final Map<String, dynamic> json) => _$RecieverDetailsFromJson(json);
}

@freezed
abstract class Ride with _$Ride {
  const factory Ride({
    @JsonKey(name: '_id') final String? id,
    @JsonKey(name: 'user') final String? user,
    @JsonKey(name: 'tracking_id') final String? trackingId,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'pickup_location') final Location? pickupLocation,
    @JsonKey(name: 'distance_in_meters') final int? distanceInMeters,
    @JsonKey(name: 'polyline') final String? polyline,
    @JsonKey(name: 'pickup_time') final DateTime? pickupTime,
    @JsonKey(name: '__v') final int? v,
    @JsonKey(name: 'driver') final String? driver,
    @JsonKey(name: 'pickup_address') final String? pickupAddress,
  }) = _Ride;

  factory Ride.fromJson(final Map<String, dynamic> json) => _$RideFromJson(json);
}
