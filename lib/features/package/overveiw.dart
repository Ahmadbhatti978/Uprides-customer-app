import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/align/pickup_drop_location.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/buttons/bold_pay_button.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../booking/addlocation/model/place.dart';
import 'component/maps.dart';
import 'component/send.dart';
import 'model/package.dart';
import 'package_detail.dart';
import 'provider/create_package.dart';
import 'provider/package_provider.dart';

class PackageOverveiw extends ConsumerWidget {
  const PackageOverveiw({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final List<MapEntry<Place, ReceiverDetails?>> places = ref.read(locationProvider);
    final Package packages = ref.watch(packageProvider);
    final int active = ref.watch(activeIndex);

    return Scaffold(
      //  resizeToAvoidBottomInset: false,
      appBar: const NameBackBar(title: 'Overview'),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          SizedBox(
            height: mediaQuery.size.height * .25,
            child: ConfirmLocations(places: places.map((final MapEntry<Place, ReceiverDetails?> p) => p.key).toList(), zoom: 13),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding, vertical: padding * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(l10n.review_request, style: Default.heading),
                const Gap(padding),
                PickupDropLocations(places: places.map((final MapEntry<Place, ReceiverDetails?> p) => p.key).toList()),
              ],
            ),
          ),
          SizedBox(
            height: 75,
            child: PageView.builder(
              controller: PageController(initialPage: active),
              //scrollBehavior:  ScrollBehavior.horizontal,
              onPageChanged: (final int value) => ref.read(activeIndex.notifier).state = value,
              itemCount: packages.packages?.length,
              itemBuilder: (final BuildContext context, final int index) {
                final PackageElement? pack = packages.packages?.elementAt(index);
                return Card.filled(
                  margin: const EdgeInsets.symmetric(horizontal: padding),
                  color: grey,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(padding, 14, padding, 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text('Package ${index + 1}', style: Primary.title),
                              const Gap(6),
                              Row(
                                children: <Widget>[
                                  SvgPicture.asset(dimension, height: 18),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8, right: padding),
                                    child: Text(
                                      '${pack?.dimensions?.length}x${pack?.dimensions?.width}x${pack?.dimensions?.height}',
                                      textAlign: TextAlign.center,
                                      style: Primary.titleSmall,
                                    ),
                                  ),
                                  SvgPicture.asset(weight, height: 18),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8, right: padding),
                                    child: Text('${pack?.dimensions?.weight} kg', textAlign: TextAlign.center, style: Primary.titleSmall),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text(
                              'Edit',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF18C4B8),
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xFF18C4B8),
                                fontSize: 16,
                                fontVariations: <FontVariation>[FontVariation('wght', 620)],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Gap(padding),
          Center(
            child: AnimatedSmoothIndicator(
              activeIndex: active,
              count: packages.packages!.length,
              effect: const WormEffect(spacing: 5, dotWidth: 42, dotHeight: 6, dotColor: Color(0xFFEEEEEE), activeDotColor: Color(0xFF18C4B8)),
            ),
          ),
          const Divider(color: Color(0xFFEEEEEE), thickness: 2, height: 48),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text('Service type', style: Primary.title), Text('Total charge', style: Primary.title)],
                ),
                Gap(8),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BoldPayButton(
        onChange: (paymentMethod) {},
        pay: null,
        onBook: (paymentMethod) {
          Navigator.pop(context);
          Navigator.pop(context);
          Navigator.pop(context);
          ref.read(createPackageProvider);
        },
        buttonTitle: 'Book ride',
      ),

      // Padding(
      //   padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
      //   child: BlackButton(
      //     text: 'Next',
      //     onPressed: () {
      //       final package = ref.read(packageProvider);

      //       Navigator.pushNamed(context, AppRoutes.packageDetail);
      //     },
      //   ),
      // ),
    );
  }
}
