import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../core/widgets/dotted_line.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../booking/addlocation/model/place.dart';
import '../booking/arriving_waiting_ongoing/arriving_in.dart';
import 'overveiw.dart';

class CarDetail extends StatelessWidget {
  const CarDetail({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: const NameBackBar(title: 'Rentals'),
    body: ListView(
      padding: const EdgeInsets.only(bottom: 48, top: 8),
      children: <Widget>[
        Image.asset(mustang),
        const Text(
          'Ford Mustang GT 440',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: darkgrey, fontFamily: 'Open', fontVariations: <FontVariation>[FontVariation('wght', 600)]),
        ),
        const Divider(height: 48),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: padding * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    properties(seat, '5 seater'),
                    properties(airbag, '6 Airbags'),
                    properties(luggage, '1 Luggage'),
                    properties(manual, 'Manual'),
                  ],
                ),
              ),
              Text(l10n.total_charges, style: Default.heading),
              Card.outlined(
                shape: RoundedRectangleBorder(side: const BorderSide(color: Color(0xFFEEEEEE), width: 1.6), borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.symmetric(vertical: padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(padding),
                      child: Row(
                        children: <Widget>[
                          Text(l10n.due_now, style: Primary.heading),
                          const Spacer(),
                          const Icon(Icons.euro),
                          const Gap(padding / 2),
                          const Text('11.31', style: Primary.heading),
                          const Gap(padding),
                          IconButton.outlined(
                            onPressed: () {},
                            style: const ButtonStyle(
                              side: WidgetStatePropertyAll(BorderSide(color: Color(0xFFEEEEEE), width: 2)),
                              minimumSize: WidgetStatePropertyAll(Size.square(30)),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              padding: WidgetStatePropertyAll(EdgeInsets.zero),
                            ),
                            visualDensity: VisualDensity.standard,
                            icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Colorx.primary),
                          ),
                        ],
                      ),
                    ),
                    CustomPaint(
                      size: const Size.fromHeight(4),
                      painter: DottedLinePainter(color: const Color(0xFFEEEEEE), dashWidth: 8, gapWidth: 7, thickness: 1.4),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: padding),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox.square(dimension: 46, child: Image.asset(rentCar, fit: BoxFit.cover)),
                          ),
                          const Gap(8),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'FORD Mustang GT 440',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Open',
                                  fontVariations: <FontVariation>[FontVariation('wght', 700)],
                                ),
                              ),
                              Text('21 August - 1:30 PM | 23 August - 5:15 PM', style: Secondary.titleSmall),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CustomPaint(
                      size: const Size.fromHeight(4),
                      painter: DottedLinePainter(color: const Color(0xFFEEEEEE), dashWidth: 8, gapWidth: 7, thickness: 1.4),
                    ),
                    const Padding(padding: EdgeInsets.fromLTRB(16, 8, 0, 12), child: Text('Zain Calzoni + 1 Traveller', style: Secondary.title)),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: padding), child: Text('Features', style: Default.heading)),
              Row(children: <Widget>[SvgPicture.asset(fuel), const Gap(8), const Text('More mileage', style: Primary.titleSmall)]),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: padding),
                child: Row(children: <Widget>[SvgPicture.asset(space), const Gap(8), const Text('Spacious', style: Primary.titleSmall)]),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: padding), child: Text('Pickup & Drop', style: Default.heading)),
              Card.outlined(
                clipBehavior: Clip.hardEdge,
                margin: const EdgeInsets.only(bottom: padding),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(width: 1.2, color: Color(0xFFDDDDDD)),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Image.asset(map, height: mediaQuery.size.height * .2, width: mediaQuery.size.width, fit: BoxFit.cover),
              ),
              //  PickupDropLocations(places: places),
              const Padding(padding: EdgeInsets.only(top: padding * 2, bottom: padding), child: Text('Reservation time', style: Default.heading)),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text('Pickup', style: Secondary.title),
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
                          Text( l10n.drop   , style: Secondary.title),
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
        BlackButton(
          text: 'Rent now',
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (final BuildContext context) => const Overveiw(places: <Place>[]))),
        ),
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
          Container(
            margin: const EdgeInsets.only(left: 16),
            height: 22,
            alignment: Alignment.center,
            child:   Text(l10n.bold_pay   , style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'Open', height: 0.06)),
          ),
          const Spacer(),
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (final BuildContext context) => const ArrivingIN())),
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

  Widget properties(final String icon, final String type) =>
      Column(children: <Widget>[SvgPicture.asset(icon), const Gap(8), Text(type, style: Primary.titleSmall)]);
}
