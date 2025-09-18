import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../features/account/saved/model/saved_locations.dart';
import '../../../features/account/saved/provider/saved_location.dart';
import '../../../features/activity/model/activity.dart';
import '../../../features/activity/provider/get_activity_provider.dart';
import '../../../features/booking/addlocation/components/recent_travel.dart';
import '../../../features/booking/addlocation/model/place.dart';
import '../../../features/booking/addlocation/notifier/auto_complete.dart';
import '../../constants/constants.dart';
import '../../model/coordinate.dart';

class LocationSuggestion extends ConsumerWidget {
  const LocationSuggestion(this.myValueSetter, {super.key});
  final ValueChanged<Place> myValueSetter;
  static const double _horizontalPadding = horizontalSpacing;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final List<Place> suggestions = ref.watch(placesProvider);
    final List<Place> savedLocations = _getSavedLocations(ref);
    final List<Place> activityPlaces = _getActivityPlaces(ref);

    final List<Place> allPlaces = <Place>[...suggestions, ...savedLocations];
    final List<Place> recentPlaces = <Place>[...savedLocations, ...activityPlaces];

    return Expanded(
      child:
          suggestions.isEmpty
              ? RecentTravel(ref: ref, savedPlaces: recentPlaces, myValueSetter: myValueSetter)
              : SuggestionsList(places: allPlaces, myValueSetter: myValueSetter),
    );
  }

  List<Place> _getSavedLocations(final WidgetRef ref) {
    final AsyncValue<SavedLocations> savedLocation = ref.watch(savedLocationProvider);
    if (!savedLocation.hasValue && savedLocation.valueOrNull?.locations == null) return <Place>[];

    return savedLocation.value!.locations!
        .map((final LocationElement e) => Place(location: e.location, mainText: e.address, secondaryText: e.locationName, type: 'saved', text: e.locationName,))
        .toList();
  }

  List<Place> _getActivityPlaces(final WidgetRef ref) {
    final List<String> dropoff = <String>[];
    final AsyncValue<Activity> activity = ref.watch(getAcitivitesProvider(ridestatus: RideStatusType.CANCELED));

    if (!activity.hasValue) return <Place>[];
    if (activity.value?.data?.rides?.results == null) return <Place>[];
    if (activity.value!.data!.rides!.results!.isEmpty) return <Place>[];
    final List<Result> rides = List.of(activity.value!.data!.rides!.results!)..retainWhere((ride) {
      if (dropoff.contains(ride.rideRequest?.dropoffAddress ?? '')) {
        return false;
      } else {
        dropoff.add(ride.rideRequest?.dropoffAddress ?? '');
        return true;
      }
    });
    return rides
        .map(
          (final Result rides) => Place(
            location: Coordinate(
              latitude: rides.rideRequest?.dropoffLocation?.coordinates?.last,
              longitude: rides.rideRequest?.dropoffLocation?.coordinates?.first,
            ),
            mainText: rides.rideRequest?.dropoffAddress,
            text: rides.rideRequest?.distanceInMeters?.toString(),
          
          ),
        )
        .toList();
  }
}

class SuggestionsList extends StatelessWidget {
  const SuggestionsList({required this.places, required this.myValueSetter, super.key});
  final List<Place> places;
  final ValueChanged<Place> myValueSetter;

  @override
  Widget build(BuildContext context) => ListView.separated(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      padding: const EdgeInsets.symmetric(horizontal: LocationSuggestion._horizontalPadding),
      itemCount: places.length,
      separatorBuilder: (_, __) => const Divider(height: 0, indent: 36, endIndent: 0),
      itemBuilder: (context, index) => Tile(myValueSetter: myValueSetter, places: places[index]),
    );
}
