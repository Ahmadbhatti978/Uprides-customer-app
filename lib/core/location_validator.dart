import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/router/route.dart';
import '../features/booking/addlocation/model/place.dart';
import '../features/booking/addlocation/notifier/pickedlocation.dart';
import '../features/booking/addlocation/notifier/placemark_notifier.dart';
import '../features/booking/book_ride/provider/ride_data.dart';
import '../util/utils.dart';
import '../util/variable.dart';
import 'functions/current_status.dart';
import 'model/coordinate.dart';

class LocationValidator {
  LocationValidator(this.ref);
  late List<Place> _pickedLocations;
  final WidgetRef ref;

  Future<bool> navigateToConfirmScreen() async {
    _pickedLocations = ref.read(pickedlocationProvider);

    // 1️⃣  Tailored duplicate‑location check
    final String? dupMessage = _getConsecutiveDuplicateMessage(_pickedLocations);
    if (dupMessage != null) {
      showSnackBar(dupMessage);
      return false;
    }

    // 2️⃣  Country check (unchanged)
    final bool sameCountry = await inSameCountry();
    if (!sameCountry) {
      showSnackBar(l10n.locations_are_in_different_countries);
      return false;
    }

    // 3️⃣  Active‑ride check (unchanged)
    final bool ongoing = await ref.watch(currentRideHappeningProvider.future);
    if (ongoing && rideId != null) {
      await _showRideInProgressDialog();
      return false;
    }

    // 4️⃣  Proceed to confirmation
    await navigatorKey.currentState!.pushNamed(AppRoutes.confirmLocation, arguments: _pickedLocations);
    return true;
  }

  /// Returns a context‑specific message **iff** two consecutive locations match.
  /// Otherwise returns `null`.
  static String? _getConsecutiveDuplicateMessage(List<Place> places) {
    for (int i = 1; i < places.length; i++) {
      if (places[i - 1].location == places[i].location) {
        // Case A: pickup ↔︎ first stop
        if (i - 1 == 0) {
          return l10n.pickup_stop_same;
        }

        // Case B: stop ↔︎ drop‑off  (last pair in the list)
        if (i == places.length - 1) {
          return l10n.stop_drop_off_same;
        }

        // Case C: two adjacent stops
        return l10n.pickup_stop_same_des;
      }
    }
    return null; // no duplicates
  }

  /// Returns a message if any consecutive locations are less than [minDistanceMeters] apart.
  static String? consecutiveLocationsTooClose(List<Place> places, {double minDistanceMeters = 100}) {
    for (int i = 1; i < places.length; i++) {
      final Coordinate? prev = places[i - 1].location;
      final Coordinate? curr = places[i].location;
      if (prev != null && curr != null) {
        const double distance = 0; // _distanceInMeters(prev, curr);
        if (distance < minDistanceMeters) {
          return l10n.locations_too_close; // Add this key to your l10n
        }
      }
    }
    return null;
  }

  static bool checkIfTwoConsecutiveLocationAreSame(List<Place> places) {
    for (int i = 1; i < places.length; i++) {
      if (places.elementAt(i - 1).location == places.elementAt(i).location) {
        return true;
      }
    }
    return false;
  }

  Future<void> _showRideInProgressDialog() async {
    await showCupertinoDialog(
      context: navigatorKey.currentContext!,
      builder:
          (context) => CupertinoAlertDialog(
            title: Text(l10n.ride_in_progress),
            content: Text(l10n.you_already_have_an_active_ride),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: () => Navigator.of(context).pop(),
                child: Text(l10n.okay, style: const TextStyle(color: Colors.blue)),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  currentRoute = AppRoutes.bottomNavigationScreen;
                  if (rideId != null) ref.refresh(RideDataProvider(rideId!));
                  Navigator.pop(context);
                },
                child: Text(l10n.view_current_ride, style: const TextStyle(color: Colors.blue)),
              ),
            ],
          ),
    );
  }

  Future<bool> inSameCountry() async {
    await ensureCountriesForPickedLocations();
    _pickedLocations = ref.read(pickedlocationProvider);
    return arePickedLocationsInSameCountry(_pickedLocations);
  }

  bool arePickedLocationsInSameCountry(List<Place> locations) {
    if (locations.isEmpty) return true;
    final String? firstCountry = locations.first.country;
    return locations.where((places) => places.location != null && places.country != null).every((place) => place.country == firstCountry);
  }

  // Helper function to ensure all places have a country
  Future<bool> ensureCountriesForPickedLocations() async {
    for (int i = 0; i < _pickedLocations.where((l) => l.location != null).length; i++) {
      final Place place = _pickedLocations[i];
      if (place.country == null || place.country!.isEmpty) {
        final String? country = await getCountryFromCoordinate(place.location);

        if (country != null) {
          final Place updatedPlace = place.copyWith(country: country);
          await ref.read(pickedlocationProvider.notifier).updatePlaces(updatedPlace, i);
        }
      }
    }
    return true;
  }

  // Dummy function: Replace with your actual implementation to get country from coordinates
  Future<String?> getCountryFromCoordinate(Coordinate? coordinate) async =>
      (await ref.watch(FetchPlacemarkFromCoordinatesProvider(latitude: coordinate?.latitude ?? 0, longitude: coordinate?.longitude ?? 0).future)).country;
}
