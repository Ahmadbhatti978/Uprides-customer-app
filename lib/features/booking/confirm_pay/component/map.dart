import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/extensions/coor_to_latlng.dart';
import '../../../../core/widgets/google_map.dart';
import '../../../../util/colors.dart';
import '../../../../util/custom_painter/triangle.dart';
import '../../../../util/image_assets.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';
import '../../addlocation/model/place.dart';
import '../../addlocation/notifier/pickedlocation.dart';
import '../../model/ride.dart';
import '../../provider/selected_ride.dart';

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

  @override
  void initState() {
    super.initState();

    _initializeData();

    _addRouteMarkers(); // Add markers before creating info windows
    //    circleMarkers();
    if (widget.cars) _markers.addAll(createRandomMarkers(generateRandomNearbyLocations(latlngs.first, 10), latlngs.first));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Durations.medium4, () => _mapController?.animateCamera(CameraUpdate.scrollBy(0, 60), duration: Durations.medium1));
    });
  }

  @override
  void dispose() {
    _mapController?.dispose();
    _mapUpdateNotifier.dispose();
    super.dispose();
  }

  Widget buildInfoWindow(final int index) => ValueListenableBuilder(
    valueListenable: _mapUpdateNotifier,
    builder: (final BuildContext context, final bool isMapReady, _) {
      if (!isMapReady || _mapController == null) {
        return const SizedBox.shrink();
      }

      return FutureBuilder<ScreenCoordinate>(
        future: _mapController!.getScreenCoordinate(latlngs[index]),
        builder: (final BuildContext context, final AsyncSnapshot<ScreenCoordinate> snapshot) {
          if (snapshot.connectionState != ConnectionState.done || snapshot.data == null) {
            return const SizedBox.shrink();
          }

          final double devicePixelRatio = Platform.isAndroid ? mediaQuery.devicePixelRatio : 1.0;

          final double left = snapshot.data!.x.toDouble() / devicePixelRatio;
          final double top = snapshot.data!.y.toDouble() / devicePixelRatio;
       //   final bool isEndpoint = index == 0 || index == latlngs.length - 1;

          return Positioned(
            left: left,
            top: top - 98,
            child: FractionalTranslation(
              translation: const Offset(-0.5, .1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IntrinsicHeight(
                    child: Row(
                      children: <Widget>[
                        if (index != 0)
                          EtaContainer(
                            etaSeconds:
                                index == latlngs.length - 1 ? rideRequest?.totalEta : rideRequest?.stopsEta?.elementAtOrNull(index - 1)?.etaSeconds ?? 0,
                          ),
                        LocationLabel(place: places[index], isStartPoint: index == 0),
                      ],
                    ),
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
    places = <Place>[...ref.read(pickedlocationProvider)]..removeWhere((final Place place) => place.location == null);
    latlngs = places.map((final Place place) => place.location!.latLng!).toList();
  }

  void _addRouteMarkers() {
    // Start point marker
    final LatLng firstPosition = latlngs.first;
    _markers.add(_createMarker(id: 'start', position: firstPosition, iconPath: pinPng, height: 60));

    // // Intermediate points
    // for (int i = 1; i < (latlngs.length - 1); i++) {
    //   _markers.add(_createMarker(id: 'waypoint_$i', position: latlngs[i], iconPath: directionIcon.elementAt(i), height: 20));
    // }

    // End point marker
    final LatLng lastPosition = latlngs.last;
    _markers.add(_createMarker(id: 'destination', position: lastPosition, iconPath: pinPng, height: 60));
  }

  void circleMarkers() {
    circles
      ..addAll(createSmallCircles(id: 'start', position: latlngs.first))
      ..addAll(createSmallCircles(id: 'end', position: latlngs.last));
  }

  Marker _createMarker({required String id, required LatLng position, required String iconPath, required double height}) => Marker(
    anchor: const Offset(0.5, 0.77), // Adjust anchor as needed
    markerId: MarkerId(id),
    position: position,
    icon: AssetMapBitmap(iconPath, width: 30),
  );
  List<Circle> createSmallCircles({required String id, required LatLng position, double radius = 1}) => [
    Circle(
      circleId: CircleId(id),
      center: position,
      radius: 5,
      fillColor: const Color.fromARGB(255, 24, 196, 185),

      strokeColor: const Color.fromARGB(255, 24, 196, 185),
    ),
    // Circle(
    //   circleId: CircleId("${id}oiop"),
    //   center: position,
    //   radius: 1,
    //   fillColor: const Color.fromARGB(255, 24, 196, 185),
    //   strokeWidth: 20,
    //   strokeColor: const Color.fromARGB(183, 24, 196, 185),
    // ),
  ];

  void _updateInfoWindows() {
    infoWindows.clear(); // Clear previous windows if any

    for (int i = 0; i < latlngs.length; i++) {
      infoWindows.add(buildInfoWindow(i));
    }

    setState(() {}); // Trigger rebuild to show info windows
    _mapUpdateNotifier.value = false;
  }

  Future<void> _onMapCreated(final GoogleMapController controller) async {
    _mapController = controller;

    await _fitMapToPolylineAndMarkers();
  }

  Future<void> _fitMapToPolylineAndMarkers() async {
    await _mapController!.moveCamera(CameraUpdate.newLatLngBounds(_createLatLngBounds(latlngs + (rideRequest?.route ?? [])), 125));

    // await _mapController!.moveCamera(CameraUpdate.scrollBy(0, 50));
    _updateInfoWindows();
  }

  LatLngBounds _createLatLngBounds(final List<LatLng> points) {
    assert(points.isNotEmpty);
    double x0 = points.first.latitude;
    double x1 = points.first.latitude;
    double y0 = points.first.longitude;
    double y1 = points.first.longitude;

    for (final LatLng latLng in points) {
      if (latLng.latitude > x1) x1 = latLng.latitude;
      if (latLng.latitude < x0) x0 = latLng.latitude;
      if (latLng.longitude > y1) y1 = latLng.longitude;
      if (latLng.longitude < y0) y0 = latLng.longitude;
    }

    return LatLngBounds(southwest: LatLng(x0, y0), northeast: LatLng(x1, y1));
  }

  @override
  Widget build(final BuildContext context) {
    mediaQuery = MediaQuery.of(context);

    return Stack(
      children: <Widget>[
        GMap(
          key: key,
          padding: EdgeInsets.only(bottom: mediaQuery.size.height * 0.27),
          target: latlngs.first,
          onMapCreated: _onMapCreated,

          route: [latlngs.first, ...?(rideRequest?.route), latlngs.last],
          markers: _markers.toSet(),
          update: _mapUpdateNotifier,
          //    circles: circles.toSet(),
        ),
        ...infoWindows,
      ],
    );
  }
}

// Returns a list of random LatLng coordinates within 1km of the center point
List<LatLng> generateRandomNearbyLocations(LatLng center, int count) {
  const double radiusInMeters = 1000;
  final Random random = Random();
  const double radiusInDegrees = radiusInMeters / 111320.0; // Approximate conversion

  final List<LatLng> locations = [];
  for (int i = 0; i < count; i++) {
    // Random distance and angle
    final double u = random.nextDouble();
    final double v = random.nextDouble();
    final double w = radiusInDegrees * sqrt(u);
    final double t = 2 * pi * v;
    final double x = w * cos(t);
    final double y = w * sin(t);

    // Adjust the x-coordinate for the shrinking of the east-west distances
    final double newX = x / cos(center.latitude * pi / 180);

    final double foundLongitude = center.longitude + newX;
    final double foundLatitude = center.latitude + y;

    locations.add(LatLng(foundLatitude, foundLongitude));
  }
  return locations;
}

List<Marker> createRandomMarkers(List<LatLng> locations, LatLng to) =>
    locations
        .map(
          (final LatLng location) => Marker(
            markerId: MarkerId(location.toString()),
            position: location,
            rotation: simpleBearing(location, to),
            icon: AssetMapBitmap(randomCar, imagePixelRatio: mediaQuery.devicePixelRatio, height: 30),
          ),
        )
        .toList();
double simpleBearing(LatLng from, LatLng to) {
  final double dy = to.latitude - from.latitude;
  final double dx = to.longitude - from.longitude;
  return (atan2(dx, dy) * 180 / pi + 360) % 360;
}

class EtaContainer extends StatelessWidget {
  const EtaContainer({super.key, this.etaSeconds});

  final int? etaSeconds;

  @override
  Widget build(BuildContext context) {
    final int minutes = Duration(seconds: etaSeconds ?? 0).inMinutes;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: p12),
      color: Colors.white,
      child:
          minutes < 61
              ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text(minutes.toString(), style: Cyan.headingSmall), Text(l10n.min, style: Secondary.bodySmll)],
              )
              : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Text(Duration(seconds: etaSeconds ?? 0).inHours.toString(), style: Bold.titleBig),
                      Text(Duration(seconds: etaSeconds ?? 0).inHours > 1 ? l10n.hrs : l10n.hr, style: Secondary.bodySmll),
                    ],
                  ),
                  Row(children: [Text((minutes % 60).toString(), style: Bold.titleBig), Text(l10n.min, style: Secondary.bodySmll)]),
                ],
              ),
    );
  }
}

class LocationLabel extends StatelessWidget {
  const LocationLabel({required this.place, required this.isStartPoint, super.key});

  final Place place;
  final bool isStartPoint;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    margin: isStartPoint ? const EdgeInsets.only(top: 5) : EdgeInsets.zero,

    decoration: BoxDecoration(color: primary, borderRadius: isStartPoint ? BorderRadius.circular(12) : null),
    alignment: Alignment.center,
    child: Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: mediaQuery.size.width * 0.45, minWidth: 50, maxHeight: 64, minHeight: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              place.mainText ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis, // Changed from clip
              softWrap: true,
              textAlign: TextAlign.center,
              style: White.titleLarge,
            ),
          ],
        ),
      ),
    ),
  );
}
