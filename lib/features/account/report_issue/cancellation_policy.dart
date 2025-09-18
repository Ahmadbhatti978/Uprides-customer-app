import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/constants.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

class CancellationPolicy extends StatelessWidget {
  const CancellationPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    final String supportEmail = l10n.supportEmail;

    return Scaffold(
      appBar: NameBackBar(title: l10n.help),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: padding, vertical: padding),
        children: [
          Text(l10n.cancellationPolicyTitle, style: Bold.displaySmall),
          const Gap(padding),

          // Section 1
          _PolicySection(
            title: l10n.freeCancellationWindow,
            children: [
              _PolicyPoint(title: l10n.standardRides, description: l10n.standardRidesDesc),
              _PolicyPoint(title: l10n.preBookedRides, description: l10n.preBookedRidesDesc),
            ],
          ),

          // Section 2
          _PolicySection(
            title: l10n.whenFeesApply,
            children: [
              Text(l10n.whenFeesApplyDesc, style: Primary.titleNormal),
              const Gap(padding / 2),
              _PolicyPoint(title: l10n.riderCancelsAfterGrace, description: l10n.riderCancelsAfterGraceDesc),
              _PolicyPoint(title: l10n.riderRejectsRide, description: l10n.riderRejectsRideDesc),
              _PolicyPoint(title: l10n.noShow, description: l10n.noShowDesc),
              _PolicyPoint(title: l10n.whyAFee, description: l10n.whyAFeeDesc, titleStyle: Bold.titleSmall),
            ],
          ),

          // Section 3
          _PolicySection(
            title: l10n.howYouWillSeeFee,
            children: [
              _PolicyPoint(title: l10n.inAppDisplay, description: l10n.inAppDisplayDesc),
              _PolicyPoint(title: l10n.feeOnReceipt, description: l10n.feeOnReceiptDesc),
            ],
          ),

          // Section 4
          _PolicySection(
            title: l10n.waiversAndExceptions,
            children: [
              Text(l10n.waiversAndExceptionsDesc, style: Primary.titleNormal),
              const Gap(padding / 2),
              _PolicyPoint(title: l10n.driverDelay, description: l10n.driverDelayDesc),
              _PolicyPoint(title: l10n.driverCancellation, description: l10n.driverCancellationDesc),
              _PolicyPoint.rich(
                title: l10n.technicalError,
                children: [
                  TextSpan(text: l10n.technicalErrorDispute(supportEmail).split(supportEmail)[0], style: Primary.titleNormal),
                  TextSpan(text: supportEmail, style: Cyan.underline),
                  TextSpan(text: l10n.technicalErrorDispute(supportEmail).split(supportEmail)[1], style: Primary.titleNormal),
                ],
              ),
            ],
          ),

          // Section 5
          _PolicySection(
            title: l10n.driverCancellationsAndNoShows,
            children: [
              _PolicyPoint(title: l10n.driverInitiatedCancellation, description: l10n.driverInitiatedCancellationDesc),
              _PolicyPoint(title: l10n.driverNoShow, description: l10n.driverNoShowDesc),
            ],
          ),

          // Section 6
          _PolicySection(title: l10n.waitingTimeCharges, children: [Text(l10n.waitingTimeChargesDesc, style: Primary.titleNormal)]),

          // Section 7
          _PolicySection(
            title: l10n.preBookedAndGroupRides,
            children: [
              _PolicyPoint(title: l10n.advanceCancellation, description: l10n.advanceCancellationDesc),
              _PolicyPoint(title: l10n.groupBookings, description: l10n.groupBookingsDesc),
              const Gap(padding / 2),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: l10n.contactSupport(supportEmail).split(supportEmail)[0], style: Primary.titleNormal),
                    TextSpan(text: supportEmail, style: Cyan.underline),
                    const TextSpan(text: ".", style: Primary.titleNormal),
                  ],
                ),
              ),
            ],
          ),
          const Gap(padding),
          BlackButton(text: "Close", onPressed: () => Navigator.pop(context)),
          const Gap(padding * 3),
        ],
      ),
    );
  }
}

/// A helper widget to structure policy sections.
class _PolicySection extends StatelessWidget {
  const _PolicySection({required this.title, required this.children});
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: padding * 1.5),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title, style: Bold.titleSmall), const Gap(padding / 2), ...children]),
  );
}

/// A helper widget for a single policy point with a title and description.
class _PolicyPoint extends StatelessWidget {
  const _PolicyPoint({this.title, this.description, this.titleStyle = Primary.title}) : children = null;

  // ignore: unused_element_parameter
  const _PolicyPoint.rich({required this.title, required this.children, this.titleStyle = Primary.title}) : description = null;

  final String? title;
  final String? description;
  final List<TextSpan>? children;
  final TextStyle titleStyle;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: padding / 2),
    child: Text.rich(
      TextSpan(
        children: [
          if (title != null) TextSpan(text: title, style: titleStyle),
          if (description != null) TextSpan(text: description, style: Primary.titleNormal),
          if (children != null) ...children!,
        ],
      ),
    ),
  );
}
