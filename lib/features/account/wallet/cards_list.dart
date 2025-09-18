import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/constants.dart';
import '../../../core/failure/failure.dart';
import '../../../core/helper_fun.dart';
import '../../../core/widgets/loading_error/error.dart';
import '../../../core/widgets/loading_error/loading.dart';
import 'model/payment_methods.dart';
import 'provider/payment_methods.dart';
import 'wallet.dart';
import 'widget/paymethods.dart';

class CardList extends ConsumerWidget {
  const CardList({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final AsyncValue<List<PaymentMethods>> paymentMethods = ref.watch(paymentMethodsNotifierProvider);
    final String card = ModalRoute.of(context)!.settings.arguments! as String;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SvgPicture.asset(cardUrl(card), height: 48),

        // Row(
        //   spacing: 8,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     SvgPicture.asset(cardUrl(cards.first.card?.brand ?? cards.first.card?.displayBrand), height: 48),
        //     //Text(cardName(cards.first.card?.brand ?? cards.first.card?.displayBrand)),
        //   ],
        // ),
        backgroundColor: Colors.white,
      ),
      body: paymentMethods.when(
        data: (final List<PaymentMethods> data) {
          final List<PaymentMethods>? cards = paymentMethods.value?.where((final PaymentMethods element) => element.card?.brand == card).toList();
          return ListView.builder(
            padding: const EdgeInsets.all(padding),
            itemCount: cards?.length,
            itemBuilder:
                (final BuildContext context, final int index) => Paymethods(
                  isRequestPaymentDefault: ref.watch(isRequestPaymentMethodDefault),
                  url: cardUrl(card),
                  customerID: cards?[index].customer,
                  text: '****  ****  ****  ${cards?[index].card?.last4}',
                  id: cards?[index].id,
                  isDefault: cards?[index].isDefault ?? false,
                ),
          );
        },
        loading: () => loading,
        error: (final Object error, final StackTrace stackTrace) => Err(error: error as ErrorDetails, stackTrace: stackTrace),
      ),
    );
  }
}
