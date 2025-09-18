import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/constants.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/appbar/closebar.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../util/colors.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

class ParkingSoS extends StatelessWidget {
  const ParkingSoS({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    extendBody: true,
    extendBodyBehindAppBar: true,
    appBar: const CloseBar(),
    body: Image.asset(parkingsos, height: mediaQuery.size.height * .5, width: mediaQuery.size.width, fit: BoxFit.fitWidth),
    bottomSheet: Padding(
      padding: const EdgeInsets.fromLTRB(padding, padding * 2, padding, 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text.rich(
            TextSpan(
              children: <InlineSpan>[
                TextSpan(text: l10n.parking, style: Default.heading),
                TextSpan(
                  text: l10n.sos,
                  style: const TextStyle(
                    color: Color.fromRGBO(249, 28, 28, 1),
                    fontSize: 21,
                    fontVariations: <FontVariation>[FontVariation('wght', 680)],
                    letterSpacing: 0.48,
                  ),
                ),
              ],
            ),
          ),
          const Gap(4),
          Text(l10n.stuck_anywhere_lets_begin_then, textAlign: TextAlign.center, style: Secondary.title),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: spacing),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Lisbon  >',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF18C4B8), fontSize: 14, fontVariations: <FontVariation>[FontVariation('wght', 700)]),
              ),
            ),
          ),
          Text(l10n.register_your_car, style: Default.heading),
          const Gap(padding * 2),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: grey,
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Color.fromARGB(50, 223, 223, 223))),
              border: const OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(25, 223, 223, 223))),
              hintText: 'Enter your vehical number',
            ),
          ),
          const Gap(padding),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: grey,
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Color.fromARGB(50, 223, 223, 223))),
              border: const OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(25, 223, 223, 223))),
              hintText: 'Enter your vehical colour',
            ),
          ),
          Gap(mediaQuery.viewInsets.bottom > 0 ? 32 : 95),
          BlackButton(
            text: l10n.ontinue,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.sendParkingDetail);
            },
          ),
        ],
      ),
    ),
  );
}
