import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/failure/failure.dart';
import '../../core/widgets/loading_error/error.dart';
import '../../core/widgets/loading_error/loading.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/utils.dart';
import '../../util/variable.dart';
import 'model/coupon.dart';
import 'provider/apply_coupon.dart';
import 'provider/get_all_coupon.dart';
import 'select_ride/provider/coupon_provider.dart';

final couponID = AutoDisposeStateProvider<String>((final Ref ref) => "");

class CouponPage extends ConsumerWidget {
  const CouponPage({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) => Scaffold(
    backgroundColor: grey,
    appBar: AppBar(
      toolbarHeight: 196 - mediaQuery.viewInsets.top - kToolbarHeight,
      leading: const BackButton(),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(12))),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(10),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(padding, padding * 1.2, padding, 24),
          child: TextField(
            decoration: InputDecoration(
              isDense: true,
              hintText: l10n.enter_coupon_code,
              suffix: TextButton(onPressed: () {}, child: Text(l10n.apply, style: const TextStyle(color: Color(0x7F18C4B8), fontSize: 14))),
              hintStyle: Secondary.title,
              fillColor: const Color(0xFFF8F8F8),
              filled: true,
              enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFFF4F4F4)), borderRadius: BorderRadius.circular(8)),
              border: OutlineInputBorder(borderSide: const BorderSide(color: Color.fromARGB(255, 248, 248, 248)), borderRadius: BorderRadius.circular(8)),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color.fromARGB(255, 245, 245, 245), width: 1.6),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ),
    ),
    body: ref
        .watch(getAllCouponProvider)
        .when(
          data:
              (final List<Coupon> data) => ListView.separated(
                separatorBuilder: (final BuildContext context, final int index) => const Gap(horizontalSpacing),
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: padding, vertical: padding * 2),
                itemCount: data.length,
                itemBuilder: (final BuildContext context, final int index) => CouponCard(couponx: data[index]),
              ),
          loading: () => const Loading(),
          error: (final Object error, final StackTrace stackTrace) => Err(error: error as ErrorDetails, stackTrace: stackTrace),
        ),
  );
}

class CouponCard extends ConsumerWidget {
  const CouponCard({required this.couponx, super.key});
  final Coupon couponx;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Row(
    children: <Widget>[
      SvgPicture.asset(coupon),
      Expanded(
        child: Container(
          padding: const EdgeInsets.fromLTRB(padding, padding, 14, 0),
          height: 184,
          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.horizontal(right: Radius.circular(12))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(couponx.couponName ?? '', style: Bold.headingSmall),
                      const Gap(1),
                      Text(
                        couponx.description ?? '',
                        style: const TextStyle(color: Color(0xFF00C47D), fontVariations: <FontVariation>[FontVariation('wght', 550)], fontSize: 12),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      ref
                          .watch(ApplyCouponProvider(couponCode: couponx.couponCode!))
                          .when(
                            data: (data) {
                              ref.read(couponID.notifier).state = "";
                              showSnackBar("Coupon applied successfully", context: context, success: true);
                              ref.read(couponProvider.notifier).state = couponx.couponCode;
                            },
                            error: (error, stackTrace) {
                              ref.read(couponID.notifier).state = "";
                              showSnackBar(error.toString(), context: context);
                            },
                            loading: () {
                              ref.watch(couponID.notifier).state = couponx.couponCode!;
                            },
                          );
                    },

                    child:
                        ref.watch(couponID) == couponx.couponCode
                            ? const SizedBox(height: 14, width: 14, child: CircularProgressIndicator(strokeWidth: 2, color: Color(0xFFDD6001)))
                            : ref.watch(couponProvider) == couponx.couponCode!
                            ? Text(
                              l10n.applied,
                              style: const TextStyle(
                                color: Color.fromARGB(162, 255, 114, 7),
                                fontSize: 14,
                                fontVariations: <FontVariation>[FontVariation('wght', 700)],
                              ),
                            )
                            : Text(
                              l10n.capital_apply,
                              style: const TextStyle(color: Color(0xFFDD6001), fontSize: 14, fontVariations: <FontVariation>[FontVariation('wght', 700)]),
                            ),
                  ),
                ],
              ),
              const Gap(horizontalSpacing),
              Text(couponx.couponCode ?? '', style: Secondary.title),
              const Gap(horizontalSpacing - 6),
              TextButton(
                onPressed: () {},
                child: Text(
                  l10n.tc_apply,
                  style: const TextStyle(color: Color(0xFF7A7A7A), fontSize: 12, fontVariations: <FontVariation>[FontVariation('wght', 580)]),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
