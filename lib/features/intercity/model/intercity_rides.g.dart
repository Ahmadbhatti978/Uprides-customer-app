// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intercity_rides.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IntercityRides _$IntercityRidesFromJson(Map<String, dynamic> json) =>
    _IntercityRides(
      exactDateRides: (json['exactDateRides'] as List<dynamic>?)
          ?.map((e) => IRide.fromJson(e as Map<String, dynamic>))
          .toList(),
      matchingRides: (json['matchingRides'] as List<dynamic>?)
          ?.map((e) => IRide.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IntercityRidesToJson(_IntercityRides instance) =>
    <String, dynamic>{
      'exactDateRides': instance.exactDateRides,
      'matchingRides': instance.matchingRides,
    };
