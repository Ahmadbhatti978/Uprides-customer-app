import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/extensions/placemark.dart';
import '../../booking/addlocation/import.dart';
import '../presentation/import.dart';

part 'location_name.g.dart';

@Riverpod(keepAlive: true)
Future<Place> currentPlace(final Ref ref) async {
  final Position location = await ref.read(currentLocationProvider.future);
  final List<Placemark> addresses = await placemarkFromCoordinates(location.latitude, location.longitude);
 
  currentCoordinate = Coordinate(latitude: location.latitude, longitude: location.longitude);
  final place = Place(
    mainText: addresses[0].address,
    secondaryText: addresses[0].secondary,
    location: Coordinate(latitude: location.latitude, longitude: location.longitude),
    country: addresses[0].country,
  );

  if (addresses.isNotEmpty) {
    await ref.read(pickedlocationProvider.notifier).editPlaces(place, 0);
  }
  return place;
}
