import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/constants.dart';
import '../../core/router/route.dart';
import '../../util/image_assets.dart';
import 'trending_locations.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  void _handleTrendingTap(BuildContext context, WidgetRef ref, int index) {
    ref.read(currentTrendingPlaceProvider.notifier).state = trends.keys.elementAt(index);
    Navigator.pushNamed(context, AppRoutes.trendingLocations);
  }

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: SizedBox(
          height: 72,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            scrollDirection: Axis.horizontal,
            itemCount: trending.length,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Consumer(
                builder: (context, ref, child) => GestureDetector(
                  onTap: () => _handleTrendingTap(context, ref, index),
                  child: SizedBox(
                    height: 72,
                    width: 96,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(trending.elementAt(index)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
