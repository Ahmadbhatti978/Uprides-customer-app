import 'package:freezed_annotation/freezed_annotation.dart';
part 'adjusted_price.freezed.dart';
part 'adjusted_price.g.dart';

@freezed
abstract class AdjustedPrice with _$AdjustedPrice {
  const factory AdjustedPrice({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "statusCode") int? statusCode,
  }) = _AdjustedPrice;

  factory AdjustedPrice.fromJson(Map<String, dynamic> json) => _$AdjustedPriceFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: "total_amount") double? totalAmount,
    @JsonKey(name: "total_vat") double? totalVat,
    @JsonKey(name: "adjusted_fare") double? adjustedFare,
    @JsonKey(name: "adjusted_vat") double? adjustedVat,
    @JsonKey(name: "adjusted_total_amount") double? adjustedTotalAmount,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
