import 'package:flutter/material.dart';
import '../../../core/widgets/appbar/filled_back_bar.dart';
import 'component/book_ride_button.dart';
import 'component/map.dart';
import 'component/select_ride/select_ride.dart';

class ChooseRide extends StatelessWidget {
  const ChooseRide({super.key});

  @override
  Widget build(final BuildContext context) => const Scaffold(
    extendBody: true,
    extendBodyBehindAppBar: true,
    appBar: FilledBackBar(),
    body: Stack(
      children: <Widget>[CMap(), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 120), child: SelectRide()))],
    ),
    bottomNavigationBar: BookRideButton(),
  );
}

// class MapDriverView extends ConsumerStatefulWidget {
//   const MapDriverView({super.key});

//   @override
//   ConsumerState<MapDriverView> createState() => _MapDriverViewState();
// }

// class _MapDriverViewState extends ConsumerState<MapDriverView> {
//   GoogleMapController? _mapController;
//   final Set<Marker> _markers = <Marker>{};

//   @override
//   void dispose() {
//     _mapController?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(final BuildContext context) {
//     // final AsyncValue<List<DriversLocation>> drivers = ref.watch(driverLocationProvider);
//     // final Ride? selectedRide = ref.watch(selectedRideProvider);
//     // final AsyncValue<RideTypeImages> rideTypeImages = ref.watch(getRideTypeImagesProvider);

//     // // Update markers when necessary data changes
//     // _updateMarkers(drivers, selectedRide, rideTypeImages);
//     // final List<LatLng> randomLocations = generateRandomNearbyLocations(pickup, 10);

//     return SizedBox(
//       height: MediaQuery.of(context).size.height * 0.9,
//       child: GoogleMap(
//         minMaxZoomPreference: const MinMaxZoomPreference(6, 20),
//         markers: _markers,
//         initialCameraPosition: CameraPosition(target: currentCoordinate.latLng!),
//         onMapCreated: (final GoogleMapController controller) => _mapController = controller,
//       ),
//     );
//   }

//   // void updateMarker(final AsyncValue<List<DriversLocation>> drivers, final Ride? selectedRide) {
//   //   //  _markers = {};
//   //   if (!drivers.hasValue || selectedRide == null) {
//   //     return;
//   //   }

//   //   final DriversLocation driversLocation = drivers.requireValue.firstWhere(
//   //     (element) => element.rideTypeId == selectedRide.rideTypeId,
//   //     orElse: () => const DriversLocation(),
//   //   );
//   //   if (driversLocation.coordinates == null || driversLocation.coordinates!.latitude == null || driversLocation.coordinates!.longitude == null) {
//   //     return;
//   //   }
//   //   _loadDriverMarkers([driversLocation.coordinates!.latLng], driversLocation?.pic ?? '');
//   // }

//   // void _updateMarkers(final AsyncValue<List<DriversLocation>> drivers, final Ride? selectedRide, final AsyncValue<RideTypeImages> rideTypeImages) {
//   //   drivers.whenData((data) {
//   //     _markers = {};
//   //     if (!drivers.hasValue || !rideTypeImages.hasValue || selectedRide == null || data.isEmpty) {
//   //       return;
//   //     }

//   //     final List<RideType> rideTypes = rideTypeImages.value?.data?.rideTypes?.results ?? <RideType>[];
//   //     final int selectedTypeIndex = rideTypes.indexWhere((final RideType type) => type.id == selectedRide.rideTypeId);

//   //     if (selectedTypeIndex == -1) {
//   //       return;
//   //     }

//   //     final Iterable<DriversLocation> matchingDrivers = data.where((final e) => e.rideTypeId == selectedRide.rideTypeId);
//   //     if (matchingDrivers.isEmpty) {
//   //       return;
//   //     }

//   //     final List<LatLng> locations =
//   //         matchingDrivers
//   //             .where(
//   //               (final DriversLocation driver) => driver.coordinates != null && driver.coordinates!.latitude != null && driver.coordinates!.longitude != null,
//   //             )
//   //             .map((final DriversLocation driver) => LatLng(driver.coordinates!.latitude!, driver.coordinates!.longitude!))
//   //             .toList();

//   //     if (locations.isEmpty) {
//   //       return;
//   //     }

//   //     _loadDriverMarkers(locations, rideTypes[selectedTypeIndex].rideImage ?? '');
//   //   });
//   // }

//   // Future<void> _loadDriverMarkers(final List<LatLng> locations, final String imageUrl) async {
//   //   try {
//   //     final BitmapDescriptor icon = await _getBitmapDescriptorFromSvgUrl(imageUrl, size: 60);

//   //     final Set<Marker> newMarkers =
//   //         locations.map((final LatLng location) => Marker(markerId: MarkerId(location.toString()), position: location, icon: icon)).toSet();

//   //     _markers = newMarkers;
//   //     await _mapController?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: locations.first, zoom: 16)));
//   //   } catch (e) {
//   //     debugPrint('Error loading markers: $e');
//   //   }
//   // }

//   // Future<BitmapDescriptor> _getBitmapDescriptorFromSvgUrl(final String svgUrl, {required final int size}) async {
//   //   try {
//   //     // Fetch the SVG from network
//   //     final http.Response response = await http.get(Uri.parse(svgUrl));
//   //     if (response.statusCode != 200) {
//   //       throw Exception('Failed to load SVG from network: ${response.statusCode}');
//   //     }

//   //     final String svgString = response.body;

//   //     // Draw the SVG to a canvas and convert to bitmap
//   //     final PictureInfo pictureInfo = await vg.loadPicture(SvgStringLoader(svgString), null);
//   //     final ui.Image image = await pictureInfo.picture.toImage(size, size);
//   //     final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);

//   //     if (byteData == null) {
//   //       throw Exception('Failed to convert SVG to bitmap');
//   //     }

//   //     final Uint8List uint8List = byteData.buffer.asUint8List();
//   //     return BitmapDescriptor.bytes(uint8List);
//   //   } catch (e) {
//   //     debugPrint('Error creating bitmap descriptor: $e');
//   //     return BitmapDescriptor.defaultMarker;
//   //   }
//   // }
// }
