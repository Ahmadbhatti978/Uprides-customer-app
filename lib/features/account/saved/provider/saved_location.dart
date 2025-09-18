import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/model/coordinate.dart';
import '../../../../util/api/api_routes.dart';
import '../../../../util/api/call.dart';
import '../../../booking/addlocation/model/place.dart';
import '../model/saved_locations.dart';

part 'saved_location.g.dart';

@Riverpod(keepAlive: true)
class SavedLocation extends _$SavedLocation {
  @override
  FutureOr<SavedLocations> build() => _fetchSavedLocations();

  // Private method to fetch locations with error handling
  Future<SavedLocations> _fetchSavedLocations() async {
    state = const AsyncLoading();

    final Either<ErrorDetails, SavedLocations> result = await Request.get(path: Api.savedLocation, onSuccess: (final json) => SavedLocations.fromJson(json));

    return result.fold((final ErrorDetails error) {
      state = AsyncError(error, StackTrace.current);
      return Future.error(error);
    }, (final SavedLocations data) => data);
  }

  // Refresh locations from the API
  Future<void> refreshLocations() async {
    state = const AsyncLoading();
    state = AsyncData(await _fetchSavedLocations());
  }

  // Create a new saved location with optimistic update
  Future<void> createSavedLocation(final Place place) async {
    // Store previous state to revert in case of failure
    final AsyncValue<SavedLocations> previousState = state;

    try {
      // Optimistically update the state if we have data
      if (state.hasValue && state.value != null) {
        final SavedLocations currentLocations = state.value!;

        // Create a temporary location representation
        final LocationElement optimisticLocation = LocationElement(
          id: 'temp-${DateTime.now().millisecondsSinceEpoch}',
          location: place.location,
          address: place.mainText,
          locationName: place.secondaryText,
        );

        // Create new locations list with optimistic addition
        final SavedLocations updatedLocations = SavedLocations(locations: <LocationElement>[optimisticLocation, ...?(currentLocations.locations)]);

        // Update state optimistically
        state = AsyncData(updatedLocations);
      }

      // Prepare payload for API
      final Map<String, Object?> payload = <String, Object?>{
        'location': place.location!.toJson(),
        'address': place.mainText,
        'location_name': place.secondaryText,
      };

      // Make the API request
      final Either<ErrorDetails, bool> result = await Request.post(path: Api.savedLocation, payload: payload, onSuccess: (final json) => true);

      // Handle result
      await result.fold(
        (final ErrorDetails error) {
          // Revert to previous state on error
          state = previousState;
        },
        (_) async {
          // Fetch fresh data on success
          state = AsyncData(await _fetchSavedLocations());
        },
      );
    } catch (e) {
      // Revert to previous state and propagate error
      state = previousState;
      state = AsyncError(e, StackTrace.current);
      rethrow;
    }
  }

  // Delete a saved location with optimistic update
  Future<void> deleteSavedLocation(final String locationId) async {
    // Store previous state to revert in case of failure
    final AsyncValue<SavedLocations> previousState = state;

    try {
      // Optimistically update the state if we have data
      if (state.hasValue && state.value != null) {
        final SavedLocations currentLocations = state.value!;

        // Create new locations list without the deleted location
        final SavedLocations updatedLocations = SavedLocations(
          locations: currentLocations.locations?.where((final LocationElement loc) => loc.id != locationId).toList(),
        );

        // Update state optimistically
        state = AsyncData(updatedLocations);
      }

      // Make the API request
      final Either<ErrorDetails, bool> result = await Request.delete(
        path: '${Api.savedLocation}$locationId',
        payload: <String, dynamic>{},
        onSuccess: (final json) => true,
      );

      // Handle result
      result.fold(
        (final ErrorDetails error) {
          // Revert to previous state on error
          state = previousState;
        },
        (_) {
          // No need to fetch again since we already updated optimistically
          // But if you want to ensure complete data consistency:
          // state = AsyncData(await _fetchSavedLocations());
        },
      );
    } catch (e) {
      // Revert to previous state and propagate error
      state = previousState;
      state = AsyncError(e, StackTrace.current);
      rethrow;
    }
  }

  // Method to update a saved location
  Future<void> updateSavedLocation(final String locationId, {final Coordinate? location, final String? address, final String? locationName}) async {
    // Store previous state to revert in case of failure
    final AsyncValue<SavedLocations> previousState = state;

    try {
      // Optimistically update the state if we have data
      if (state.hasValue && state.value != null) {
        final SavedLocations currentLocations = state.value!;

        // Create updated locations list
        final SavedLocations updatedLocations = SavedLocations(
          locations:
              currentLocations.locations?.map((final LocationElement loc) {
                if (loc.id == locationId) {
                  return LocationElement(
                    id: loc.id,
                    location: location ?? loc.location,
                    address: address ?? loc.address,
                    locationName: locationName ?? loc.locationName,
                    createdAt: loc.createdAt,
                  );
                }
                return loc;
              }).toList(),
        );

        // Update state optimistically
        state = AsyncData(updatedLocations);
      }

      // Prepare payload for API
      final Map<String, Object> payload = <String, Object>{
        'location_id': locationId,
        if (location != null) 'location': location.toJson(),
        if (address != null) 'address': address,
        if (locationName != null) 'location_name': locationName,
      };

      // Make the API request
      final Either<ErrorDetails, bool> result = await Request.put(path: Api.savedLocation, payload: payload, onSuccess: (final json) => true);

      // Handle result
      await result.fold(
        (final ErrorDetails error) {
          // Revert to previous state on error
          state = previousState;
        },
        (_) async {
          // Fetch fresh data on success to ensure consistency
          state = AsyncData(await _fetchSavedLocations());
        },
      );
    } catch (e) {
      // Revert to previous state and propagate error
      state = previousState;
      state = AsyncError(e, StackTrace.current);
      rethrow;
    }
  }
}
