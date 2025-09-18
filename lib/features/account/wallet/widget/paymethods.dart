import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/helper_fun.dart';
import '../../../../core/router/route.dart';
import '../../../../core/widgets/align/title_subtitle.dart';
import '../../../../util/colors.dart';
import '../../../../util/style/typo.dart';
import '../provider/payment_methods.dart';
import '../wallet.dart';

class Paymethods extends StatelessWidget {
  const Paymethods({
    required this.url,
    required this.text,
    required this.customerID,
    super.key,
    this.canRemove = true,
    this.id,
    this.isDefault = false,
    this.isRequestPaymentDefault = false,
  });
  final String url;
  final String text;
  final bool canRemove;
  final String? id;
  final bool isDefault;
  final String? customerID;
  final bool isRequestPaymentDefault;

  @override
  Widget build(final BuildContext context) {
    final List<PopupMenuItem<String>> list = <PopupMenuItem<String>>[
      const PopupMenuItem(
        value: 'primary',
        padding: EdgeInsets.symmetric(horizontal: 6),
        height: kMinInteractiveDimension * 0.75,
        child: Center(child: Text('Set as primary', textAlign: TextAlign.center)),
      ),
    ];
    if (canRemove) {
      list.add(
        const PopupMenuItem(
          value: 'Remove',
          padding: EdgeInsets.symmetric(horizontal: 6),
          height: kMinInteractiveDimension * 0.75,
          child: Center(child: Text('Remove', textAlign: TextAlign.center)),
        ),
      );
    }

    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(top: padding),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(side: const BorderSide(color: Color(0xFFEEEEEE)), borderRadius: BorderRadius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          SvgText(url: url, title: text),

          const Spacer(),
          if (isDefault && !isRequestPaymentDefault)
            const Icon(Icons.check_rounded, color: primary)
          else
            Consumer(
              builder:
                  (final BuildContext context, final WidgetRef ref, final Widget? child) => PopupMenuButton(
                    position: PopupMenuPosition.over,
                    enableFeedback: true,
                    offset: const Offset(17, -5),
                    iconColor: Colors.grey,
                    elevation: 0,
                    splashRadius: 22,
                    color: Colors.white,
                    menuPadding: const EdgeInsets.all(2),
                    padding: const EdgeInsets.all(4),
                    style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white)),
                    borderRadius: BorderRadius.circular(18),
                    shape: RoundedRectangleBorder(side: const BorderSide(color: Color(0xFFEEEEEE)), borderRadius: BorderRadius.circular(6)),
                    onSelected: (final String value) {
                      if (value == 'Remove') {
                        ref.watch(paymentMethodsNotifierProvider.notifier).removePaymentMethod(id!, customerStripeId: customerID);
                      } else if (value == 'primary') {
                        if (isRequestPaymentDefault) {
                          ref.watch(isRequestPaymentMethodDefault.notifier).state = false;
                        }
                        if (!isDefault) {
                          ref.watch(paymentMethodsNotifierProvider.notifier).makeDefault(id!, customerStripeId: customerID);
                        }
                      }
                    },
                    constraints: const BoxConstraints(minWidth: 100, maxWidth: 130),
                    itemBuilder: (final BuildContext bc) => list,
                  ),
            ),
        ],
      ),
    );
  }
}

class Othermethods extends StatelessWidget {
  const Othermethods({required this.url, required this.text, required this.myVoidCallback, this.isDefault = false, super.key});
  final String url;
  final String text;
  final bool isDefault;
  final VoidCallback myVoidCallback;

  @override
  Widget build(final BuildContext context) => GestureDetector(
    onTap: myVoidCallback,

    child: Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(top: padding),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(side: const BorderSide(color: Color(0xFFEEEEEE)), borderRadius: BorderRadius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          SvgText(url: url, title: text),
          const Spacer(),
          if (isDefault) ...[const Icon(Icons.check_rounded, color: primary)],
        ],
      ),
    ),
  );
}

class Cards extends StatelessWidget {
  const Cards({required this.text, required this.count, super.key});
  final String text;
  final int count;

  @override
  Widget build(final BuildContext context) => GestureDetector(
    onTap: () => Navigator.pushNamed(context, AppRoutes.cardList, arguments: text),
    child: Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(top: padding),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(side: const BorderSide(color: Color(0xFFEEEEEE)), borderRadius: BorderRadius.circular(10)),
      ),
      child: Row(
        spacing: 4,
        children: <Widget>[
          SvgText(url: cardUrl(text), title: cardName(text)),
          if (count > 1) Text('($count)', style: Secondary.titleSmall),
          const Spacer(),
          const Icon(Icons.chevron_right_rounded, size: 32, color: darkgrey),
        ],
      ),
    ),
  );
}
