import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../features/booking/addlocation/model/place.dart';
import '../../../features/booking/addlocation/notifier/placemark_notifier.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../../util/widget/widgets.dart';
import '../../constants/constants.dart';
import '../../extensions/coor_to_latlng.dart';
import '../../extensions/placemark.dart';
import '../../model/coordinate.dart';
import '../align/title_subtitle.dart';
import '../appbar/filled_back_bar.dart';
import '../buttons/filled_black_button.dart';

// Use a family provider to avoid unnecessary rebuilds
final AutoDisposeStateProvider<LatLng?> centerProvider = AutoDisposeStateProvider<LatLng?>((final Ref<LatLng?> ref) => null);

class LocationOnMap extends ConsumerStatefulWidget {
  const LocationOnMap({super.key});

  @override
  ConsumerState<LocationOnMap> createState() => _LocationOnMapState();
}

class _LocationOnMapState extends ConsumerState<LocationOnMap> {
  Placemark? _placemark;
  GoogleMapController? _mapController;
  LatLng? location;

  set mapController(final GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }

  void getPlacemark() {
    ref.read(centerProvider.notifier).state = location;
  }

  void onCameraMove(final CameraPosition position) {
    location = position.target;
  }

  void confirmLocation(final BuildContext context, final Coordinate defaultLocation) {
    final LatLng? center = ref.read(centerProvider);
    final double latitude = center?.latitude ?? defaultLocation.latitude ?? 0.0;
    final double longitude = center?.longitude ?? defaultLocation.longitude ?? 0.0;

    if (_placemark == null) return;

    Navigator.pop(
      context,
      Place(
        location: Coordinate(latitude: latitude, longitude: longitude),
        mainText: _placemark!.address,
        secondaryText: _placemark!.secondary,
        country: _placemark!.country,
      ),
    );
  }

  @override
  Widget build(final BuildContext context) {
    final RouteSettings? routeSettings = ModalRoute.of(context)?.settings;

    location = ((routeSettings?.arguments as Coordinate?) ?? currentCoordinate).latLng;

    if (location == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: const FilledBackBar(),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            key: UniqueKey(),
            fortyFiveDegreeImageryEnabled: true,
            myLocationEnabled: true,
            minMaxZoomPreference: const MinMaxZoomPreference(10, 30),
            initialCameraPosition: CameraPosition(target: location!, zoom: 14),
            onMapCreated: (controller) => mapController = controller,
            zoomControlsEnabled: false,
            onCameraMove: onCameraMove,
            onCameraIdle: getPlacemark,
          ),
          Center(child: Padding(padding: const EdgeInsets.only(bottom: 40), child: SvgPicture.asset(pinPoint, height: 40, width: 40))),
        ],
      ),
      bottomSheet:
          location != null
              ? LocationBottomSheet(
                location: location!.getCoordinate,
                onConfirm: (coord) => confirmLocation(context, coord),
                placemarkSetter: (p) => _placemark = p,
              )
              : const SizedBox.shrink(),
    );
  }
}

class LocationBottomSheet extends StatelessWidget {
  const LocationBottomSheet({required this.location, required this.onConfirm, required this.placemarkSetter, super.key});
  final Coordinate location;
  final void Function(Coordinate) onConfirm;
  final void Function(Placemark) placemarkSetter;

  @override
  Widget build(BuildContext context) => SafeArea(
    // top: false,
    maintainBottomViewPadding: true,
    minimum: const EdgeInsets.only(bottom: p12),
    child: Container(
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(child: buildHandle),
          const Gap(halfPadding),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: horizontalSpacing),
              child: TitleSubtitle(title: l10n.set_your_location_on_map, subTitle: l10n.drag_map_to_move_pin, heading: true),
            ),
          ),
          const Divider(height: padding * 2),
          LocationButton(location: location, placemarkSetter: placemarkSetter),
          Padding(padding: const EdgeInsets.only(top: 20, bottom: padding), child: BlackButton(text: l10n.confirm, onPressed: () => onConfirm(location))),
        ],
      ),
    ),
  );
}

class LocationButton extends StatelessWidget {
  const LocationButton({required this.location, required this.placemarkSetter, super.key});
  final Coordinate location;
  final void Function(Placemark) placemarkSetter;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: horizontalSpacing, vertical: padding),
    margin: const EdgeInsets.symmetric(horizontal: horizontalSpacing),
    decoration: BoxDecoration(color: const Color(0xFFF3F3F3), borderRadius: BorderRadius.circular(12)),
    child: Row(
      children: <Widget>[
        const Icon(Icons.location_on_rounded, size: 20),
        const SizedBox(width: 12),
        Expanded(child: LocationText(location: location, placemarkSetter: placemarkSetter)),
      ],
    ),
  );
}

class LocationText extends ConsumerWidget {
  const LocationText({required this.location, required this.placemarkSetter, super.key});
  final Coordinate location;
  final void Function(Placemark) placemarkSetter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LatLng? center = ref.watch(centerProvider);
    final double latitude = center?.latitude ?? location.latitude ?? 0.0;
    final double longitude = center?.longitude ?? location.longitude ?? 0.0;

    return ref
        .watch(FetchPlacemarkFromCoordinatesProvider(latitude: latitude, longitude: longitude))
        .when(
          data: (Placemark data) {
            placemarkSetter(data);
            return Text(data.address, style: Secondary.title, maxLines: 1, overflow: TextOverflow.ellipsis);
          },
          loading: () => Text(l10n.getting_location, style: Secondary.title),
          error: (Object error, _) => Text(l10n.error_getting_location, style: Secondary.title.copyWith(color: Colors.red)),
        );
  }
}
