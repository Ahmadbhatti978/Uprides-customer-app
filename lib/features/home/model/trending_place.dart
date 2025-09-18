// To parse this JSON data, do
//
//     final trendingPlace = trendingPlaceFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/model/coordinate.dart';

part 'trending_place.freezed.dart';
part 'trending_place.g.dart';

TrendingPlace trendingPlaceFromJson(String str) => TrendingPlace.fromJson(json.decode(str));

String trendingPlaceToJson(TrendingPlace data) => json.encode(data.toJson());

// @freezed
// class TrendingPlace with _$TrendingPlace {
//     const factory TrendingPlace({
//         @JsonKey(name: "places")
//         List<Place>? places,
//     }) = _TrendingPlace;

//     factory TrendingPlace.fromJson(Map<String, dynamic> json) => _$TrendingPlaceFromJson(json);
// }

@freezed
abstract class TrendingPlace with _$TrendingPlace {
  const factory TrendingPlace({
    @JsonKey(name: "location") Coordinate? location,
    @JsonKey(name: "displayName") DisplayName? displayName,
    @JsonKey(name: "primaryTypeDisplayName") DisplayName? primaryTypeDisplayName,
    @JsonKey(name: "currentOpeningHours") CurrentOpeningHours? currentOpeningHours,
    @JsonKey(name: "shortFormattedAddress") String? shortFormattedAddress,
    @JsonKey(name: "photos") List<Photo>? photos,
    @JsonKey(name: "reviewSummary") ReviewSummary? reviewSummary,
    @JsonKey(name: "editorialSummary") DisplayName? editorialSummary,
  }) = _TrendingPlace;

  factory TrendingPlace.fromJson(Map<String, dynamic> json) => _$TrendingPlaceFromJson(json);
}

@freezed
abstract class ReviewSummary with _$ReviewSummary {
  const factory ReviewSummary({
    @JsonKey(name: "text") DisplayName? text,
    @JsonKey(name: "flagContentUri") String? flagContentUri,
    @JsonKey(name: "disclosureText") DisplayName? disclosureText,
    @JsonKey(name: "reviewsUri") String? reviewsUri,
  }) = _ReviewSummary;

  factory ReviewSummary.fromJson(Map<String, dynamic> json) => _$ReviewSummaryFromJson(json);
}

@freezed
abstract class CurrentOpeningHours with _$CurrentOpeningHours {
  const factory CurrentOpeningHours({
    @JsonKey(name: "openNow") bool? openNow,
    @JsonKey(name: "periods") List<Period>? periods,
    @JsonKey(name: "weekdayDescriptions") List<String>? weekdayDescriptions,
    @JsonKey(name: "nextCloseTime") DateTime? nextCloseTime,
    @JsonKey(name: "nextOpenTime") DateTime? nextOpenTime,
  }) = _CurrentOpeningHours;

  factory CurrentOpeningHours.fromJson(Map<String, dynamic> json) => _$CurrentOpeningHoursFromJson(json);
}

@freezed
abstract class Period with _$Period {
  const factory Period({@JsonKey(name: "open") Close? open, @JsonKey(name: "close") Close? close}) = _Period;

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);
}

@freezed
abstract class Close with _$Close {
  const factory Close({
    @JsonKey(name: "day") int? day,
    @JsonKey(name: "hour") int? hour,
    @JsonKey(name: "minute") int? minute,
    @JsonKey(name: "date") Date? date,
    @JsonKey(name: "truncated") bool? truncated,
  }) = _Close;

  factory Close.fromJson(Map<String, dynamic> json) => _$CloseFromJson(json);
}

@freezed
abstract class Date with _$Date {
  const factory Date({@JsonKey(name: "year") int? year, @JsonKey(name: "month") int? month, @JsonKey(name: "day") int? day}) = _Date;

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);
}

@freezed
abstract class DisplayName with _$DisplayName {
  const factory DisplayName({@JsonKey(name: "text") String? text, @JsonKey(name: "languageCode") String? languageCode}) = _DisplayName;

  factory DisplayName.fromJson(Map<String, dynamic> json) => _$DisplayNameFromJson(json);
}

// @freezed
// class Location with _$Location {
//   const factory Location({@JsonKey(name: "latitude") double? latitude, @JsonKey(name: "longitude") double? longitude}) = _Location;

//   factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
// }

@freezed
abstract class Photo with _$Photo {
  const factory Photo({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "widthPx") int? widthPx,
    @JsonKey(name: "heightPx") int? heightPx,
    @JsonKey(name: "authorAttributions") List<AuthorAttribution>? authorAttributions,
    @JsonKey(name: "flagContentUri") String? flagContentUri,
    @JsonKey(name: "googleMapsUri") String? googleMapsUri,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}

@freezed
abstract class AuthorAttribution with _$AuthorAttribution {
  const factory AuthorAttribution({
    @JsonKey(name: "displayName") String? displayName,
    @JsonKey(name: "uri") String? uri,
    @JsonKey(name: "photoUri") String? photoUri,
  }) = _AuthorAttribution;

  factory AuthorAttribution.fromJson(Map<String, dynamic> json) => _$AuthorAttributionFromJson(json);
}
