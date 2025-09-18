import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/align/title_subtitle.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../booking/addlocation/model/place.dart';
import 'receipt.dart';

class Overveiw extends StatelessWidget {
  const Overveiw({required this.places, super.key});
  final List<Place> places;

  @override
  Widget build(final BuildContext context) => Scaffold(
    //  resizeToAvoidBottomInset: false,
    appBar: const NameBackBar(title: 'Overveiw'),
    body: ListView(
      padding: const EdgeInsets.only(top: padding, bottom: padding * 3),
      children: <Widget>[
        Image.asset(map, height: mediaQuery.size.height * .2, width: mediaQuery.size.width, fit: BoxFit.cover),

        const Padding(padding: EdgeInsets.only(top: padding * 2, bottom: padding, left: padding), child: Text('Review request', style: Default.heading)),
        //   PickupDropLocations(places: places),
        const Card.filled(
          color: grey,
          margin: EdgeInsets.symmetric(horizontal: padding),
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Row(
              children: <Widget>[
                Icon(Icons.person, size: 48),
                Gap(8),
                TitleSubtitle(title: 'Kadin Curtis', subTitle: 'Exact name on Drivers License'),
                Spacer(),
                Text(
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
              ],
            ),
          ),
        ),

        const Divider(height: 48, color: Color(0xFFEEEEEE), thickness: 1.3),

        const Padding(padding: EdgeInsets.only(top: 24, bottom: padding, left: padding), child: Text('Reservation time', style: Default.heading)),
        Padding(
          padding: const EdgeInsets.only(right: padding * 2, left: padding),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text('Start time', style: Secondary.title),
                    const Gap(8),
                    Card.filled(
                      color: grey,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.calendar_today_outlined, color: Colors.black),
                            Gap(padding / 2),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[Text('13-08-20240', style: Secondary.titleLarge), Text('01:13 AM', style: Bold.title)],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text('End time', style: Secondary.title),
                    const Gap(8),
                    Card.filled(
                      color: grey,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.calendar_today_outlined, color: Colors.black),
                            Gap(padding / 2),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[Text('13-08-20240', style: Secondary.titleLarge), Text('01:13 AM', style: Bold.title)],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 48, color: Color(0xFFEEEEEE), thickness: 1.3),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Text('Service type', style: Primary.title), Text('Total charge', style: Primary.title)],
              ),
              Gap(horizontalSpacing / 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Text('Rentals', style: Primary.heading), Text(r'$ 22', textAlign: TextAlign.center, style: Primary.heading)],
              ),
              Gap(12),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'View breakdown',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: darkgrey, fontSize: 11, fontFamily: 'Open', fontWeight: FontWeight.w600, decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    bottomNavigationBar: rideFare(context),
  );

  Widget rideFare(final BuildContext context) => Container(
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
        BlackButton(text: 'Rent now', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (final BuildContext context) => const Receipt()))),
      ],
    ),
  );

  Widget paymentInfo(final BuildContext context) => SizedBox(
    height: 48,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding * 2),
      child: Row(
        children: <Widget>[
        //  SvgPicture.asset(logo, alignment: Alignment.topLeft, height: 22),
          Container(margin: const EdgeInsets.only(left: 16), height: 22, alignment: Alignment.center, child: const Text('Bold Pay', style: Bold.titleBig)),
          const Spacer(),
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (final BuildContext context) => const Receipt())),
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
