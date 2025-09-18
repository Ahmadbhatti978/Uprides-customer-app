import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../core/constants/constants.dart';
import '../../core/model/accept_jump_start.dart';
import '../../core/widgets/align/title_subtitle.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../booking/addlocation/model/place.dart';
import 'provider/book.dart';
import 'provider/jumpstart_provider.dart';

class JumpStartDetail extends StatelessWidget {
  const JumpStartDetail({super.key});

  @override
  Widget build(final BuildContext context) {
    final AcceptedJumpStart? jumpDetail = ModalRoute.settingsOf(context)?.arguments as AcceptedJumpStart?;
    log(jumpDetail?.mapData?.polyline.toString() ?? 'uiuiuiuiuiu');

    return Scaffold(
      appBar: const NameBackBar(title: 'Jump-Start'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card.filled(
            margin: const EdgeInsets.all(padding),
            color: const Color(0xFF04061B),
            child: Padding(
              padding: const EdgeInsets.only(top: 24, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          l10n.most_reliable_and_fast_service,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: -0.3,
                            wordSpacing: -0.2,
                            fontFamily: 'Open',
                            fontVariations: <FontVariation>[FontVariation('wght', 700)],
                          ),
                        ),
                        const Gap(10.79),
                        const Text(
                          'Lorem ipsum',
                          style: TextStyle(
                            color: Color(0xFF18C4B8),
                            fontSize: 14,
                            fontFamily: 'Open',
                            fontVariations: <FontVariation>[FontVariation('wght', 600)],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Image.asset(jumpStartDetail, alignment: Alignment.bottomRight)),
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: padding, top: horizontalSpacing), child: Text('Review request', style: Default.heading)),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 32, left: padding),
            child: Row(
              children: <Widget>[
                Container(
                  height: 18,
                  width: 18,
                  margin: const EdgeInsets.only(right: 8, left: 2),
                  decoration: BoxDecoration(
                    border: Border.all(width: 6),
                    //   color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Consumer(
                  builder: (final BuildContext context, final WidgetRef ref, final Widget? child) {
                    final Place place = ref.read(jumpLocationProvider);

                    return TitleSubtitle(title: place.mainText ?? '', subTitle: place.secondaryText ?? '');
                  },
                ),
              ],
            ),
          ),
          Card.filled(
            margin: const EdgeInsets.symmetric(horizontal: padding),
            color: grey,
            child: Padding(
              padding: const EdgeInsets.all(padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TitleSubtitle(title: jumpDetail?.jumpstartData?.body?.model ?? '', subTitle: jumpDetail?.jumpstartData?.body?.vin ?? ''),
                  const Text(
                    'Change',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF18C4B8),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFF18C4B8),
                      fontSize: 14,
                      fontVariations: <FontVariation>[FontVariation('wght', 620)],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(thickness: 2, color: Color(0xFFEEEEEE), height: 48),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text('Service type', style: Primary.title), Text('Total charge', style: Primary.title)],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('JUMP Start', style: Primary.heading),
                Text(jumpDetail?.distanceFare?.toString() ?? r'$ 221.7', style: Primary.heading),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: rideFare(context, jumpDetail!),
    );
  }

  Widget rideFare(final BuildContext context, final AcceptedJumpStart jumpDetail) => Container(
    height: 150,
    decoration: const BoxDecoration(
      color: Colors.white,
      boxShadow: <BoxShadow>[BoxShadow(color: Color.fromARGB(17, 117, 117, 117), spreadRadius: 2, blurRadius: 18, offset: Offset(0, -5))],
    ),
    padding: const EdgeInsets.only(bottom: 20, top: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        paymentInfo(context),
        const Divider(),
        Consumer(
          builder:
              (final BuildContext context, final WidgetRef ref, final Widget? child) => BlackButton(
                text: 'Request service',
                onPressed: () {
                  log(jumpDetail.mapData?.polyline.toString() ?? 'uiuiuiuiuiu');
                  ref
                    ..invalidate(bookjumpStartRideProvider(jumpDetail.rideId!, jumpDetail.driverId!))
                    ..read(bookjumpStartRideProvider(jumpDetail.rideId!, jumpDetail.driverId!));
                  // Navigator.pushNamed(context, AppRoutes.arrivingIN,
                  //     arguments: AcceptedRide(
                  //         ride: Ride(id: jumpDetail.rideId, driverId: jumpDetail.driver),
                  //         arrivingTime: jumpDetail.mapData?.duration,
                  //         dlPlPolyline: jumpDetail.mapData?.polyline,
                  //         userInfo: jumpDetail.jumpstartData?.user,
                  //         dropoffAddress: jumpDetail.mapData?.dropoffAddress,
                  //         pickupAddress: jumpDetail.mapData?.pickupAddress,
                  //         driverLocation: []));
                },
              ),
        ),
      ],
    ),
  );

  Widget paymentInfo(final BuildContext context) => SizedBox(
    height: 48,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: <Widget>[
          // SvgPicture.asset(logo, alignment: Alignment.topLeft, height: 22),
          Container(
            margin: const EdgeInsets.only(left: 16),
            height: 22,
            alignment: Alignment.center,
            child: const Text('Bold Pay', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'Open', height: 0.06)),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            // => Navigator.push(context, MaterialPageRoute(builder: (context) => const JumpStartRide())),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Change',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Color(0xFF18C4B8), fontSize: 14, fontVariations: <FontVariation>[FontVariation('wght', 620)]),
                ),
                SizedBox(width: 50, child: Divider(height: 2.1, thickness: 1.1, color: Color(0xFF18C4B8))),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
