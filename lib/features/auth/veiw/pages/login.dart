import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/router/route.dart';
import '../../../../core/widgets/appbar/filled_back_bar.dart';
import '../../../../util/image_assets.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';
import '../../../account/saved/provider/saved_location.dart';
import '../../../account/saved_riders.dart/provider/save_riders.dart';
import '../../../account/wallet/provider/payment_methods.dart';
import '../../../activity/provider/get_activity_provider.dart';
import '../../../booking/provider/config_provider.dart';
import '../../../home/repo/provider.dart';
import '../../provider/google.dart';
import '../../repositories/auth_remote.dart';
import '../widget/outlined_button_icon.dart';

class Login extends ConsumerWidget {
  const Login({super.key});

  void invalidateProviders(WidgetRef ref) {
    if (ref.exists(savedLocationProvider)) ref.invalidate(savedLocationProvider);
    if (ref.exists(savedRidersProvider)) ref.invalidate(savedRidersProvider);
    ref.invalidate(getAcitivitesProvider);
    // if (ref.exists(pickedlocationProvider)) ref.invalidate(pickedlocationProvider);
    if (ref.exists(configPProvider)) ref.invalidate(configPProvider);
    if (ref.exists(bookingRepoProvider)) ref.invalidate(bookingRepoProvider);
    if (ref.exists(paymentMethodsNotifierProvider)) ref.invalidate(paymentMethodsNotifierProvider);
  }

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final AuthRemoteRepository authRemoteRepository = ref.read(authRemoteRepositoryProvider);
    invalidateProviders(ref);
    return Scaffold(
      appBar: const FilledBackBar(),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(padding),
          children: <Widget>[
            Image.asset(signUp, fit: BoxFit.contain, height: mediaQuery.size.height * (Platform.isIOS ? 0.28 : 0.32), alignment: Alignment.topCenter),
            Text(l10n.login_to_continue, textAlign: TextAlign.center, style: Default.displaySmall),
            Padding(
              padding: const EdgeInsets.only(top: spacing, bottom: spacing * 3),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: l10n.dont_have_an_account,
                  style: Default.title,
                  children: <InlineSpan>[
                    TextSpan(
                      text: l10n.signup,
                      style: Cyan.titleLarge,
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () => Navigator.canPop(context) ? Navigator.pop(context) : Navigator.pushNamed(context, AppRoutes.sign),
                    ),
                  ],
                ),
              ),
            ),
            OutlinedButtonIcon(
              icon: const Icon(Icons.dialpad_outlined),
              label: l10n.login_with_phone,
              onTap: () => Navigator.pushNamed(context, AppRoutes.phoneLogin),
            ),
            const Gap(padding),
            Padding(
              padding: const EdgeInsets.only(bottom: padding),
              child: OutlinedButtonIcon(
                svgPath: google,
                label: l10n.login_with_google,
                onTap: () => social(authRemoteRepository, context, Social.google, ref: ref),
              ),
            ),
            Visibility(
              visible: Platform.isIOS,
              child: Padding(
                padding: const EdgeInsets.only(bottom: padding),
                child: OutlinedButtonIcon(
                  icon: const Icon(Icons.apple_rounded, size: 36),
                  label: l10n.login_with_apple,

                  onTap: () => social(authRemoteRepository, context, Social.apple, ref: ref),
                ),
              ),
            ),
            OutlinedButtonIcon(
              icon: const Icon(Icons.mail_outline_rounded, size: 32),
              label: l10n.login_with_email,

              onTap: () => Navigator.pushNamed(context, AppRoutes.emailLogin),
            ),
            const Gap(padding * 2),
          ],
        ),
      ),
    );
  }
}
