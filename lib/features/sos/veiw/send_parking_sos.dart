import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../util/colors.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

class SendParkingSoS extends StatelessWidget {
  const SendParkingSoS({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: const NameBackBar(title: 'SoS'),
    body: ListView(
      padding: EdgeInsets.fromLTRB(padding, 0, padding, mediaQuery.viewInsets.bottom / 2),
      children: <Widget>[
        Padding(padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 45), child: Image.asset(sos)),
          Padding(
          padding: const EdgeInsets.only(top: padding, bottom: padding * 2),
          child: Text(l10n.send_parking_sos, textAlign: TextAlign.center, style: Bold.headingBig),
        ),
          Text(l10n.enter_the_blocking_vehicle_number, style: Default.heading),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: padding),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: grey,
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Color.fromARGB(50, 223, 223, 223))),
              border: const OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(25, 223, 223, 223))),
              hintText: 'Enter your vehical number',
            ),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: grey,
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Color.fromARGB(50, 223, 223, 223))),
            border: const OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(25, 223, 223, 223))),
            hintText: 'Enter your vehical colour',
          ),
        ),
      ],
    ),
    bottomSheet: Container(
      color: Colors.white,
      padding: const EdgeInsets.only(bottom: 18),
      child: BlackButton(text: 'Send SoS', onPressed: () => Navigator.pushNamed(context, AppRoutes.parkinSoS)),
    ),
  );
}
