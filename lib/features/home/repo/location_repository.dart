import 'dart:async';
import 'package:geolocator/geolocator.dart';

class LocationRepository {
  // Factory constructor to return the same instance
  factory LocationRepository() => _instance;
  // Private constructor to prevent external instantiation
  LocationRepository._();

  // Static instance of the class
  static final LocationRepository _instance = LocationRepository._();

  static Future<bool> checkLocationServices() => Geolocator.isLocationServiceEnabled();

  static Future<LocationPermission> checkPermissions() => Geolocator.checkPermission();

  static Future<LocationPermission> requestPermissions() => Geolocator.requestPermission();
  static Stream<Position> getPositionStream() => Geolocator.getPositionStream(
    locationSettings: const LocationSettings(
      accuracy: LocationAccuracy.bestForNavigation,
      distanceFilter: 1,
      // timeLimit: Duration(seconds: 10),
    ),
  );
}
