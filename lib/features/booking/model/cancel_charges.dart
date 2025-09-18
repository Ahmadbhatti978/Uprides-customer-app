// To parse this JSON data, do
//
//     final cancelCharges = cancelChargesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_charges.freezed.dart';
part 'cancel_charges.g.dart';

@freezed
abstract class CancelCharges with _$CancelCharges {
  const factory CancelCharges({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "statusCode") int? statusCode,
  }) = _CancelCharges;

  factory CancelCharges.fromJson(Map<String, dynamic> json) => _$CancelChargesFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({@JsonKey(name: "charges") Charges? charges}) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Charges with _$Charges {
  const factory Charges({@JsonKey(name: "cancellationCharges") double? cancellationCharges, @JsonKey(name: "refundAmount") double? refundAmount}) = _Charges;

  factory Charges.fromJson(Map<String, dynamic> json) => _$ChargesFromJson(json);
}
