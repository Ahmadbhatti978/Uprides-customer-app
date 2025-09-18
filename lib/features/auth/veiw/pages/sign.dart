import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/router/route.dart';
import '../../../../util/image_assets.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';
import '../../provider/google.dart';
import '../../repositories/auth_remote.dart';
import '../widget/outlined_button_icon.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
      // appBar: const FilledBackBar(),
      body: ListView(
        cacheExtent: 100,
        padding: const EdgeInsets.symmetric(horizontal: padding, vertical: kToolbarHeight * 2),
        children: <Widget>[
          Center(child: Image.asset(signIn, height: mediaQuery.size.height * 0.3)),
          Gap(mediaQuery.size.height * 0.01),
          Text(l10n.sign_up_to_continue, style: Default.displaySmall, textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.only(top: padding, bottom: mediaQuery.size.height * 0.03),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: l10n.already_have_an_account,
                style: Default.title,
                children: <InlineSpan>[
                  TextSpan(
                    text: l10n.login_here,
                    style: Cyan.titleLarge,
                    recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, AppRoutes.login),
                  ),
                ],
              ),
            ),
          ),
          Consumer(
            builder: (final BuildContext context, final WidgetRef ref, final Widget? child) {
              final AuthRemoteRepository authRemoteRepository = ref.read(authRemoteRepositoryProvider);
              return Column(
                spacing: padding,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  OutlinedButtonIcon(
                    svgPath: google,
                    label: l10n.signup_with_google,
                    onTap: () => social(authRemoteRepository, context, Social.google, ref: ref),
                  ),
                  Visibility(
                    visible: Platform.isIOS,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: padding),
                      child: OutlinedButtonIcon(
                        icon: const Icon(Icons.apple_rounded, size: 36),
                        label: l10n.signup_with_apple,
                        onTap: () => social(authRemoteRepository, context, Social.apple, ref: ref),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: padding),
            child: OutlinedButtonIcon(
              icon: const Icon(Icons.mail_outline_rounded, size: 32),
              label: l10n.signup_with_email,

              onTap: () => Navigator.pushNamed(context, AppRoutes.register),
            ),
          ),
        ],
      ),
    );
}
