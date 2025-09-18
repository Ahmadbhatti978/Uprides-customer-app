// To parse this JSON data, do
//
//     final selectRide = selectRideFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/model/driver.dart';
import 'iride.dart';

part 'select_ride.freezed.dart';
part 'select_ride.g.dart';

SelectRide selectRideFromJson(final String str) => SelectRide.fromJson(json.decode(str));

String selectRideToJson(final SelectRide data) => json.encode(data.toJson());

@freezed
abstract class SelectRide with _$SelectRide {
  const factory SelectRide({
    @JsonKey(name: 'ride') final IRide? ride,
    @JsonKey(name: 'vehicle') final Vehicle? vehicle,
    @JsonKey(includeFromJson: false) final int? plPcDistance,
    @JsonKey(includeFromJson: false) final int? dlDcDistance,
  }) = _SelectRide;

  factory SelectRide.fromJson(final Map<String, dynamic> json) => _$SelectRideFromJson(json);
}

@freezed
abstract class Vehicle with _$Vehicle {
  const factory Vehicle({@JsonKey(name: '_id') final String? id, @JsonKey(name: 'pet_friendly') final bool? petFriendly}) = _Vehicle;

  factory Vehicle.fromJson(final Map<String, dynamic> json) => _$VehicleFromJson(json);
}

class DriverIDConverter implements JsonConverter<Driver?, dynamic> {
  const DriverIDConverter();

  @override
  Driver? fromJson(final dynamic json) {
    if (json == null) return null;
    if (json is String) return Driver(id: json);
    if (json is Map<String, dynamic>) return Driver.fromJson(json);
    throw ArgumentError('Unexpected type for UserID');
  }

  @override
  dynamic toJson(final Driver? userID) => userID?.toJson();
}
