// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_type_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RideTypeImages _$RideTypeImagesFromJson(Map<String, dynamic> json) =>
    _RideTypeImages(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RideTypeImagesToJson(_RideTypeImages instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      rideTypes: json['rideTypes'] == null
          ? null
          : RideTypes.fromJson(json['rideTypes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'rideTypes': instance.rideTypes,
    };

_RideTypes _$RideTypesFromJson(Map<String, dynamic> json) => _RideTypes(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => RideType.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalResults: (json['totalResults'] as num?)?.toInt(),
      isNextPage: json['isNextPage'] as bool?,
      isPreviousPage: json['isPreviousPage'] as bool?,
    );

Map<String, dynamic> _$RideTypesToJson(_RideTypes instance) =>
    <String, dynamic>{
      'results': instance.results,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
      'isNextPage': instance.isNextPage,
      'isPreviousPage': instance.isPreviousPage,
    };

_RideType _$RideTypeFromJson(Map<String, dynamic> json) => _RideType(
      id: json['_id'] as String?,
      rideCategory: json['ride_category'] == null
          ? null
          : RideCategory.fromJson(
              json['ride_category'] as Map<String, dynamic>),
      name: json['name'] as String?,
      type: json['type'] as String?,
      rideImage: json['ride_image'] as String?,
      isDeleted: json['is_deleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
      isActive: json['is_active'] as bool?,
      resultCreatedAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      resultUpdatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$RideTypeToJson(_RideType instance) => <String, dynamic>{
      '_id': instance.id,
      'ride_category': instance.rideCategory,
      'name': instance.name,
      'type': instance.type,
      'ride_image': instance.rideImage,
      'is_deleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'is_active': instance.isActive,
      'created_at': instance.resultCreatedAt?.toIso8601String(),
      'updated_at': instance.resultUpdatedAt?.toIso8601String(),
    };

_RideCategory _$RideCategoryFromJson(Map<String, dynamic> json) =>
    _RideCategory(
      countryId: json['country_id'] as String?,
      cityId: json['city_id'] as String?,
      name: json['name'] as String?,
      isActive: json['is_active'] as bool?,
      isDeleted: json['is_deleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$RideCategoryToJson(_RideCategory instance) =>
    <String, dynamic>{
      'country_id': instance.countryId,
      'city_id': instance.cityId,
      'name': instance.name,
      'is_active': instance.isActive,
      'is_deleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'id': instance.id,
    };
