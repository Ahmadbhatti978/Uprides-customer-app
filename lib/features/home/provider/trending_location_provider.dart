import 'dart:developer';
import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/failure/failure.dart';
import '../../trending/trending_locations.dart';
import '../model/trending_place.dart';
import '../repo/google_place_repo.dart';
import 'current_location_notifier.dart';
part 'trending_location_provider.g.dart';

@Riverpod(keepAlive: true)
class TrendingLocation extends _$TrendingLocation {
  @override
  Future<MapEntry<String, List<TrendingPlace>>> build({String? type}) => _fetchTrendingLocationData(typ: type);

  double? _lastLatitude;
  double? _lastLongitude;
  final Map<String, List<TrendingPlace>> _cache = <String, List<TrendingPlace>>{};

  /// Internal method to fetch trending location data
  Future<MapEntry<String, List<TrendingPlace>>> _fetchTrendingLocationData({double? latitude, double? longitude, String? typ}) async {
    final   Position currentLocation = await ref.watch(currentLocationProvider.future);
    // Set state to loading
    final String type = typ ?? ref.watch(currentTrendingPlaceProvider);
    // Update last known coordinates if provided, else use current location provider.
    if ((_lastLatitude == null || _lastLongitude == null) && (latitude != null && longitude != null)) {
      _lastLatitude = latitude;
      _lastLongitude = longitude;
    } else {
      _lastLatitude ??= currentLocation.latitude;
      _lastLongitude ??= currentLocation.longitude;
    }

    final double? lat = latitude ?? _lastLatitude;
    final double? lng = longitude ?? _lastLongitude;

    if (lat == null || lng == null) {
      log('Latitude or longitude is null. Cannot fetch trending locations.');
      return MapEntry(type, <TrendingPlace>[]);
    }

    // Return cached data if available.
    if (_cache.containsKey(type)) {
      return MapEntry(type, _cache[type]!);
    }

    final Either<ErrorDetails, List<TrendingPlace>> result = await GooglePlaceRepo.fetchTrendingPlaces(lat, lng, type);

    return result.fold(
      (error) {
        log(error.message);
        return MapEntry(type, <TrendingPlace>[]); // Return empty list on error
      },
      (trendingPlaces) {
        _cache[type] = trendingPlaces;
        return MapEntry(type, trendingPlaces);
      },
    );
  }

  /// Fetches trending locations based on coordinates and type.
  Future<void> trendingLocation({double? latitude, double? longitude, String type = 'Tourist Attractions'}) async {
    state = const AsyncValue.loading();
    try {
      final MapEntry<String, List<TrendingPlace>> result = await _fetchTrendingLocationData(latitude: latitude, longitude: longitude, typ: type);

      state = AsyncValue.data(result);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
