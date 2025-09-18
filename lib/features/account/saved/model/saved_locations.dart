// To parse this JSON data, do
//
//       savedLocations = savedLocationsFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/model/coordinate.dart';

part 'saved_locations.freezed.dart';
part 'saved_locations.g.dart';

SavedLocations savedLocationsFromJson(String str) => SavedLocations.fromJson(json.decode(str));

String savedLocationsToJson(SavedLocations data) => json.encode(data.toJson());

@freezed
abstract class SavedLocations with _$SavedLocations {
  const factory SavedLocations({@JsonKey(name: 'data') List<LocationElement>? locations}) = _SavedLocations;

  factory SavedLocations.fromJson(Map<String, dynamic> json) => _$SavedLocationsFromJson(json);
}

@freezed
abstract class LocationElement with _$LocationElement {
  const factory LocationElement({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'customer_id') String? customerId,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'location_name') String? locationName,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
    @JsonKey(name: 'is_deleted') bool? isDeleted,
    @JsonKey(name: 'location', fromJson: coordinateFromJson) Coordinate? location,
  }) = _LocationElement;

  factory LocationElement.fromJson(Map<String, dynamic> json) => _$LocationElementFromJson(json);
}

/// Custom function to convert the incoming JSON for "location"
/// into our [Coordinate] model. The payload provides a "coordinates" array
/// where the first element is longitude and the second is latitude.
Coordinate coordinateFromJson(Map<String, dynamic> json) {
  final List coords = json['coordinates'] as List<dynamic>;
  return Coordinate(latitude: (coords[1] as num).toDouble(), longitude: (coords[0] as num).toDouble());
}

/// Custom function to convert a [Coordinate] into the JSON structure,
/// preserving the "type": "Point" and ordering of coordinates.
Map<String, dynamic> coordinateToJson(Coordinate coordinate) => <String, dynamic>{
      'type': 'Point',
      'coordinates': <double?>[coordinate.longitude, coordinate.latitude],
    };
