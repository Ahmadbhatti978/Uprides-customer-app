import 'dart:math';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../util/image_assets.dart';
import '../../util/variable.dart';

LatLngBounds createLatLngBounds(final List<LatLng> points) {
  assert(points.isNotEmpty);
  double x0 = points.first.latitude;
  double x1 = points.first.latitude;
  double y0 = points.first.longitude;
  double y1 = points.first.longitude;

  for (final LatLng latLng in points) {
    if (latLng.latitude > x1) x1 = latLng.latitude;
    if (latLng.latitude < x0) x0 = latLng.latitude;
    if (latLng.longitude > y1) y1 = latLng.longitude;
    if (latLng.longitude < y0) y0 = latLng.longitude;
  }

  return LatLngBounds(southwest: LatLng(x0, y0), northeast: LatLng(x1, y1));
}

// Returns a list of random LatLng coordinates within 1km of the center point
List<LatLng> generateRandomNearbyLocations(LatLng center, int count) {
  const double radiusInMeters = 1000;
  final Random random = Random();
  const double radiusInDegrees = radiusInMeters / 111320.0; // Approximate conversion

  final List<LatLng> locations = [];
  for (int i = 0; i < count; i++) {
    // Random distance and angle
    final double u = random.nextDouble();
    final double v = random.nextDouble();
    final double w = radiusInDegrees * sqrt(u);
    final double t = 2 * pi * v;
    final double x = w * cos(t);
    final double y = w * sin(t);

    // Adjust the x-coordinate for the shrinking of the east-west distances
    final double newX = x / cos(center.latitude * pi / 180);

    final double foundLongitude = center.longitude + newX;
    final double foundLatitude = center.latitude + y;

    locations.add(LatLng(foundLatitude, foundLongitude));
  }
  return locations;
}

List<Marker> createRandomMarkers(List<LatLng> locations, LatLng to) =>
    locations
        .map(
          (final LatLng location) => Marker(
            markerId: MarkerId(location.toString()),
            position: location,
            rotation: simpleBearing(location, to),
            icon: AssetMapBitmap(randomCar, imagePixelRatio: mediaQuery.devicePixelRatio, height: 30),
          ),
        )
        .toList();
double simpleBearing(LatLng from, LatLng to) {
  final double dy = to.latitude - from.latitude;
  final double dx = to.longitude - from.longitude;
  return (atan2(dx, dy) * 180 / pi + 360) % 360;
}
