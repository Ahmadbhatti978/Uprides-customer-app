import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/constants.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../core/widgets/text_feild.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

class AddAReferral extends StatelessWidget {
  const AddAReferral({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: NameBackBar(title: l10n.referral),
    body: Padding(
      padding: const EdgeInsets.all(padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(addAReferral, width: mediaQuery.size.width * 0.8)),
          const Gap(padding * 2),
            Text(l10n.add_a_referral  , style: Primary.headingSmalll),
          const Gap(padding),
           FilledTextField(hintText: l10n.enter_referral_code),
          Text(l10n.enter_referral_code_to_claim_your_reward),
        ],
      ),
    ),
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, kBottomNavigationBarHeight),
      child: BlackButton(text: l10n.ontinue, onPressed: () {}),
    ),
  );
}
