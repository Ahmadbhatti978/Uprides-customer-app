import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../config/maintainence.dart';
import '../../core/constants/constants.dart';
import '../../core/extensions/coor_to_latlng.dart';
import '../../core/extensions/date.dart';
import '../../core/failure/failure.dart';
import '../../core/model/stops_eta.dart';
import '../../core/router/route.dart';
import '../../core/service_not_available.dart';
import '../../core/widgets/align/pickup_drop_location.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../core/widgets/google_map.dart';
import '../../core/widgets/loading_error/error.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../../util/widget/widgets.dart';
import 'addlocation/model/place.dart';
import 'model/ride_request.dart';
import 'provider/request_provider.dart';

class ConfirmLocations extends StatefulWidget {
  const ConfirmLocations({required this.places, super.key});
  final List<Place> places;

  @override
  State<ConfirmLocations> createState() => _ConfirmLocationsState();
}

class _ConfirmLocationsState extends State<ConfirmLocations> {
  GoogleMapController? mapController;
  // final List<LatLng> routes = [];
  List<Marker> markers = <Marker>[];
  List<Widget> infoWindow = <Widget>[];
  ValueNotifier<bool> update = ValueNotifier(false);
  List<Place> placex = <Place>[];

  @override
  void initState() {
    super.initState();
    placex = <Place>[...widget.places];
    placex.removeWhere((final Place place) => place.location == null);
    addMarker();
  }

  @override
  void dispose() {
    mapController?.dispose();
    update.dispose();
    super.dispose();
  }

  void addMarker() {
    for (int i = 0; i < (placex.length); i++) {
      if (i != placex.length - 1) {
        markers.add(
          Marker(
            anchor: const Offset(0.5, 0.50),

            markerId: MarkerId(i.toString()),
            position: placex.elementAt(i).location!.latLng!,
            icon: AssetMapBitmap(directionIcon.elementAt(i), imagePixelRatio: mediaQuery.devicePixelRatio, height: 30),
          ),
        );
      } else {
        markers.add(
          Marker(
            anchor: const Offset(0.5, 0.50),
            markerId: MarkerId(i.toString()),
            position: placex.last.location!.latLng!,
            icon: AssetMapBitmap(directionIcon.last, imagePixelRatio: mediaQuery.devicePixelRatio, height: 30),
          ),
        );
      }
    }
  }

  void _onMapCreated(final GoogleMapController controller) {
    mapController = controller;
    bound();
  }

  void bound() {
    final List<LatLng> latLngs = placex.map((final Place p) => p.location.latLng).whereType<LatLng>().toList();

    if (latLngs.isEmpty) {
      return;
    }

    double minLat = latLngs.first.latitude;
    double maxLat = latLngs.first.latitude;
    double minLng = latLngs.first.longitude;
    double maxLng = latLngs.first.longitude;

    for (final LatLng latLng in latLngs) {
      minLat = min(minLat, latLng.latitude);
      maxLat = max(maxLat, latLng.latitude);
      minLng = min(minLng, latLng.longitude);
      maxLng = max(maxLng, latLng.longitude);
    }

    // Create bounds correctly by determining min/max values
    final LatLngBounds bounds = LatLngBounds(southwest: LatLng(minLat, minLng), northeast: LatLng(maxLat, maxLng));

    // Add padding around the points
    mapController?.moveCamera(CameraUpdate.newLatLngBounds(bounds, 90));
  }

  Future<void> _showCustomInfoWindows(final RideRequest ridex) async {
    for (final StopsEta stops in <StopsEta>[...ridex.stopsEta!, StopsEta(stop: placex.last.location, etaSeconds: ridex.totalEta)]) {
      final num pixelRatio = Platform.isIOS ? 1 : mediaQuery.devicePixelRatio;
      double left = 0;
      double top = 0;
      infoWindow.add(
        ValueListenableBuilder(
          valueListenable: update,
          builder:
              (final BuildContext context, final bool value, final Widget? child) =>
                  !value
                      ? const SizedBox.shrink()
                      : FutureBuilder(
                        future: mapController?.getScreenCoordinate(stops.stop!.latLng!),
                        builder: (final BuildContext context, final AsyncSnapshot<ScreenCoordinate> snapshot) {
                          if (snapshot.connectionState == ConnectionState.done && snapshot.data != null) {
                            left = snapshot.data!.x.toDouble() / pixelRatio + 20;
                            top = snapshot.data!.y.toDouble() / pixelRatio - 50;

                            return Positioned(
                              left: left,
                              top: top,
                              child: Container(
                                height: 32,
                                padding: const EdgeInsets.only(left: 10, right: 12),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  formatDuration(Duration(seconds: stops.etaSeconds!)),
                                  style: const TextStyle(color: Color(0xFF18C4B8), fontSize: 12, fontFamily: 'Open', fontWeight: FontWeight.w700),
                                ),
                              ),
                            );
                          } else {
                            return const SizedBox.shrink();
                            // return Positioned(
                            //   left: left,
                            //   top: top,
                            //   child: Builder(
                            //     builder: (context) {
                            //       return ClipRRect(
                            //         borderRadius: const BorderRadius.only(
                            //           topLeft: Radius.circular(8),
                            //           topRight: Radius.circular(8),
                            //           bottomRight: Radius.circular(8),
                            //         ),
                            //         child: Container(
                            //           color: Colors.white,
                            //           height: 32,
                            //           width: 117,
                            //           alignment: Alignment.center,
                            //           child: Text(
                            //             '${(route.distanceMeters! / 1000)} km ● ${route.duration!}',
                            //             style: const TextStyle(color: Color(0xFF18C4B8), fontSize: 12, fontFamily: 'Open', fontWeight: FontWeight.w700),
                            //           ),
                            //         ),
                            //       );
                            //     },
                            //   ),
                            // );
                          }
                        },
                      ),
        ),
      );
    }
  }

  // Future getPolylineMarkers(List<LatLng> locations) async {
  //   polylines = "";
  //   for (int i = 0; i < (locations.length); i++) {
  //     if (i < (locations.length - 1)) {
  //       // ignore: specify_nonobvious_local_variable_types
  //       final route = await AddLocationRepo.getRoute([locations.elementAt(i), locations.elementAt(i + 1)]);

  //       if (route.first.polyline?.encodedPolyline != null) {
  //         routes.addAll(decodePoly(route.first.polyline!.encodedPolyline!));
  //         polylines = polylines + route.first.polyline!.encodedPolyline!;
  //       }
  //     }
  //   }
  // }

  @override
  Widget build(final BuildContext context) {
    if (!availability.enableRide) return const Maintain();
    return Material(
      child: SafeArea(
        top: false,
        maintainBottomViewPadding: true,
        minimum: const EdgeInsets.only(bottom: p12),
        child: Consumer(
          builder:
              (final BuildContext context, final WidgetRef ref, final Widget? child) => ref
                  .watch(RequestRideProvider())
                  .when(
                    data: (final RideRequest data) {
                      rideRequest = data;
                      _showCustomInfoWindows(data);
                      return Center(
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: mediaQuery.size.height * .2),
                              child: AnimatedGMapRoute(
                                animatedRoutePoints: data.route ?? [],
                                target: placex.first.location!.latLng!,
                                onMapCreated: _onMapCreated,
                                routePoints: <LatLng>[placex.first.location!.latLng!, ...?data.route, placex.last.location!.latLng!],
                                markers: markers.toSet(),
                                update: update,
                              ),
                            ),
                            RepaintBoundary(
                              child: TweenAnimationBuilder(
                                tween: Tween(begin: .3, end: .1),
                                duration: Durations.medium3,
                                builder:
                                    (final BuildContext context, final double value, final Widget? child) =>
                                        value <= .13
                                            ? const SizedBox.shrink()
                                            : BackdropFilter(
                                              filter: ImageFilter.blur(sigmaX: value * 7, sigmaY: value * 7),

                                              child: Container(
                                                width: mediaQuery.size.width,
                                                height: mediaQuery.size.height - 200,
                                                decoration: BoxDecoration(color: Color.fromARGB((value * 333).toInt(), 200, 200, 200)),
                                              ),
                                            ),
                              ),
                            ),
                            ...infoWindow,
                            Align(alignment: Alignment.bottomCenter, child: ConfirmLocationSheet(placex: placex, rideId: data.rideId)),
                          ],
                        ),
                      );
                    },
                    error:
                        (final Object error, final StackTrace stackTrace) =>
                            (error is ErrorDetails && error.apiStatusCode == 422) ? const ServiceNotAvailable() : Err(error: error, stackTrace: stackTrace),

                    loading:
                        () => Stack(
                          children: <Widget>[
                            GMap(target: placex.first.location!.latLng!, onMapCreated: _onMapCreated, markers: markers.toSet(), update: update),
                            BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 2.1, sigmaY: 2.1),
                              child: Container(
                                width: mediaQuery.size.width,
                                height: mediaQuery.size.height - 200,
                                color: const Color.fromARGB(100, 200, 200, 200),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 10,
                              children: <Widget>[
                                Text(l10n.finding_best_route, style: Default.heading),
                                const Padding(padding: EdgeInsets.symmetric(horizontal: padding), child: LinearProgressIndicator()),
                              ],
                            ),
                            Align(alignment: Alignment.bottomCenter, child: ConfirmLocationSheet(placex: placex)),
                          ],
                        ),
                  ),
        ),
      ),
    );
  }
}

class ConfirmLocationSheet extends StatelessWidget {
  const ConfirmLocationSheet({required this.placex, super.key, this.rideId});

  final List<Place> placex;
  final String? rideId;

  @override
  Widget build(final BuildContext context) => Material(
    child: DraggableScrollableSheet(
      initialChildSize: (54 / mediaQuery.size.height) * placex.length + .16,
      maxChildSize: (54 / mediaQuery.size.height) * placex.length + .18,
      minChildSize: 0.2,
      expand: false,
      builder:
          (final BuildContext context, final ScrollController scrollController) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(horizontal: horizontalSpacing),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      sbuildHandle,
                      Text(l10n.confirm_locations, style: Default.headingSmall),
                      const Gap(8),
                      Locations(places: placex, showDivider: false),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: p24, left: padding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextButton.icon(
                      onPressed: () => Navigator.pop(context),
                      label: Text(l10n.back, style: Default.titleLarge),
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 3,
                      child: BlackButton(
                        text: l10n.confirm_locations,
                        isLoading: rideId == null,
                        onPressed: () => Navigator.pushNamed(context, AppRoutes.choose, arguments: rideId),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
    ),
  );
}
