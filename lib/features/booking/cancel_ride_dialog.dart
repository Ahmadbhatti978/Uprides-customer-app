import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../config/safe_dialog.dart';
import '../../core/constants/constants.dart';
import '../../core/failure/failure.dart';
import '../../core/router/route.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../core/widgets/buttons/grey.dart';
import '../../core/widgets/loading_error/error.dart';
import '../../core/widgets/loading_error/loading.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import 'book_ride/provider/cancel_ride.dart';
import 'book_ride/provider/ride_charges.dart';
import 'model/cancel_charges.dart';

Future rideCancel({String reason = "I_CHANGED_MY_MIND", BuildContext? context, final String? id}) => safeShowDialog(
  context: context ?? navigatorKey.currentContext!,
  routeSettings: const RouteSettings(name: "/CancelRideDialog"),
  barrierDismissible: false,
  builder:
      (_) => Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: p24, vertical: padding * 2),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: padding * 2, horizontal: p24),
          child: CancelRideDialog(reason: reason, rideId: id ?? rideId!),
        ),
      ),
);

class CancelRideDialog extends ConsumerWidget {
  const CancelRideDialog({required this.rideId, required this.reason, super.key});

  final String rideId;
  final String reason;

  @override
  Widget build(BuildContext context, WidgetRef ref) => ref
        .watch(ChargesProvider(rideId))
        .when(
          data: (data) {
            final Charges? charges = data.data?.charges;
            final double fee = charges?.cancellationCharges ?? 0.0;
            final double refund = charges?.refundAmount ?? 0.0;
            final String feeStr = fee.toStringAsFixed(2);
            final String refundStr = refund.toStringAsFixed(2);

            // Build the body text with the right variant
            final bodyText =
                fee == 0
                    ? '${l10n.cancelRideDialog_question} '
                        '${l10n.cancelRideDialog_noChargeInfo} '
                        '${l10n.cancelRideDialog_refundInfo(refundStr)}'
                    : '${l10n.cancelRideDialog_question} '
                        '${l10n.cancelRideDialog_chargeInfo(feeStr)} '
                        '${l10n.cancelRideDialog_refundInfo(refundStr)}';

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 1️⃣ heading
                Text(l10n.cancelRideDialog_cancellationCharges(feeStr), style: Default.heading),

                // 2️⃣ explanatory copy
                Padding(padding: const EdgeInsets.only(top: padding), child: Text(bodyText, style: Secondary.title, textAlign: TextAlign.center)),

                // 3️⃣ action buttons
                Padding(
                  padding: const EdgeInsets.only(top: p24),
                  child: Row(
                    spacing: padding,
                    children: [
                      SizedBox(height: 50, child: GreyButton(text: l10n.cancel, onPressed: () => Navigator.pop(context), expand: false)),
                      BlackButton(
                        text: l10n.cancel_ride, // already localised
                        expand: false,
                        onPressed: () {
                          ref.read(CancelRideProvider(rideId, reason));
                          Navigator.popUntil(context, ModalRoute.withName(AppRoutes.bottomNavigationScreen));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            );
          },

          // Loading / error views stay as-is
          loading: () => const SizedBox(height: 100, child: loading),
          error: (error, stack) => Err(error: error as ErrorDetails),
        );
}
