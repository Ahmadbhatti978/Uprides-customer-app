import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/router/route.dart';
import '../../../../core/widgets/appbar/filled_back_bar.dart';
import '../../../../core/widgets/buttons/filled_black_button.dart';
import '../../../../core/widgets/text_feild.dart';
import '../../../../util/colors.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/utils.dart';
import '../../../../util/variable.dart';
import '../../repositories/auth_remote.dart';

class ResetPassword extends ConsumerStatefulWidget {
  const ResetPassword({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends ConsumerState<ResetPassword> {
  late final AuthRemoteRepository authRemoteRepository;
  @override
  void initState() {
    authRemoteRepository = ref.read(authRemoteRepositoryProvider);
    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  bool pVisible = false;
  bool cpVisible = false;
  bool isEnabled = false;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  void check() {
    if ((passwordController.text.length > 4 && confirmPasswordController.text == passwordController.text) != isEnabled) {
      setState(() => isEnabled = !isEnabled);
    }
  }

  Future<void> _handleContinue(final BuildContext context, final WidgetRef ref, final AuthRemoteRepository authRemoteRepository) async {
    (await authRemoteRepository.resetPassword(passwordController.text)).fold((final ErrorDetails error) => showSnackBar(error.toString()), (final String s) {
      showSnackBar(s, context: context);
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.sign, (final Route<dynamic> route) => false);
    });
  }

  String? passwordalidation(String value) {
    if (value.length < 8) {
      return 'Password must be at least 8 characters long.';
    }
    if (!RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter.';
    }

    return null;
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: const FilledBackBar(),
    body: Padding(
      padding: const EdgeInsets.all(padding),
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: padding * 2,
          children: <Widget>[
            Text(l10n.reset_password, style: Default.displayMedium),
            FilledTextField(
              isVisible: pVisible,
              hintText: l10n.enter_new_password,
              onChanged: (final String p0) => check(),
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return l10n.password_is_empty;
                }
                if (value.length < 8) {
                  return l10n.password_must_8_char_long;
                }
                if (!value.contains(RegExp('[A-Z]'))) {
                  return l10n.password_must_contains_one_uppercase;
                }
                return null;
              },
              suffix: IconButton(
                isSelected: true,
                onPressed: () => setState(() => pVisible = !pVisible),
                color: darkgrey,
                icon: pVisible ? const Icon(CupertinoIcons.eye_slash_fill) : const Icon(CupertinoIcons.eye_solid),
              ),
            ),
            FilledTextField(
              isVisible: cpVisible,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password can't be empty.";
                }
                if (value.length < 8) {
                  return 'Password must be at least 8 characters long.';
                }
                if (!value.contains(RegExp('[A-Z]'))) {
                  return 'Password must contain at least one uppercase letter.';
                }
                return null;
              },
              hintText: l10n.confirm_new_password,
              controller: confirmPasswordController,
              onChanged: (final String p0) => check(),
              keyboardType: TextInputType.visiblePassword,
              suffix: IconButton(
                isSelected: true,
                onPressed: () => setState(() => cpVisible = !cpVisible),
                color: darkgrey,
                icon: cpVisible ? const Icon(CupertinoIcons.eye_slash_fill) : const Icon(CupertinoIcons.eye_solid),
              ),
            ),
            BlackButton(
              text: l10n.ontinue,
              onPressed:
                  !isEnabled
                      ? null
                      : () {
                        if (_formKey.currentState!.validate()) {
                          _handleContinue(context, ref, authRemoteRepository);
                        }
                      },
            ),
          ],
        ),
      ),
    ),
  );
}
