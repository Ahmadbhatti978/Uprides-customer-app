import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../core/constants/constants.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/loading_error/error.dart';
import '../../../core/widgets/loading_error/loading.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../home/model/trending_place.dart';
import '../../home/provider/trending_location_provider.dart';

class SimilairPlace extends ConsumerWidget {
  const SimilairPlace({this.shuffle = false, super.key});
  final bool shuffle;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) => ref
      .watch(TrendingLocationProvider())
      .when(
        data: (trending) {
          final List<TrendingPlace> trendingPlaces = List.of(trending.value)..shuffle();
          return SizedBox(
            height: mediaQuery.size.height * .9,
            child: MasonryGridView.count(
              padding: const EdgeInsets.fromLTRB(horizontalSpacing, 24, horizontalSpacing, 200),
              crossAxisCount: 2,
              mainAxisSpacing: padding,
              crossAxisSpacing: horizontalSpacing,
              shrinkWrap: true,
              itemCount: trendingPlaces.length,
              itemBuilder:
                  (final BuildContext context, final int index) =>
                      trendingPlaces[index].photos != null && trendingPlaces[index].photos!.isNotEmpty
                          ? InkWell(
                            onTap: () => Navigator.pushNamed(context, AppRoutes.trendingDes, arguments: trendingPlaces.elementAt(index)),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              margin: EdgeInsets.zero,
                              color: Colors.white,
                              shadowColor: Colors.black12,
                              elevation: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  CachedNetworkImage(
                                    //     width: mediaQuery.size.width * .6,
                                    //     fit: BoxFit.cover,
                                    filterQuality: FilterQuality.high,
                                    imageUrl:
                                        'https://places.googleapis.com/v1/${trendingPlaces[index].photos?.first.name}/media?maxHeightPx=540&maxWidthPx=960&key=$apiKey',
                                    placeholder:
                                        (final BuildContext context, final String url) =>
                                            const ColoredBox(color: Color.fromARGB(255, 245, 245, 245), child: CupertinoActivityIndicator()),
                                    errorWidget: (final BuildContext context, final String url, final Object error) => const Icon(Icons.error),
                                  ),
                                  SizedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 12, bottom: 18, top: 8, right: 12),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(trendingPlaces[index].displayName?.text ?? 'B2 Cafe', maxLines: 1, style: Bold.titleSmall),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 2, bottom: 8),
                                            child: Text(
                                              trendingPlaces[index].shortFormattedAddress ?? 'Lorem ipsum dolor sit',
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: Secondary.title,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          : const SizedBox.shrink(),
            ),
          );
        },
        loading: () => const Loading(isBack: false),
        error: (error, stackTrace) => Err(error: error),
      );
}
