import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/constants.dart';
import '../../../core/extensions/date.dart';
import '../../../core/model/coordinate.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/loading_error/loading.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../home/model/trending_place.dart';
import '../../home/provider/location_nearby.dart';

class Overveiw extends ConsumerWidget {
  const Overveiw({super.key, this.summary, this.location});
  final Coordinate? location;
  final String? summary;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) => Card(
    color: Colors.white,
    shadowColor: Colors.black12,
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
    margin: const EdgeInsets.fromLTRB(padding, padding, padding, 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(padding), child: Text(summary ?? "", style: Primary.titleSmall)),
        const Padding(padding: EdgeInsets.only(left: padding, top: padding), child: Text('Places to visit nearby', style: Default.heading)),
        ref
            .watch(TrendingLocationProvider(location: location!))
            .when(
              data:
                  (final List<TrendingPlace> trendingPlaces) => Padding(
                    padding: const EdgeInsets.only(left: padding),
                    child: SizedBox(
                      height: 245,
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        scrollDirection: Axis.horizontal,
                        itemCount: trendingPlaces.length,
                        itemBuilder:
                            (final BuildContext context, final int index) =>
                                trendingPlaces[index].photos != null && trendingPlaces[index].photos!.isNotEmpty
                                    ? SubTrendingCard(trendingPlace: trendingPlaces[index])
                                    : const SizedBox.shrink(),
                      ),
                    ),
                  ),
              error: (final Object object, final StackTrace stackTrace) => const SizedBox.shrink(),
              loading: () => const SizedBox(height: 245, child: loading),
            ),
        const Gap(34),
      ],
    ),
  );
}

class SubTrendingCard extends StatelessWidget {
  const SubTrendingCard({required this.trendingPlace, super.key});
  final TrendingPlace trendingPlace;

  @override
  Widget build(BuildContext context) {
    final String opening = getTodayOpeningTime(trendingPlace.currentOpeningHours);
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: const EdgeInsets.only(right: padding),
      shape: UnderlineInputBorder(borderRadius: BorderRadius.circular(padding)),
      color: Colors.white,
      shadowColor: Colors.black45,
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CachedNetworkImage(
            width: mediaQuery.size.width * .6,
            height: 120,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.medium,
            imageUrl: 'https://places.googleapis.com/v1/${trendingPlace.photos?.first.name}/media?maxHeightPx=540&maxWidthPx=960&key=$apiKey',
            placeholder:
                (final BuildContext context, final String url) =>
                    const ColoredBox(color: Color.fromARGB(255, 245, 245, 245), child: CupertinoActivityIndicator()),
            errorWidget: (final BuildContext context, final String url, final Object error) => const Icon(Icons.error),
          ),
          SizedBox(
            width: mediaQuery.size.width * .6,
            child: Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 18, top: 8, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(trendingPlace.displayName?.text ?? 'B2 Cafe', maxLines: 1, style: Bold.titleSmall),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, bottom: 8),
                    child: Text(
                      trendingPlace.shortFormattedAddress ?? 'Lorem ipsum dolor sit',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Secondary.title,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          if (opening == closedToday)
                            const Text(closedToday, style: TextStyle(color: Colors.redAccent))
                          else
                            Text.rich(
                              TextSpan(
                                children: <InlineSpan>[const TextSpan(text: 'Opens at ', style: Default.title), TextSpan(text: opening, style: Bold.title)],
                              ),
                            ),
                          // Gap(4),
                          // Text(
                          //   'Best time to visit 09:30 am',
                          //   style: TextStyle(
                          //     color: Color(0xFF18C4B8),
                          //     fontSize: 11,
                          //     fontVariations: <FontVariation>[FontVariation('wght', 500)],
                          //   ),
                          // ),
                        ],
                      ),
                      IconButton.filled(
                        iconSize: 18,
                        visualDensity: VisualDensity.compact,
                        padding: const EdgeInsets.all(2),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.black, // Background color
                        ),
                        onPressed: () => Navigator.pushNamed(context, AppRoutes.trendingDes, arguments: trendingPlace),
                        icon: const Icon(Icons.arrow_forward, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
