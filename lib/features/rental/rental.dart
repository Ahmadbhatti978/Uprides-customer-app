import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/router/route.dart';
import '../../core/widgets/appbar/cross_name.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';

class Rental extends StatelessWidget {
  const Rental({super.key});

  @override
  Widget build(final BuildContext context) {
    bool isSelected = false;
    return Scaffold(
      appBar: const CrossName(title: 'Rental'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(rental),
            const Gap(24),
            const Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(text: 'Welcome to ', style: Bold.headingBig),
                  TextSpan(
                    text: 'BOLD',
                    style: TextStyle(color: Color(0xFF18C4B8), fontSize: 24, fontVariations: <FontVariation>[FontVariation('wght', 700)], letterSpacing: 0.48),
                  ),
                  TextSpan(text: ' rental', style: Bold.headingBig),
                ],
              ),
            ),
            const Gap(8),
            Text(l10n.hello_lets_start_your_rental_journey, textAlign: TextAlign.center, style: Primary.titleSmall),
            const Gap(padding / 1.75),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Lisbon  >',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF18C4B8), fontSize: 14, fontVariations: <FontVariation>[FontVariation('wght', 700)]),
              ),
            ),
            const Gap(horizontalSpacing * 1.75),
            SizedBox(
              height: 50,
              child: FilledButton.icon(
                onPressed: () => Navigator.pushNamed(context, AppRoutes.singleLocation),
                style: FilledButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  fixedSize: Size.fromWidth(mediaQuery.size.width),
                  backgroundColor: grey,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                label: Text(l10n.where_do_you_want_to_go, style: Secondary.hintText),
                icon: Container(
                  height: 18,
                  width: 18,
                  margin: const EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(border: Border.all(width: 6), color: Colors.transparent),
                ),
              ),
            ),
            const Gap(padding),
            SizedBox(
              height: 47,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: () => showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime.now().add(const Duration(days: 365))),
                      style: FilledButton.styleFrom(
                        alignment: Alignment.centerLeft,
                        fixedSize: Size.fromWidth(mediaQuery.size.width),
                        backgroundColor: grey,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      label: Text(l10n.select_date, style: Secondary.titleLarge),
                      icon: const Icon(Icons.calendar_today_outlined, color: Colors.black),
                    ),
                  ),
                  const Gap(22),
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: () => showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime.now().add(const Duration(days: 365))),
                      style: FilledButton.styleFrom(
                        alignment: Alignment.centerLeft,
                        backgroundColor: grey,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      label: Text(l10n.end_date, style: Secondary.titleLarge),
                      icon: const Icon(Icons.calendar_today_outlined, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(24),
            StatefulBuilder(
              builder:
                  (final BuildContext context, final setState) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CheckboxListTile(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: isSelected ? const Color.fromRGBO(24, 196, 184, 1) : const Color(0xFFD0D5DD), width: 2),
                      checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      //  fillColor: const WidgetStatePropertyAll(Colors.black45),
                      //     checkColor: const Color.fromRGBO(24, 196, 184, 1),
                      activeColor: const Color.fromRGBO(24, 196, 184, 1),
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      controlAffinity: ListTileControlAffinity.leading,
                      visualDensity: VisualDensity.comfortable,
                      value: isSelected,
                      onChanged: (final bool? value) => setState(() => isSelected = value ?? true),
                      title: Text(l10n.pickup_deliver_on_the_selective_locations, style: Secondary.titleSmall),
                    ),
                  ),
            ),
          ],
        ),
      ),
      floatingActionButton: FilledButton(
        onPressed: () => Navigator.pushNamed(context, AppRoutes.listOfRentalCar),
        style: FilledButton.styleFrom(
          backgroundColor: Colors.black,
          visualDensity: VisualDensity.compact,
          minimumSize: Size(mediaQuery.size.width * .35, 50),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          foregroundColor: Colors.white,
          fixedSize: Size.fromWidth(mediaQuery.size.width - horizontalSpacing * 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text(l10n.search_car, textAlign: TextAlign.center, style: White.headingSmall), SvgPicture.asset(arrow, height: 14)],
        ),
      ),
    );
  }
}
