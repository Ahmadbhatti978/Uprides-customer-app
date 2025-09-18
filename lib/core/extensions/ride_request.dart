 

import '../../features/booking/addlocation/model/place.dart';
import '../../features/booking/model/ride_request.dart';
import '../model/coordinate.dart';
import '../model/optimized_stop.dart';
 

extension Places on RideRequest {
  List<Place> get getPlaces {
    final List<Place> places = [];

    // Pickup
    if (pickupLocation != null) {
      places.add(
        Place(
          text: pickupAddress ?? 'Pickup',
          mainText: pickupAddress ?? 'Pickup',
          location:
              pickupLocation?.coordinates != null && pickupLocation!.coordinates!.length == 2
                  ? Coordinate(latitude: pickupLocation!.coordinates![1], longitude: pickupLocation!.coordinates![0])
                  : null,
          type: 'pickup',
        ),
      );
    }

    // Stops
    if (optimizedStops != null && optimizedStops!.isNotEmpty) {
      for (final OptimizedStop stop in optimizedStops!) {
        places.add(Place(text: stop.address, mainText: 'Stop', location: stop.location, type: 'stop'));
      }
    }

    // Dropoff
    if (dropoffLocation != null) {
      places.add(
        Place(
          text: dropoffAddress ?? 'Dropoff',
          mainText: dropoffAddress ?? 'Dropoff',
          location:
              dropoffLocation?.coordinates != null && dropoffLocation!.coordinates!.length == 2
                  ? Coordinate(latitude: dropoffLocation!.coordinates![1], longitude: dropoffLocation!.coordinates![0])
                  : null,
          type: 'dropoff',
        ),
      );
    }

    return places;
  }
}
