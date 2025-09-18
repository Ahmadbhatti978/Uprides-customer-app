import 'dart:developer';
import 'package:fpdart/fpdart.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/failure/failure.dart';
import '../../../../util/api/call.dart';
import '../../../home/model/compute_routes.dart';
import '../model/place.dart';
import '../model/place_detail.dart';

class AddLocationRepo {
  const AddLocationRepo._();

  static Future<Either<ErrorDetails, List<Place>>> fetchPlaces(final String input, final double? latitude, final double? longitude) {
    final Map<String, Object> body = <String, Object>{
      'input': input,
      if (latitude != null || longitude != null)
        'locationBias': <String, Map<String, Object>>{
          'circle': <String, Object>{
            'center': <String, double>{'latitude': latitude!, 'longitude': longitude!},
            'radius': (input.length * 10000).clamp(10000, 50000),
          },
        },
      if (latitude != null || longitude != null) 'origin': <String, double>{'latitude': latitude!, 'longitude': longitude!},
      'regionCode': 'pt',
      'languageCode': 'en',
      'includedPrimaryTypes': <String>[],
      'sessionToken': '',
    };

    final Map<String, String> headers = <String, String>{'X-Goog-Api-Key': apiKey, 'Accept': 'application/json'};

    return Request.post(
      path: 'https://places.googleapis.com/v1/places:autocomplete',
      payload: body,
      headers: headers,
      onSuccess: (final json) {
        final List<dynamic> suggestions = (json as Map<String, dynamic>)['suggestions'] as List<dynamic>;

        return suggestions.map((final suggestion) => Place.fromJson((suggestion as Map<String, dynamic>)['placePrediction'])).toList();
      },
    );
  }

  static Future<Either<ErrorDetails, Place>> fetchPlaceDetail(final Place place) {
    // Define headers, including the specific field mask
    const Map<String, String> headers = <String, String>{
      'X-Goog-Api-Key': apiKey,
      'Accept': 'application/json',
      'X-Goog-FieldMask': 'location,formattedAddress,addressComponents,shortFormattedAddress', // Request only the location field
    };

    // Construct the path dynamically
    final String path = 'https://places.googleapis.com/v1/places/${place.placeId}';

    // Use Request.get helper
    return Request.get<Place>(
      // Specify the expected success type
      path: path,
      headers: headers,
      // No query parameters needed for this specific API endpoint structure
      // jsonAsString defaults to false, which is correct here
      onSuccess: (final json) {
        // The json is already decoded by Request.get
        // We expect a Map<String, dynamic> containing 'location'
        final Map<String, dynamic> responseData = json as Map<String, dynamic>;
        final PlaceDetail placeDetail = PlaceDetail.fromJson(responseData);
        // Check if 'location' key exists before parsing
        if (responseData.containsKey('location')) {
          return place.copyWith(
            location: placeDetail.location,
            country: getCountryName(placeDetail),
            secondaryText: placeDetail.shortFormattedAddress,
          ); // Return the parsed Coordinate
        } else {
          // This case should ideally be caught by Request.get if the response is invalid,
          // but adding a check here provides robustness.
          log('Error: "location" key missing in place detail response for ${place.placeId}');
          // Throwing an error here will be caught by Request.get's try-catch
          // and converted into a Left(ErrorDetails).
          throw Exception('"location" key missing in response');
        }
      },
    );

    // No need for manual try-catch or Left return, Request.get handles it.
  }

  /// Extracts the full country name from a PlaceDetails object.
  ///
  /// @param placeDetails The PlaceDetails object containing the address components.
  /// @returns The full name of the country as a String, or null if it cannot be found.
  static String? getCountryName(PlaceDetail placeDetails) {
    try {
      // Find the address component that represents the country
      final AddressComponent? countryComponent = placeDetails.addressComponents?.firstWhere((component) => component.types?.contains('country') ?? false);
      return countryComponent?.longText;
    } catch (e) {
      // Throws a StateError if no element is found, so we catch it.
   //   print("Country component not found.");
      return null;
    }
  }
  // Future<List<LatLng>> getDirections(List<LatLng> locations) async {
  //   String apiKey = AddLocationRepo.apiKey;

  //   const String mainApi =
  //       'https://routes.googleapis.com/directions/v2:computeRoutes';
  //   // "https://maps.googleapis.com/maps/api/directions/json?origin=";
  //   final String startPosition =
  //       "${locations.first.latitude},${locations.first.longitude}";
  //   const String destination = "&destination=";
  //   final String endPosition =
  //       "${locations.last.latitude},${locations.last.longitude}";
  //   const String key = "&key=";

  //   var response = await ClientService.get(
  //       fullPath: (mainApi +
  //           startPosition +
  //           destination +
  //           endPosition +
  //           key +
  //           apiKey));

  //   Map data = json.decode(response.body);
  //   String encodedString = data['routes'][0]['overview_polyline']['points'];
  //   List<LatLng> points = _decodePoly(encodedString);

  //   return points;
  // }

  static Future<List<Route>> getRoute(List<LatLng> locations) async {
    final Map<String, String> headers = {
      "X-Goog-Api-Key": apiKey,
      'Content-Type': 'application/json',
      'X-Goog-FieldMask': 'routes.duration,routes.distanceMeters,routes.polyline.encodedPolyline',
    };
    const String mainApi = 'https://routes.googleapis.com/directions/v2:computeRoutes';

    return (await Request.post<List<Route>>(
      path: mainApi,
      headers: headers,
      payload: {
        "origin": {
          "location": {
            "latLng": {"latitude": locations.first.latitude, "longitude": locations.first.longitude},
          },
        },
        "destination": {
          "location": {
            "latLng": {"latitude": locations.last.latitude, "longitude": locations.last.longitude},
          },
        },
        // Add intermediates if there are more than 2 locations (excluding origin and destination)
        if (locations.length > 2)
          "intermediates":
              locations
                  .sublist(1, locations.length - 1)
                  .map(
                    (loc) => {
                      "location": {
                        "latLng": {"latitude": loc.latitude, "longitude": loc.longitude},
                      },
                      //    "stopover": true,
                      //"sideOfRoad": true,
                    },
                  )
                  .toList(),
        "travelMode": "DRIVE",
      //  "routingPreference": "TRAFFIC_AWARE",
        "computeAlternativeRoutes": true,
        //      "routeModifiers": {"avoidTolls": false, "avoidHighways": false, "avoidFerries": false},
        "languageCode": "en-US",
        "units": "IMPERIAL",
      },
      onSuccess: (data) => data["routes"] == null ? [] : List<Route>.from(data["routes"]!.map((x) => Route.fromJson(x))),
    )).fold((r) {
      log(r.toString());
      return [];
    }, Future.value);
  }

  // static List<LatLng> _decodePoly(String encoded) {
  //   List<LatLng> points = [];
  //   int index = 0, len = encoded.length;
  //   int lat = 0, lng = 0;

  //   while (index < len) {
  //     int shift = 0, result = 0;
  //     int b;
  //     do {
  //       b = encoded.codeUnitAt(index++) - 63;
  //       result |= (b & 0x1f) << shift;
  //       shift += 5;
  //     } while (b >= 0x20);
  //     int dlat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
  //     lat += dlat;

  //     shift = 0;
  //     result = 0;
  //     do {
  //       b = encoded.codeUnitAt(index++) - 63;
  //       result |= (b & 0x1f) << shift;
  //       shift += 5;
  //     } while (b >= 0x20);
  //     int dlng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
  //     lng += dlng;

  //     LatLng point = LatLng(lat / 1E5, lng / 1E5);
  //     points.add(point);
  //   }

  //   return points;
  // }
}
