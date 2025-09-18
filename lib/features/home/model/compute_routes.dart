// To parse this JSON data, do
//
//     final computeRoutes = computeRoutesFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'compute_routes.freezed.dart';
part 'compute_routes.g.dart';

ComputeRoutes computeRoutesFromJson(final String str) => ComputeRoutes.fromJson(json.decode(str));

String computeRoutesToJson(final ComputeRoutes data) => json.encode(data.toJson());

@freezed
abstract class ComputeRoutes with _$ComputeRoutes {
  const factory ComputeRoutes({
    @JsonKey(name: 'routes') final List<Route>? routes,
  }) = _ComputeRoutes;

  factory ComputeRoutes.fromJson(final Map<String, dynamic> json) => _$ComputeRoutesFromJson(json);
}

@freezed
abstract class Route with _$Route {
  const factory Route({
    @JsonKey(name: 'distanceMeters') final int? distanceMeters,
    @JsonKey(name: 'duration') final String? duration,
    @JsonKey(name: 'polyline') final Polyline? polyline,
  }) = _Route;

  factory Route.fromJson(final Map<String, dynamic> json) => _$RouteFromJson(json);
}

@freezed
abstract class Polyline with _$Polyline {
  const factory Polyline({
    @JsonKey(name: 'encodedPolyline') final String? encodedPolyline,
  }) = _Polyline;

  factory Polyline.fromJson(final Map<String, dynamic> json) => _$PolylineFromJson(json);
}
