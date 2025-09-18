import '../../../../../util/style/typo.dart';
import '../../../addlocation/import.dart';
import '../../../model/options.dart';
import '../../../provider/apply_coupon.dart';
import '../../../provider/get_available_options.dart';
import '../../provider/coupon_provider.dart';
import 'promotion_header.dart';
import 'ride_list.dart';
import 'switches.dart';
// ... other imports

// ✨ IMPROVEMENT: Extracted magic numbers into named constants for clarity.
const double _kInitialSheetSize = 0.36;
const double _kMinSheetSize = 0.33;
const double _kMaxSheetSize = 0.7;

class SelectRide extends ConsumerWidget {
  const SelectRide({super.key});

  static final DraggableScrollableController controller = DraggableScrollableController();

  // ✨ IMPROVEMENT: The 'animationCompleted' boolean was unused and has been removed.
  @override
  Widget build(final BuildContext context, WidgetRef ref) {
    final String rideRequestId = (ModalRoute.settingsOf(context)?.arguments as String?) ?? rideRequest!.rideId!;
    final String? couponCode = ref.watch(couponProvider);
    final AsyncValue<Options> options =
        couponCode != null ? ref.watch(ApplyCouponProvider(couponCode: couponCode)) : ref.watch(GetOptionsProvider(rideRequestId))
          ..whenData((value) => controller.isAttached ? controller.animateTo(0.6, duration: Durations.medium4, curve: Curves.ease) : null);
    return DraggableScrollableActuator(
      child: DraggableScrollableSheet(
        initialChildSize: _kInitialSheetSize,
        maxChildSize: _kMaxSheetSize,
        minChildSize: _kMinSheetSize,
        controller: controller,
        expand: false,
        shouldCloseOnMinExtent: false,
        builder:
            (final BuildContext context, final ScrollController scrollController) => DecoratedBox(
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
              child: Column(
                children: [
                  PromotionHeader(controller: controller, options: options),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(top: padding, left: padding, right: padding, bottom: 40),
                      controller: scrollController,
                      child: Column(
                        spacing: 18,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(l10n.select_a_ride, style: Primary.heading),
                          Switches(scrollController: scrollController, controller: controller, options: options),
                          // ✨ IMPROVEMENT: Pass the scroll controller down to the list.
                          RideList(scrollController: scrollController, options: options),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
