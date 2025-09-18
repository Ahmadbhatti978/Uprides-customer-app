import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/model/coordinate.dart';
import '../../../home/model/trending_place.dart';
import '../../../home/provider/location_name.dart';
import '../model/place.dart';
import '../repo/add_location_repo.dart';
part 'pickedlocation.g.dart';

@Riverpod(keepAlive: true)
List<Place> cleanedLocations(Ref ref) => ref.watch(pickedlocationProvider).where((p) => p.location != null).toList();

@Riverpod(keepAlive: true)
class Pickedlocation extends _$Pickedlocation {
  @override
  List<Place> build() => const <Place>[Place(), Place()];

  Future<void> editPlaces(final Place place, int index) async {
    int targetIndex = index;
    if (targetIndex < 0 || targetIndex >= state.length) {
      targetIndex = state.length - 1;
    }
    final List<Place> newState = List<Place>.from(state);
    newState[targetIndex] = place;
    if (place.location == null && place.placeId != null) {
      newState[targetIndex] = await getCoordinate(place);
    }
    state = newState;
    if (targetIndex == state.length - 1 && targetIndex < 5) {
      addPlace();
    }
  }

  Future<void> updatePlaces(final Place place, int index) async {
    final List<Place> newState = List<Place>.from(state);

    newState[index] = place;

    state = newState;
  }

  Future<Place> getCoordinate(final Place placeId) async => (await AddLocationRepo.fetchPlaceDetail(placeId)).fold((final ErrorDetails failure) {
    log(failure.message);
    return placeId;
  }, (final Place places) => places);

  void reOrder(final int oldIndex, final int newIndex) {
    if (oldIndex == newIndex || oldIndex < 0 || newIndex < 0 || oldIndex >= state.length || newIndex > state.length) return;
    final List<Place> newState = List<Place>.from(state);
    final Place item = newState.removeAt(oldIndex);
    newState.insert(newIndex, item);
    state = newState;
  }

  void removePlaces(final int index) {
    if (index < 0 || index >= state.length) return;
    final List<Place> newState = List<Place>.from(state)..removeAt(index);
    state = newState;
  }

  void empty(final int index) {
    if (index < 0 || index >= state.length) return;
    final List<Place> newState = List<Place>.from(state);
    newState[index] = const Place();
    state = newState;
  }

  void addTrending(final TrendingPlace place) {
    ref.read(currentPlaceProvider.future).then((current) {
      final List<Place> newState = <Place>[
        current,
        Place(
          mainText: place.displayName?.text,
          secondaryText: place.shortFormattedAddress,
          location: Coordinate(latitude: place.location?.latitude, longitude: place.location?.longitude),
        ),
      ];
      state = newState;
    });
  }

  void addToPlace(final Place place) {
    final List<Place> newState = <Place>[state.first, place];
    state = newState;
  }
  // void addPlaces(final List<Place> places) {
  //   state = places;
  // }

  void setPlaces(final List<Place> places) => state = places;

  void addPlace() => state = <Place>[...state, const Place()];
}
