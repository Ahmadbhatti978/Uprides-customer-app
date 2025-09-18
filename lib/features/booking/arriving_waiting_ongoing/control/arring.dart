import 'dart:async';
import 'dart:collection';
import 'dart:developer' as developer;
import 'dart:math' show max, min;
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/decode_poly.dart';
import '../../../../core/extensions/coordinate.dart';
import '../../../../core/extensions/list__of_latlng.dart';
import '../../../../core/model/coordinate_data.dart';
import '../../../home/model/compute_routes.dart';
import '../../addlocation/repo/add_location_repo.dart';

// ========================= ENUMS & CONFIGS =========================

enum RouteState { onOriginal, onAlternative, rerouting }

class RouteMapperConfig {
  static const int maxPolylineIndexJump = 70;
  static const Duration minCoordinateProcessInterval = Duration(milliseconds: 100);
  static const Duration pathResetInactivityDuration = Duration(minutes: 1);
  static const double minDeviationDistanceForReroute = 20;
  static const double immediateRerouteThreshold = 200;
  static const int minDeviationsForRerouteCheck = 6;
  static const int minNetDeviationIncreasesForTrend = 2;
  static const Duration rerouteTimeout = Duration(seconds: 10);
  static const double alternativeRouteMatchThreshold = 0.5;
  static const double targetCoordinateSpacing = 10;
}

// =================== CLOSEST POINT RESULT DATA CLASS ===================

class ClosestPointResult {
  const ClosestPointResult({required this.index, required this.distance});
  final int index;
  final double distance;
  bool get isValid => index != -1;
}

// ===================== ALTERNATIVE ROUTES MANAGER ======================

class AlternativeRoutesManager {
  factory AlternativeRoutesManager() => _instance;
  AlternativeRoutesManager._internal();
  static final AlternativeRoutesManager _instance = AlternativeRoutesManager._internal();

  final List<List<LatLng>> _routes = [];
  List<List<LatLng>> get routes => UnmodifiableListView(_routes);

  void addRoute(List<LatLng> route) => _routes.add(List.unmodifiable(route));
  void addRoutes(List<List<LatLng>> routes) => _routes.addAll(routes.map(List.unmodifiable));
  void clear() => _routes.clear();
  int get length => _routes.length;
  List<LatLng> operator [](int index) => _routes[index];
}

// ========================== DEVIATION TRACKER ==========================

class DeviationTracker {
  final List<double> _distances = [];
  final List<(LatLng, DateTime)> _coordinates = [];

  List<double> get distances => UnmodifiableListView(_distances);
  List<(LatLng, DateTime)> get coordinates => UnmodifiableListView(_coordinates);
  bool get isEmpty => _coordinates.isEmpty;
  int get length => _coordinates.length;
  (LatLng, DateTime) get first => _coordinates.first;
  (LatLng, DateTime) get last => _coordinates.last;

  void addDeviation(LatLng coordinate, DateTime time, double distance) {
    _coordinates.add((coordinate, time));
    if (distance >= 0) _distances.add(distance);
  }

  void clear() {
    _distances.clear();
    _coordinates.clear();
  }

  bool hasSignificantTrend() {
    if (_distances.length < 2) return false;
    int netIncreases = 0;
    for (int i = 1; i < _distances.length; i++) {
      if (_distances[i] > _distances[i - 1]) {
        netIncreases++;
      } else if (_distances[i] < _distances[i - 1]) {
        netIncreases--;
      }
    }
    return netIncreases >= RouteMapperConfig.minNetDeviationIncreasesForTrend;
  }
}

// =========================== ROUTE MAPPER ==============================

class RouteMapper {
  RouteMapper({required List<LatLng> route}) : _originalRoute = List.unmodifiable(route), _activeRoute = List.unmodifiable(route), _activeRoutePolyIndex = -1 {
    _routeStreamController = StreamController<List<CoordinateData>>.broadcast();
    _lastMatchedIndexOnActiveRoute = _activeRoute.length ~/ 2;
    if (route.isEmpty) {
      developer.log('RouteMapper initialized with an empty route.', name: 'RouteMapper', level: 800);
    }
  }

  // --------- Private Fields ---------
  final List<LatLng> _originalRoute;
  final AlternativeRoutesManager _alternativeRoutes = AlternativeRoutesManager();
  final DeviationTracker _deviationTracker = DeviationTracker();
  final Queue<CoordinateData> _mappedRoutes = Queue<CoordinateData>();

  late final StreamController<List<CoordinateData>> _routeStreamController;
  List<LatLng> _activeRoute;
  int _activeRoutePolyIndex;
  RouteState _routeState = RouteState.onOriginal;
  DateTime? _lastCoordinateProcessTime;
  int _lastMatchedIndexOnActiveRoute = 0;

  // --------- Public Getters ---------
  List<LatLng> get originalRoute => _originalRoute;
  RouteState get routeState => _routeState;
  Stream<List<CoordinateData>> get routeStream => _routeStreamController.stream;

  // ================= CORE LOGIC =================

  Future<void> processNewCoordinate(LatLng latLng, DateTime time) async {
    if (_activeRoute.isEmpty) {
      developer.log("Cannot process coordinate: active route is empty.", name: 'RouteMapper');
      return;
    }
    if (!_canProcessAtThisTime(time)) return;

    if (_routeState == RouteState.rerouting) {
      _deviationTracker.addDeviation(latLng, time, -1);
      return;
    }

    final ClosestPointResult result = _findClosestPointOnRoute(target: latLng, searchStartIndex: _lastMatchedIndexOnActiveRoute, routeToSearch: _activeRoute);

    if (await _handleLargeDeviation(latLng, time, result.distance)) return;

    final bool wasMapped = _mapCoordinateToActiveRoute(latLng, time, result);
    _lastCoordinateProcessTime = time;
    if (wasMapped) {
      _deviationTracker.clear();
      _sendMappedCoordinates();
    } else {
      await _checkForDeviationTrend();
    }
  }

  Future<bool> _handleLargeDeviation(LatLng latLng, DateTime time, double distance) async {
    if (distance <= RouteMapperConfig.immediateRerouteThreshold) return false;

    developer.log(
      'Large deviation detected (${distance.toStringAsFixed(1)}m > ${RouteMapperConfig.immediateRerouteThreshold}m). Triggering immediate reroute.',
      name: 'RouteMapper',
    );

    _deviationTracker.addDeviation(latLng, time, distance);
    await _handleRouteDeviation();
    return true;
  }

  Future<void> _checkForDeviationTrend() async {
    if (_deviationTracker.length >= RouteMapperConfig.minDeviationsForRerouteCheck && _deviationTracker.hasSignificantTrend()) {
      developer.log("Significant deviation trend detected.", name: 'RouteMapper');
      await _handleRouteDeviation();
    }
  }

  bool _mapCoordinateToActiveRoute(LatLng latLng, DateTime time, ClosestPointResult result) {
    if (!result.isValid || result.distance > RouteMapperConfig.minDeviationDistanceForReroute) {
      _deviationTracker.addDeviation(latLng, time, result.distance);
      return false;
    }
    if (_mappedRoutes.isEmpty) {
      _handleJumpOnCurrentRoute(time, result.index);
      return true;
    }
    final int indexDifference = (result.index - _lastMatchedIndexOnActiveRoute).abs();

    final bool distanceDiff =
        _activeRoute.elementAt(_lastMatchedIndexOnActiveRoute).distanceTo(latLng) > (RouteMapperConfig.minDeviationDistanceForReroute * 15);
    developer.log(
      "  distance ${_activeRoute.elementAt(_lastMatchedIndexOnActiveRoute).distanceTo(latLng)}m.   index diff: $indexDifference,  timediff ${time.difference(_lastCoordinateProcessTime ?? DateTime.now()).inSeconds}",
      name: 'RouteMapper',
    );
    final bool timeDiff = _lastCoordinateProcessTime != null && time.difference(_lastCoordinateProcessTime!).inSeconds > 50;
    if (indexDifference > RouteMapperConfig.maxPolylineIndexJump || distanceDiff || timeDiff) {
      _handleJumpOnCurrentRoute(time, result.index);
    } else {
      _interpolateAndAddMappedCoordinate(result.index, time);
    }
    return true;
  }

  // ============= ROUTE DEVIATION, ALTERNATIVES, AND REROUTING =============

  Future<void> _handleRouteDeviation() async {
    _routeState = RouteState.rerouting;
    try {
      int newRouteIndex = _findMatchingAlternativeRouteIndex();
      if (newRouteIndex == -2) {
        newRouteIndex = await _createNewAlternativeRoute();
      }
      if (newRouteIndex != -1) {
        await _switchToAlternativeRouteAndReprocess(newRouteIndex);
      } else {
        _switchToOriginalRoute();
      }
    } catch (e, st) {
      developer.log("Rerouting error: $e", stackTrace: st, name: 'RouteMapper');
      _switchToOriginalRoute();
    } finally {
      _routeState = _activeRoutePolyIndex == -1 ? RouteState.onOriginal : RouteState.onAlternative;
    }
  }

  Future<int> _createNewAlternativeRoute() async {
    if (_deviationTracker.isEmpty || _originalRoute.isEmpty) return -1;
    final List<LatLng> waypoints = [_deviationTracker.first.$1, _deviationTracker.last.$1, _originalRoute.last];
    return _fetchAndAddNewAlternativeRoute(waypoints);
  }

  Future<void> _switchToAlternativeRouteAndReprocess(int routeIndex) async {
    final List<(LatLng, DateTime)> coordinatesToReprocess = List.from(_deviationTracker.coordinates);
    _switchToAlternativeRoute(routeIndex);
    for (final (coord, timestamp) in coordinatesToReprocess) {
      final ClosestPointResult result = _findClosestPointOnRoute(target: coord, searchStartIndex: _lastMatchedIndexOnActiveRoute, routeToSearch: _activeRoute);
      _mapCoordinateToActiveRoute(coord, timestamp, result);
    }
  }

  int _findMatchingAlternativeRouteIndex() {
    if (_alternativeRoutes.length == 0 || _deviationTracker.isEmpty) return -1;
    double bestMatchScore = -1;
    int bestMatchIndex = -2;
    for (int i = 0; i < _alternativeRoutes.length; i++) {
      final List<LatLng> route = _alternativeRoutes[i];
      if (route.isEmpty) continue;
      final double score = _calculateRouteMatchScore(route);
      developer.log("Route $i match score: $score", name: 'RouteMapper');
      if (score > bestMatchScore && score > RouteMapperConfig.alternativeRouteMatchThreshold) {
        bestMatchScore = score;
        bestMatchIndex = i;
      }
    }
    return bestMatchIndex;
  }

  double _calculateRouteMatchScore(List<LatLng> route) {
    int matchedPoints = 0;
    for (final (deviatedLatLng, _) in _deviationTracker.coordinates) {
      final ClosestPointResult result = _findClosestPointOnRoute(target: deviatedLatLng, searchStartIndex: route.length ~/ 2, routeToSearch: route);
      if (result.distance < RouteMapperConfig.minDeviationDistanceForReroute) matchedPoints++;
    }
    return matchedPoints / _deviationTracker.length;
  }

  Future<int> _fetchAndAddNewAlternativeRoute(List<LatLng> waypoints) async {
    if (waypoints.length < 2) return -1;
    try {
      final List<Route> routesFromApi = await AddLocationRepo.getRoute(waypoints).timeout(RouteMapperConfig.rerouteTimeout);
      if (routesFromApi.isEmpty) return -1;
      final List<List<LatLng>> newPolylines = _processApiRoutes(routesFromApi);
      if (newPolylines.isEmpty) return -1;
      final int firstNewRouteIndex = _alternativeRoutes.length;
      _alternativeRoutes.addRoutes(newPolylines);
      return firstNewRouteIndex;
    } catch (e, st) {
      developer.log("Fetch route error: $e", stackTrace: st, name: 'RouteMapper');
      return -1;
    }
  }

  List<List<LatLng>> _processApiRoutes(List<Route> routes) =>
      routes
          .map((route) => route.polyline?.encodedPolyline)
          .whereType<String>()
          .where((polyline) => polyline.isNotEmpty)
          .map((encoded) => redistributeCoordinates(originalCoordinates: decodePoly(encoded), targetSpacing: RouteMapperConfig.targetCoordinateSpacing))
          .where((polyline) => polyline.isNotEmpty)
          .toList();

  // ==================== CORE MAPPING UTILS ====================

  ClosestPointResult _findClosestPointOnRoute({required LatLng target, required int searchStartIndex, required List<LatLng> routeToSearch}) {
    final int routeLength = routeToSearch.length;
    if (routeLength == 0) {
      return const ClosestPointResult(index: -1, distance: double.infinity);
    }
    final int maxSearch = (_lastMatchedIndexOnActiveRoute == 0) ? routeLength : 10;
    final int startIndex = max(0, min(searchStartIndex, routeLength - 1));
    double minDistance = routeToSearch[startIndex].distanceTo(target);
    int closestIndex = startIndex;
    int searchCount = 0;
    // Search forward
    for (int i = startIndex + 1; i < routeLength && searchCount <= maxSearch; ++i) {
      final double distance = routeToSearch[i].distanceTo(target);
      if (distance < minDistance) {
        minDistance = distance;
        closestIndex = i;
        searchCount = 0;
      } else {
        searchCount++;
      }
    }
    // Search backward
    searchCount = 0;
    for (int i = startIndex - 3; i >= 0 && searchCount <= maxSearch; i--) {
      final double distance = routeToSearch[i].distanceTo(target);
      if (distance < minDistance) {
        minDistance = distance;
        closestIndex = i;
        searchCount = 0;
      } else {
        searchCount++;
      }
    }
    return ClosestPointResult(index: closestIndex, distance: minDistance);
  }

  void _switchToAlternativeRoute(int alternativeRouteIndex) {
    if (alternativeRouteIndex < 0 || alternativeRouteIndex >= _alternativeRoutes.length) return;
    _activeRoute = _alternativeRoutes[alternativeRouteIndex];
    _activeRoutePolyIndex = alternativeRouteIndex;
    _routeState = RouteState.onAlternative;
    _resetMatchingState();
  }

  void _switchToOriginalRoute() {
    _activeRoute = _originalRoute;
    _activeRoutePolyIndex = -1;
    _routeState = RouteState.onOriginal;
    _resetMatchingState();
  }

  void _resetMatchingState() {
    _lastMatchedIndexOnActiveRoute = 0;
    _mappedRoutes.clear();
    _deviationTracker.clear();
  }

  void _handleJumpOnCurrentRoute(DateTime time, int newIndex) {
    _mappedRoutes.clear();
    _addCoordinateToMappedQueue(time, newIndex);
    _lastMatchedIndexOnActiveRoute = newIndex;
    _routeStreamController.add(UnmodifiableListView([CoordinateData(index: newIndex, time: time, polyIndex: _activeRoutePolyIndex)]));
  }

  void _interpolateAndAddMappedCoordinate(int newIndex, DateTime time) {
    _interpolateSkippedCoordinates(_lastMatchedIndexOnActiveRoute, newIndex, time);
    _addCoordinateToMappedQueue(time, newIndex);
    _lastMatchedIndexOnActiveRoute = newIndex;
  }

  void _addCoordinateToMappedQueue(DateTime time, int indexOnRoute) {
    if (_mappedRoutes.isEmpty || indexOnRoute != _mappedRoutes.last.index) {
      developer.log(" - index: $indexOnRoute, polyIndex: $_activeRoutePolyIndex", name: 'Adding coordinate');
      _mappedRoutes.add(CoordinateData(index: indexOnRoute, time: time, polyIndex: _activeRoutePolyIndex));
    }
  }

  void _interpolateSkippedCoordinates(int fromIndex, int toIndex, DateTime currentTime) {
    if (_mappedRoutes.isEmpty) return;
    final int indexDiff = toIndex - fromIndex;
    if (indexDiff.abs() <= 1) return;
    final int step = indexDiff.sign;
    final int pointsToInterpolate = indexDiff.abs() - 1;
    final DateTime lastTime = _mappedRoutes.last.time;
    final int timeDiffMs = currentTime.difference(lastTime).inMilliseconds;
    final double msPerStep = timeDiffMs / (pointsToInterpolate + 1.0);
    for (int i = 1; i <= pointsToInterpolate; i++) {
      final int interpIndex = fromIndex + (i * step);
      final DateTime interpTime = lastTime.add(Duration(milliseconds: (msPerStep * i).round()));
      _addCoordinateToMappedQueue(interpTime, interpIndex);
    }
  }

  void _sendMappedCoordinates() {
    try {
      if (_mappedRoutes.isNotEmpty) {
        _routeStreamController.add(List<CoordinateData>.unmodifiable(_mappedRoutes));
        if (_mappedRoutes.length > 1) {
          final CoordinateData last = _mappedRoutes.last;
          _mappedRoutes
            ..clear()
            ..add(last);
        }
      }
    } catch (e, st) {
      developer.log('Error processing coordinate buffer: $e', stackTrace: st, name: 'RouteMapper');
    }
  }

  // ============== TIMING & RESET MANAGEMENT ==============

  bool _canProcessAtThisTime(DateTime currentTime) {
    if (_lastCoordinateProcessTime == null) return true;
    final Duration timeSinceLastProcess = currentTime.difference(_lastCoordinateProcessTime!);
    if (timeSinceLastProcess < RouteMapperConfig.minCoordinateProcessInterval) return false;
    return true;
  }

  void resetPathTracking() {
    _switchToOriginalRoute();
    _lastCoordinateProcessTime = null;
    developer.log("Path tracking reset.", name: 'RouteMapper');
  }

  // ============== CLEAN UP ==============

  void dispose() {
    _routeStreamController.close();
    _mappedRoutes.clear();
    _alternativeRoutes.clear();
    _deviationTracker.clear();
    developer.log("RouteMapper disposed.", name: 'RouteMapper');
  }
}
