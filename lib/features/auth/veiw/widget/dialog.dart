import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/widgets/buttons/buttons.dart';
import '../../../../util/colors.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';

class DialogView extends StatefulWidget {
  const DialogView({required this.pinController, required this.verifyOtp, this.resendOtp, super.key, this.email, this.phoneNumber, this.change = false});

  final String? email;
  final TextEditingController pinController;
  final String? phoneNumber;
  final bool change;
  final ValueGetter<Future<bool>>? resendOtp;
  final Future<bool> Function(String value) verifyOtp;

  @override
  State<DialogView> createState() => _DialogViewState();
}

class _DialogViewState extends State<DialogView> {
  // Fixed constants
  static const int _initialCountdown = 60;

  Timer? _timer;
  bool _canResend = true;
  int _secondsRemaining = _initialCountdown;
  bool _isCorrect = true;

  // Pin themes defined once
  late final PinTheme _defaultPinTheme;
  late final PinTheme _focusedPinTheme;
  late final PinTheme _submittedPinTheme;
  late final PinTheme _followingPinTheme;
  late final PinTheme _errorPinTheme;

  @override
  void initState() {
    super.initState();
    widget.pinController.clear();
    _initPinThemes();
    _startCountdown();
  }

  void _initPinThemes() {
    _defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      margin: const EdgeInsets.only(right: 18),
      decoration: BoxDecoration(color: const Color(0xFFf2f2f2), borderRadius: BorderRadius.circular(8)),
    );

    _focusedPinTheme = PinTheme(
      width: 64,
      height: 64,
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(color: const Color(0xFFEEEEEE), borderRadius: BorderRadius.circular(12)),
    );

    _submittedPinTheme = _defaultPinTheme.copyWith(
      width: 62,
      height: 60,
      margin: const EdgeInsets.only(right: 8),
      decoration: _defaultPinTheme.decoration!.copyWith(color: const Color(0xFFF0F0F0), borderRadius: BorderRadius.circular(11)),
    );

    _followingPinTheme = PinTheme(
      width: 60,
      height: 62,
      margin: const EdgeInsets.only(left: 6),
      decoration: BoxDecoration(color: const Color(0xFFEFEFEF), borderRadius: BorderRadius.circular(7)),
    );

    _errorPinTheme = _defaultPinTheme.copyWith(
      decoration: _defaultPinTheme.decoration!.copyWith(color: const Color(0xFFFFEAEE), border: Border.all(color: Colors.red, width: 2)),
    );
  }

  void _startCountdown() {
    setState(() {
      _secondsRemaining = _initialCountdown;
      _canResend = false;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (final Timer timer) {
      if (_secondsRemaining <= 1) {
        timer.cancel();
        if (mounted) {
          setState(() {
            _canResend = true;
          });
        }
      } else {
        if (mounted) {
          setState(() {
            _secondsRemaining--;
          });
        }
      }
    });
  }

  Future<void> _closeDialog() async {
    _timer?.cancel();
    Navigator.pop(context);
  }

  void _verifyOTP(final String value) {
    widget.verifyOtp(value).then((g) => g ? () {} : onError(ErrorDetails(stackTrace: StackTrace.current, message: "Issue in email verify")));

    // if (widget.verfyLoginEmail) {
    //   _verifyEmailLoginOTP(value);
    // } else if (widget.isForgotPassword) {
    //   _verifyForgotPasswordOTP(value);
    // } else if (widget.isLogin) {
    //   _verifyPhoneLoginOTP(value);
    // } else if (widget.isEmail) {
    //   _verifyEmailOTP(value);
    // } else {
    //   _verifyPhoneOTP(value);
    // }
  }

  // void _verifyForgotPasswordOTP(final String value) {
  //   widget.authRemoteRepository
  //       .verifyForgotPasswordOTP(value, widget.phoneNumber)
  //       .then((final Either<ErrorDetails, String> result) => result.fold(onError, (_) => Navigator.popAndPushNamed(context, AppRoutes.resetPassword)));
  // }

  // void _verifyPhoneLoginOTP(final String value) {
  //   widget.authRemoteRepository
  //       .verifyPhoneLoginOTP(widget.phoneNumber, value)
  //       .then(
  //         (final Either<ErrorDetails, UserDetail> result) => result.fold(onError, (_) {
  //           // widget.authRemoteRepository.updateFCMToken( );
  //           if (mounted) {
  //             Navigator.pushNamedAndRemoveUntil(context, AppRoutes.bottomNavigationScreen, (_) => false);
  //           } else {
  //             navigatorKey.currentState?.pushNamedAndRemoveUntil(AppRoutes.bottomNavigationScreen, (_) => false);
  //           }
  //         }),
  //       );
  // }

  void onError(ErrorDetails error) {
    setState(() => _isCorrect = false);
    //   showSnackBar(error.message, context: context);
  }

  // void _verifyEmailLoginOTP(final String value) {
  //   widget.authRemoteRepository
  //       .verifyEmailLogin(value, token: widget.activationToken)
  //       .then(
  //         (final Either<ErrorDetails, UserDetail> result) => result.fold(onError, (_) {
  //           if (mounted) {
  //             Navigator.pushNamedAndRemoveUntil(context, AppRoutes.bottomNavigationScreen, (_) => false);
  //           } else {
  //             navigatorKey.currentState?.pushNamedAndRemoveUntil(AppRoutes.bottomNavigationScreen, (_) => false);
  //           }
  //         }),
  //       );
  // }

  // void _verifyEmailOTP(final String value) {
  //   widget.authRemoteRepository
  //       .verifyEmailOtp(value, widget.email)
  //       .then(
  //         (final Either<ErrorDetails, String> result) => result.fold(onError, (_) {
  //           showSnackBar(l10n.otp_verified, context: context, success: true);
  //           _closeDialog();
  //         }),
  //       );
  // }

  // void _verifyPhoneOTP(final String value) {
  //   widget.authRemoteRepository
  //       .verifyPhoneOtp(value, widget.phoneNumber, isSocial: widget.isSocial)
  //       .then(
  //         (final Either<ErrorDetails, String> result) => result.fold(onError, (final String message) {
  //           showSnackBar(message, context: context, success: true);
  //           _closeDialog();
  //         }),
  //       );
  // }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    insetPadding: const EdgeInsets.symmetric(horizontal: p24),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(p24, 6, 0, 27),
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildHeader(),
          const Gap(4),
          _buildDescription(),
          _buildContactInfo(),
          const Gap(padding),
          _buildPinInput(),
          const Gap(p12),
          if (widget.resendOtp != null) _buildResendOption(widget.resendOtp!),
        ],
      ),
    ),
  );

  Widget _buildHeader() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[Text(l10n.otp_verification, style: Primary.headingBig), SizedBox(height: 48, width: 48, child: CloseButton(onPressed: _closeDialog))],
  );

  Widget _buildDescription() => Text(l10n.code_sent_to_contact(widget.email != null ? "email address" : "phone number"));

  Widget _buildContactInfo() => Row(
    children: <Widget>[
      Flexible(child: Text(widget.email ?? widget.phoneNumber ?? "", style: Default.title, overflow: TextOverflow.ellipsis)),
      Visibility(visible: widget.change, child: cyanTextButton(_closeDialog, l10n.change)),
    ],
  );

  Widget _buildPinInput() => Pinput(
    autofocus: true,
    forceErrorState: !_isCorrect,
    defaultPinTheme: _defaultPinTheme,
    focusedPinTheme: _focusedPinTheme,
    submittedPinTheme: _submittedPinTheme,
    followingPinTheme: _followingPinTheme,
    errorPinTheme: _errorPinTheme,
    controller: widget.pinController,
    showCursor: false,
    onTap: () {
      if (!_isCorrect) setState(() => _isCorrect = true);
    },
    onChanged: (final String value) {
      if (!_isCorrect) setState(() => _isCorrect = true);
    },
    onCompleted: _verifyOTP,
  );

  Widget _buildResendOption(final ValueGetter<Future<bool>> resendOtp) {
    if (_canResend) {
      return TextButton.icon(
        iconAlignment: IconAlignment.end,
        style: TextButton.styleFrom(foregroundColor: primary, textStyle: const TextStyle(fontWeight: FontWeight.w600)),
        onPressed: () {
          resendOtp();
          _startCountdown();
        },
        label: Text(l10n.resend_otp),
        icon: const Icon(Icons.play_arrow_rounded),
      );
    } else {
      return Text.rich(
        TextSpan(
          children: <InlineSpan>[
            TextSpan(text: "${l10n.resending_code_in} ", style: Secondary.title),
            TextSpan(text: _secondsRemaining.toString(), style: Cyan.underline),
            TextSpan(text: " ${l10n.seconds}", style: Secondary.title),
          ],
        ),
      );
    }
  }
}
