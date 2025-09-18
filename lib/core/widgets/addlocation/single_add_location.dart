import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../features/booking/addlocation/model/place.dart';
import '../../../features/booking/addlocation/notifier/auto_complete.dart';
import '../../../features/booking/addlocation/repo/add_location_repo.dart';
import '../../../util/colors.dart';
import '../../../util/debouncer.dart';
import '../../../util/variable.dart';
import '../../constants/constants.dart';
import '../../failure/failure.dart';
import '../../router/route.dart';
import '../appbar/cross_name.dart';
import '../buttons/current_location_button.dart';
import '../buttons/filled_black_button.dart';
import '../buttons/set_location_om_map_button.dart';
import 'location_suggestion.dart';

final AutoDisposeStateProvider<Place?> location = AutoDisposeStateProvider<Place?>((final Ref<Place?> ref) => null); //

class SingalAddLocation extends ConsumerWidget {
  const SingalAddLocation({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final Debouncer debouncer = Debouncer();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CrossName(title: l10n.add_location),
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(padding, 4, 14, p12),
            child: TextField(
              enabled: true,
              autofocus: true,
              textAlignVertical: TextAlignVertical.center,
              controller: TextEditingController(text: ref.watch(location)?.mainText),
              onChanged: (final String value) => value.trim().isNotEmpty ? debouncer(() => ref.read(placesProvider.notifier).fetchPlaces(value)) : null,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                border: const OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(8))),
                hintText: l10n.enter_your_location,
                filled: true,
                prefixIconConstraints: const BoxConstraints.tightFor(height: 18, width: 46),
                prefixIcon: Container(
                  height: padding,
                  width: padding,
                  margin: const EdgeInsets.only(right: 8, left: 4),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5),
                    //   color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(8))),
                fillColor: grey,
                enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Visibility(
              // visible: pickedLocation.elementAtOrNull(value)?.location != null,
              child: SetLocationOnMap(
                onPressed: () async {
                  final Object? x = await Navigator.pushNamed(context, AppRoutes.locationOnMap, arguments: ref.read(location)?.location);
                  if (x != null) {
                    ref.read(location.notifier).state = x as Place?;
                  }
                },
              ),
            ),
          ),

          CurrentLocationButton(setCurrentLocation: (final Place value) => ref.read(location.notifier).state = value),
          LocationSuggestion((final Place place) {
            FocusScope.of(context).unfocus();
            updatePlace(place, ref);
          }),

          // LocationSuggestion((final Place place) async {
          //   FocusScope.of(context).unfocus();
          //   ref.read(location.notifier).state = place;
          //   if (place.placeId != null) {
          //     (await AddLocationRepo.fetchPlaceDetail(
          //       place,
          //     )).fold((final ErrorDetails failure) => debugPrint(failure.message), (final Place coordinate) => ref.read(location.notifier).state = place);
          //   }
          // }),
        ],
      ),
      floatingActionButton: BlackButton(
        text: l10n.done,
        onPressed: () {
          final Place? x = ref.read(location);
          Navigator.pop(context, x);
        },
      ),
    );
  }

  Future<void> updatePlace(Place? selectedPlace, WidgetRef ref) async {
    if (selectedPlace != null) {
      if (selectedPlace.location == null) {
        if (selectedPlace.placeId != null) {
          ref.read(location.notifier).state = (await AddLocationRepo.fetchPlaceDetail(selectedPlace)).fold((final ErrorDetails failure) {
            log(failure.message);
            return selectedPlace;
          }, (final Place places) => places);
        }
      } else {
        ref.read(location.notifier).state = selectedPlace;
      }
    }
  }
}
