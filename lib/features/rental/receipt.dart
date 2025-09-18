import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../core/constants/constants.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../util/colors.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';

class Receipt extends StatelessWidget {
  const Receipt({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: const NameBackBar(title: 'Receipt'),
    body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      children: <Widget>[
        Text(l10n.invoice, style: Default.heading),
        const Gap(padding * 2),
        const Row(
          children: <Widget>[
            CircleAvatar(radius: 24),
            Gap(padding),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Text('Gretchen Geidt', style: Primary.title), Gap(2), Text('Benz C-Class', style: Primary.titleSmall)],
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: ColoredBox(
                color: grey,
                child: Padding(padding: EdgeInsets.only(top: 2, left: 12, right: 12, bottom: 3), child: Text('JH 01AM 2218', style: Secondary.title)),
              ),
            ),
          ],
        ),
        const Gap(48),
        //PickupDropLocations(places: [])
        Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(l10n.start_time, style: Secondary.title),
                  const Gap(8),
                  Card.filled(
                    margin: EdgeInsets.zero,
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
                  Text(l10n.end_time, style: Secondary.title),
                  const Gap(8),
                  Card.filled(
                    color: grey,
                    margin: EdgeInsets.zero,
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

        Container(
          margin: const EdgeInsets.symmetric(vertical: padding * 2),
          decoration: BoxDecoration(border: Border.all(color: const Color(0xFFEEEEEE))),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text(l10n.fair, style: Primary.titleSmall), const Text('32', style: Primary.titleSmall)],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text(l10n.subtotal, style: Primary.titleSmall), const Text('32', style: Primary.titleSmall)],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text(l10n.promotion, style: Primary.titleSmall), const Text('-08', style: Primary.titleSmall)],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text(l10n.total, style: Primary.titleSmall), const Text('24', style: Primary.titleSmall)],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text(l10n.amount_paid, style: Bold.headingSmall), const Text(r'$24', style: Bold.headingSmall)],
        ),
        const Gap(padding),
        // Row(
        //   children: <Widget>[
        //     SvgPicture.asset(logo, alignment: Alignment.topLeft, height: 22),
        //     Container(margin: const EdgeInsets.only(left: 16), height: 22, alignment: Alignment.center, child: Text(l10n.bold_pay, style: Bold.titleBig)),
        //   ],
        // ),
        const Gap(48),
        BlackButton(text: l10n.download_invoice, onPressed: () {}),
      ],
    ),
  );
}
