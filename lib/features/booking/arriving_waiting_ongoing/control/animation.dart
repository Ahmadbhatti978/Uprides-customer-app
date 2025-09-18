import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/model/coordinate_data.dart';
import 'arring.dart';

class SequentialAnimator extends StatefulWidget {
  const SequentialAnimator({
    required this.initialRoute,
    required this.routeStream,
    required this.builder,
    required this.onChanged,
    this.onEnd,
    this.minAnimationDuration = const Duration(milliseconds: 100),
    this.maxAnimationDuration = const Duration(seconds: 10),
    super.key,
  });

  final List<LatLng> initialRoute;
  final Stream<List<CoordinateData>> routeStream;
  final Widget Function(BuildContext context, LatLng currentPosition) builder;
  final void Function(List<LatLng> remainingRoute, LatLng segementPosition) onChanged;
  final VoidCallback? onEnd;
  final Duration minAnimationDuration;
  final Duration maxAnimationDuration;

  @override
  State<SequentialAnimator> createState() => _SequentialAnimatorState();
}

class _SequentialAnimatorState extends State<SequentialAnimator> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  StreamSubscription<List<CoordinateData>>? _routeSubscription;

  final List<CoordinateData> _animationQueue = [];
  int _currentSegmentIndex = -1;
  late LatLng _currentPosition;
  int run = 0;
  LatLng? _segmentStartLatLng;
  LatLng? _segmentEndLatLng;

  bool get _isRouteValid => widget.initialRoute.isNotEmpty;

  @override
  void initState() {
    super.initState();
    if (_isRouteValid) {
      _initialize();
    } else {
      log('Invalid initial route provided to SequentialAnimator', name: 'Animator');
    }
  }

  void _initialize() {
    _currentPosition = widget.initialRoute.first;
    _controller = AnimationController(vsync: this)
      ..addStatusListener(_onAnimationStatusChanged)
      ..addListener(_onAnimate);
    _subscribeToRouteStream();
  }

  @override
  void didUpdateWidget(covariant SequentialAnimator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.routeStream != oldWidget.routeStream && _isRouteValid) {
      _routeSubscription?.cancel();
      _subscribeToRouteStream();
    }
  }

  void _subscribeToRouteStream() {
    _routeSubscription = widget.routeStream.listen(
      _onNewRouteData,
      onError: (e) => log('Animator stream error: $e', name: 'Animator'),
      onDone: () => log('Route stream closed', name: 'Animator'),
    );
  }

  void _onNewRouteData(List<CoordinateData> segments) {
    if (segments.isEmpty || !mounted) return;

    _animationQueue.addAll(segments);
    if (!_controller.isAnimating) {
      _animateNextSegment();
    }
  }

  void _onAnimate() {
    if (_segmentStartLatLng == null || _segmentEndLatLng == null) return;
    final double t = _controller.value;
    final double lat = _segmentStartLatLng!.latitude + (_segmentEndLatLng!.latitude - _segmentStartLatLng!.latitude) * t;
    final double lng = _segmentStartLatLng!.longitude + (_segmentEndLatLng!.longitude - _segmentStartLatLng!.longitude) * t;

    if (mounted) {
      run++;
      if (run % 6 == 0 && mounted) {
        setState(() => _currentPosition = LatLng(lat, lng));
      }
    }
  }

  void _onAnimationStatusChanged(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      if (_segmentEndLatLng != null && mounted) {
        setState(() => _currentPosition = _segmentEndLatLng!);
      }
      _animateNextSegment();
    }
  }

  void _animateNextSegment() {
    if (_currentSegmentIndex >= _animationQueue.length - 1) {
      widget.onEnd?.call();
      return;
    }
    _currentSegmentIndex++;
    final CoordinateData currentSegmentData = _animationQueue[_currentSegmentIndex];
    log(
      "${currentSegmentData.index} queue length. ${_animationQueue.length} current index. ${_currentSegmentIndex}last coordinate${_animationQueue.last.index}",
      name: "sagment index",
    );
    final List<LatLng> route = _getRouteForSegment(currentSegmentData);

    if (currentSegmentData.index >= route.length || currentSegmentData.index < 0) {
      log("Invalid segment index: ${currentSegmentData.index} for route length ${route.length}", name: "Animator");
      WidgetsBinding.instance.addPostFrameCallback((_) => _animateNextSegment());
      return;
    }

    _segmentStartLatLng = _currentPosition;
    _segmentEndLatLng = route[currentSegmentData.index];

    final List<LatLng> remainingRoute = route.sublist(currentSegmentData.index);
    widget.onChanged(
      remainingRoute,
      _segmentStartLatLng!,
    );

    final DateTime startTime =
        (_currentSegmentIndex == 0 || _animationQueue.isEmpty) ? currentSegmentData.time : _animationQueue[_currentSegmentIndex - 1].time;

    Duration duration = currentSegmentData.time.difference(startTime);
    if (duration.isNegative) duration = widget.minAnimationDuration;

    _controller.duration = duration.clamp(widget.minAnimationDuration, widget.maxAnimationDuration);
    _controller.forward(from: 0);
  }

  List<LatLng> _getRouteForSegment(CoordinateData segment) {
    final int index = segment.polyIndex;
    if (index >= 0 && index < AlternativeRoutesManager().routes.length) {
      final List<LatLng> route = AlternativeRoutesManager().routes[index];
      return route.isNotEmpty ? route : widget.initialRoute;
    }
    return widget.initialRoute;
  }

  @override
  void dispose() {
    _routeSubscription?.cancel();
    if (_isRouteValid) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isRouteValid) {
      return const Center(child: Text('No valid route available'));
    }
    return widget.builder(context, _currentPosition);
  }
}

extension on Duration {
  Duration clamp(Duration min, Duration max) {
    if (this < min) return min;
    if (this > max) return max;
    return this;
  }
}
