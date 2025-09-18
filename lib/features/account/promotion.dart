import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/router/route.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';

class Promotion extends StatelessWidget {
  const Promotion({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    resizeToAvoidBottomInset: false,
    appBar: NameBackBar(title: l10n.promotion),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(l10n.promo_heading("12", 12, "€", "12"), style: Primary.heading),
          const Gap(padding * 2),
          Text(l10n.promo_subtext, style: Secondary.title),
          const Gap(24),
          Text(
            '•  ${l10n.promo_validity}',
            style: const TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Open', fontWeight: FontWeight.w400, letterSpacing: 0.40),
          ),
          Text(
            '•  ${l10n.promo_max_discount("€", "12")}',
            style: const TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Open', fontWeight: FontWeight.w400, letterSpacing: 0.40),
          ),

          const Gap(24),
          Text(l10n.promo_expiration("30 October, 2025"), style: Secondary.title),
          const Gap(24),
          Row(
            children: <Widget>[
              Container(
                height: 18,
                width: 18,
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(border: Border.all(width: 6.5), color: Colors.transparent, shape: BoxShape.circle),
              ),
              Text(l10n.apply_now_on_booking, style: Primary.heading),
            ],
          ),
        ],
      ),
    ),
    floatingActionButton: BlackButton(text: l10n.book_ride, onPressed: () => Navigator.pushNamed(context, AppRoutes.addLocation)),
  );
}
