import 'dart:math' as math;

import '../../features/booking/addlocation/model/place.dart';
import '../../util/variable.dart';
import '../model/coordinate.dart';
import 'model.dart';

// ignore: avoid_classes_with_only_static_members
class LocationValidationService {
  static const double defaultMinDistanceMeters = 100;

  /// Validates consecutive duplicate locations
  static LocationValidationResult validateConsecutiveDuplicates(List<Place> places) {
    for (int i = 1; i < places.length; i++) {
      if (places[i - 1].location == places[i].location) {
        String message;

        // Case A: pickup ↔︎ first stop
        if (i - 1 == 0) {
          message = l10n.pickup_stop_same;
        }
        // Case B: stop ↔︎ drop‑off (last pair in the list)
        else if (i == places.length - 1) {
          message = l10n.stop_drop_off_same;
        }
        // Case C: two adjacent stops
        else {
          message = l10n.pickup_stop_same_des;
        }

        return LocationValidationResult.error(message, LocationValidationError.consecutiveDuplicate);
      }
    }
    return LocationValidationResult.valid();
  }

  /// Validates minimum distance between consecutive locations
  static LocationValidationResult validateMinimumDistance(List<Place> places, {double minDistanceMeters = defaultMinDistanceMeters}) {
    for (int i = 1; i < places.length; i++) {
      final Coordinate? prev = places[i - 1].location;
      final Coordinate? curr = places[i].location;

      if (prev != null && curr != null) {
        final double distance = _calculateDistanceInMeters(prev, curr);
        if (distance < minDistanceMeters) {
          return LocationValidationResult.error(l10n.locations_too_close, LocationValidationError.locationsTooClose);
        }
      }
    }
    return LocationValidationResult.valid();
  }

  /// Validates that all locations are in the same country
  static LocationValidationResult validateSameCountry(List<Place> places) {
    if (places.isEmpty) return LocationValidationResult.valid();

    final List<Place> validPlaces = places.where((place) => place.location != null && place.country != null).toList();

    if (validPlaces.isEmpty) {
      return LocationValidationResult.error("Missing country information for locations", LocationValidationError.missingCountryData);
    }

    final String? firstCountry = validPlaces.first.country;
    final bool allSameCountry = validPlaces.every((place) => place.country == firstCountry);

    if (!allSameCountry) {
      return LocationValidationResult.error(l10n.locations_are_in_different_countries, LocationValidationError.differentCountries);
    }

    return LocationValidationResult.valid();
  }

  /// Validates minimum number of locations
  static LocationValidationResult validateMinimumLocations(List<Place> places, {int minimumCount = 2}) {
    final int validLocations = places.where((place) => place.location != null).length;

    if (validLocations < minimumCount) {
      return LocationValidationResult.error("At least $minimumCount locations are required", LocationValidationError.insufficientLocations);
    }

    return LocationValidationResult.valid();
  }

  /// Comprehensive validation of all location rules
  static List<LocationValidationResult> validateAll(List<Place> places) => [validateMinimumLocations(places), validateConsecutiveDuplicates(places), validateSameCountry(places), validateMinimumDistance(places)];

  /// Calculate distance between two coordinates in meters
  static double _calculateDistanceInMeters(Coordinate coord1, Coordinate coord2) {
    const double earthRadius = 6371000; // Earth's radius in meters

    final double lat1Rad = coord1.latitude! * math.pi / 180;
    final double lat2Rad = coord2.latitude! * math.pi / 180;
    final double deltaLatRad = (coord2.latitude! - coord1.latitude!) * math.pi / 180;
    final double deltaLonRad = (coord2.longitude! - coord1.longitude!) * math.pi / 180;

    final double a =
        math.sin(deltaLatRad / 2) * math.sin(deltaLatRad / 2) + math.cos(lat1Rad) * math.cos(lat2Rad) * math.sin(deltaLonRad / 2) * math.sin(deltaLonRad / 2);

    final double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

    return earthRadius * c;
  }
}
