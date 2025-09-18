// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Availability _$AvailabilityFromJson(Map<String, dynamic> json) =>
    _Availability(
      titleEn: json['title_en'] as String?,
      descriptionEn: json['description_en'] as String?,
      titlePt: json['title_pt'] as String?,
      descriptionPt: json['description_pt'] as String?,
      enableRide: json['enable_ride'] as bool? ?? true,
      enableRideUat: json['enable_ride_uat'] as bool?,
    );

Map<String, dynamic> _$AvailabilityToJson(_Availability instance) =>
    <String, dynamic>{
      'title_en': instance.titleEn,
      'description_en': instance.descriptionEn,
      'title_pt': instance.titlePt,
      'description_pt': instance.descriptionPt,
      'enable_ride': instance.enableRide,
      'enable_ride_uat': instance.enableRideUat,
    };
