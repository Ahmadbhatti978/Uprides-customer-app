import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../core/failure/failure.dart';
import '../../../core/handle_events.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/loading_error/error.dart';
import '../../../core/widgets/loading_error/loading.dart';
import '../../../util/variable.dart';
import '../../home/model/ride_data.dart';
import '../book_ride/provider/ride_data.dart';
import 'component/map_on_arriving.dart';
import 'component/preveiw_ride_Info.dart';

/// Main widget for displaying the ongoing ride interface
/// Shows real-time map updates and ride information
class OnRide extends ConsumerWidget {
  const OnRide({super.key});

  // Constants
  static const double _minHeightRatio = 350;
  static const double _heightOffset = 0.1;
  static const double _maxChildSize = 0.93;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Set current route for navigation
    currentRoute = AppRoutes.onRide;

    // Extract route arguments

    final String? rideId = ModalRoute.of(context)!.settings.arguments as String?;

    if (rideId == null) {
      return _buildErrorState('Invalid ride ID');
    }

    return ref.watch(RideDataProvider(rideId)).when(
          data: (rideData) {
            RideStatus? rideState = RideStatus.fromString(rideData.data?.ride?.status);
            if (rideState != RideStatus.ongoing) {
              rideState = RideStatus.onroute;
            }

            return _buildRideInterface(context, rideData, rideId, rideState);
          },
          error: (error, stackTrace) => Err(error: error as ErrorDetails),
          loading: () => const Loading(),
        );
  }

  /// Build the main ride interface with map and ride info
  Widget _buildRideInterface(BuildContext context, RideData rideData, String rideId, RideStatus? rideState) {
    final double minChildSize = _minHeightRatio / mediaQuery.size.height;
    final _RouteConfiguration routeConfig = _extractRouteConfiguration(rideData, rideState);

    if (!routeConfig.isValid) {
      return _buildErrorState("Driver's route data or ride request information is missing");
    }

    return Material(
      key: ValueKey(rideState),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 340),
          child: _buildMapWidget(routeConfig, rideId, rideState),
        ),
        _buildDraggableSheet(context, minChildSize, rideData, rideState)
      ]),
    );
  }

  /// Build the map widget with route information
  Widget _buildMapWidget(_RouteConfiguration config, String rideId, RideStatus? rideState) =>
      MapOnArriving(polyLine: config.polyLine, rideId: rideId, requestedRoute: config.requestedRoute, isOnRoute: rideState == RideStatus.ongoing);

  /// Build the draggable bottom sheet with ride information
  Widget _buildDraggableSheet(BuildContext context, double minChildSize, RideData rideData, RideStatus? rideState) => DraggableScrollableSheet(
        initialChildSize: minChildSize + _heightOffset,
        maxChildSize: _maxChildSize,
        minChildSize: minChildSize,
        builder: (context, scrollController) =>
            PreveiwRideInfo(scrollController: scrollController, ride: rideData, rideState: rideState ?? RideStatus.accepted),
      );

  /// Extract and validate route configuration from ride data
  _RouteConfiguration _extractRouteConfiguration(RideData rideData, RideStatus? rideState) {
    final Data? data = rideData.data;
    if (data == null) return const _RouteConfiguration();

    final String? polyLine = _getPolyLineForRideState(data, rideState);
    if (polyLine == null || polyLine.isEmpty) {
      return const _RouteConfiguration();
    }

    final List<LatLng> requestedRoute = _buildRequestedRoute(data);

    return _RouteConfiguration(polyLine: polyLine, requestedRoute: requestedRoute, isValid: true);
  }

  /// Get the appropriate polyline based on ride state
  String? _getPolyLineForRideState(Data data, RideStatus? rideState) =>
      rideState == RideStatus.ongoing ? data.pickUpToDropOffPolyline : data.driverToPickUpPolyline;

  /// Build the list of requested route coordinates
  List<LatLng> _buildRequestedRoute(Data data) {
    final route = <LatLng>[];

    // Add pickup location
    final List<double>? pickupCoords = data.ride?.rideRequest?.pickupLocation?.coordinates;
    if (_isValidCoordinates(pickupCoords)) {
      route.add(LatLng(pickupCoords![1], pickupCoords[0]));
    }

    // Add stop locations
    final List<LatLng>? stops = data.ride?.rideRequest?.stopsEta
        ?.where((stop) => stop.stop?.latitude != null && stop.stop?.longitude != null)
        .map<LatLng>((stop) => LatLng(stop.stop!.latitude!, stop.stop!.longitude!))
        .toList();

    if (stops != null) {
      route.addAll(stops);
    }

    // Add dropoff location
    final List<double>? dropoffCoords = data.ride?.rideRequest?.dropoffLocation?.coordinates;
    if (_isValidCoordinates(dropoffCoords)) {
      route.add(LatLng(dropoffCoords![1], dropoffCoords[0]));
    }

    return route;
  }

  /// Validate coordinate array
  bool _isValidCoordinates(List<dynamic>? coordinates) => coordinates != null && coordinates.length >= 2;

  /// Build error state widget
  Widget _buildErrorState(String message) => ErrorW(error: ErrorDetails(stackTrace: StackTrace.current, message: message));
}

/// Data class for route configuration
class _RouteConfiguration {
  const _RouteConfiguration({this.polyLine = '', this.requestedRoute = const [], this.isValid = false});

  final String polyLine;
  final List<LatLng> requestedRoute;
  final bool isValid;
}
