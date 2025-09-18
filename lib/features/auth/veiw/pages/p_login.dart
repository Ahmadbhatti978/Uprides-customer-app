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
import '../../../../core/widgets/filled_phone_no.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/utils.dart';
import '../../../../util/variable.dart';
import '../../repositories/auth_remote.dart';
import '../widget/dialog.dart';

class PhoneLogin extends ConsumerStatefulWidget {
  const PhoneLogin({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends ConsumerState<PhoneLogin> {
  late final AuthRemoteRepository authRemoteRepository;

  final TextEditingController otpController = TextEditingController();
  bool isEnabled = false;
  @override
  void initState() {
    authRemoteRepository = ref.read(authRemoteRepositoryProvider);

    super.initState();
  }

  String phoneNumber = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final String? x = ModalRoute.settingsOf(context)?.arguments as String?;
    if (x != null) {
      phoneNumber = authRemoteRepository.phone ?? '';
      isEnabled = true;
    }
  }

  Future<void> _sendOtp() async {
    final Either<ErrorDetails, String> loginPhone = await sendLoginOTP();
    if (!mounted) return;
    loginPhone.fold(
      (final ErrorDetails l) => showSnackBar(l.message, context: context, success: true),
      (final String r) => showDialog(
        context: context,
        builder:
            (final BuildContext context) => DialogView(
              resendOtp: () => sendLoginOTP().then((value) => value.fold((error) => false, (data) => true)),
              verifyOtp:
                  (otp) => authRemoteRepository
                      .verifyPhoneLoginOTP(phoneNumber, otp)
                      .then(
                        (result) => result.fold((error) => false, (_) {
                          if (mounted) {
                            Navigator.pushNamedAndRemoveUntil(context, AppRoutes.bottomNavigationScreen, (_) => false);
                          } else {
                            navigatorKey.currentState?.pushNamedAndRemoveUntil(AppRoutes.bottomNavigationScreen, (_) => false);
                          }
                          return true;
                        }),
                      ),

              phoneNumber: phoneNumber,

              pinController: otpController,
            ),
      ),
    );
  }

  Future<Either<ErrorDetails, String>> sendLoginOTP() async {
    ref.read(gloading.notifier).state = true;
    final Either<ErrorDetails, String> loginPhone = await authRemoteRepository.loginPhone(phoneNumber);

    ref.read(gloading.notifier).state = false;
    return loginPhone;
  }

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: const FilledBackBar(),
    body: ListView(
      padding: const EdgeInsets.all(padding),
      children: <Widget>[
        Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Text(l10n.hello_welcome_back, style: Default.displayMedium)),
        Text(l10n.sign_in_to_continue, style: Secondary.heading),
        const Gap(24),
        FilledPhoneNo(
          readOnly: isEnabled,
          e164: phoneNumber,
          hintText: l10n.phone_no,
          onTextChanged: (final String text) {
            phoneNumber = text;
            if (phoneNumber.length > 9) {
              setState(() {});
            }
          },
        ),
        cyanTextButton(
          () => Navigator.pushNamed(context, AppRoutes.forgotPassword),
          l10n.trouble_signing_in,
          isUnderline: false,
          alignment: Alignment.centerLeft,
        ),
        Padding(
          padding: const EdgeInsets.only(top: padding * 2, bottom: spacing * 4),
          child: BlackButton(
            isLoading: ref.watch(gloading),
            text: l10n.send_otp,
            // text: 'Send OTP',
            onPressed: phoneNumber.length < 11 ? null : _sendOtp,
          ),
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
                recognizer:
                    TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
