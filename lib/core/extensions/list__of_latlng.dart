import 'dart:math';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// Redistributes a list of coordinates to achieve approximately uniform spacing.
///
/// [originalCoordinates]: List of input coordinates.
/// [targetSpacing]: Desired distance between points in meters.
///
/// Returns a new list of coordinates with inserted points to maintain spacing.
List<LatLng> redistributeCoordinates({
  required final List<LatLng> originalCoordinates, 
  required final double targetSpacing,
}) {
  // Input validation
  if (originalCoordinates.isEmpty) {
    throw ArgumentError('Coordinate list cannot be empty.');
  }
   
  if (targetSpacing <= 0) {
    throw ArgumentError('Target spacing must be positive.');
  }
  
  if (originalCoordinates.length < 2) {
    return originalCoordinates;
  }

  final List<LatLng> result = <LatLng>[originalCoordinates.first];

  // Iterate over each pair of consecutive points
  for (int i = 0; i < originalCoordinates.length - 1; i++) {
    final LatLng start = originalCoordinates[i];
    final LatLng end = originalCoordinates[i + 1];

    // Calculate the distance between current and next points
    final double distance = distanceBetween(
      start.latitude, 
      start.longitude, 
      end.latitude, 
      end.longitude,
    );

    // Determine how many intermediate points to add
    final int pointsToAdd = (distance / targetSpacing).floor() - 1;

    // If no additional points are needed, just add the end point
    if (pointsToAdd <= 0) {
      result.add(end);
      continue;
    }

    // Add intermediate points
    for (int j = 1; j <= pointsToAdd + 1; j++) {
      final double fraction = j / (pointsToAdd + 1);
      
      // Use the existing interpolate method for more accurate great-circle interpolation
      final LatLng interpolatedPoint = interpolate(start, end, fraction);
      result.add(interpolatedPoint);
    }

    // Always add the end point of the segment
    result.add(end);
  }

  return result;
}

/// Interpolates between two coordinates along a great-circle path.
/// [fraction] is a value between 0 and 1 representing the interpolation position.
LatLng interpolate(final LatLng coord1, final LatLng coord2, final double fraction) {
  final double lat1 = coord1.latitude * pi / 180;
  final double lon1 = coord1.longitude * pi / 180;
  final double lat2 = coord2.latitude * pi / 180;
  final double lon2 = coord2.longitude * pi / 180;

  // Angular distance between points
  final double d = 2 * asin(sqrt(pow(sin((lat1 - lat2) / 2), 2) + 
                            cos(lat1) * cos(lat2) * 
                            pow(sin((lon1 - lon2) / 2), 2),),);

  // Avoid division by zero
  if (d < 1e-10) {
    return LatLng(coord1.latitude, coord1.longitude);
  }

  final double a = sin((1 - fraction) * d) / sin(d);
  final double b = sin(fraction * d) / sin(d);

  // Cartesian coordinates
  final double x = a * cos(lat1) * cos(lon1) + b * cos(lat2) * cos(lon2);
  final double y = a * cos(lat1) * sin(lon1) + b * cos(lat2) * sin(lon2);
  final double z = a * sin(lat1) + b * sin(lat2);

  final double lat = atan2(z, sqrt(x * x + y * y));
  final double lon = atan2(y, x);

  return LatLng(lat * 180 / pi, lon * 180 / pi);
}

/// Calculates the distance between two geographic coordinates
double distanceBetween(final double startLatitude, final double startLongitude, final double endLatitude, final double endLongitude) {
  const double earthRadius = 6378137;
  final double dLat = _toRadians(endLatitude - startLatitude);
  final double dLon = _toRadians(endLongitude - startLongitude);

  final double a = pow(sin(dLat / 2), 2) + 
          pow(sin(dLon / 2), 2) * 
          cos(_toRadians(startLatitude)) * 
          cos(_toRadians(endLatitude));
  final double c = 2 * asin(sqrt(a));

  return earthRadius * c;
}

/// Converts degrees to radians
double _toRadians(final double degree) => degree * pi / 180;
