import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/model/coordinate.dart';

part 'select_trip.freezed.dart';
part 'select_trip.g.dart';

String selectTripToJson(final SelectTrip data) => json.encode(data.toJson());

@freezed
abstract class SelectTrip with _$SelectTrip {
  const factory SelectTrip({
    @JsonKey(name: 'pickup_location') final Coordinate? pickupLocation,
    @JsonKey(includeToJson: false) final String? pickName,
    @JsonKey(name: 'dropoff_location') final Coordinate? dropoffLocation,
    @JsonKey(includeToJson: false) final String? dropoffName,
    @JsonKey(name: 'seats') final int? seats,
    @Default('all') @JsonKey(name: 'car_type') final String carType,
    @JsonKey(
      name: 'on',
      toJson: _dateTimeToIso8601String,
    )
    final DateTime? on,
  }) = _SelectTrip;

  factory SelectTrip.fromJson(final Map<String, dynamic> json) => _$SelectTripFromJson(json);
}

// Custom function to format DateTime as ISO 8601
String? _dateTimeToIso8601String(final DateTime? dateTime) => dateTime?.toUtc().toIso8601String();
