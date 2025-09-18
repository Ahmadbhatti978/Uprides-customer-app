// **IMPROVEMENT**: One central provider for all validation logic and state.
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import '../../features/booking/addlocation/model/place.dart';
import '../../features/booking/addlocation/notifier/pickedlocation.dart';
import '../../features/booking/addlocation/notifier/placemark_notifier.dart';
import '../../util/variable.dart';
import '../functions/current_status.dart';
import 'model.dart';
import 'service.dart';

final locationValidatorProvider = StateNotifierProvider<LocationValidatorNotifier, LocationValidationState>(LocationValidatorNotifier.new);

class LocationValidatorNotifier extends StateNotifier<LocationValidationState> {

  LocationValidatorNotifier(this._ref) : super(LocationValidationState.initial());
  final Ref _ref;

  /// Orchestrates the entire validation flow.
  /// Returns `true` if all validations pass, `false` otherwise.
  Future<bool> validateLocations() async {
    // 1. Set state to loading
    state = state.copyWith(
      validationStatus: const AsyncLoading(),
      errors: [], // Clear previous errors
    );

    try {
      // 2. Enrich location data with country info first. This is a crucial prerequisite.
      final List<Place> initialPlaces = _ref.read(pickedlocationProvider);
      final List<Place> enrichedPlaces = await _enrichPlacesWithCountryData(initialPlaces);

      // 3. Run all synchronous validations
      final List<LocationValidationResult> validationErrors = _runSyncValidations(enrichedPlaces);

      // 4. Run asynchronous validations
      final LocationValidationResult? activeRideError = await _validateActiveRide();
      if (activeRideError != null) {
        validationErrors.add(activeRideError);
      }

      // 5. Update the final state
      final bool isOverallValid = validationErrors.isEmpty;
      state = state.copyWith(validationStatus: const AsyncData(null), errors: validationErrors);

      return isOverallValid;
    } catch (e, st) {
      // Catch any unexpected errors during the process
      state = state.copyWith(
        validationStatus: AsyncError(e, st),
        errors: [LocationValidationResult.error("An unexpected error occurred during validation.", LocationValidationError.enrichmentFailed)],
      );
      return false;
    }
  }

  /// Fetches country data for places that are missing it.
  Future<List<Place>> _enrichPlacesWithCountryData(List<Place> places) async {
    final List<Place> updatedPlaces = List.from(places);
    bool hasChanges = false;

    for (int i = 0; i < updatedPlaces.length; i++) {
      final Place place = updatedPlaces[i];
      if (place.location != null && (place.country == null || place.country!.isEmpty)) {
        // Fetch country using the existing provider for placemarks
        final Placemark placemark = await _ref.read(
          FetchPlacemarkFromCoordinatesProvider(latitude: place.location!.latitude!, longitude: place.location!.longitude!).future,
        );

        if (placemark.country != null) {
          updatedPlaces[i] = place.copyWith(country: placemark.country);
          hasChanges = true;
        }
      }
    }

    // If any country data was added, update the primary source of truth.
    if (hasChanges) {
      _ref.read(pickedlocationProvider.notifier).setPlaces(updatedPlaces);
    }

    return updatedPlaces;
  }

  /// Gathers all synchronous validation results.
  List<LocationValidationResult> _runSyncValidations(List<Place> places) {
    final List<LocationValidationResult> results = [
      LocationValidationService.validateMinimumLocations(places),
      LocationValidationService.validateConsecutiveDuplicates(places),
      LocationValidationService.validateSameCountry(places),
      LocationValidationService.validateMinimumDistance(places),
    ];
    // Return only the failed results
    return results.where((r) => !r.isValid).toList();
  }

  /// Performs the async check for an existing ride.
  Future<LocationValidationResult?> _validateActiveRide() async {
    final bool hasActiveRide = await _ref.read(currentRideHappeningProvider.future);
    if (hasActiveRide && rideId != null) {
      return LocationValidationResult.error(l10n.you_already_have_an_active_ride, LocationValidationError.activeRideExists);
    }
    return null;
  }

  /// Resets the validation state to its initial condition.
  void clearValidation() {
    state = LocationValidationState.initial();
  }
}
