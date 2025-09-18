import 'package:fpdart/fpdart.dart';
import '../../../core/constants/constants.dart';
import '../../../core/failure/failure.dart';
import '../../../core/model/coordinate.dart';
import '../../../l10n/app_localizations.dart';
import '../../../util/api/call.dart';
import '../../../util/variable.dart';
import '../model/compute_routes.dart';
import '../model/trending_place.dart';

class GooglePlaceRepo {
  const GooglePlaceRepo._();
  static Future<Either<ErrorDetails, List<TrendingPlace>>> fetchTrendingPlaces(final double latitude, final double longitude, final String? type) {
    final Map<String, Object?> body = <String, Object?>{
      "languageCode": AppLocalizations.supportedLocales.map((locale) => locale.languageCode).contains(slocal?.languageCode) ? slocal?.languageCode : "en",
      // "includedTypes": trends[type], // Assuming 'trends' is defined elsewhere
      'maxResultCount': 20,
      'locationRestriction': <String, Map<String, Object>>{
        'circle': <String, Object>{
          'center': <String, double>{'latitude': latitude, 'longitude': longitude},
          // Ensure radius is double if required by API
          'radius': 50000,
        },
      },
      'excludedPrimaryTypes': <String>['school'],
      'excludedTypes': <String>[],
      'rankPreference': 'POPULARITY',
      // Ensure trends[type] returns List<String> or handle potential type mismatch
      'includedPrimaryTypes': type == null ? <String>[] : trends[type],
    };

    // Define headers, including the specific field mask for searchNearby
    const Map<String, String> headers = <String, String>{
      'X-Goog-Api-Key': apiKey,
      'Accept': 'application/json',
      // Field mask is applied via query parameter in the path for searchNearby
    };

    // Construct the path with the field mask query parameter
    const String path =
        'https://places.googleapis.com/v1/places:searchNearby?fields=places.location%2Cplaces.photos%2Cplaces.displayName%2Cplaces.primaryTypeDisplayName%2Cplaces.shortFormattedAddress%2Cplaces.editorialSummary%2Cplaces.currentOpeningHours%2Cplaces.reviewSummary%2Cplaces.reviewSummary%2Cplaces.addressDescriptor';

    // Use Request.post helper
    return Request.post<List<TrendingPlace>>(
      // Specify the expected success type
      path: path,
      payload: body,
      headers: headers,

      log: false,
      onSuccess: (final json) {
        // The json is already decoded by Request.post
        final Map<String, dynamic> responseData = json as Map<String, dynamic>;

        // Safely access 'places' list
        final List<dynamic>? suggestions = responseData['places'] as List<dynamic>?;

        if (suggestions == null || suggestions.isEmpty) {
          // log('No trending places found or "places" key missing in response.');
          return <TrendingPlace>[]; // Return empty list
        }

        // Map suggestions to TrendingPlace objects
        try {
          // 1. Map suggestions, calling the filter function for each one.
          final List<TrendingPlace> trendingPlaces =
              suggestions
                  .map((final dynamic suggestion) {
                    final Map<String, dynamic> filteredJson = _filterByPlaceAndIndex(suggestion as Map<String, dynamic>);
                    return TrendingPlace.fromJson(filteredJson);
                  })
                  .toList() // Creates a growable list.
                // 2. Sort the new list in a separate step.
                ..sort(_compareByOpenStatus);

          return trendingPlaces;
        } catch (e) {
          // log('Error parsing TrendingPlace from suggestion: $e', stackTrace: stackTrace);
          // Throwing an error here will be caught by Request.post's try-catch
          // and converted into a Left(ErrorDetails).
          throw Exception('Failed to parse trending place data: $e');
        }
      },
    );
  }

  // Example function for demonstration only. Please use the blocklist method instead.
  static Map<String, dynamic> _filterByPlaceAndIndex(Map<String, dynamic> placeJson) {
    // Hardcoded rule: If the place is "Orbitur Vagueira", remove the 2nd photo.
    if (placeJson['displayName']?['text'] == "Orbitur Vagueira") {
      if (placeJson['photos'] is List) {
        final List<dynamic> photos = List<dynamic>.from(placeJson['photos'] as List);

        // Check if the 2nd photo (index 1) actually exists before trying to remove it.
        if (photos.length > 1) {
          //   log("Rule matched: Removing photo at index 1 for Orbitur Vagueira.");
          photos.removeAt(1); // Removes the second element.
        }

        // Create a new map and update it with the modified list.
        final Map<String, dynamic> newPlaceJson = Map<String, dynamic>.from(placeJson);
        newPlaceJson['photos'] = photos;
        return newPlaceJson;
      }
    }
    // For all other places, do nothing.
    return placeJson;
  }

  /// Compares two TrendingPlace objects by their open/close status
  /// Returns negative if 'a' should come before 'b', positive if after, 0 if equal
  static int _compareByOpenStatus(TrendingPlace a, TrendingPlace b) {
    // Get open status for both places
    final bool? aIsOpen = a.currentOpeningHours?.openNow;
    final bool? bIsOpen = b.currentOpeningHours?.openNow;

    // Handle null cases - places without opening hours info go to the end
    if (aIsOpen == null && bIsOpen == null) return 0;
    if (aIsOpen == null) return 1; // a goes after b
    if (bIsOpen == null) return -1; // a goes before b

    // Sort open places before closed places
    if (aIsOpen && !bIsOpen) return -1; // a (open) goes before b (closed)
    if (!aIsOpen && bIsOpen) return 1; // a (closed) goes after b (open)

    // If both have same status, maintain original order
    return 0;
  }

  /// Alternative sorting method that also considers next opening/closing times
  static int _compareByOpenStatusDetailed(TrendingPlace a, TrendingPlace b) {
    final CurrentOpeningHours? aHours = a.currentOpeningHours;
    final CurrentOpeningHours? bHours = b.currentOpeningHours;

    // Handle null cases
    if (aHours == null && bHours == null) return 0;
    if (aHours == null) return 1;
    if (bHours == null) return -1;

    final bool? aIsOpen = aHours.openNow;
    final bool? bIsOpen = bHours.openNow;

    // Handle null open status
    if (aIsOpen == null && bIsOpen == null) return 0;
    if (aIsOpen == null) return 1;
    if (bIsOpen == null) return -1;

    // Primary sort: open places first
    if (aIsOpen && !bIsOpen) return -1;
    if (!aIsOpen && bIsOpen) return 1;

    // Secondary sort: if both are open, sort by closing time (closing later comes first)
    if (aIsOpen && bIsOpen) {
      final DateTime? aCloseTime = aHours.nextCloseTime;
      final DateTime? bCloseTime = bHours.nextCloseTime;

      if (aCloseTime != null && bCloseTime != null) {
        return bCloseTime.compareTo(aCloseTime); // Later closing time comes first
      }
    }

    // Tertiary sort: if both are closed, sort by opening time (opening sooner comes first)
    if (!aIsOpen && !bIsOpen) {
      final DateTime? aOpenTime = aHours.nextOpenTime;
      final DateTime? bOpenTime = bHours.nextOpenTime;

      if (aOpenTime != null && bOpenTime != null) {
        return aOpenTime.compareTo(bOpenTime); // Earlier opening time comes first
      }
    }

    return 0;
  }

  static Future<Either<ErrorDetails, ComputeRoutes>> computeRoutes({required final Coordinate destination, required final Coordinate origin}) async {
    // Ensure coordinates are valid before making the request
    if (origin.latitude == null || origin.longitude == null || destination.latitude == null || destination.longitude == null) {
      return Left(ErrorDetails(message: 'Invalid origin or destination coordinates', stackTrace: StackTrace.current, route: 'computeRoutes'));
    }

    final Map<String, Object> body = <String, Object>{
      'origin': <String, Map<String, Map<String, dynamic>>>{
        'location': <String, Map<String, dynamic>>{'latLng': origin.toJson()},
      },
      'destination': <String, Map<String, Map<String, dynamic>>>{
        'location': <String, Map<String, dynamic>>{'latLng': destination.toJson()},
      },
      'travelMode': 'DRIVE',
      'routingPreference': 'TRAFFIC_AWARE',
      'computeAlternativeRoutes': false,
      // "routeModifiers": {"avoidTolls": false, "avoidHighways": false, "avoidFerries": false},
      'languageCode': 'en-US',
      'units': 'IMPERIAL',
    };

    // Define headers, including the specific field mask for computeRoutes
    final Map<String, String> headers = <String, String>{
      'X-Goog-Api-Key': apiKey,
      'Accept': 'application/json',
      // Request only distanceMeters (as per original code)
      // If you need duration and polyline later, add them:
      // 'X-Goog-FieldMask': 'routes.distanceMeters,routes.duration,routes.polyline.encodedPolyline'
      'X-Goog-FieldMask': 'routes.distanceMeters',
    };

    const String path = 'https://routes.googleapis.com/directions/v2:computeRoutes';

    // Use Request.post helper
    return Request.post<ComputeRoutes>(
      // Specify the expected success type
      path: path,
      payload: body,
      headers: headers,
      // The original code uses computeRoutesFromJson(res.body), which takes a String.
      // So, we need the raw response string.
      jsonAsString: true,
      onSuccess: (final json) {
        // The json is the raw response body string because jsonAsString is true
        final String responseBody = json as String;

        // Check if the response body is empty or indicates an error structure
        // (though Request.post should handle HTTP errors)
        if (responseBody.isEmpty) {
          //  log('Error: Received empty response body from computeRoutes');
          throw Exception('Received empty response body');
        }

        try {
          // Parse the raw JSON string using the dedicated function
          return computeRoutesFromJson(responseBody);
        } catch (e) {
          // log('Error parsing ComputeRoutes from response body: $e', stackTrace: stackTrace, error: responseBody);
          // Throwing an error here will be caught by Request.post's try-catch
          throw Exception('Failed to parse compute routes data: $e');
        }
      },
    );
    // No need for manual try-catch or Left return, Request.post handles it.
  }
}

// // Assuming 'trends' is defined somewhere like this (example):
// const Map<String, List<String>> trends = <String, List<String>>{
//   'food': <String>['restaurant', 'cafe', 'bakery'],
//   'shopping': <String>['store', 'shopping_mall'],
//   // Add other types as needed
// };
