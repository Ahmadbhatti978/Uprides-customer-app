import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/decode_poly.dart';
import '../../../../core/extensions/coor_to_latlng.dart';
import '../../../../util/colors.dart';
import '../../../../util/image_assets.dart';
import '../../../../util/variable.dart';
import '../../book_ride/socket/ride_socket.dart';
import '../../book_ride/socket/socket_m.dart';
import '../control/animation.dart';
import '../control/arring.dart';

/// A widget that displays a real-time map with route tracking and markers
/// for ride-sharing functionality during the arriving or ongoing ride state
class MapOnArriving extends ConsumerStatefulWidget {
  const MapOnArriving({required this.polyLine, required this.requestedRoute, this.rideId, this.isOnRoute = false, super.key});

  final String polyLine;
  final String? rideId;
  final bool isOnRoute;
  final List<LatLng> requestedRoute;

  @override
  ConsumerState<MapOnArriving> createState() => _MapOnArrivingState();
}

class _MapOnArrivingState extends ConsumerState<MapOnArriving> with TickerProviderStateMixin {
  // Constants
  static const double _initialZoom = 18;
  static const double _defaultMarkerHeight = 30;
  static const double _polylineWidth = 6;
  static const double _carMarkerZoomMultiplier = 1.5;
  static const int _zoomCalculationOffset = 8;

  // Controllers and State
  GoogleMapController? _mapController;
  RouteMapper? _routeMapper;
  ProviderSubscription<AsyncValue<SocketM>>? _socketListener;

  bool _isCameraTracking = true;

  // Route and Location State
  List<LatLng> _decodedRoutes = [];
  List<LatLng> _remainingRoute = [];
  LatLng _currentPosition = const LatLng(0, 0);
  double _currentBearing = 0;
  int _currentZoomLevel = 15;
  bool _isRerouting = false;

  // Markers
  final Set<Marker> _routeMarkers = {};

  @override
  void initState() {
    super.initState();
    _initializeMap();
  }

  @override
  void dispose() {
    _cleanupResources();
    super.dispose();
  }

  void _recenterCamera() {
    if (mounted) {
      setState(() {
        _isCameraTracking = true;
      });
      // Optional: Immediately snap back to the car's current position
      _updateCameraPosition(_currentPosition, _currentPosition); // Pass a dummy bearing reference
    }
  }

  /// Initialize map data and set up route tracking
  void _initializeMap() {
    try {
      _decodedRoutes = _decodePolyline();
      if (_decodedRoutes.isEmpty) {
        _logError('Empty decoded route');
        return;
      }

      _remainingRoute = List.from(_decodedRoutes);
      _currentPosition = _decodedRoutes.first;
      _routeMapper = RouteMapper(route: _decodedRoutes);

      _createRouteMarkers();
      _setupSocketListener();
    } catch (e, stackTrace) {
      _logError('Failed to initialize map', error: e, stackTrace: stackTrace);
    }
  }

  /// Decode the polyline string into LatLng coordinates
  List<LatLng> _decodePolyline() {
    try {
      return decodePoly(widget.polyLine);
    } catch (e) {
      _logError('Failed to decode polyline', error: e);
      return [];
    }
  }

  /// Set up real-time socket listener for location updates
  void _setupSocketListener() {
    final String? rideId = widget.rideId;
    if (rideId == null) return;

    _socketListener = ref.listenManual<AsyncValue<SocketM>>(ridSocketProvider(rideId), _handleSocketUpdate, fireImmediately: true);
  }

  /// Handle socket updates for real-time location tracking
  void _handleSocketUpdate(AsyncValue<SocketM>? previous, AsyncValue<SocketM> next) {
    next.when(
      data: _processLocationUpdate,
      error: (error, stackTrace) => _logError('Socket error', error: error, stackTrace: stackTrace),
      loading: () {}, // Handle loading state if needed
    );
  }

  /// Process new location data from socket
  void _processLocationUpdate(SocketM socketData) {
    if (!mounted || _routeMapper == null || socketData.location.latLng == null) {
      return;
    }

    try {
      _routeMapper!.processNewCoordinate(socketData.location!.latLng!, DateTime.now());

      final bool isRerouting = _routeMapper!.routeState == RouteState.rerouting;

      if (_isRerouting != isRerouting) {
        setState(() => _isRerouting = isRerouting);
      }
    } catch (e) {
      _logError('Failed to process location update', error: e);
    }
  }

  /// Create markers based on route type and requested stops
  void _createRouteMarkers() {
    _routeMarkers.clear();

    if (widget.isOnRoute) {
      _createOnRouteMarkers();
    } else {
      _createDestinationMarker();
    }
  }

  /// Create markers for when the ride is ongoing (multiple stops)
  void _createOnRouteMarkers() {
    for (int i = 0; i < widget.requestedRoute.length; i++) {
      final isLastStop = i == widget.requestedRoute.length - 1;
      final LatLng position = isLastStop ? _decodedRoutes.lastOrNull ?? widget.requestedRoute.last : widget.requestedRoute[i];
      final String icon = isLastStop ? directionIcon.last : directionIcon.elementAt(i);

      _routeMarkers.add(_createMarker(id: i.toString(), position: position, iconAsset: icon));
    }
  }

  /// Create a single destination marker
  void _createDestinationMarker() {
    final LatLng? destination = _decodedRoutes.lastOrNull;
    if (destination != null) {
      _routeMarkers.add(_createMarker(id: 'destination', position: destination, iconAsset: directionIcon.first));
    }
  }

  /// Create a marker with specified parameters
  Marker _createMarker({required String id, required LatLng position, required String iconAsset}) => Marker(
        markerId: MarkerId(id),
        position: position,
        anchor: const Offset(0.5, 0.5),
        icon: AssetMapBitmap(iconAsset, imagePixelRatio: mediaQuery.devicePixelRatio, height: _defaultMarkerHeight),
      );

  /// Update camera position when route changes
  void _updateCameraPosition(LatLng newPosition, LatLng bearingReference) {
    if (_currentPosition == newPosition) return;
    // Only animate the camera if tracking mode is enabled
    if (_isCameraTracking) {
      final cameraPosition = CameraPosition(
        target: newPosition,
        zoom: _currentZoomLevel.toDouble(), // Maintain the current zoom level
        bearing: _currentBearing,
      );

      // Use animateCamera for a smooth transition
      _mapController!.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    }
    _currentPosition = newPosition;
    _updateBearing(bearingReference, newPosition);
  }

  /// Calculate and update bearing for car rotation
  void _updateBearing(LatLng from, LatLng to) {
    if (from == to) return;

    final double newBearing = Geolocator.bearingBetween(from.latitude, from.longitude, to.latitude, to.longitude);

    if (newBearing != _currentBearing && newBearing != 0) {
      _currentBearing = newBearing;
    }
  }

  /// Handle camera movement and zoom level changes
  void _onCameraMove(CameraPosition position) {
    final int newZoomLevel = position.zoom.round();

    if (newZoomLevel != _currentZoomLevel && mounted) {
      setState(() => _currentZoomLevel = newZoomLevel);
    }
  }

  /// Create the car marker for current position
  Marker _createCarMarker(LatLng position) => Marker(
        markerId: MarkerId(position.hashCode.toString()),
        position: position,
        flat: true,
        anchor: const Offset(0.5, 0.5),
        rotation: _currentBearing,
        icon: AssetMapBitmap(topcarup, width: (_currentZoomLevel.toDouble() * _carMarkerZoomMultiplier - -_zoomCalculationOffset)),
      );

  /// Create polylines for the route
  Set<Polyline> _createPolylines(LatLng currentPosition) => {
        // Current progress polyline
        Polyline(
          polylineId: PolylineId('current_${currentPosition.hashCode}'),
          points: [_currentPosition, currentPosition],
          color: Colorx.primary,
          width: _polylineWidth.toInt(),
        ),
        // Remaining route polyline
        Polyline(
          polylineId: PolylineId('remaining_${_remainingRoute.length}'),
          points: _remainingRoute,
          color: _isRerouting ? Colors.grey : Colorx.primary,
          width: _polylineWidth.toInt(),
          jointType: JointType.round,
        ),
      };

  /// Build the error state UI
  Widget _buildErrorState() => const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 48, color: Colors.red),
            SizedBox(height: 16),
            Text('Failed to load route information', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            SizedBox(height: 8),
            Text('Please check your connection and try again', style: TextStyle(color: Colors.grey)),
          ],
        ),
      );

  /// Build the loading state UI
  Widget _buildLoadingState() => const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CircularProgressIndicator(), SizedBox(height: 16), Text('Loading route information...')],
        ),
      );

  /// Clean up resources to prevent memory leaks
  void _cleanupResources() {
    _socketListener?.close();
    _routeMapper?.dispose();
    _mapController?.dispose();
  }

  /// Log errors with consistent formatting
  void _logError(String message, {Object? error, StackTrace? stackTrace}) {
    log('MapOnArriving: $message', name: 'MapOnArriving', error: error, stackTrace: stackTrace);
  }

  @override
  Widget build(BuildContext context) {
    // Show loading state if route mapper is not ready
    if (_routeMapper == null || _decodedRoutes.isEmpty) {
      return _buildLoadingState();
    }

    return RepaintBoundary(
      child: SequentialAnimator(
        routeStream: _routeMapper!.routeStream,
        initialRoute: _decodedRoutes,
        onEnd: () => _logError('Ride completed'),
        onChanged: (route, bearingReference) {
          if (_remainingRoute != route) {
            _updateCameraPosition(route.first, bearingReference);
            setState(() => _remainingRoute = route);
          }
        },
        builder: (context, currentPosition) => GoogleMap(
          onCameraIdle: _recenterCamera,
          initialCameraPosition: CameraPosition(target: currentPosition, zoom: _initialZoom),
          onMapCreated: (controller) => _mapController = controller,
          onCameraMove: _onCameraMove,
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          markers: {_createCarMarker(currentPosition), ..._routeMarkers},
          polylines: _createPolylines(currentPosition),
        ),
      ),
    );
  }
}
