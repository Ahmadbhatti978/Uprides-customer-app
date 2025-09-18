import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/constants.dart';
import '../../../core/extensions/date.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/align/icon_text.dart';
import '../../../core/widgets/align/title_subtitle.dart';
import '../../../core/widgets/appbar/filled_back_bar.dart';
import '../../../core/widgets/buttons/bold_pay_button.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../../util/widget/widgets.dart';
import '../addlocation/model/place.dart';
import '../model/ride.dart';
import '../provider/selected_ride.dart';
import '../select_ride/provider/book_ride.dart';
import 'component/map.dart';

final AutoDisposeStateProvider<String> confirmPayProvider = AutoDisposeStateProvider<String>((final Ref<String> ref) => '');

class ConfirmPay extends StatelessWidget {
  const ConfirmPay({super.key});

  @override
  Widget build(final BuildContext context) {
    mediaQuery = MediaQuery.of(context);

    return const Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: FilledBackBar(),
      body: Stack(children: <Widget>[CMap(), ConfirmPaySheet()]),
      bottomNavigationBar: ConfirmPayBottomNavBar(),
    );
  }
}

class EtaContainer extends StatelessWidget {
  const EtaContainer({super.key, this.etaSeconds});

  final int? etaSeconds;

  @override
  Widget build(BuildContext context) {
    final int minutes = Duration(seconds: etaSeconds ?? 0).inMinutes;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: p12),
      color: Colors.white,
      child:
          minutes < 61
              ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text(minutes.toString(), style: Bold.titleBig), Text(l10n.min, style: Secondary.bodySmll)],
              )
              : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Text(Duration(seconds: etaSeconds ?? 0).inHours.toString(), style: Bold.titleBig),
                      Text(Duration(seconds: etaSeconds ?? 0).inHours > 1 ? l10n.hrs : l10n.hr, style: Secondary.bodySmll),
                    ],
                  ),
                  Row(children: [Text((minutes % 60).toString(), style: Bold.titleBig), Text(l10n.min, style: Secondary.bodySmll)]),
                ],
              ),
    );
  }
}

class LocationLabel extends StatelessWidget {
  const LocationLabel({required this.place, required this.isStartPoint, super.key});

  final Place place;
  final bool isStartPoint;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(color: Colors.black, borderRadius: isStartPoint ? BorderRadius.circular(12) : null),
    alignment: Alignment.center,
    child: Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: mediaQuery.size.width * 0.45, minWidth: 50, maxHeight: 64, minHeight: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              place.mainText ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis, // Changed from clip
              softWrap: true,
              textAlign: TextAlign.center,
              style: White.titleLarge,
            ),
          ],
        ),
      ),
    ),
  );
}

class ConfirmPaySheet extends ConsumerWidget {
  const ConfirmPaySheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Ride? selectedRide = ref.read(selectedRideProvider);
    return DraggableScrollableSheet(
      maxChildSize: 490 / mediaQuery.size.height,
      minChildSize: 0.3,
      initialChildSize: 454 / mediaQuery.size.height,
      builder:
          (context, scrollController) => DecoratedBox(
            decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(padding))),
            child: SingleChildScrollView(
              controller: scrollController,
              padding: const EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Center(child: buildHandle),
                  Text(l10n.confirm_your_price, style: Default.headingSmall, textAlign: TextAlign.left),
                  const Gap(spacing),
                  RideDetailsRowWidget(selectedRide: selectedRide),
                  PriceBreakdownCardWidget(selectedRide: selectedRide),
                  const Divider(),
                  TotalPriceRowWidget(selectedRide: selectedRide),
                ],
              ),
            ),
          ),
    );
  }
}

class RideDetailsRowWidget extends StatelessWidget {
  const RideDetailsRowWidget({super.key, this.selectedRide});

  final Ride? selectedRide;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      TitleSubtitle(title: l10n.cab_type, subTitle: selectedRide?.rideName ?? '', cyan: true, lowersizeSubtitle: true, spacing: 6),
      TitleSubtitle(title: l10n.date, subTitle: DateTime.now().toFormattedDate(), cyan: true, lowersizeSubtitle: true, spacing: 6),
    ],
  );
}

class PriceBreakdownCardWidget extends StatelessWidget {
  const PriceBreakdownCardWidget({super.key, this.selectedRide});

  final Ride? selectedRide;

  @override
  Widget build(BuildContext context) {
    const double cardPadding = 16;
    const double itemSpacing = 12;

    return Card.filled(
      margin: const EdgeInsets.only(top: cardPadding, bottom: cardPadding / 2),
      color: const Color.fromARGB(255, 242, 242, 245),
      child: Padding(
        padding: const EdgeInsets.all(cardPadding),
        child: Column(
          children: <Widget>[
            PriceRowWidget(label: l10n.base_fare, amount: selectedRide?.discountedPriceWithoutVat?.toString() ?? '0'),
            const SizedBox(height: itemSpacing),
            PriceRowWidget(label: l10n.vat, amount: selectedRide?.vatAmount?.toString() ?? '0'),
          ],
        ),
      ),
    );
  }
}

class PriceRowWidget extends StatelessWidget {
  const PriceRowWidget({required this.label, required this.amount, super.key});
  final String label;
  final String amount;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[Text(label), IconText(text: amount, gap: 4, icon: Icons.euro, size: 16, isBold: true, textSize: 16)],
  );
}

class TotalPriceRowWidget extends StatelessWidget {
  const TotalPriceRowWidget({super.key, this.selectedRide});

  final Ride? selectedRide;

  @override
  Widget build(BuildContext context) {
    const double verticalPadding = 16;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: verticalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(l10n.total, style: Bold.heading),
          IconText(text: selectedRide?.totalAmount?.toString() ?? '0', gap: 2, icon: Icons.euro, size: 24, isBold: true, textSize: 24),
        ],
      ),
    );
  }
}

class ConfirmPayBottomNavBar extends ConsumerWidget {
  const ConfirmPayBottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Ride? selectedRide = ref.read(selectedRideProvider);
    final String? confirmingPaymentRideTypeId = ref.watch(confirmPayProvider);

    return ColoredBox(
      color: Colors.white,
      child: SafeArea(
        top: false,
        maintainBottomViewPadding: true,
        minimum: const EdgeInsets.only(bottom: p12),
        child:
            (confirmingPaymentRideTypeId == selectedRide?.rideTypeId && selectedRide?.rideTypeId != null)
                ? const PaymentProcessingBodyWidget()
                : BoldPayButton(
                  pay: null, // Assuming 'pay' is for selecting payment method, not used here for direct booking
                  onRequestSchedule: () {
                    Navigator.pushNamed(context, AppRoutes.moneyRequest);
                  },
                  onBook: (paymentMethod) {
                    // paymentMethod might be null or a specific type if selection is implemented
                    if (selectedRide?.rideTypeId != null) {
                      ref.read(confirmPayProvider.notifier).state = selectedRide!.rideTypeId!;
                    }
                  },
                  buttonTitle: l10n.confirm_pay, // Using l10n
                ),
      ),
    );
  }
}

class PaymentProcessingBodyWidget extends ConsumerWidget {
  const PaymentProcessingBodyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => ref
      .watch(paymentRequestProvider)
      .when(
        data:
            (_) => SafeArea(
              top: false,
              maintainBottomViewPadding: true,
              minimum: const EdgeInsets.only(bottom: p12),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding),
                child: BlackButton(text: l10n.search_again, onPressed: () => Navigator.pushNamed(context, AppRoutes.loadingRide)),
              ),
            ),
        error:
            (error, _) => SafeArea(
              top: false,
              maintainBottomViewPadding: true,
              minimum: const EdgeInsets.only(bottom: p12),
              child: Container(height: padding * 3, alignment: Alignment.center, padding: const EdgeInsets.all(8), child: Text(error.toString())),
            ),
        loading:
            () => Padding(
              padding: const EdgeInsets.only(bottom: padding * 2, top: p24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(l10n.processing),
                  const SizedBox(width: 16),
                  const SizedBox.square(dimension: 20, child: CircularProgressIndicator(strokeWidth: 1.4)),
                ],
              ),
            ),
      );
}
