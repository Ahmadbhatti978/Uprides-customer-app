import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/appbar/backbar.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../core/widgets/phone_no.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';

class AddEmergency extends StatefulWidget {
  const AddEmergency({super.key});

  @override
  State<AddEmergency> createState() => _AddEmergencyState();
}

class _AddEmergencyState extends State<AddEmergency> {
  @override
  Widget build(final BuildContext context) => Scaffold(
    //  resizeToAvoidBottomInset: false,
    appBar: const BackBar(),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: const EdgeInsets.symmetric(vertical: padding * 2), child: Text(l10n.add_emergency_contact, style: Bold.headingBig)),
          Text(l10n.person_full_name, style: Default.heading),
          const Padding(
            padding: EdgeInsets.only(top: 8, bottom: padding * 2),
            child: TextField(
              // onChanged: (value) => setState(() => name = value),
              // onSubmitted: (value) => setState(() => name = value),
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.send,
              // decoration: InputDecoration(
              //   hintText: "What can we call you",
              // )
            ),
          ),
          Text(l10n.person_phone_number, style: Default.heading),
          Padding(padding: const EdgeInsets.only(top: 8, bottom: padding * 2), child: PhoneNo(onTextChanged: (final String text) {})),
          Text(l10n.we_wont_share_this_phone_number_with_the_driver, style: Secondary.title),
          const Gap(12),
          Text(l10n.agree_to_share_trip_details, style: Secondary.title),
        ],
      ),
    ),
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, padding * 2),
      child: BlackButton(
        text: l10n.next,
        onPressed: () {},
        //  Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) ,
        //     )),
      ),
    ),
  );
}
