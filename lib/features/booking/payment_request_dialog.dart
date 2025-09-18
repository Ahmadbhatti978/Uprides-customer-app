import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/constants.dart';
import '../../core/model/ride_payment.dart';
import '../../core/router/route.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../core/widgets/buttons/grey.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../account/wallet/repo/req_payment.dart';
import '../account/wallet/wallet.dart';

class PaymentRequestDialog extends StatelessWidget {
  const PaymentRequestDialog({required this.ride, super.key});
  final RidePaymentModel ride;

  @override
  Widget build(final BuildContext context) => Dialog(
    insetPadding: EdgeInsets.all(mediaQuery.size.width * .06),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: contentBox(context),
  );

  Widget contentBox(final BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: p24, vertical: 40),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: const <BoxShadow>[BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 10))],
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      spacing: padding,
      children: <Widget>[
        Text(l10n.payment_request, style: Bold.headingBig),
        Text.rich(
          TextSpan(
            children: <InlineSpan>[
              TextSpan(text: ride.payload?.rideDetails?.customerName, style: Primary.titleLarge),
              TextSpan(text: " ${l10n.is_requesting} ", style: Secondary.titleBig),
              TextSpan(text: '€${ride.payload?.rideDetails?.totalAmount} ', style: Primary.titleLarge),
              TextSpan(text: l10n.from_you, style: Secondary.titleBig),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        // Rate Us Button
        Row(
          spacing: padding,
          children: <Widget>[
            Expanded(
              child: GreyButton(
                text: l10n.cancel,
                expand: false,
                onPressed: () {
                  ReqPayment.reject(paymentRequestId: ride.payload!.rideDetails!.paymentRequestId!);

                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              child: Consumer(
                builder:
                    (context, ref, child) => BlackButton(
                      isBold: false,
                      expand: false,
                      isSmall: true,
                      onPressed: () {
                        ref.read(reqpaymentEnabled.notifier).state = false;
                        ref.read(isRequestPaymentMethodDefault.notifier).state = false;
                        Navigator.popAndPushNamed(context, AppRoutes.paymentRequestVeiw, arguments: ride.payload!.rideDetails!.paymentRequestId);
                      },
                      text: l10n.view_request,
                    ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
