import 'dart:core';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/constants/constants.dart';
import '../../core/global_loading_provider.dart';
import '../../core/location_validator.dart';
import '../../core/widgets/buttons/bottom_navigation_button.dart';
import '../../util/colors.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../booking/addlocation/model/config.dart';
import '../booking/addlocation/notifier/pickedlocation.dart';
import '../booking/provider/config_provider.dart';
import '../home/model/trending_place.dart';
import 'component/overveiw.dart';
import 'component/similair_place.dart';

enum Type {
  overview,
  similarPlaces,
  highRated;

  String get reason {
    switch (this) {
      case Type.overview:
        return l10n.overview;
      case Type.similarPlaces:
        return l10n.similar_places;
      case Type.highRated:
        return l10n.high_rated;
    }
  }
}

class TrendingDes extends StatefulWidget {
  const TrendingDes({super.key});

  @override
  State<TrendingDes> createState() => _TrendingDesState();
}

class _TrendingDesState extends State<TrendingDes> {
  CarouselController carouselController = CarouselController();
  ScrollController controller = ScrollController();
  ValueNotifier<int> activeIndex = ValueNotifier(0);
  Type type = Type.overview;
  @override
  void initState() {
    activity();
    super.initState();
  }

  void activity() {
    carouselController.addListener(() {
      if (carouselController.hasClients) {
        if (carouselController.offset == 0) {
          activeIndex.value = 0;
        } else {
          activeIndex.value = (carouselController.offset.toInt() / (mediaQuery.size.width * .85).toInt()).round();
          // print(carouselController.offset.toInt() / (mediaQuery.size.width * .85).toInt());
          // print(carouselController.offset);
          // print(mediaQuery.size.width * .85);
        }
      }
    });
  }

  @override
  void dispose() {
    carouselController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final TrendingPlace trendingPlace = ModalRoute.of(context)!.settings.arguments! as TrendingPlace;
    final Map<Type, Function()> types = <Type, Function()>{
      Type.overview: () {
        setState(() => type = Type.overview);
        controller.animateTo(0, duration: Durations.medium4, curve: Curves.ease);
      },
      Type.similarPlaces: () {
        setState(() => type = Type.similarPlaces);
        controller.animateTo(mediaQuery.size.height * .25 + 100 + 20, duration: Durations.extralong1, curve: Curves.easeInOutCirc);
      },
      Type.highRated: () {
        setState(() => type = Type.highRated);
        controller.animateTo(mediaQuery.size.height * .25 + 100 + 20, duration: Durations.medium4, curve: Curves.easeIn);
      },
    };

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight * .7,
        leading: const BackButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.transparent))),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        // actions: <Widget>[
        //   IconButton(enableFeedback: true, iconSize: 24, splashRadius: 30, onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
        //   IconButton(enableFeedback: true, iconSize: 24, splashRadius: 30, onPressed: () {}, icon: const Icon(CupertinoIcons.share)),
        //   IconButton(enableFeedback: true, iconSize: 24, splashRadius: 30, onPressed: () {}, icon: const Icon(CupertinoIcons.heart)),
        // ],

        // bottom: PreferredSize(
        //   preferredSize: Size.fromHeight(mediaQuery.size.height * .26 + 200),
        //   child: Column(
        //     children: [],
        //   ),
        // ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: padding),
        controller: controller,
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(
            height: mediaQuery.size.height * .25,
            child: CarouselView(
              controller: carouselController,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              backgroundColor: Colors.grey,
              itemSnapping: true,
              padding: const EdgeInsets.only(left: 12, bottom: 6),
              //  backgroundColor: Colors.black,
              itemExtent: mediaQuery.size.width * .85,
              children: (trendingPlace.photos ?? <Photo>[])
                  .map(
                    (final Photo photos) => CachedNetworkImage(
                      fadeInDuration: Durations.short1,
                      fadeOutDuration: Durations.short2,
                      filterQuality: FilterQuality.medium,
                      //   colorBlendMode: BlendMode.srcOver,
                      imageUrl: 'https://places.googleapis.com/v1/${photos.name}/media?maxHeightPx=1080&maxWidthPx=1920&key=$apiKey',
                      placeholder:
                          (final BuildContext context, final String url) =>
                              const ColoredBox(color: Color.fromARGB(255, 245, 245, 245), child: CupertinoActivityIndicator()),
                      errorWidget: (final BuildContext context, final String url, final Object error) => const Icon(Icons.error),
                      fit: BoxFit.cover,
                    ),
                  )
                  .toList(growable: false),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: padding),
            child: ValueListenableBuilder(
              valueListenable: activeIndex,
              builder:
                  (final BuildContext context, final int value, final Widget? child) => Center(
                    child: AnimatedSmoothIndicator(
                      activeIndex: value,
                      count: trendingPlace.photos?.length ?? 0,
                      effect: const WormEffect(spacing: 5, dotWidth: 9, dotHeight: 9, dotColor: Color(0xFFEEEEEE), activeDotColor: darkgrey),
                    ),
                  ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(left: 18), child: Text(trendingPlace.displayName?.text ?? '', style: Default.heading)),
          Padding(padding: const EdgeInsets.only(left: 18.5, bottom: 24), child: Text(trendingPlace.shortFormattedAddress ?? '', style: Secondary.title)),
          const Gap(padding),
          Padding(
            padding: const EdgeInsets.only(left: padding, bottom: 24),
            child: Row(
              children:
                  types.entries
                      .map(
                        (final MapEntry<Type, Function()> e) => Stack(
                          alignment: Alignment.bottomLeft,
                          children: <Widget>[
                            TextButton(onPressed: e.value, child: Text(e.key.reason, style: type == e.key ? Bold.title : Secondary.title)),
                            Container(
                              margin: const EdgeInsets.only(left: 10, bottom: 2),
                              width: type == e.key ? 38 : 0,
                              height: 3.6,
                              decoration: const ShapeDecoration(shape: StadiumBorder(), color: Color(0xFF18C4B8)),
                            ),
                          ],
                        ),
                      )
                      .toList(),
            ),
          ),
          ColoredBox(
            color: grey,
            child:
                type == Type.overview
                    ? Overveiw(location: trendingPlace.location, summary: trendingPlace.reviewSummary?.text?.text)
                    : type == Type.similarPlaces
                    ? const SimilairPlace(shuffle: true)
                    : const SimilairPlace(),
          ),
        ],
      ),
      bottomNavigationBar: Consumer(
        builder:
            (final BuildContext context, final WidgetRef ref, final Widget? child) => BottomNavigationButton(
              text: l10n.ontinue,
              isLoading: ref.watch(gloading),
              onPressed: () async {
                ref.read(pickedlocationProvider.notifier).addTrending(trendingPlace);

                ref.read(gloading.notifier).state = true;

                rideRequest = null;
                ref.read(configPProvider.notifier).changeBookingType(BookingType.trending);
                await LocationValidator(ref).navigateToConfirmScreen();
                ref.read(gloading.notifier).state = false;
 
              },
            ),
      ),
    );
  }
}
