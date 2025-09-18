import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../constants/constants.dart';

class GMap extends StatelessWidget {
  const GMap({
    required this.target,
    super.key,
    this.onMapCreated,
    this.markers,
    this.update,
    this.onCameraMove,
    this.animatedPolylines,
    this.route,
    this.circles,
    this.padding = const EdgeInsets.only(bottom: 20),
  });
  final LatLng target;
  final void Function(GoogleMapController)? onMapCreated;
  final List<LatLng>? route;
  final ValueNotifier<bool>? update;
  final Function(CameraPosition)? onCameraMove;
  final Set<Marker>? markers;
  final Set<Circle>? circles;
  final Set<Polyline>? animatedPolylines;
  final EdgeInsets padding;

  @override
  Widget build(final BuildContext context) => GoogleMap(
    onCameraMove: onCameraMove,
    key: key,
    circles: circles ?? <Circle>{},
    myLocationEnabled: true,
    myLocationButtonEnabled: false,
    minMaxZoomPreference: const MinMaxZoomPreference(5, 30),
    initialCameraPosition: CameraPosition(target: target, zoom: 14),
    onMapCreated: onMapCreated,
    zoomControlsEnabled: false,
    padding: padding,
    polylines:
        animatedPolylines != null && animatedPolylines!.isNotEmpty
            ? animatedPolylines!
            : <Polyline>{
              Polyline(
                endCap: Cap.roundCap,
                geodesic: true,
                polylineId: const PolylineId('route1'),
                points: route ?? <LatLng>[],
                startCap: Cap.roundCap,
                width: 6,
              ),
            },
    onCameraMoveStarted: () {
      if (update?.value != null) {
        update!.value = false;
      }
    },
    onCameraIdle: () {
      if (update?.value != null) {
        update!.value = true;
      }
    },
    markers: markers ?? <Marker>{},
  );
}

class AnimatedGMapRoute extends StatefulWidget {
  const AnimatedGMapRoute({
    required this.target,
    required this.routePoints,
    required this.animatedRoutePoints,
    super.key,
    this.onMapCreated,
    this.markers,
    this.onCameraMove,
    this.update,
  });
  final LatLng target;
  final List<LatLng> routePoints;
  final List<LatLng> animatedRoutePoints;
  final void Function(GoogleMapController)? onMapCreated;
  final Set<Marker>? markers;
  final Function(CameraPosition)? onCameraMove;
  final ValueNotifier<bool>? update;

  @override
  State<AnimatedGMapRoute> createState() => _AnimatedGMapRouteState();
}

class _AnimatedGMapRouteState extends State<AnimatedGMapRoute> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  int length = 0;
  int pcolor = 0;
  int pIndex = 0;
  int i = 0;
  bool extraDelay = false;
  bool future = false;
  int index = 0;
  int color = 0;
  bool cameraMove = false;
  int width = 4;
  final UniqueKey key = UniqueKey();
  @override
  void initState() {
    super.initState();
    length = widget.animatedRoutePoints.length;
    _controller = AnimationController(duration: const Duration(milliseconds: 1594), vsync: this);
    _controller
      ..addListener(updateAnimation)
      ..addStatusListener(statusListner)
      ..forward();
  }

  void updateAnimation() {
    pcolor = (255 * (1 - _controller.value * 0.8)).toInt();
    pIndex = (length * _controller.value).ceil();
    if (pcolor != color && pIndex != index && !cameraMove && !_controller.isDismissed) {
      setState(() {
        index = pIndex;
        color = pcolor;
      });
    }
  }

  void statusListner(final AnimationStatus s) {
    if (s == AnimationStatus.completed && !cameraMove && !_controller.isDismissed && !future) {
      i++;
      future = true;
      Future.delayed(
        Duration(
          seconds:
              extraDelay
                  ? 10
                  : i % 3 == 0
                  ? 6
                  : 3,
        ),
        () {
          // Check if the widget is still mounted before proceeding
          if (!mounted) return;
          future = false;
          extraDelay = false;
          if (s == AnimationStatus.completed && !cameraMove && !_controller.isDismissed) {
            _controller.forward(from: 0);
          }
        },
      );
    }
  }

  @override
  void dispose() {
    _controller
      ..removeListener(updateAnimation)
      ..removeStatusListener(statusListner)
      ..dispose();

    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => GoogleMap(
    key: key,

    onCameraMove: (final CameraPosition c) {
      if (c.zoom.toInt() < 14 && width != 3) {
        setState(() => width = 3);
      } else if (c.zoom.toInt() > 14 && width != 4) {
        setState(() => width = 4);
      }

      if (i != 0) {
        cameraMove = true;
      }
    },
    padding: const EdgeInsets.fromLTRB(padding, kToolbarHeight + padding * 2, padding, 200),
    compassEnabled: false,
    markers: widget.markers ?? <Marker>{},
    fortyFiveDegreeImageryEnabled: true,
    mapToolbarEnabled: false,
    myLocationButtonEnabled: false,
    minMaxZoomPreference: const MinMaxZoomPreference(7.5, 30),
    initialCameraPosition: CameraPosition(target: widget.target, zoom: 14),
    onMapCreated: widget.onMapCreated,
    zoomControlsEnabled: false,
    polylines: <Polyline>{
      Polyline(
        polylineId: PolylineId('gradientPolylinen $color'), // Fixed ID
        points: widget.routePoints,
        color: Color.fromRGBO(color, color, color, 1),
        width: width,
        // geodesic: true,
        jointType: JointType.round,
      ),
      Polyline(
        polylineId: PolylineId('movingPolyline $index'), // Fixed ID
        points: widget.animatedRoutePoints.sublist(index, length),
        width: width,
        startCap: Cap.roundCap,
        endCap: Cap.roundCap,
        //geodesic: true,
        jointType: JointType.round,
      ),
    },

    onCameraMoveStarted: onCameraMoveStarted,
    onCameraIdle: onCameraIdle,
  );

  void onCameraIdle() {
    if (!mounted) return; // Prevent processing if disposed
    if (!_controller.isAnimating) {
      index = 0;
      color = 0;
      cameraMove = false;
      extraDelay = true;
      statusListner(AnimationStatus.completed);
    }
    if (widget.update?.value != null) {
      widget.update!.value = true;
    }
  }

  void onCameraMoveStarted() {
    if (!cameraMove) {
      setState(() {
        color = 0;
        index = 0;
        cameraMove = true;
      });
    }
    _controller.stop();
    if (widget.update?.value != null) {
      widget.update!.value = false;
    }
  }
}
