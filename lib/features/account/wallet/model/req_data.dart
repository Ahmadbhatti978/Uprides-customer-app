// To parse this JSON data, do
//
//     final reqData = reqDataFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_data.freezed.dart';
part 'req_data.g.dart';

ReqData reqDataFromJson(String str) => ReqData.fromJson(json.decode(str));

String reqDataToJson(ReqData data) => json.encode(data.toJson());

@freezed
abstract class ReqData with _$ReqData {
  const factory ReqData({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "statusCode") int? statusCode,
  }) = _ReqData;

  factory ReqData.fromJson(Map<String, dynamic> json) => _$ReqDataFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "ride_request") String? rideRequest,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "customer_fullname") String? customerFullname,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
