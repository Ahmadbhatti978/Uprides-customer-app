import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../core/constants/constants.dart';
import '../../../core/extensions/coor_to_latlng.dart';
import '../../../core/extensions/placemark.dart';
import '../../../core/model/coordinate.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import 'notifier/placemark_notifier.dart';

final AutoDisposeStateProvider<LatLng?> centerProvider = AutoDisposeStateProvider<LatLng?>((final Ref<LatLng?> ref) => null); // Default userId
Placemark? placemark;

class AddLocationOnMap extends ConsumerWidget {
  const AddLocationOnMap({required this.location, required this.index, super.key});
  final Coordinate location;
  final int index;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light));

    LatLng cposition = location.latLng!;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 200),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            GoogleMap(
              myLocationEnabled: true,
              minMaxZoomPreference: const MinMaxZoomPreference(10, 30),
              initialCameraPosition: CameraPosition(target: LatLng(location.latitude!, location.longitude!), zoom: 16),
              onCameraMove: (final CameraPosition position) => cposition = position.target,
              onCameraIdle: () => ref.read(centerProvider.notifier).state = cposition,
            ),
            Padding(padding: const EdgeInsets.only(bottom: 40, left: 10), child: SvgPicture.asset(pinPoint, height: 40)),
          ],
        ),
      ),
      // bottomSheet: _buildCollapsedView(ref, context),
    );
  }

  // Widget _buildCollapsedView(WidgetRef ref, BuildContext context) {
  //   return Column(
  //     mainAxisSize: MainAxisSize.min,
  //     children: [
  //       Center(child: buildHandle),
  //       const Align(
  //         alignment: Alignment.centerLeft,
  //         child: Padding(
  //           padding: EdgeInsets.only(left: horizontalSpacing),
  //           child: TitleSubtitle(title: "Set your pick-up location", subTitle: "Drag the map to move the pin", heading: true),
  //         ),
  //       ),
  //       const Divider(height: padding * 2),
  //       buildLocationButton(location),
  //       Padding(
  //         padding: const EdgeInsets.only(top: 20, bottom: padding * 2),
  //         child: BlackButton(
  //           text: 'Confirm',
  //           onPressed: () {
  //             final x = ref.read(centerProvider);

  //             ref
  //                 .read(pickedlocationProvider.notifier)
  //                 .editPlaces(
  //                   Place(
  //                     location: Coordinate(latitude: x!.latitude, longitude: x.longitude),
  //                     mainText: placemark!.address,
  //                     secondaryText: placemark!.secondary,
  //                   ),
  //                   index,
  //                 );

  //             Navigator.pop(
  //               context,
  //               Place(location: Coordinate(latitude: x.latitude, longitude: x.longitude), mainText: placemark!.address, secondaryText: placemark!.secondary),
  //             );
  //           },
  //         ),
  //       ),
  //     ],
  //   );
  // }

  FilledButton buildLocationButton(final Coordinate center) => FilledButton.tonalIcon(
    style: FilledButton.styleFrom(
      alignment: Alignment.centerLeft,
      fixedSize: Size(mediaQuery.size.width - 2 * horizontalSpacing, 40),
      backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
    ),
    onPressed: () {},
    icon: const Icon(Icons.location_on_rounded),
    label: Consumer(
      builder: (final BuildContext context, final WidgetRef ref, final Widget? child) {
        final LatLng? picked = ref.watch(centerProvider);
        return ref
            .watch(FetchPlacemarkFromCoordinatesProvider(latitude: picked?.latitude ?? center.latitude!, longitude: picked?.longitude ?? center.longitude!))
            .when(
              data: (final Placemark data) {
                placemark = data;
                return Text(data.address, style: Secondary.title);
              },
              loading: () => Text(l10n.getting_location, style: Secondary.title),
              error: (final Object error, final StackTrace stackTrace) => Text(error.toString(), style: Secondary.title),
            );
      },
    ),
  );
}
