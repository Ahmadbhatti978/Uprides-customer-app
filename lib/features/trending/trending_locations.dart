import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/constants.dart';
import '../../core/extensions/string.dart';
import '../../core/router/route.dart';
import '../../core/widgets/loading_error/error.dart';
import '../../core/widgets/loading_error/loading.dart';
import '../../util/colors.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../home/model/trending_place.dart';
import '../home/provider/trending_location_provider.dart';

final currentTrendingPlaceProvider = StateProvider<String>((ref) => "Tourist Attractions");

class TrendingLocations extends ConsumerWidget {
  const TrendingLocations({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) => Material(
        color: grey,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          scrollBehavior: const CupertinoScrollBehavior(),
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              centerTitle: true,
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              leading: const BackButton(),
              title: Text(l10n.trending_location, textAlign: TextAlign.center, style: Primary.heading),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(72),
                child: SizedBox(
                  // height: padding * 4,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: padding, vertical: p12),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: padding,
                      //  mainAxisSize: MainAxisSize.min,
                      children: trends.keys
                          .map(
                            (final String type) => type == ref.watch(currentTrendingPlaceProvider)
                                ? FilledButton(
                                    onPressed: () {},
                                    style: FilledButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(horizontal: padding, vertical: 6),
                                      minimumSize: const Size(20, 20),
                                      shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(8)),
                                    ),
                                    child: Text(type, style: const TextStyle(fontSize: 14)),
                                  )
                                : OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(horizontal: p12, vertical: 6),
                                      minimumSize: const Size(20, 20),
                                      foregroundColor: darkgrey,
                                      shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(8)),
                                    ),
                                    onPressed: () => ref.read(currentTrendingPlaceProvider.notifier).state = type,
                                    child: Text(type, style: Default.titleSmallSecondary),
                                  ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),

            //       const SliverToBoxAdapter(child: Events()),
            SliverPadding(
              padding: const EdgeInsets.only(left: padding, bottom: 8),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: <Widget>[
                    Text(l10n.places_to_visit, textAlign: TextAlign.start, style: Default.title),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 12, left: 6),
                      child: CircleAvatar(radius: 12, backgroundColor: Color(0xFF18C4B8), child: Text("20", style: Bold.small)),
                    ),
                  ],
                ),
              ),
            ),
            ref.watch(TrendingLocationProvider()).when(
                  data: (trendingPlace) => SliverList.builder(
                    itemCount: trendingPlace.value.length, // specify the number of items
                    itemBuilder: (final BuildContext context, final int index) => TrendingCard(trendingPlace: trendingPlace.value.elementAt(index)),
                  ),
                  error: (error, stackTrace) => SliverToBoxAdapter(child: Err(error: error)),
                  loading: () => SliverToBoxAdapter(child: SizedBox(height: mediaQuery.size.height * .7, child: const Loading(isBack: false))),
                ),
          ],
        ),
      );
}

class TrendingCard extends StatelessWidget {
  const TrendingCard({required this.trendingPlace, super.key});

  final TrendingPlace trendingPlace;

  @override
  Widget build(BuildContext context) => trendingPlace.photos.isNullOrEmpty
      ? const SizedBox.shrink()
      : Card(
          color: Colors.white,
          shadowColor: Colors.black26,
          margin: const EdgeInsets.symmetric(horizontal: padding, vertical: 8),
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, AppRoutes.trendingDes, arguments: trendingPlace),
            child: Column(
              children: <Widget>[
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    if (!trendingPlace.photos.isNullOrEmpty)
                      CachedNetworkImage(
                        width: mediaQuery.size.width,
                        height: mediaQuery.size.height * .23,

                        // mediaQuery.size.width *
                        //     (trendingPlace.value[index].photos?.first.heightPx ?? 1) /
                        //     (trendingPlace.value[index].photos?.first.widthPx ?? 1),
                        filterQuality: FilterQuality.medium,
                        color: const Color.fromRGBO(0, 0, 0, 0.5),
                        colorBlendMode: BlendMode.srcOver,

                        imageUrl: 'https://places.googleapis.com/v1/${trendingPlace.photos?.first.name}/media?maxHeightPx=1080&maxWidthPx=1920&key=$apiKey',
                        placeholder: (final BuildContext context, final String url) =>
                            const ColoredBox(color: Color.fromARGB(255, 245, 245, 245), child: CupertinoActivityIndicator()),
                        errorWidget: (final BuildContext context, final String url, final Object error) => const Icon(Icons.error),
                        fit: BoxFit.cover,
                      )
                    else
                      const SizedBox.shrink(),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            trendingPlace.displayName?.text ?? 'B2 Cafe',
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Open',
                              fontVariations: <FontVariation>[FontVariation('wght', 750)],
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            trendingPlace.editorialSummary?.text ?? "",
                            style: const TextStyle(color: Color(0xFFF5F5F5), fontSize: 14, fontFamily: 'Open', fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: trendingPlace.primaryTypeDisplayName?.text.isNotBlank ?? false,
                      child: Positioned(
                        top: 12,
                        right: padding,
                        child: Card.filled(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(6, 2, 8, 4),
                            child: Text(trendingPlace.primaryTypeDisplayName?.text ?? '', style: Bold.title),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: padding, top: 8, bottom: 9, left: padding),
                  child: Row(
                    children: <Widget>[
                      // if (index == 0) ...<Widget>[
                      //   Container(
                      //     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      //     decoration: const ShapeDecoration(gradient: LinearGradient(colors: <Color>[Color(0xFF44CDC4), Color(0xFFC939ED)]), shape: StadiumBorder()),
                      //     child: Row(
                      //       mainAxisSize: MainAxisSize.min,
                      //       children: <Widget>[SvgPicture.asset(rideCar), const Gap(4), const Text('10 mins away', textAlign: TextAlign.center, style: Bold.small)],
                      //     ),
                      //   ),
                      // ],
                      const Spacer(),
                      TextButton.icon(
                        iconAlignment: IconAlignment.end,
                        onPressed: () {},
                        label: Text(l10n.view_more, style: Default.title),
                        icon: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
}
