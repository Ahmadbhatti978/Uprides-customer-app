import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../util/variable.dart';
import '../../model/trending_place.dart';

class FadingImageSliderConstants {
  static const Duration defaultFadeDuration = Duration(milliseconds: 800);
  static const Duration defaultDisplayDuration = Duration(seconds: 5);
  static const double defaultScaleBegin = 0.96;
  static const int maxImagesPerPlace = 3;
  static const Duration precacheTimeout = Duration(seconds: 5);
  static const double pixelRatioMultiplier = 2;
  static const double heightRatio = 0.6;
}

class FadingImageSlider extends StatefulWidget {
  const FadingImageSlider({
    required this.onPlaceChanged,
    required this.places,
    required this.apiKey,
    required this.initialImage,
    this.fadeDuration = FadingImageSliderConstants.defaultFadeDuration,
    this.displayDuration = FadingImageSliderConstants.defaultDisplayDuration,
    this.scaleBegin = FadingImageSliderConstants.defaultScaleBegin,
    super.key,
  });

  final List<TrendingPlace> places;
  final String apiKey;
  final Duration fadeDuration;
  final Duration displayDuration;
  final double scaleBegin;
  final Widget initialImage;
  final void Function(TrendingPlace? newPlace) onPlaceChanged;

  @override
  State<FadingImageSlider> createState() => _FadingImageSliderState();
}

class _FadingImageSliderState extends State<FadingImageSlider> with AutomaticKeepAliveClientMixin {
  int _placeIndex = 0;
  int _imageIndex = -1;
  Timer? _timer;
  Timer? _initialTimer;
  String _currentImageUrl = "";
  bool _isActive = true;
  bool _isDisposed = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    if (widget.places.isNotEmpty) {
      _startTimer();
    }
  }

  @override
  void didUpdateWidget(covariant FadingImageSlider oldWidget) {
    super.didUpdateWidget(oldWidget);
    _handleWidgetUpdate();
  }

  @override
  void dispose() {
    _isDisposed = true;
    _cleanupTimers();
    super.dispose();
  }

  void _cleanupTimers() {
    _timer?.cancel();
    _initialTimer?.cancel();
    _timer = null;
    _initialTimer = null;
  }

  void _startTimer() {
    if (_isDisposed) return;

    _cleanupTimers();

    _initialTimer = Timer(widget.displayDuration, () {
      if (_isDisposed || !mounted) return;

      // Trigger first place change
      Future.delayed(
        widget.displayDuration + widget.fadeDuration,
        () {
          // FIX: Added a guard to prevent calling on a disposed widget.
          if (_isDisposed || !mounted) return;

          if (widget.places.isNotEmpty) {
            widget.onPlaceChanged(widget.places[0]);
          }
        },
      );

      // Start periodic timer
      _timer = Timer.periodic(widget.displayDuration, (_) {
        if (!_isDisposed && mounted) {
          _advance();
        }
      });
    });
  }

  void pause() {
    if (!_isActive || _isDisposed) return;
    _isActive = false;
    _cleanupTimers();
  }

  void resume() {
    if (_isActive || _isDisposed) return;
    _isActive = true;
    _startTimer();
  }

  void _handleWidgetUpdate() {
    if (widget.places.isEmpty) {
      _cleanupTimers();
      if (mounted) {
        setState(() => _currentImageUrl = '');
      }
      return;
    }

    if (_placeIndex >= widget.places.length) {
      _placeIndex = 0;
      _imageIndex = 0;
      _setCurrentFromIndices();
      widget.onPlaceChanged(widget.places[_placeIndex]);
    } else {
      final List<Photo>? photos = widget.places[_placeIndex].photos;
      final int photoCount = photos?.length ?? 0;

      if (photoCount == 0) {
        _imageIndex = 0;
        if (mounted) {
          setState(() => _currentImageUrl = '');
        }
      } else if (_imageIndex >= photoCount) {
        _imageIndex = 0;
        _setCurrentFromIndices();
      }
    }
  }

  void _advance() {
    if (!mounted || !_isActive || widget.places.isEmpty || _isDisposed) return;

    final TrendingPlace currentPlace = widget.places[_placeIndex];
    final int photoCount = currentPlace.photos?.length ?? 0;

    if (photoCount <= 1) {
      _nextPlace();
      return;
    }

    if (_imageIndex < photoCount - 1 && _imageIndex < FadingImageSliderConstants.maxImagesPerPlace - 1) {
      _imageIndex++;
      _scheduleNext();
    } else {
      _nextPlace();
    }
  }

  void _nextPlace() {
    if (_isDisposed) return;

    // Delayed place change notification
    Future.delayed(
      widget.fadeDuration,
      () {
        // FIX: The original code already had this check, which is correct.
        if (_isDisposed || !mounted) return;

        if (widget.places.isEmpty || _currentImageUrl.isEmpty) {
          widget.onPlaceChanged(null);
        } else {
          widget.onPlaceChanged(widget.places[_placeIndex]);
        }
      },
    );

    if (widget.places.isEmpty) return;

    _imageIndex = 0;
    _placeIndex = (_placeIndex + 1) % widget.places.length;
    _scheduleNext();
  }

  Future<void> _scheduleNext() async {
    if (_isDisposed || !mounted) return;

    final String nextUrl = _computeImageUrl(_placeIndex, _imageIndex);

    if (nextUrl.isNotEmpty) {
      // Precache with timeout and error handling
      try {
        await precacheImage(CachedNetworkImageProvider(nextUrl), context).timeout(FadingImageSliderConstants.precacheTimeout);
      } catch (e) {
        debugPrint('Failed to precache image: $e');
        // Continue anyway, as this is not critical
      }
    }

    if (!mounted || _isDisposed) return;
    setState(() => _currentImageUrl = nextUrl);
  }

  void _setCurrentFromIndices() {
    if (_isDisposed) return;
    final String url = _computeImageUrl(_placeIndex, _imageIndex);
    if (mounted) {
      setState(() => _currentImageUrl = url);
    }
  }

  String _computeImageUrl(int placeIdx, int imgIdx) {
    if (widget.places.isEmpty || placeIdx >= widget.places.length) return '';

    final TrendingPlace place = widget.places[placeIdx];
    final List<Photo>? photos = place.photos;

    if (photos == null || photos.isEmpty || imgIdx >= photos.length) return '';

    final String? photoName = photos[imgIdx].name;
    if (photoName == null || photoName.isEmpty) return '';

    return PlacesMediaUrlBuilder.buildUrl(apiKey: widget.apiKey, placeName: photoName);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required for AutomaticKeepAliveClientMixin

    return AnimatedSwitcher(
      duration: widget.fadeDuration,
      switchInCurve: Curves.easeOutCubic,
      switchOutCurve: Curves.easeOutCubic,
      layoutBuilder: (currentChild, previousChildren) => Stack(fit: StackFit.expand, children: [...previousChildren, if (currentChild != null) currentChild]),
      transitionBuilder: (child, animation) {
        final curved = CurvedAnimation(parent: animation, curve: Curves.easeOutCubic);
        final scaleTween = Tween<double>(begin: widget.scaleBegin, end: 1);

        return FadeTransition(opacity: curved, child: ScaleTransition(scale: scaleTween.animate(curved), child: child));
      },
      child: SliderImage(key: ValueKey<String>(_currentImageUrl), url: _currentImageUrl, fallbackWidget: widget.initialImage),
    );
  }
}

// ignore: avoid_classes_with_only_static_members
class PlacesMediaUrlBuilder {
  static String buildUrl({required String placeName, required String apiKey}) {
    final Size screenSize = mediaQuery.size;
    final double pixelRatio = mediaQuery.devicePixelRatio * FadingImageSliderConstants.pixelRatioMultiplier;

    final double desiredWidth = screenSize.width;
    final double desiredHeight = screenSize.height * FadingImageSliderConstants.heightRatio;

    final int scaledWidth = (desiredWidth * pixelRatio).round();
    final int scaledHeight = (desiredHeight * pixelRatio).round();

    const baseUrl = 'https://places.googleapis.com/v1';
    final params = 'maxWidthPx=$scaledWidth&maxHeightPx=$scaledHeight&key=$apiKey';

    return '$baseUrl/$placeName/media?$params';
  }
}

class SliderImage extends StatelessWidget {
  const SliderImage({required this.url, required this.fallbackWidget, super.key});

  final String url;
  final Widget fallbackWidget;

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) {
      return fallbackWidget;
    }

    return CachedNetworkImage(
      imageUrl: url,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      fadeInDuration: const Duration(milliseconds: 200),
      placeholder: (context, url) => const Center(child: SizedBox(width: 32, height: 32, child: CircularProgressIndicator(strokeWidth: 2))),
      errorWidget: (context, url, error) {
        debugPrint('Failed to load image: $url, Error: $error');
        return const ColoredBox(color: Colors.black12, child: Center(child: Icon(Icons.broken_image_outlined)));
      },
    );
  }
}