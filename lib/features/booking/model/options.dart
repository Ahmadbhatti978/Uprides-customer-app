// To parse this JSON data, do
//
//     final options = optionsFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

import 'ride.dart';

part 'options.freezed.dart';
part 'options.g.dart';

@freezed
abstract class Options with _$Options {
  const factory Options({
    @JsonKey(name: 'success') final bool? success,
    @JsonKey(name: 'message') final String? message,
    @JsonKey(name: 'data') final Data? data,
    @JsonKey(name: 'statusCode') final int? statusCode,
  }) = _Options;

  factory Options.fromJson(final Map<String, dynamic> json) => _$OptionsFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'options') final List<Ride>? options,
    @JsonKey(name: 'promotion') final Promotion? promotion,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Promotion with _$Promotion {
  const factory Promotion({
    @JsonKey(name: 'type') final String? type,
    @JsonKey(name: 'value') final int? value,
  }) = _Promotion;

  factory Promotion.fromJson(final Map<String, dynamic> json) => _$PromotionFromJson(json);
}
