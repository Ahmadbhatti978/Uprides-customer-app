import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/constants.dart';
import '../../../core/extensions/string.dart';
import '../../../core/failure/failure.dart';
import '../../../core/helper_fun.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/align/title_subtitle.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../core/widgets/loading_error/error.dart';
import '../../../core/widgets/loading_error/loading.dart';
import '../../../util/colors.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

import 'model/payment_methods.dart' show PaymentMethods;
import 'provider/payment_methods.dart';
import 'widget/paymethods.dart';

final loadingProvider = AutoDisposeStateProvider<bool>((ref) => false);
final isRequestPaymentMethodDefault = StateProvider<bool>((ref) => false);
final reqpaymentEnabled = StateProvider<bool>((ref) => true);

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    backgroundColor: const Color(0xFFF3FFFE),
    appBar: NameBackBar(title: l10n.wallet),

    body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      children: const <Widget>[
        UserInfo(),

        //WalletCard(),
        //     Text(l10n.payment_methods, style: Default.heading),

        // FutureBuilder<bool>(
        //   future: StripeService.instance.isWalletSupported(),
        //   builder: (context, isSupported) {
        //     return isSupported.connectionState == ConnectionState.done
        //         ? Visibility(
        //           visible: isSupported.data ?? false,
        //           child: Platform.isIOS ? Paymethods(url: apay, text: 'Apple pay') : Paymethods(url: gpay, text: 'Google pay'),
        //         )
        //         : loading;
        //   },
        // ),
        PaymentMethodsList(),
        //Paymethods(url: logo, text: 'BOLD pay'),
        Gap(padding * 2),
        Boxes(),
        Gap(padding * 2),

        // Text(l10n.available_vouchers, style: Default.heading),
        // Voucher(),
        Gap(padding),
      ],
    ),
  );
}

class Boxes extends ConsumerWidget {
  const Boxes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool x = ref.watch(loadingProvider);
    return Row(
      spacing: 16,
      children: <Widget>[
        Expanded(
          child: InkWell(
            borderRadius: BorderRadius.circular(26),
            onTap: () => Navigator.pushNamed(context, AppRoutes.inviteAFriendView),
            child: Container(
              height: 140,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(side: const BorderSide(color: Color(0xFFDDDDDD)), borderRadius: BorderRadius.circular(26)),
              ),
              padding: const EdgeInsets.fromLTRB(spacing, 2, spacing, 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  //    SvgPicture.asset(inviteFriend, height: 32),
                  Image.asset(inviteFriends, height: 32),
                  const Gap(8),
                  Text(l10n.invite_friends, textAlign: TextAlign.center, style: Default.heading),
                  Text(l10n.invite_friends_des, textAlign: TextAlign.center, style: Secondary.bodySmll),
                ],
              ),
            ),
          ),
        ),

        Expanded(
          child: InkWell(
            borderRadius: BorderRadius.circular(26),
            onTap:
                x
                    ? null
                    : () async {
                      ref.read(loadingProvider.notifier).state = true;
                      await ref.read(paymentMethodsNotifierProvider.notifier).createAccountSetup();
                      ref.read(loadingProvider.notifier).state = false;
                    },
            child: Container(
              height: 140,

              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(side: const BorderSide(color: Color(0xFFDDDDDD)), borderRadius: BorderRadius.circular(26)),
              ),
              padding: const EdgeInsets.fromLTRB(spacing, 2, spacing, 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Image.asset(addWallet, width: 102, fit: BoxFit.cover),
                  const Gap(4),
                  Text(l10n.add_payment_methods, textAlign: TextAlign.center, style: Default.heading),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      TitleSubtitle(title: guser?.fullName ?? '', subTitle: l10n.good_morning, reverse: true, heading: true),
      CircleAvatar(radius: 26, backgroundColor: grey, backgroundImage: guser!.profilePic.isBlank ? null : CachedNetworkImageProvider(guser!.profilePic!)),
    ],
  );
}

class PaymentMethodsList extends ConsumerWidget {
  const PaymentMethodsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => ref
      .watch(paymentMethodsNotifierProvider)
      .when(
        data: (final List<PaymentMethods> data) => PaymentMethodCategory(paymentMethods: categorizePaymentMethodsByType(data)),
        loading: () => loading,
        error: (final Object error, final StackTrace stackTrace) => ErrorW(error: ErrorDetails(stackTrace: stackTrace), stackTrace: stackTrace),
      );
}

class Voucher extends StatelessWidget {
  const Voucher({super.key});

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => Navigator.pushNamed(context, AppRoutes.addPayment),
    child: Card.filled(
      color: const Color(0xFFE9FAE3),
      margin: const EdgeInsets.only(top: padding),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(right: 120), child: SvgPicture.asset(cofetti)),
                const Gap(60),
                SizedBox(
                  height: 30,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('Expires on: 12/02/2023', style: TextStyle(color: Colors.black38, fontSize: 10, fontFamily: 'Open')),
                      FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          minimumSize: const Size(20, 10),
                          // surfaceTintColor: Colors.white,
                          // overlayColor: Colors.white,
                          // foregroundColor: Colors.white,
                          splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                          tapTargetSize: MaterialTapTargetSize.padded,
                        ),
                        child: Text(
                          l10n.added_to_wallet,
                          style: const TextStyle(fontSize: 11, fontFamily: 'Open', fontVariations: <FontVariation>[FontVariation('wght', 600)]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 64 + 16,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[SvgPicture.asset(euro), const Text('33', style: Bold.headingBig)],
                        ),
                      ),
                      Positioned(bottom: 0, child: SvgPicture.asset(smallCofetti, height: 16)),
                      Positioned(bottom: 12, right: -4, child: SvgPicture.asset(smallCofetti, height: 16)),
                    ],
                  ),
                ),
                const Gap(8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(r'You’ve earned $22 BOLD cash', style: Primary.title),
                    Text(l10n.redeem_and_add_to_wallet, style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.3), fontSize: 12, fontFamily: 'Open')),
                    const Gap(padding),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context) => Container(
    height: 215,
    margin: const EdgeInsets.symmetric(vertical: padding * 2),
    padding: const EdgeInsets.all(padding),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: const Color(0xFF18C4B8),
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color.fromARGB(18, 0, 0, 0),
          blurRadius: 16,
          //     offset: Offset(4, 4),
          spreadRadius: 8,
        ),
      ],
    ),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Column(
              spacing: 8,
              children: <Widget>[
                const Text(
                  "UPrides",
                  style: TextStyle(color: Colors.white, fontSize: 36, fontFamily: 'Open', fontVariations: <FontVariation>[FontVariation('wght', 700)]),
                ),
                const Gap(p24),
                Text(l10n.total_wallet_balance, textAlign: TextAlign.center, style: White.titleSmall),

                const Row(children: <Widget>[Icon(Icons.euro, color: Colors.white), Gap(8), Text('22418.13', style: White.heading)]),
              ],
            ),
            const Spacer(),
            SizedBox.square(
              dimension: 110,
              child: Image.asset(
                euroWallet,
                fit: BoxFit.fill,
                width: 110,
                //      height: 160,
              ),
            ),
            const Gap(30),
          ],
        ),
        const Spacer(),
        SizedBox(
          height: 30,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'ID 4122 2131 770 872',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'Open', fontVariations: <FontVariation>[FontVariation('wght', 700)]),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  //  minimumSize: const Size(20, 10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.fromLTRB(13, 6, 12, 8),
                  tapTargetSize: MaterialTapTargetSize.padded,
                  backgroundColor: Colors.white24,
                ),
                child: Text(
                  l10n.add_funds,
                  style: const TextStyle(
                    color: Color.fromARGB(227, 255, 255, 255),
                    fontSize: 11,
                    fontFamily: 'Open',
                    fontVariations: <FontVariation>[FontVariation('wght', 700)],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class PaymentMethodCategory extends ConsumerWidget {
  const PaymentMethodCategory({required this.paymentMethods, super.key});
  final Map<String, Map<String, List<PaymentMethods>>> paymentMethods;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) => Column(
    children: <Widget>[
      Visibility(
        visible: ref.watch(reqpaymentEnabled),
        child: Othermethods(
          url: reqPayment,
          myVoidCallback: () => ref.read(isRequestPaymentMethodDefault.notifier).update((s) => !s),
          text: 'Request Payment',
          isDefault: ref.watch(isRequestPaymentMethodDefault),
        ),
      ),
      // Cards(text: "Request Payment", count: 0),
      ...paymentMethods['card']?.entries
              .map(
                (final MapEntry<String, List<PaymentMethods>> entry) =>
                    (entry.value.length > 1)
                        ? Cards(text: entry.key, count: entry.value.length)
                        : Paymethods(
                          isRequestPaymentDefault: ref.watch(isRequestPaymentMethodDefault),
                          url: cardUrl(entry.key),
                          customerID: entry.value.first.customer,
                          text: '****  ****  ****  ${entry.value.first.card?.last4}',
                          id: entry.value.first.id,
                          isDefault: entry.value.first.isDefault ?? false,
                        ),
              )
              .toList() ??
          <Widget>[],
    ],
  );
}
