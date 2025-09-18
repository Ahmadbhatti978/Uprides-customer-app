import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../../util/colors.dart';

class StripeService {
  StripeService._();

  static final StripeService instance = StripeService._();

  // init(){
  //     // Initialize the FlowController with a PaymentIntent
  // await Stripe.instance.confi(
  //   paymentIntentClientSecret: paymentIntent!.clientSecret,
  //   merchantDisplayName: "BOld",
  // );
  // }
  Future<bool> isWalletSupported() => Stripe.instance.isPlatformPaySupported();

  static Future<void> initSheet(final String customerId, final String setupIntentClientSecret, {final String? customerEphemeralKeySecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Bold',

        appearance: const PaymentSheetAppearance(
          colors: PaymentSheetAppearanceColors(primary: primary),
          // primaryButton: PaymentSheetPrimaryButtonAppearance(
          //   colors: PaymentSheetPrimaryButtonTheme(
          //     light: PaymentSheetPrimaryButtonThemeColors(background: primary, text: Colors.white),
          //     dark: PaymentSheetPrimaryButtonThemeColors(background: primary, text: Colors.white),
          //   ),
          // ),
        ),
        customerId: customerId,

        setupIntentClientSecret: setupIntentClientSecret,

        //   customFlow: true,
        customerEphemeralKeySecret: customerEphemeralKeySecret,
        allowsDelayedPaymentMethods: true,
        //      applePay: PaymentSheetApplePay(merchantCountryCode: 'US', buttonType: PlatformButtonType.setUp),
        //  googlePay: const PaymentSheetGooglePay(merchantCountryCode: 'US', testEnv: true),
        style: ThemeMode.light,
        // intentConfiguration: IntentConfiguration(paymentMethodTypes: ['card'], mode: IntentMode.setupMode(setupFutureUsage: IntentFutureUsage.OffSession,currencyCode: )),
      ),
    );
  }

  Future<void> presentSheet(final String customerId, final String setupIntentClientSecret, {final String? customerEphemeralKeySecret}) async {
    await initSheet(customerId, setupIntentClientSecret, customerEphemeralKeySecret: customerEphemeralKeySecret);
    await Stripe.instance.presentPaymentSheet();
    //  await Stripe.instance.confirmPaymentSheetPayment();
  }

  Future<TokenData> createToken() => Stripe.instance.createToken(
    const CreateTokenParams.card(
      params: CardTokenParams(
        name: 'Himanshu',
        address: Address(city: 'Bulandshahr', country: 'India', line1: 'line1', line2: 'line2', postalCode: '203394', state: 'UP'),
      ),
    ),
  );

  Future<TokenData?> getToken() => createToken();

  String calculateAmount(final int amount) {
    final int calculatedAmount = amount * 100;
    return calculatedAmount.toString();
  }

  Future<PaymentMethod> retriveCardDetail(final String? token) => Stripe.instance.createPaymentMethod(
    params: PaymentMethodParams.cardFromToken(paymentMethodData: PaymentMethodDataCardFromToken(token: token ?? 'pm_1QvLp102fFDfZj1T44CMzlCr')),
  );

  // Future<void> startGooglePay() async {
  //   final googlePaySupported = await Stripe.instance.isPlatformPaySupported(googlePay: IsGooglePaySupportedParams());
  //   if (googlePaySupported) {
  //     try {
  //       // 1. fetch Intent Client Secret from backend
  //       final response = await fetchPaymentIntentClientSecret();
  //       final clientSecret = response['clientSecret'];
  //       // 2.present google pay sheet
  //       await Stripe.instance.confirmPlatformPayPaymentIntent(
  //           clientSecret: clientSecret,
  //           confirmParams: PlatformPayConfirmParams.googlePay(
  //             googlePay: GooglePayParams(
  //               testEnv: true,
  //               merchantName: 'Example Merchant Name',
  //               merchantCountryCode: 'Es',
  //               currencyCode: 'EUR',
  //             ),
  //           )
  //           // PresentGooglePayParams(clientSecret: clientSecret),
  //           );
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(content: Text(l10n.google_pay_payment_succesfully_completed)),
  //       );
  //     } catch (e) {
  //       if (e is StripeException) {
  //         log('Error during google pay', error: e.error, stackTrace: StackTrace.current);
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(content: Text('Error: ${e.error}')),
  //         );
  //       } else {
  //         log('Error during google pay', error: e, stackTrace: (e as Error?)?.stackTrace);
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(content: Text('Error: $e')),
  //         );
  //       }
  //     }
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text(l10n.google_pay_is_not_supported_on_this_device)),
  //     );
  //   }
  // }
}

class StripePaymentHandler {
  Future<void> handlePayment() async {
    try {
      // Configure payment sheet
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: const SetupPaymentSheetParameters(
          allowsDelayedPaymentMethods: true,
          //  applePay: PaymentSheetApplePay(merchantCountryCode: 'US'),
          customerId: 'cus_RpfPa8FLWUHpf9',
          // customerEphemeralKeySecret:
          //     "ek_test_YWNjdF8xUGpLblUwMmZGRGZaajFULENmbXRZVUs0aUx4Z3FkRkxMckxTNWxyUk9EM2RWU0Y_002XMBGQ0C",
          //   setupIntentClientSecret: "seti_1Qw0xC02fFDfZj1T9ULD841Z_secret_RpgJiVmXAdEqey4Eb4wkaTz2jsOK4mE",
          intentConfiguration: IntentConfiguration(
            //  paymentMethodTypes: ['card'],
            mode: IntentMode.setupMode(setupFutureUsage: IntentFutureUsage.OffSession),
          ),
          style: ThemeMode.system,
        ),
      );

      // Present payment sheet to user
      await Stripe.instance.presentPaymentSheet();
    } catch (e) {
      if (e is StripeException) {
        log('Error from Stripe:  ', error: e.error.localizedMessage);
      } else {
        log('Error: ', error: e);
      }
    }
  }
}
