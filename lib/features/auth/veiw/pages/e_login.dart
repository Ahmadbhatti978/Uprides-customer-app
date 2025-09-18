import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:gap/gap.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/global_loading_provider.dart';
import '../../../../core/router/route.dart';
import '../../../../core/widgets/appbar/filled_back_bar.dart';
import '../../../../core/widgets/buttons/buttons.dart';
import '../../../../core/widgets/buttons/filled_black_button.dart';
import '../../../../core/widgets/text_feild.dart';
import '../../../../util/colors.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/utils.dart';
import '../../../../util/variable.dart';
import '../../../booking/book_ride/provider/ride_data.dart';
import '../../model/user_detail.dart';
import '../../repositories/auth_remote.dart';
import '../widget/dialog.dart';

class EmailLogin extends ConsumerStatefulWidget {
  const EmailLogin({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EmailLoginState();
}

class _EmailLoginState extends ConsumerState<EmailLogin> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final AuthRemoteRepository authRemoteRepository;
  @override
  void initState() {
    authRemoteRepository = ref.read(authRemoteRepositoryProvider);
    emailController = TextEditingController(text: authRemoteRepository.email ?? authRemoteRepository.email);
    passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool pVisible = false;
  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: const FilledBackBar(),
    body: ListView(
      padding: const EdgeInsets.all(padding),
      children: <Widget>[
        Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Text(l10n.hello_welcome_back, style: Default.displayMedium)),
        Text(l10n.sign_in_to_continue, style: Secondary.heading),
        const Gap(24),
        FilledTextField(hintText: l10n.enter_email_address, controller: emailController, keyboardType: TextInputType.emailAddress),
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 8),
          child: StatefulBuilder(
            builder:
                (final BuildContext context, final setStat) => FilledTextField(
                  hintText: l10n.enter_password,
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  isVisible: pVisible,
                  suffix: IconButton(
                    isSelected: true,
                    onPressed: () => setStat(() => pVisible = !pVisible),
                    color: darkgrey,
                    icon: pVisible ? const Icon(CupertinoIcons.eye_slash_fill) : const Icon(CupertinoIcons.eye_solid),
                  ),
                ),
          ),
        ),
        cyanTextButton(
          () => Navigator.pushNamed(context, AppRoutes.forgotPassword),
          l10n.trouble_signing_in,
          isUnderline: false,
          alignment: Alignment.centerLeft,
        ),
        Padding(
          padding: const EdgeInsets.only(top: padding * 2, bottom: spacing * 4),
          child: BlackButton(text: l10n.login, isLoading: ref.watch(gloading), onPressed: onPressed),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: l10n.dont_have_an_account,
            style: Default.title,
            children: <InlineSpan>[
              TextSpan(
                text: l10n.signup_here,
                style: Cyan.titleLarge,
                recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, AppRoutes.sign),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  void onPressed() {
    sendEmailOTPlogin().then(
      (final Either<ErrorDetails, Either<UserDetail, String>> result) =>
          result.fold((final ErrorDetails error) => showSnackBar(error.message, context: context), (final Either<UserDetail, String> data) {
            data.fold(
              (final UserDetail user) {
                rideId = userDetail?.ride?.rideId;
                if (rideId != null)    ref.refresh(RideDataProvider(rideId!));

                Navigator.pushNamedAndRemoveUntil(context, AppRoutes.bottomNavigationScreen, (final Route<dynamic> route) => false);
              },
              (final String activationToken) {
                showDialog(
                  context: context,
                  builder:
                      (final BuildContext context) => DialogView(
                        email: emailController.text,
                        pinController: TextEditingController(),
                        resendOtp: () => sendEmailOTPlogin().then((value) => value.fold((error) => false, (data) => true)),
                        verifyOtp:
                            (otp) => authRemoteRepository
                                .verifyEmailLogin(otp, token: activationToken)
                                .then(
                                  (final Either<ErrorDetails, UserDetail> result) => result.fold((error) => false, (_) {
                                    if (mounted) {
                                      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.bottomNavigationScreen, (_) => false);
                                    } else {
                                      navigatorKey.currentState?.pushNamedAndRemoveUntil(AppRoutes.bottomNavigationScreen, (_) => false);
                                    }
                                    return true;
                                  }),
                                ),
                      ),
                );
              },
            );
            //   authRemoteRepository.updateFCMToken();
          }),
    );
  }

  Future<Either<ErrorDetails, Either<UserDetail, String>>> sendEmailOTPlogin() async {
    ref.read(gloading.notifier).state = true;

    final Either<ErrorDetails, Either<UserDetail, String>> data = await authRemoteRepository.loginEmail(emailController.text, passwordController.text);
    ref.read(gloading.notifier).state = false;
    return data;
  }
}
