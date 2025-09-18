import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../features/account/wallet/model/payment_methods.dart';
import '../../../features/account/wallet/provider/payment_methods.dart';
import '../../../features/account/wallet/wallet.dart';
import '../../../util/colors.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../failure/failure.dart';
import '../../router/route.dart';
import '../align/icon_text.dart';
import '../align/title_subtitle.dart';
import '../loading_error/error.dart';
import 'filled_black_button.dart';

class BoldPayButton extends ConsumerWidget {
  const BoldPayButton({
    required this.pay,
    required this.onBook,
    required this.buttonTitle,
    super.key,
    this.onChange,
    this.isLoading = false,
    this.shadow = false,
    this.isRequest = false,
    this.onRequestSchedule,
    this.timer,
    this.isEnabled = true,
  });
  final ValueChanged<PaymentMethods>? onChange;
  final String? pay;
  final ValueChanged<PaymentMethods> onBook;
  final VoidCallback? onRequestSchedule;
  final String buttonTitle;
  final bool isLoading;
  final bool shadow;
  final bool isRequest;
  final Widget? timer;
  final bool isEnabled;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final bool isRequestPaymentMethod = ref.watch(isRequestPaymentMethodDefault) || isRequest;
    final AsyncValue<List<PaymentMethods>> x = ref.watch(paymentMethodsNotifierProvider);
    return Container(
      //  height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Color.fromARGB(shadow ? 180 : 90, 235, 235, 235), blurRadius: 20, offset: const Offset(0, -15), spreadRadius: 20),
        ],
      ),
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          paymentInfo(context, x, isREQ: isRequestPaymentMethod),
          const Divider(),
          timer ?? const SizedBox.shrink(),
          fareDetailsAndBookButton(context, pay, onBook, buttonTitle, x, isLoading, isReq: isRequestPaymentMethod, isEnabled: isEnabled),
        ],
      ),
    );
  }

  Widget paymentInfo(final BuildContext context, final AsyncValue<List<PaymentMethods>> data, {final bool isREQ = false}) => Container(
    height: 40,
    padding: const EdgeInsets.symmetric(horizontal: 32),
    child: data.when(
      data:
          (final List<PaymentMethods> data) =>
              (data.isEmpty)
                  ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(l10n.add_payment_method, style: Primary.title),
                      Consumer(
                        builder:
                            (final BuildContext context, final WidgetRef ref, final Widget? child) => IconButton(
                              onPressed: () async {
                                ref.read(loadingProvider.notifier).state = true;
                                await ref.read(paymentMethodsNotifierProvider.notifier).createAccountSetup();
                                ref.read(loadingProvider.notifier).state = false;
                              },
                              icon: const Icon(CupertinoIcons.add_circled_solid, color: primary),
                            ),
                      ),
                    ],
                  )
                  : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      if (isREQ)
                        SvgText(url: reqPayment, title: l10n.request_payment)
                      else
                        SvgText(
                          url: visa,
                          title: ' ****  ****  ****  ${data.firstWhere((final PaymentMethods element) => element.isDefault ?? false).card?.last4}',
                        ),

                      SizedBox(
                        height: 36,
                        child: TextButton(
                          onPressed: () => Navigator.pushNamed(context, AppRoutes.wallet),
                          style: TextButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            foregroundColor: primary,
                            visualDensity: VisualDensity.compact,
                            splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                l10n.change,
                                textAlign: TextAlign.right,

                                style: const TextStyle(color: Color(0xFF18C4B8), fontSize: 14, fontVariations: <FontVariation>[FontVariation('wght', 620)]),
                              ),
                              const SizedBox(width: 50, child: Divider(height: 2.1, thickness: 1.1, color: Color(0xFF18C4B8))),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
      loading: () => const CupertinoActivityIndicator(color: primary),
      error: (final Object error, final StackTrace stackTrace) => ErrorW(error: error as ErrorDetails?, stackTrace: stackTrace),
    ),
  );

  Widget fareDetailsAndBookButton(
    final BuildContext context,
    final String? pay,
    final ValueChanged<PaymentMethods> onBook,
    final String buttonTitle,
    final AsyncValue<List<PaymentMethods>> data,

    // ignore: avoid_positional_boolean_parameters
    final bool isloading, {
    final bool isEnabled = true,
    final bool isReq = false,
  }) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        if (pay != null) ...<Widget>[
          Expanded(
            flex: 4,
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[IconText(text: pay, textStyle: Bold.headingSmall, icon: Icons.euro), Text(l10n.fare_details, style: Secondary.titleLarge)],
                ),
              ),
            ),
          ),
        ],
        Expanded(
          flex: 5,
          child: BlackButton(
            text: buttonTitle,
            onPressed:
                isEnabled
                    ? isReq && onRequestSchedule != null
                        ? onRequestSchedule
                        : data.hasValue && data.value!.isNotEmpty
                        ? () => onBook(data.requireValue.firstWhere((final PaymentMethods element) => element.isDefault ?? false))
                        : null
                    : null,
            isLoading: data.isLoading || isloading,
          ),
        ),
      ],
    ),
  );
}
