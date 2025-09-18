import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/constants/constants.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';

// Riverpod StateProvider for managing current page index
final currentPageIndexProvider = AutoDisposeStateProvider<int>((ref) => 0);

class SafetySplash extends ConsumerWidget {
  const SafetySplash({super.key});

  @override
  Widget build(final BuildContext context, WidgetRef ref) {
    // Assuming l10n is initialized via context

    final PageController controller = PageController();

    // Watch the current page index
    final int currentPageIndex = ref.watch(currentPageIndexProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: NameBackBar(title: _getAppBarTitle(currentPageIndex, context)),
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          ref.read(currentPageIndexProvider.notifier).state = index;
        },
        children: const <Widget>[First(), Second(), Third()],
      ),
      bottomNavigationBar: SafeArea(
        maintainBottomViewPadding: true,
        minimum: const EdgeInsets.all(padding),
        child: SizedBox(
          height: 20,
          child: Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(spacing: 16, dotWidth: 48, dotHeight: 5, dotColor: Color(0xFFEEEEEE), activeDotColor: Color(0xFF18C4B8)),
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to get app bar title based on current page
  String _getAppBarTitle(int pageIndex, BuildContext context) {
    switch (pageIndex) {
      case 0:
        return l10n.safety;
      case 1:
        return l10n.passenger_safety;
      case 2:
        return l10n.emergency_contact;
      default:
        return l10n.safety;
    }
  }
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQuery = MediaQuery.of(context);

    return ListView(
      padding: const EdgeInsets.all(padding),
      children: <Widget>[
        Image.asset(safety1, width: mediaQuery.size.width * .75),
        const Gap(padding),
        Text(l10n.ensuringVehicleSafetyTitle, style: Bold.headingSmall, textAlign: TextAlign.center),
        const Gap(padding),
        Text(l10n.ensuringVehicleSafetyDesc, style: Primary.titleNormal),
        const Gap(padding),
        Text(l10n.regularVehicleInspectionsTitle, style: Bold.titleSmall),
        Text(l10n.regularVehicleInspectionsDesc, style: Primary.titleNormal),
        const Gap(padding),
        Text(l10n.driverVerificationTrainingTitle, style: Bold.titleSmall),
        Text(l10n.driverVerificationTrainingDesc, style: Primary.titleNormal),
        const Gap(padding),
        Text(l10n.realTimeRideMonitoringTitle, style: Bold.titleSmall),
        Text(l10n.realTimeRideMonitoringDesc, style: Primary.titleNormal),
        const Gap(padding),
        Text(l10n.inAppEmergencyAssistanceTitle, style: Bold.titleSmall),
        Text(l10n.inAppEmergencyAssistanceDesc, style: Primary.titleNormal),
        const Gap(padding),
        Text(l10n.safetyFeedbackMechanismTitle, style: Bold.titleSmall),
        Text(l10n.safetyFeedbackMechanismDesc, style: Primary.titleNormal),
      ],
    );
  }
}

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQuery = MediaQuery.of(context);

    return ListView(
      padding: const EdgeInsets.all(padding),
      children: <Widget>[
        Image.asset(
          safety2,
          height: mediaQuery.size.height * .2,
        ),
        const Gap(padding * 2),
        Text(l10n.ensuringPassengerSafetyTitle, style: Bold.headingSmall, textAlign: TextAlign.center),
        const Gap(padding),
        Text(l10n.ensuringPassengerSafetyDesc, style: Primary.titleNormal),
        const Gap(padding * 2),
        Text(l10n.keySafetyFeatures, style: Bold.titleLarge),
        const Gap(padding),
        Text(l10n.driverVerification, style: Bold.titleSmall),
        Text(l10n.driverVerificationDesc, style: Primary.titleNormal),
        const Gap(padding),
        Text(l10n.realTimeTracking, style: Bold.titleSmall),
        Text(l10n.realTimeTrackingDesc, style: Primary.titleNormal),
        const Gap(padding),
        Text(l10n.emergencyAssistance, style: Bold.titleSmall),
        Text(l10n.emergencyAssistanceDesc, style: Primary.titleNormal),
        const Gap(padding),
        Text(l10n.tripReviewsAndRatings, style: Bold.titleSmall),
        Text(l10n.tripReviewsAndRatingsDesc, style: Primary.titleNormal),
        const Gap(padding * 2),
        Text(l10n.tipsForSafeRide, style: Bold.titleLarge),
        const Gap(padding),
        Text.rich(
          TextSpan(
            children: [TextSpan(text: l10n.verifyTheDriver, style: Bold.titleSmall), TextSpan(text: l10n.verifyTheDriverDesc, style: Primary.titleNormal)],
          ),
        ),
        const Gap(padding),
        Text.rich(TextSpan(children: [TextSpan(text: l10n.buckleUp, style: Bold.titleSmall), TextSpan(text: l10n.buckleUpDesc, style: Primary.titleNormal)])),
        const Gap(padding),
        Text.rich(
          TextSpan(children: [TextSpan(text: l10n.shareYourRide, style: Bold.titleSmall), TextSpan(text: l10n.shareYourRideDesc, style: Primary.titleNormal)]),
        ),
        const Gap(padding * 2),
        Text(l10n.yourSafetyOurCommitment, style: Bold.titleLarge),
        const Gap(padding),
        Text(l10n.yourSafetyOurCommitmentDesc, style: Primary.titleNormal),
      ],
    );
  }
}

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQuery = MediaQuery.of(context);

    return ListView(
      padding: const EdgeInsets.all(padding),
      children: <Widget>[
        Image.asset(safety3, height: mediaQuery.size.height * .2),
        const Gap(padding),
        Text(l10n.importanceOfEmergencyContactTitle, style: Bold.headingSmall, textAlign: TextAlign.center),
        const Gap(padding),
        Text(l10n.importanceOfEmergencyContactDesc, style: Primary.titleNormal),
        const Gap(padding * 2),
        Text(l10n.whyAddEmergencyContactTitle, style: Bold.titleLarge),
        const Gap(padding),
        Text(l10n.whyAddEmergencyContactDesc, style: Primary.titleNormal),
        const Gap(padding * 2),
        Text(l10n.howItWorksTitle, style: Bold.titleLarge),
        const Gap(padding),
        Text(l10n.howItWorksDesc, style: Primary.titleNormal),
        const Gap(padding * 2),
        Text(l10n.staySafeStayConnectedTitle, style: Bold.titleLarge),
        const Gap(padding),
        Text(l10n.staySafeStayConnectedDesc, style: Primary.titleNormal),
      ],
    );
  }
}
