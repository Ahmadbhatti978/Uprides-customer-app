import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../repo/exceptions.dart';
import '../repo/location_repository.dart';
part 'current_location_notifier.g.dart';

@Riverpod(keepAlive: true)
class CurrentLocation extends _$CurrentLocation {
  @override
  Future<Position> build() => _fetchCurrentPosition();

  Future<Position> _fetchCurrentPosition() async {
    final bool serviceEnabled = await LocationRepository.checkLocationServices();
    if (!serviceEnabled) {
      throw const LocationServiceDisabledException();
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
      throw LocationPermissionDeniedException(permission);
    }

    try {
      final Position position = await Geolocator.getCurrentPosition();
      return position;
    } catch (e) {
      throw LocationFetchException(message: 'Failed to get location: $e');
    }
  }

  Future<void> refreshLocation() async {
    state = const AsyncValue.loading();
    try {
      final Position position = await _fetchCurrentPosition();
      state = AsyncValue.data(position);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
