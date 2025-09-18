import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/extensions/duration.dart';
import '../../../../core/map_functions/main_function.dart';
import '../../../../core/widgets/google_map.dart';
import '../../../../util/custom_painter/triangle.dart';
import '../../../../util/image_assets.dart';
import '../../../../util/variable.dart';
import '../../addlocation/model/place.dart';
import '../../addlocation/notifier/pickedlocation.dart';
import '../../model/ride.dart';
import '../../provider/selected_ride.dart';
import 'location_label.dart';

class CMap extends ConsumerStatefulWidget {
  const CMap({this.cars = false, super.key});
  final bool cars;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CMapState();
}

class _CMapState extends ConsumerState<CMap> {
  Ride? selectedRide;
  late List<Place> places;
  late List<LatLng> latlngs;
  final UniqueKey key = UniqueKey(); // Forces the widget to rebuild from scratch
  GoogleMapController? _mapController;
  final List<Marker> _markers = <Marker>[];
  final List<Circle> circles = <Circle>[];
  final List<Widget> infoWindows = <Widget>[];
  final ValueNotifier<bool> _mapUpdateNotifier = ValueNotifier(true);
  double zoom = 18;
  @override
  void initState() {
    super.initState();
    _initializeData();
    _addRouteMarkers();

    // if (widget.cars) _markers.addAll(createRandomMarkers(generateRandomNearbyLocations(latlngs.first, 10), latlngs.first));

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => Future.delayed(Durations.long1, () {
        log(zoom.toString());
        return _mapController?.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              zoom: zoom,
              target: LatLng((latlngs.first.latitude + latlngs.last.latitude) / 2, (latlngs.first.longitude + latlngs.last.longitude) / 2),
              bearing: (simpleBearing(latlngs.first, latlngs.last) - 90) % 360,
            ),
          ),
          duration: Durations.long1,
        );
        // // return _mapController?.animateCamera(CameraUpdate.scrollBy(0, 125), duration: Durations.medium1);
      }),
    );
  }

  @override
  void dispose() {
    _mapController?.dispose();
    _mapUpdateNotifier.dispose();
    super.dispose();
  }

  Widget buildInfoWindow(final int index) => ValueListenableBuilder(
        valueListenable: _mapUpdateNotifier,
        builder: (final BuildContext context, final bool mapPosisitionChanged, _) {
          if (!mapPosisitionChanged || _mapController == null) {
            return const SizedBox.shrink();
          }

          return FutureBuilder<ScreenCoordinate>(
            future: _mapController!.getScreenCoordinate(latlngs[index]),
            builder: (final BuildContext context, final AsyncSnapshot<ScreenCoordinate> snapshot) {
              if (snapshot.connectionState != ConnectionState.done || snapshot.data == null) return const SizedBox.shrink();
              final double devicePixelRatio = Platform.isAndroid ? mediaQuery.devicePixelRatio : 1.0;
              final double left = snapshot.data!.x.toDouble() / devicePixelRatio;
              final double top = snapshot.data!.y.toDouble() / devicePixelRatio;

              return Positioned(
                left: left,
                top: top - (index == 0 ? 77 : (95 + (places[index].mainText!.length > 20 ? 20 : 0))),
                child: FractionalTranslation(
                  translation: const Offset(-0.5, 0.1),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      LocationLabel(
                        place: index == 0 ? Duration(seconds: rideRequest?.totalEta ?? 0).toFormattedString(showSeconds: false) : places[index].mainText ?? "",
                      ),
                      const CustomPaint(size: Size(12, 8), painter: TrianglePainter()),
                    ],
                  ),
                ),
              );
            },
          );
        },
      );

  void _initializeData() {
    selectedRide = ref.read(selectedRideProvider);
    places = ref.read(cleanedLocationsProvider);
    latlngs = rideRequest!.getRoutePoints();
  }

  void _addRouteMarkers() {
    final LatLng firstPosition = latlngs.first;
    _markers.add(_createMarker(id: 'start', position: firstPosition, iconPath: tealdirectionIcon.first, height: 60));

    final LatLng lastPosition = latlngs.last;
    _markers.add(_createMarker(id: 'destination', position: lastPosition, iconPath: pinPng, height: 60));
  }

  Marker _createMarker({required String id, required LatLng position, required String iconPath, required double height}) => Marker(
        anchor: const Offset(0.5, 0.77), // Adjust anchor as needed
        markerId: MarkerId(id),
        position: position,
        icon: AssetMapBitmap(iconPath, width: 30),
      );

  void _updateInfoWindows() {
    infoWindows.clear(); // Clear previous windows if any

    for (int i = 0; i < latlngs.length; i++) {
      infoWindows.add(buildInfoWindow(i));
    }

    setState(() {}); // Trigger rebuild to show info windows
    _mapUpdateNotifier.value = false;
  }

  void _onMapCreated(final GoogleMapController controller) {
    _mapController = controller;
    _fitMapToPolylineAndMarkers();
  }

  Future<void> _fitMapToPolylineAndMarkers() async {
    await _mapController!.moveCamera(CameraUpdate.newLatLngBounds(createLatLngBounds(latlngs + (rideRequest?.route ?? [])), 55)).whenComplete(() {
      Future.delayed(Durations.short1, () async => zoom = await _mapController!.getZoomLevel());
    });

    _updateInfoWindows();
  }

  @override
  Widget build(final BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(bottom: mediaQuery.size.height * .2),
      child: Stack(
        children: <Widget>[
          GMap(
            key: key,

            padding: EdgeInsets.only(bottom: mediaQuery.size.height - mediaQuery.size.width * 1.4, top: 32),
            target: latlngs.first,
            onMapCreated: _onMapCreated,

            route: rideRequest?.route,
            markers: _markers.toSet(),
            update: _mapUpdateNotifier,
            //    circles: circles.toSet(),
          ),
          ...infoWindows,
        ],
      ),
    );
  }
}
