import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/constants.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../core/widgets/text_feild.dart';
import '../../../util/colors.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/utils.dart';
import '../../../util/variable.dart';
import '../../auth/model/user.dart';
import 'provider/get_by_username.dart';

class RequestMoney extends StatefulWidget {
  const RequestMoney({super.key});

  @override
  State<RequestMoney> createState() => _RequestMoneyState();
}

class _RequestMoneyState extends State<RequestMoney> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  User? user;
  bool isLoading = false;
  bool isSelected = false;
  // New state variable to control the button's enabled state.
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    // Add a listener to the text controller to validate input in real-time.
    userNameController.addListener(_validateInputs);
  }

  @override
  void dispose() {
    // It's crucial to remove the listener to prevent memory leaks.
    userNameController
      ..removeListener(_validateInputs)
      ..dispose();
    messageController.dispose();
    super.dispose();
  }

  /// Validates the conditions for enabling the request button.
  void _validateInputs() {
    // Use trim() to ensure the username isn't just whitespace.
    final bool isFormValid = userNameController.text.trim().isNotEmpty && isSelected;
    // Only call setState if the enabled state actually changes.
    // This is more efficient than calling it on every keystroke.
    if (_isButtonEnabled != isFormValid) setState(() => _isButtonEnabled = isFormValid);
  }

  /// Handles the payment request logic.
  Future<void> _handleRequestPayment(WidgetRef ref) async {
    // Set loading state to true and disable the button during the request.
    setState(() {
      isLoading = true;
    });

    try {
      final User user = await ref.read(GetByUsernameProvider(userNameController.text.trim()).future);
      // Check if the widget is still mounted before navigating.
      if (mounted) {
        unawaited(Navigator.pushNamed(context, AppRoutes.paymentRequest, arguments: (user, messageController.text)));
      }
    } catch (e) {
      // Show an error message if the provider fails.
      if (mounted) {
        showSnackBar(e.toString());
      }
    } finally {
      // Ensure the loading state is reset, even if an error occurs.
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(final BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(bottom: mediaQuery.viewInsets.bottom),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        appBar: NameBackBar(title: l10n.request_money),
        body: ListView(
          padding: const EdgeInsets.only(bottom: padding * 9, left: padding, right: padding),
          children: <Widget>[
            Text(l10n.book_a_cab_and_let_your_known_one_pay_for_you, style: Secondary.title),
            Center(child: Image.asset(requestmoney, width: 200, height: 200)),
            Text(l10n.enter_the_payment_id, style: Primary.heading),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: padding),
              child: Text(l10n.enter_the_payment_id_of_the_person_with_whom_you_want_to_request_the_money, style: Secondary.title),
            ),
            FilledTextField(
              onChanged: (_) => _validateInputs(),
              controller: userNameController,
              hintText: l10n.enter_user_paymentid,
              keyboardType: TextInputType.name,
            ),
            const Gap(p12),
            CheckboxListTile(
              enableFeedback: true,
              splashRadius: 12,
              shape: RoundedSuperellipseBorder(borderRadius: BorderRadiusGeometry.circular(12)),
              side: WidgetStateBorderSide.resolveWith((states) => const BorderSide(color: Color.fromRGBO(24, 196, 184, 1))),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

              checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              fillColor: const WidgetStatePropertyAll(Color.fromRGBO(241, 255, 254, 1)),
              checkColor: const Color.fromRGBO(24, 196, 184, 1),

              //activeColor: const Color.fromRGBO(241, 255, 254, 1),
              dense: true,
              contentPadding: EdgeInsets.zero,
              controlAffinity: ListTileControlAffinity.leading,
              visualDensity: VisualDensity.compact,
              value: isSelected,
              onChanged: (final bool? value) {
                setState(() => isSelected = value ?? true);
                _validateInputs();
              },
              title: Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(text: l10n.your_request_will_expire_in, style: Secondary.titleLarge),
                    const TextSpan(text: ' 5 minutes', style: Primary.titleLarge),
                    TextSpan(text: l10n.by_sharing_the_link_you_accept_our, style: Secondary.titleLarge),
                    TextSpan(
                      text: l10n.terms_and_conditions,
                      recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, AppRoutes.termCondition),
                      style: const TextStyle(
                        color: primary,
                        fontSize: 16,
                        fontFamily: 'Open',
                        letterSpacing: -0.3,
                        fontVariations: <FontVariation>[FontVariation('wght', 500)],
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(padding * 2),
            Text(l10n.add_a_note, style: Primary.heading),
            const Gap(padding),
            TextField(controller: messageController, minLines: 3, maxLines: 4, decoration: const InputDecoration(hintText: "Add your message here...")),
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: padding, vertical: p12),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[BoxShadow(color: Color.fromARGB(40, 200, 200, 201), blurRadius: 20, offset: Offset(0, -18), spreadRadius: 20)],
          ),
          child: SafeArea(
            minimum: const EdgeInsets.only(bottom: p12),
            child: Consumer(
              builder:
                  (final BuildContext context, final WidgetRef ref, final Widget? child) => BlackButton(
                    text: l10n.request_payment,
                    isLoading: isLoading,
                    // The onPressed callback is null when the button should be disabled.
                    // This is the idiomatic way to disable buttons in Flutter.
                    // The button is also disabled while loading.
                    onPressed: _isButtonEnabled && !isLoading ? () => _handleRequestPayment(ref) : null,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
