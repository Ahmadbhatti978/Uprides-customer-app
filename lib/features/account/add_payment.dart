import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../../core/constants/constants.dart';
import '../../core/stripe/stripe_service.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../util/colors.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';

class AddPayment extends StatelessWidget {
  const AddPayment({super.key});

  @override
  Widget build(final BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: padding, vertical: 24),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      spacing: padding,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(l10n.add_your_card_details, style: Default.headingLarge),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton.icon(
            style: TextButton.styleFrom(foregroundColor: primary, alignment: Alignment.centerRight),
            onPressed: Stripe.instance.openApplePaySetup,
            label: Text(l10n.scan_card),
            icon: const Icon(CupertinoIcons.camera, size: 22),
          ),
        ),
        CardFormField(
          enablePostalCode: false,
          controller: CardFormEditController(),
          style: CardFormStyle(
            borderColor: Colors.transparent,
            borderRadius: 10,
            fontSize: 18,
            backgroundColor: Colors.white,
            placeholderColor: Colors.grey,
            textColor: Colors.grey,
            //backgroundColor: Colors.white,
            borderWidth: 10,
            //   placeholderColor: primary
          ),
        ),

        BlackButton(
          text: l10n.save_card,
          onPressed: () async {
            await StripeService.instance.createToken();
          },
        ),
      ],
    ),
  );
}
