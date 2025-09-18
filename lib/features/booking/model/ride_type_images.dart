// To parse this JSON data, do
//
//     final rideTypeImages = rideTypeImagesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_type_images.freezed.dart';
part 'ride_type_images.g.dart';

@freezed
abstract class RideTypeImages with _$RideTypeImages {
  const factory RideTypeImages({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "statusCode") int? statusCode,
  }) = _RideTypeImages;

  factory RideTypeImages.fromJson(Map<String, dynamic> json) => _$RideTypeImagesFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: "rideTypes") RideTypes? rideTypes,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class RideTypes with _$RideTypes {
  const factory RideTypes({
    @JsonKey(name: "results") List<RideType>? results,
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "limit") int? limit,
    @JsonKey(name: "totalPages") int? totalPages,
    @JsonKey(name: "totalResults") int? totalResults,
    @JsonKey(name: "isNextPage") bool? isNextPage,
    @JsonKey(name: "isPreviousPage") bool? isPreviousPage,
  }) = _RideTypes;

  factory RideTypes.fromJson(Map<String, dynamic> json) => _$RideTypesFromJson(json);
}

@freezed
abstract class RideType with _$RideType {
  const factory RideType({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "ride_category") RideCategory? rideCategory,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "ride_image") String? rideImage,
    @JsonKey(name: "is_deleted") bool? isDeleted,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "is_active") bool? isActive,
    @JsonKey(name: "created_at") DateTime? resultCreatedAt,
    @JsonKey(name: "updated_at") DateTime? resultUpdatedAt,
  }) = _RideType;

  factory RideType.fromJson(Map<String, dynamic> json) => _$RideTypeFromJson(json);
}

@freezed
abstract class RideCategory with _$RideCategory {
  const factory RideCategory({
    @JsonKey(name: "country_id") String? countryId,
    @JsonKey(name: "city_id") String? cityId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "is_active") bool? isActive,
    @JsonKey(name: "is_deleted") bool? isDeleted,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "id") String? id,
  }) = _RideCategory;

  factory RideCategory.fromJson(Map<String, dynamic> json) => _$RideCategoryFromJson(json);
}
