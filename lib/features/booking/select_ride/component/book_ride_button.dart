import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/router/route.dart';
import '../../../../core/widgets/buttons/bold_pay_button.dart';
import '../../../../util/variable.dart';
import '../../model/ride.dart';
import '../../provider/selected_ride.dart';

class BookRideButton extends ConsumerWidget {
  const BookRideButton({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final Ride? selectedRide = ref.watch(selectedRideProvider);

    return ColoredBox(
      color: Colors.white,
      child: SafeArea(
        top: false,
        maintainBottomViewPadding: true,
        minimum: const EdgeInsets.only(bottom: p12),
        child:
            selectedRide != null
                ? BoldPayButton(
                  pay: selectedRide.discountedPriceWithoutVat?.toString(),
                  onBook: (paymentMethod) => Navigator.pushNamed(context, AppRoutes.confirmPay, arguments: ModalRoute.settingsOf(context)?.arguments),
                  buttonTitle: l10n.book_ride,
                )
                : const SizedBox.shrink(),
      ),
    );
  }
}
