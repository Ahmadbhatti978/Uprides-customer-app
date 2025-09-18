import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../core/widgets/text_feild.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

class AddAVoucher extends StatelessWidget {
  const AddAVoucher({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(l10n.vouchers)),
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: Column(
          spacing: padding,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.all(p24), child: Center(child: Image.asset(addAvoucher, width: mediaQuery.size.width * 0.6))),
            Text(l10n.add_a_voucher, style: Default.headingSmall),
            FilledTextField(hintText: l10n.enter_voucher_code),
            Text(l10n.enter_voucher_number_to_claim, style: Default.title),
            const Spacer(),
            BlackButton(text: l10n.ontinue),
          ],
        ),
      ),
    ),
  );
}
