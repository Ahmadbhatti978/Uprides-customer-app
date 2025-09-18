import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/router/route.dart';
import '../../../../../util/colors.dart';
import '../../../../../util/image_assets.dart';
import '../../../../../util/style/typo.dart';
import '../../../../../util/variable.dart';
import '../../../model/coupon.dart';
import '../../../model/options.dart';
import '../../../provider/get_all_coupon.dart';

class PromotionHeader extends ConsumerWidget {
  // <-- Add this

  const PromotionHeader({
    required this.controller,
    required this.options,
    super.key, // <-- Add this
  });
  final DraggableScrollableController controller;
  final AsyncValue<Options> options;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Coupon>> coupons = ref.watch(getAllCouponProvider);
    return options.when(
      loading: () => const SizedBox.shrink(),
      data: (final Options rides) => rides.data?.promotion != null || (coupons.hasValue && coupons.value!.isNotEmpty)
            ? GestureDetector(
              onTap:
                  coupons.hasValue && coupons.value!.isNotEmpty && rides.data!.promotion?.value == null
                      ? () => Navigator.pushNamed(context, AppRoutes.coupon)
                      : null,
              onVerticalDragUpdate: (details) {
                // Move the sheet by updating the controller's size
                final double delta = -details.primaryDelta! / MediaQuery.of(context).size.height;
                final double newSize = controller.size + delta;
                controller.jumpTo(newSize);
              },

              child: Container(
                decoration: const BoxDecoration(color: grey, borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
                padding: const EdgeInsets.fromLTRB(16, 12, 24, 12),
                child: Row(
                  spacing: halfPadding,
                  children: <Widget>[
                    CircleAvatar(backgroundColor: const Color(0xFFD0D0D0), radius: 13, child: SvgPicture.asset(promo, height: 18)),

                    PromotionWidget(promotion: rides.data!.promotion!),
                    const Spacer(),
                    if (coupons.hasValue && coupons.value!.isNotEmpty && rides.data!.promotion?.value == null) ...[const Icon(Icons.arrow_forward_ios_rounded)],
                  ],
                ),
              ),
            )
            : const SizedBox.shrink(),
      error: (Object error, StackTrace stackTrace) => const Text(""),
    );
  }
}

class PromotionWidget extends StatelessWidget {
  const PromotionWidget({required this.promotion, super.key});
  final Promotion promotion;
  @override
  Widget build(BuildContext context) => Text.rich(
    TextSpan(
      children: <InlineSpan>[
        TextSpan(
          text: (promotion.value.toString()) + (promotion.type == 'PERCENTAGE' ? '% ' : ''),
          style: const TextStyle(color: Color(0xFF18C4B8), fontSize: 12, fontFamily: 'Open', fontVariations: <FontVariation>[FontVariation('wght', 700)]),
        ),
        TextSpan(text: l10n.promotion_applied, style: Primary.body),
      ],
    ),
  );
}
