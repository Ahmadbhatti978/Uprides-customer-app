import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../core/constants/constants.dart';
import '../../../core/extensions/coor_to_latlng.dart';
import '../../../core/failure/failure.dart';
import '../../../core/global_loading_provider.dart';
import '../../../core/location_validator.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/align/icon_text.dart';
import '../../../core/widgets/align/title_subtitle.dart';
import '../../../core/widgets/appbar/filled_back_bar.dart';
import '../../../core/widgets/buttons/bottom_navigation_button.dart';
import '../../../core/widgets/loading_error/error.dart';
import '../../../core/widgets/loading_error/loading.dart';
import '../../../util/colors.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../../util/widget/widgets.dart';
import '../../booking/addlocation/model/config.dart';
import '../../booking/addlocation/model/place.dart';
import '../../booking/addlocation/notifier/pickedlocation.dart';
import '../../booking/provider/config_provider.dart';
import 'model/saved_locations.dart';
import 'provider/saved_location.dart';

final StateProvider<int?> counterProvider = StateProvider<int?>((final Ref<int?> ref) => null);
final AutoDisposeStateProvider<int> selected = AutoDisposeStateProvider<int>((final Ref<int> ref) => -1);

class SavedLocation extends ConsumerWidget {
  const SavedLocation({super.key});
  static GoogleMapController? mapController;
  void _onMapCreated(final GoogleMapController controller) {
    mapController = controller;
  }

  void updateMap(final LatLng latLng) {
    if (mapController != null) {
      mapController?.animateCamera(CameraUpdate.newLatLngZoom(latLng, 18));
    }
  }

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    //   AsyncValue<SavedLocations> getSavedLocation = ref.watch(getSavedLocationProvider);
    final AsyncValue<SavedLocations> getSavedLocation = ref.watch(savedLocationProvider);
    List<LocationElement> savedLocation = <LocationElement>[];
    final LatLng latlng = currentCoordinate.latLng!;
    final int? sIndex = ref.watch(counterProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: const FilledBackBar(),
      body: Padding(
        padding: EdgeInsets.only(bottom: mediaQuery.size.height * .25),
        child: GoogleMap(
          markers: <Marker>{
            Marker(markerId: MarkerId(latlng.toString()), anchor: const Offset(0.5, 0.50), icon: AssetMapBitmap(yourLocation, height: 40), position: latlng),
          },
          myLocationEnabled: true,
          initialCameraPosition: CameraPosition(target: latlng, zoom: 18),
          //    onCameraMove: (position) => _onCameraMove(position.target, ref),
          onMapCreated: _onMapCreated,
        ),
      ),
      bottomSheet: Material(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              DecoratedBox(
                decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    buildHandle,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(padding: const EdgeInsets.only(left: padding), child: Text(l10n.confirm_your_address, style: Default.heading)),
                    ),
                  ],
                ),
              ),
              getSavedLocation.when(
                data: (final SavedLocations data) {
                  if (data.locations != null && data.locations!.isNotEmpty) {
                    //    ref.read(counterProvider.notifier).state = 1;
                    //   locations = data.locations!;
                  }
                  savedLocation = List.from(data.locations ?? <LocationElement>[]);
                  return ConstrainedBox(
                    constraints: BoxConstraints(minHeight: mediaQuery.size.height * .11, maxHeight: mediaQuery.size.height * .4),
                    child: StatefulBuilder(
                      builder:
                          (final BuildContext context, final setState) => ListView.builder(
                            shrinkWrap: true,
                            itemCount: savedLocation.length,
                            itemBuilder:
                                (final BuildContext context, final int index) => Dismissible(
                                  key: ValueKey(savedLocation.elementAt(index).id ?? index),
                                  dragStartBehavior: DragStartBehavior.down,
                                  direction: DismissDirection.endToStart,
                                  // secondaryBackground: Container(
                                  //   color: Colors.amber,
                                  // ),
                                  background: Container(
                                    color: const Color(0xFFF27070),
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.only(right: padding * 1.4),
                                    child: IconText(text: l10n.delete, icon: CupertinoIcons.delete_solid, isWhite: true),
                                  ),

                                  onUpdate: (final DismissUpdateDetails details) {
                                    if (details.progress == 0 || details.progress == 1) {
                                      if (ref.read(selected) == index) {
                                        ref.read(selected.notifier).state = -1;
                                      }
                                    } else {
                                      if (ref.read(selected) != index) {
                                        ref.read(selected.notifier).state = index;
                                      }
                                    }
                                  },
                                  onDismissed: (final DismissDirection direction) {
                                    if (data.locations?.elementAt(index).id != null) {
                                      ref.read(savedLocationProvider.notifier).deleteSavedLocation(data.locations!.elementAt(index).id!);
                                    }
                                  },
                                  child: Container(
                                    margin: ref.watch(selected) == index ? const EdgeInsets.symmetric(horizontal: padding / 2) : null,
                                    decoration: ref.watch(selected) == index ? BoxDecoration(color: grey, borderRadius: BorderRadius.circular(8)) : null,
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    child: InkWell(
                                      //   focusColor: Colors.amberAccent,
                                      splashColor: const Color.fromARGB(245, 245, 245, 245),
                                      borderRadius: BorderRadius.circular(12),
                                      onTap: () {
                                        updateMap(LatLng(savedLocation[index].location!.latitude!, savedLocation[index].location!.longitude!));
                                        ref.read(counterProvider.notifier).state = index;
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                              height: 22,
                                              width: 22,
                                              margin: const EdgeInsets.only(right: 8, bottom: 6),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border:
                                                    sIndex == index
                                                        ? Border.all(color: const Color(0xFF18C4B8), width: 6.9)
                                                        : Border.all(color: darkgrey, width: 2.3),
                                              ),
                                            ),
                                            TitleSubtitle(
                                              title: savedLocation.elementAt(index).locationName ?? '',
                                              subTitle: savedLocation.elementAt(index).address ?? '',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                          ),
                    ),
                  );
                },
                error: (final Object error, final StackTrace stackTrace) => Err(error: error as ErrorDetails, stackTrace: stackTrace),
                loading: () => loading,
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(top: padding / 2, bottom: padding),
                child: FilledButton(
                  onPressed: () async {
                    final Place? x = await Navigator.pushNamed(context, AppRoutes.singleLocation) as Place?;
                    if (x != null && context.mounted) {
                      await Navigator.pushNamed(context, AppRoutes.confirmSavedLocation, arguments: x);
                    }
                  },
                  style: FilledButton.styleFrom(
                    enableFeedback: true,
                    minimumSize: Size.zero,
                    backgroundColor: const Color(0xFFE2F7F5),
                    padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
                  ),
                  child: Text(
                    l10n.add_address,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Color(0xFF18C4B8), fontSize: 14, fontVariations: <FontVariation>[FontVariation('wght', 720)]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Visibility(
        visible: sIndex != null && sIndex >= 0 && savedLocation.isNotEmpty,
        child: BottomNavigationButton(
          text: l10n.confirm,
          isLoading: ref.watch(gloading),
          onPressed: () async {
            final LocationElement locationElement = savedLocation.elementAt(sIndex!);

            ref
                .read(pickedlocationProvider.notifier)
                .addToPlace(Place(location: locationElement.location, mainText: locationElement.address, secondaryText: locationElement.locationName));
            ref.watch(gloading.notifier).state = true;

            rideRequest = null;
            ref.read(configPProvider.notifier).changeBookingType(BookingType.manual);
            await LocationValidator(ref).navigateToConfirmScreen();
            ref.watch(gloading.notifier).state = false;
          },
        ),
      ),
    );
  }
}
