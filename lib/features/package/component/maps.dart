import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../booking/addlocation/model/place.dart';

class ConfirmLocations extends StatefulWidget {
  const ConfirmLocations({super.key, this.places, this.zoom = 14});
  final List<Place>? places;
  final double zoom;

  @override
  State<ConfirmLocations> createState() => _ConfirmLocationsState();
}

class _ConfirmLocationsState extends State<ConfirmLocations> {
  GoogleMapController? mapController;
  late final List<LatLng> locations;

  List<Marker> markers = <Marker>[];
  List<Widget> infoWindow = <Widget>[];
  ValueNotifier<bool> update = ValueNotifier(false);
  List<Place> placex = <Place>[];
  @override
  void initState() {
    super.initState();
    placex = List.from(widget.places ?? (ModalRoute.of(context)!.settings.arguments! as List<Place>));
    placex.removeWhere((final Place place) => place.location == null);

    locations = placex.map((final Place e) => LatLng(e.location!.latitude!, e.location!.longitude!)).toList();
    getPolylineMarkers(locations);
  }

  Future getPolylineMarkers(final List<LatLng> locations) async {
    // List<r.Route> route = [];
    // for (int i = 0; i < (locations.length); i++) {
    //   if (i < (locations.length - 1)) {
    //     route = await ConfirmLocationRepo.getRoute([locations.elementAt(i), locations.elementAt(i + 1)]);
    //     routes.add(route.first);
    //   }

    //   if (i != locations.length - 1) {
    //     markers.add(Marker(
    //         anchor: const Offset(0.5, 0.50),
    //         infoWindow: InfoWindow(title: route.first.duration),
    //         markerId: MarkerId(i.toString()),
    //         position: route.first.points!.first,
    //         icon:
    //             AssetMapBitmap(directionIcon.elementAt(i), imagePixelRatio: mediaQuery.devicePixelRatio, height: 30)));
    //   } else {
    //     markers.add(Marker(
    //         anchor: const Offset(0.5, 0.50),
    //         markerId: MarkerId(i.toString()),
    //         position: route.first.points!.last,
    //         infoWindow: InfoWindow(title: route.first.duration),
    //         icon: AssetMapBitmap(directionIcon.last, imagePixelRatio: mediaQuery.devicePixelRatio, height: 30)));
    //   }
    // }
    // _showCustomInfoWindows();
    setState(() {});
  }

  void _onMapCreated(final GoogleMapController controller) => mapController = controller;
  // Future<void> _showCustomInfoWindows() async {
  //   for (r.Route route in routes) {
  //     final pixelRatio = mediaQuery.devicePixelRatio;
  //     double left = 0.0;
  //     double top = 0.0;
  //     infoWindow.add(ValueListenableBuilder(
  //       valueListenable: update,
  //       builder: (context, value, child) => !value
  //           ? const SizedBox()
  //           : FutureBuilder(
  //               future: mapController!.getScreenCoordinate(route.points!.last),
  //               builder: (context, snapshot) {
  //                 if (snapshot.connectionState == ConnectionState.done) {
  //                   left = snapshot.data!.x / pixelRatio + 25;
  //                   top = snapshot.data!.y / pixelRatio - 25;

  //                   return Positioned(
  //                     left: left,
  //                     top: top,
  //                     child: Builder(builder: (context) {
  //                       return ClipRRect(
  //                         borderRadius: const BorderRadius.only(
  //                             topLeft: Radius.circular(8),
  //                             topRight: Radius.circular(8),
  //                             bottomRight: Radius.circular(8)),
  //                         child: Container(
  //                           color: Colors.white,
  //                           height: 32,
  //                           width: 117,
  //                           alignment: Alignment.center,
  //                           child: Text(
  //                             '${(route.distanceMeters! / 1000)} km ● ${route.duration!}',
  //                             style: const TextStyle(
  //                               color: Color(0xFF18C4B8),
  //                               fontSize: 12,
  //                               fontFamily: 'Open',
  //                               fontWeight: FontWeight.w700,
  //                             ),
  //                           ),
  //                         ),
  //                       );
  //                     }),
  //                   );
  //                 } else {
  //                   return Positioned(
  //                     left: left,
  //                     top: top,
  //                     child: Builder(builder: (context) {
  //                       return ClipRRect(
  //                         borderRadius: const BorderRadius.only(
  //                             topLeft: Radius.circular(8),
  //                             topRight: Radius.circular(8),
  //                             bottomRight: Radius.circular(8)),
  //                         child: Container(
  //                           color: Colors.white,
  //                           height: 32,
  //                           width: 117,
  //                           alignment: Alignment.center,
  //                           child: Text(
  //                             '${(route.distanceMeters! / 1000)} km ● ${route.duration!}',
  //                             style: const TextStyle(
  //                               color: Color(0xFF18C4B8),
  //                               fontSize: 12,
  //                               fontFamily: 'Open',
  //                               fontWeight: FontWeight.w700,
  //                             ),
  //                           ),
  //                         ),
  //                       );
  //                     }),
  //                   );
  //                 }
  //               }),
  //     ));
  //   }
  // }

  @override
  Widget build(final BuildContext context) => Stack(
      children: <Widget>[
        GoogleMap(
          fortyFiveDegreeImageryEnabled: true,
          myLocationEnabled: true,
          //  minMaxZoomPreference: const MinMaxZoomPreference(7, 30),
          initialCameraPosition: CameraPosition(target: locations.first, zoom: widget.zoom),
          onMapCreated: _onMapCreated,
          zoomControlsEnabled: false,
          //       minMaxZoomPreference: const MinMaxZoomPreference(-10, 10),
          gestureRecognizers: const <Factory<OneSequenceGestureRecognizer>>{Factory<OneSequenceGestureRecognizer>(EagerGestureRecognizer.new)},
          polylines: <Polyline>{
            const Polyline(
              endCap: Cap.roundCap,
              geodesic: true,
              jointType: JointType.round,
              polylineId: PolylineId('route1'),
              //routes.isNotEmpty ? routes.expand((route) => route.points!).toList() : [],
              width: 6,
            ),
          },
          onCameraMoveStarted: () => update.value = false,
          onCameraIdle: () => update.value = true,
          markers: markers.toSet(),
        ),
        ...infoWindow,
      ],
    );
}
