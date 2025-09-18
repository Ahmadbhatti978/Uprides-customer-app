import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/constants.dart';
import '../../../../util/image_assets.dart';

import '../../../../util/variable.dart';
import '../../model/trending_place.dart';
import '../../provider/trending_location_provider.dart';
import 'fade_image_slider.dart';
import 'quote.dart';

final currentTrendingPlaceProvider = AutoDisposeStateProvider<TrendingPlace?>((ref) => null);

class HomeTrendingScreen extends ConsumerWidget {
  const HomeTrendingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size screenSize = mediaQuery.size;

    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * QuoteConstants.homeScreenHeightRatio,
      child: ref.watch(trendingLocationProvider(type: "Tourist Attractions")).when(
        data: (trendingPlace) {
          if (trendingPlace.value.isEmpty) {
            return _buildFallbackImage();
          }
          return FadingImageSlider(
            fadeDuration: Durations.extralong4,
            displayDuration: const Duration(seconds: 10),
            places: trendingPlace.value,
            apiKey: apiKey,
            onPlaceChanged: (newPlace) => _handlePlaceChanged(context, ref, newPlace),
            initialImage: Image.asset(homebg, fit: BoxFit.fitWidth),
          );
        },
        loading: _buildFallbackImage,
        error: (error, stackTrace) {
          debugPrint('Trending places error: $error\n$stackTrace');
          return _buildFallbackImage();
        },
      ),
    );
  }

  Widget _buildFallbackImage() => Image.asset(homebg, fit: BoxFit.fitWidth);

  void _handlePlaceChanged(BuildContext context, WidgetRef ref, TrendingPlace? newPlace) {
    if (!context.mounted) return;

    ref.read(summaryProvider.notifier).state = false;
    ref.read(currentTrendingPlaceProvider.notifier).state = newPlace;
  }
}