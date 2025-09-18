// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compute_routes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ComputeRoutes _$ComputeRoutesFromJson(Map<String, dynamic> json) =>
    _ComputeRoutes(
      routes: (json['routes'] as List<dynamic>?)
          ?.map((e) => Route.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ComputeRoutesToJson(_ComputeRoutes instance) =>
    <String, dynamic>{
      'routes': instance.routes,
    };

_Route _$RouteFromJson(Map<String, dynamic> json) => _Route(
      distanceMeters: (json['distanceMeters'] as num?)?.toInt(),
      duration: json['duration'] as String?,
      polyline: json['polyline'] == null
          ? null
          : Polyline.fromJson(json['polyline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteToJson(_Route instance) => <String, dynamic>{
      'distanceMeters': instance.distanceMeters,
      'duration': instance.duration,
      'polyline': instance.polyline,
    };

_Polyline _$PolylineFromJson(Map<String, dynamic> json) => _Polyline(
      encodedPolyline: json['encodedPolyline'] as String?,
    );

Map<String, dynamic> _$PolylineToJson(_Polyline instance) => <String, dynamic>{
      'encodedPolyline': instance.encodedPolyline,
    };
