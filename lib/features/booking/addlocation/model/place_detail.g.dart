// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceDetail _$PlaceDetailFromJson(Map<String, dynamic> json) => _PlaceDetail(
      formattedAddress: json['formattedAddress'] as String?,
      addressComponents: (json['addressComponents'] as List<dynamic>?)
          ?.map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: json['location'] == null
          ? null
          : Coordinate.fromJson(json['location'] as Map<String, dynamic>),
      shortFormattedAddress: json['shortFormattedAddress'] as String?,
    );

Map<String, dynamic> _$PlaceDetailToJson(_PlaceDetail instance) =>
    <String, dynamic>{
      'formattedAddress': instance.formattedAddress,
      'addressComponents': instance.addressComponents,
      'location': instance.location,
      'shortFormattedAddress': instance.shortFormattedAddress,
    };

_AddressComponent _$AddressComponentFromJson(Map<String, dynamic> json) =>
    _AddressComponent(
      longText: json['longText'] as String?,
      shortText: json['shortText'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      languageCode: json['languageCode'] as String?,
    );

Map<String, dynamic> _$AddressComponentToJson(_AddressComponent instance) =>
    <String, dynamic>{
      'longText': instance.longText,
      'shortText': instance.shortText,
      'types': instance.types,
      'languageCode': instance.languageCode,
    };
