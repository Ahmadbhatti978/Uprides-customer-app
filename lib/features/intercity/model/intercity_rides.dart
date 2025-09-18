// To parse this JSON data, do
//
//     final intercityRides = intercityRidesFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'iride.dart';

part 'intercity_rides.freezed.dart';
part 'intercity_rides.g.dart';

IntercityRides intercityRidesFromJson(final String str) => IntercityRides.fromJson(json.decode(str));

String intercityRidesToJson(final IntercityRides data) => json.encode(data.toJson());

@freezed
abstract class IntercityRides with _$IntercityRides {
  const factory IntercityRides({
    @JsonKey(name: 'exactDateRides') final List<IRide>? exactDateRides,
    @JsonKey(name: 'matchingRides') final List<IRide>? matchingRides,
  }) = _IntercityRides;

  factory IntercityRides.fromJson(final Map<String, dynamic> json) => _$IntercityRidesFromJson(json);
}
