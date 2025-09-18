
import 'package:geolocator/geolocator.dart';

// class LocationServiceDisabledException implements Exception {
//   final String message = 'Location services are disabled.';
//   @override
//   String toString() => message;
// }

/// Exception thrown when the user has not granted the necessary location permissions.
class LocationPermissionDeniedException implements Exception {
  LocationPermissionDeniedException(this.permission, {this.message = 'Location permission denied.'});
  final String message;
  final LocationPermission permission;

  @override
  String toString() => '$message Current permission state: $permission';
}

/// Exception thrown when a location cannot be determined.
class LocationFetchException implements Exception {
  LocationFetchException({this.message = 'Could not fetch the current location.'});
  final String message;
  @override
  String toString() => message;
}
