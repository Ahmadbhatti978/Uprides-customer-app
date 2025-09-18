import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../core/constants/constants.dart';
import '../../../core/extensions/coor_to_latlng.dart';
import '../../../core/extensions/placemark.dart';
import '../../../core/model/coordinate.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/buttons/bottom_navigation_button.dart';
import '../../../util/colors.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../../util/widget/widgets.dart';
import '../../booking/addlocation/model/place.dart';
import '../../booking/addlocation/notifier/placemark_notifier.dart';
import 'provider/saved_location.dart';

// StateProvider to track the map's center position
final AutoDisposeStateProvider<LatLng?> centerProvider = AutoDisposeStateProvider<LatLng?>((final Ref<LatLng?> ref) => null);

class ConfirmSavedAddress extends ConsumerStatefulWidget {
  const ConfirmSavedAddress({super.key});

  @override
  ConsumerState<ConfirmSavedAddress> createState() => _ConfirmSavedAddressState();
}

class _ConfirmSavedAddressState extends ConsumerState<ConfirmSavedAddress> {
  static const double _mapBottomPadding = 300;
  // static const double _markerSize = 25;
  // static const double _pinPointHeight = 40;
  // static const MinMaxZoomPreference _zoomPreference = MinMaxZoomPreference(10, 30);
  // static const double _initialZoom = 14;
  static const double _detailedZoom = 18;

  LatLng? target;
  late GoogleMapController _mapController;
  Place? _place;
  bool isValid = false;
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    _place ??= ModalRoute.of(context)!.settings.arguments! as Place;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: _mapBottomPadding),
        child: _MapWithMarker(place: _place!, target: target, onMapCreated: _onMapCreated, onCameraMove: _handleCameraMove),
      ),
      bottomSheet: _BottomSheetContent(
        place: _place!,
        nameController: _nameController,
        onLocationButtonPressed: _navigateToLocationOnMap,
        onAddressCardPressed: _navigateToSingleLocation,
        onNameChanged: (value) {
          if (isValid != value.trim().isNotEmpty) {
            setState(() {
              isValid = value.trim().isNotEmpty;
            });
          }
        },
      ),
      bottomNavigationBar: BottomNavigationButton(text: l10n.confirm, onPressed: isValid ? _saveLocation : null),
    );
  }

  void _onMapCreated(final GoogleMapController controller) {
    _mapController = controller;
  }

  void _handleCameraMove(final CameraPosition position) => target = position.target;

  Future<void> _navigateToLocationOnMap() async {
    final Coordinate? coordinate = ref.read(centerProvider)?.getCoordinate ?? _place!.location;
    final Place? selectedPlace = await Navigator.pushNamed(context, AppRoutes.locationOnMap, arguments: coordinate) as Place?;

    if (selectedPlace != null) {
      ref.read(centerProvider.notifier).state = selectedPlace.location!.latLng;
      setState(() {
        _place = selectedPlace;
      });
    }
  }

  Future<void> _navigateToSingleLocation() async {
    final Place? selectedPlace = await Navigator.pushNamed(context, AppRoutes.singleLocation, arguments: _place?.location) as Place?;

    if (selectedPlace != null) {
      _animateToNewLocation(selectedPlace);
      setState(() {
        _place = selectedPlace;
      });
    }
  }

  void _animateToNewLocation(final Place place) {
    _mapController.animateCamera(CameraUpdate.newLatLngZoom(LatLng(place.location!.latitude!, place.location!.longitude!), _detailedZoom));
  }

  void _saveLocation() {
    ref.read(savedLocationProvider.notifier).createSavedLocation(_place!.copyWith(secondaryText: _nameController.text));
    Navigator.pop(context);
  }
}

// --- Widget Classes ---

class _MapWithMarker extends ConsumerWidget {
  const _MapWithMarker({required this.place, required this.target, required this.onMapCreated, required this.onCameraMove});
  final Place place;
  final LatLng? target;
  final void Function(GoogleMapController) onMapCreated;
  final void Function(CameraPosition) onCameraMove;

  static const double _markerSize = 25;
  static const double _pinPointHeight = 40;
  static const MinMaxZoomPreference _zoomPreference = MinMaxZoomPreference(10, 30);
  static const double _initialZoom = 14;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Stack(
    alignment: Alignment.center,
    children: <Widget>[
      GoogleMap(
        onCameraIdle: () => ref.read(centerProvider.notifier).state = target,
        onCameraMove: onCameraMove,
        fortyFiveDegreeImageryEnabled: true,
        myLocationEnabled: true,
        mapToolbarEnabled: false,
        minMaxZoomPreference: _zoomPreference,
        initialCameraPosition: CameraPosition(target: place.location!.latLng!, zoom: _initialZoom),
        onMapCreated: onMapCreated,
        zoomControlsEnabled: false,
        markers: <Marker>{
          Marker(
            anchor: const Offset(0.3, 0.5),
            markerId: MarkerId(place.location!.latLng.toString()),
            position: place.location!.latLng!,
            icon: AssetMapBitmap(point, width: _markerSize, height: _markerSize),
          ),
        },
      ),
      Padding(padding: const EdgeInsets.only(bottom: 40, left: 10), child: SvgPicture.asset(pinPoint, height: _pinPointHeight)),
    ],
  );
}

class _BottomSheetContent extends ConsumerWidget {
  const _BottomSheetContent({
    required this.place,
    required this.nameController,
    required this.onLocationButtonPressed,
    required this.onAddressCardPressed,
    required this.onNameChanged,
  });
  final Place place;
  final TextEditingController nameController;
  final VoidCallback onLocationButtonPressed;
  final VoidCallback onAddressCardPressed;
  final ValueChanged<String> onNameChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: horizontalSpacing),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Center(child: buildHandle),
        Text(l10n.confirm_your_address, style: Default.heading),
        Padding(
          padding: const EdgeInsets.only(top: horizontalSpacing, bottom: padding * 2),
          child: _LocationButton(place: place, onPressed: onLocationButtonPressed),
        ),
        Text(l10n.address, style: Default.heading),
        Padding(padding: const EdgeInsets.only(top: horizontalSpacing, bottom: padding * 2), child: _AddressCard(place: place, onTap: onAddressCardPressed)),
        Text(l10n.name, style: Default.heading),
        Padding(
          padding: const EdgeInsets.only(top: horizontalSpacing, bottom: padding * 2),
          child: TextField(
            controller: nameController,
            onChanged: onNameChanged,
            decoration: InputDecoration(hintText: l10n.enter_location_name, border: const OutlineInputBorder()),
          ),
        ),
      ],
    ),
  );
}

class _AddressCard extends StatelessWidget {
  const _AddressCard({required this.place, required this.onTap});
  final Place place;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Card.filled(
      color: grey,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: Row(
          children: <Widget>[
            Expanded(child: Text(place.mainText!, style: Primary.titleSmall, overflow: TextOverflow.ellipsis)),
            const Icon(Icons.arrow_forward_ios_rounded, size: 18),
          ],
        ),
      ),
    ),
  );
}

class _LocationButton extends ConsumerWidget {
  const _LocationButton({required this.place, required this.onPressed});
  final Place place;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LatLng? picked = ref.watch(centerProvider);

    return FilledButton.tonalIcon(
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.all(padding),
        alignment: Alignment.centerLeft,
        backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
        fixedSize: Size(mediaQuery.size.width, 52),
      ),
      onPressed: onPressed,
      icon: const Icon(Icons.location_on_rounded),
      label:
          picked == null
              ? Text(place.mainText!, style: Secondary.title, overflow: TextOverflow.ellipsis, maxLines: 1)
              : _LiveAddressLabel(picked: picked, place: place),
    );
  }
}

class _LiveAddressLabel extends ConsumerWidget {
  const _LiveAddressLabel({required this.picked, required this.place});
  final LatLng picked;
  final Place place;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double latitude = picked.latitude;
    final double longitude = picked.longitude;

    return ref
        .watch(FetchPlacemarkFromCoordinatesProvider(latitude: latitude, longitude: longitude))
        .when(
          data: (final Placemark data) => Text(data.address, style: Secondary.title, overflow: TextOverflow.ellipsis, maxLines: 1),
          loading: () => Text(l10n.getting_location, style: Secondary.title),
          error: (final Object error, final StackTrace stackTrace) => Text('Error: $error', style: Secondary.title, overflow: TextOverflow.ellipsis),
        );
  }
}
