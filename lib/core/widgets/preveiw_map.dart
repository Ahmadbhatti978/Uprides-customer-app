import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../features/booking/model/ride_request.dart';
import '../../features/booking/select_ride/component/location_label.dart';
import '../../util/custom_painter/triangle.dart';
import '../../util/image_assets.dart';
import '../../util/variable.dart';
import '../extensions/duration.dart';
import '../map_functions/main_function.dart';
import 'google_map.dart';

class PreveiwMap extends StatefulWidget {
  const PreveiwMap({required this.rideRequest, super.key});
  final RideRequest rideRequest;

  @override
  State<PreveiwMap> createState() => _PreveiwMapState();
}

class _PreveiwMapState extends State<PreveiwMap> {
  late List<LatLng> latlngs;
  final UniqueKey key = UniqueKey(); // Forces the widget to rebuild from scratch
  GoogleMapController? _mapController;
  final List<Marker> _markers = <Marker>[];
  final List<Widget> infoWindows = <Widget>[];
  final ValueNotifier<bool> _mapUpdateNotifier = ValueNotifier(true);
  double zoom = 18;
  @override
  void initState() {
    super.initState();
    latlngs =
        // [
        //   widget.rideRequest.pickupLocation!.coordinates!.getLatLng!,
        //   widget.rideRequest.dropoffLocation!.coordinates!.getLatLng!,
        // ];
        widget.rideRequest.getPointsByPickupandDropoff();
    _addRouteMarkers();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => Future.delayed(
        Durations.long1,
        () => _mapController?.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              zoom: zoom,
              target: LatLng((latlngs.first.latitude + latlngs.last.latitude) / 2, (latlngs.first.longitude + latlngs.last.longitude) / 2),
              bearing: (simpleBearing(latlngs.first, latlngs.last) - 90) % 360,
            ),
          ),
          duration: Durations.long1,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _mapController?.dispose();
    _mapUpdateNotifier.dispose();
    super.dispose();
  }

  Widget buildInfoWindow(LatLng latLng, String title, {bool showTime = false}) => ValueListenableBuilder(
    valueListenable: _mapUpdateNotifier,
    builder: (final BuildContext context, final bool isMapReady, _) {
      if (!isMapReady || _mapController == null) {
        return const SizedBox.shrink();
      }

      return FutureBuilder<ScreenCoordinate>(
        future: _mapController!.getScreenCoordinate(latLng),
        builder: (final BuildContext context, final AsyncSnapshot<ScreenCoordinate> snapshot) {
          if (snapshot.connectionState != ConnectionState.done || snapshot.data == null) return const SizedBox.shrink();
          final double devicePixelRatio = Platform.isAndroid ? mediaQuery.devicePixelRatio : 1.0;
          final double left = snapshot.data!.x.toDouble() / devicePixelRatio;
          final double top = snapshot.data!.y.toDouble() / devicePixelRatio;

          return Positioned(
            left: left,
            top: top - ((showTime ? 70 : 90) + (title.length > 20 ? 20 : 0)),
            child: FractionalTranslation(
              translation: const Offset(-0.5, 0.1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  LocationLabel(place: showTime ? Duration(seconds: widget.rideRequest.totalEta ?? 0).toFormattedString(showSeconds: false) : title),
                  const CustomPaint(size: Size(12, 8), painter: TrianglePainter()),
                ],
              ),
            ),
          );
        },
      );
    },
  );

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
    infoWindows
      ..clear() // Clear previous windows if any
      ..add(buildInfoWindow(latlngs.first, "", showTime: true))
      ..add(buildInfoWindow(latlngs.last, widget.rideRequest.dropoffAddress ?? "123"));

    setState(() {}); // Trigger rebuild to show info windows
    _mapUpdateNotifier.value = false;
  }

  void _onMapCreated(final GoogleMapController controller) {
    _mapController = controller;
    _fitMapToPolylineAndMarkers();
  }

  Future<void> _fitMapToPolylineAndMarkers() async {
    await _mapController!.moveCamera(CameraUpdate.newLatLngBounds(createLatLngBounds(latlngs + (widget.rideRequest.route ?? [])), 55)).whenComplete(() {
      Future.delayed(Durations.short1, () async => zoom = await _mapController!.getZoomLevel());
    });

    _updateInfoWindows();
  }

  @override
  Widget build(final BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    return Stack(
      children: <Widget>[
        GMap(
          key: key,
          padding: EdgeInsets.zero,
          target: latlngs.first,
          onMapCreated: _onMapCreated,

          route: widget.rideRequest.route,
          markers: _markers.toSet(),
          update: _mapUpdateNotifier,
          //    circles: circles.toSet(),
        ),
        ...infoWindows,
      ],
    );
  }
}
