// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Place _$PlaceFromJson(Map<String, dynamic> json) => _Place(
      placeId: json['placeId'] as String?,
      text: json['text'] as String?,
      mainText: json['mainText'] as String?,
      secondaryText: json['secondaryText'] as String?,
      location: json['location'] == null
          ? null
          : Coordinate.fromJson(json['location'] as Map<String, dynamic>),
      distanceMeters: (json['distanceMeters'] as num?)?.toInt(),
      country: json['country'] as String?,
      type: json['type'] as String? ?? 'None',
    );

Map<String, dynamic> _$PlaceToJson(_Place instance) => <String, dynamic>{
      'placeId': instance.placeId,
      'text': instance.text,
      'mainText': instance.mainText,
      'secondaryText': instance.secondaryText,
      'location': instance.location,
      'distanceMeters': instance.distanceMeters,
      'country': instance.country,
      'type': instance.type,
    };
