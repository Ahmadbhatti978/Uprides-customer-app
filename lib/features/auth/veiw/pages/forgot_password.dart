import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:gap/gap.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/global_loading_provider.dart';
import '../../../../core/router/route.dart';
import '../../../../core/widgets/appbar/filled_back_bar.dart';
import '../../../../core/widgets/buttons/filled_black_button.dart';
import '../../../../core/widgets/filled_phone_no.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/utils.dart';
import '../../../../util/variable.dart';
import '../../repositories/auth_remote.dart';
import '../widget/dialog.dart';

final AutoDisposeStateProvider<String?> phoneProvider = AutoDisposeStateProvider<String?>(
  (final Ref<String?> ref) => ref.read(authRemoteRepositoryProvider).phone,
);

class ForgotPassword extends ConsumerWidget {
  const ForgotPassword({super.key});

  Future<void> _handleContinue(
    final BuildContext context,
    final WidgetRef ref,
    final AuthRemoteRepository authRemoteRepository,
    final String phoneNumber,
  ) async {
    ref.read(gloading.notifier).state = true;
    final Either<ErrorDetails, String> result = await authRemoteRepository.sendForgotPasswordOTP(phoneNumber);
    ref.read(gloading.notifier).state = false;
    result.fold(
      (final ErrorDetails failure) {
        showSnackBar(failure.message, context: context, success: true);
      },
      (final String success) {
        showDialog(
          context: context,
          builder:
              (final BuildContext context) => DialogView(
                phoneNumber: phoneNumber,
                pinController: TextEditingController(),
                resendOtp: () => authRemoteRepository.sendForgotPasswordOTP(phoneNumber).then((value) => value.fold((error) => false, (data) => true)),
                verifyOtp:
                    (String value) => authRemoteRepository
                        .verifyForgotPasswordOTP(value, phoneNumber)
                        .then(
                          (final Either<ErrorDetails, String> result) => result.fold((error) => false, (_) {
                            Navigator.popAndPushNamed(context, AppRoutes.resetPassword);
                            return true;
                          }),
                        ),
              ),
        );
      },
    );
  }

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final AuthRemoteRepository authRemoteRepository = ref.read(authRemoteRepositoryProvider);
    final String phoneNumber = ref.watch(phoneProvider) ?? '';
    return Scaffold(
      appBar: const FilledBackBar(),
      body: ListView(
        padding: const EdgeInsets.all(padding),
        children: <Widget>[
          Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Text(l10n.forgot_your_password, style: Default.displayMedium)),
          Text(l10n.enter_your_registered_phone_number__verify, style: Secondary.titleBig),
          const Gap(24),
          FilledPhoneNo(
            readOnly: false,
            // Use the updated phone number to reflect changes immediately
            e164: phoneNumber,
            hintText: l10n.phone_no,
            onTextChanged: (final String text) {
              ref.read(phoneProvider.notifier).state = text;
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: padding * 2, bottom: spacing * 4),
            child: BlackButton(
              isLoading: ref.watch(gloading),
              text: l10n.ontinue,
              onPressed: phoneNumber.length < 11 ? null : () => _handleContinue(context, ref, authRemoteRepository, phoneNumber),
            ),
          ),
        ],
      ),
    );
  }
}
