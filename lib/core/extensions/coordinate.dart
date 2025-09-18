import 'dart:math';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../model/coordinate.dart';

extension Address on Coordinate {
  double distanceTo(final Coordinate other) => sqrt(pow(latitude! - other.latitude!, 2) + pow(longitude! - other.longitude!, 2));
}

extension Distance on LatLng {
  double distanceTo(final LatLng other) {
    const earthRadius = 6371000; // meters
    final double x = _degToRad(other.longitude - longitude) * cos(_degToRad((latitude + other.latitude) / 2));
    final double y = _degToRad(other.latitude - latitude);
    final double distance = sqrt(x * x + y * y) * earthRadius;
    return distance;
  }
}

double _degToRad(double degree) => degree * pi / 180;
