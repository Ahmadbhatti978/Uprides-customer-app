import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/widgets/buttons/filled_black_button.dart';
import '../../../../util/colors.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/utils.dart';
import '../../../../util/variable.dart';
import '../../../auth/model/delete_account.dart';
import '../../../auth/repositories/auth_remote.dart';
import '../../../auth/veiw/widget/dialog.dart';
import 'confirm_delete_dialog.dart';

enum DeleteAccountReasonType {
  noLongerUsingUprides,
  serviceTooExpensive,
  wantToChangePhoneNumber,
  dontUnderstandHowToUseApp,
  notAvailableInCity,
  other;

  String get reason {
    switch (this) {
      case DeleteAccountReasonType.noLongerUsingUprides:
        return l10n.delete_reason_no_longer_using_uprides;
      case DeleteAccountReasonType.serviceTooExpensive:
        return l10n.delete_reason_service_too_expensive;
      case DeleteAccountReasonType.wantToChangePhoneNumber:
        return l10n.delete_reason_want_to_change_phone_number;
      case DeleteAccountReasonType.dontUnderstandHowToUseApp:
        return l10n.delete_reason_dont_understand_how_to_use_app;
      case DeleteAccountReasonType.notAvailableInCity:
        return l10n.delete_reason_not_available_in_city;
      case DeleteAccountReasonType.other:
        return l10n.other;
    }
  }
}

class DeleteReasonDialog extends StatelessWidget {
  const DeleteReasonDialog({super.key});

  Future<void> _verifyPhone(WidgetRef ref, BuildContext context, final String reason) async {
    (await ref.read(authRemoteRepositoryProvider).sentOtp()).fold(
      (final ErrorDetails l) => showSnackBar(l.message, context: context, success: true),
      (final DeleteAccount r) => showDialog(
        context: navigatorKey.currentContext!,
        builder:
            (context) => Consumer(
              builder:
                  (context, ref, child) => DialogView(
                    phoneNumber: r.phone,

                    pinController: TextEditingController(),
                    resendOtp: () => ref.read(authRemoteRepositoryProvider).sentOtp().then((value) => value.fold((error) => false, (data) => true)),
                    verifyOtp:
                        (String value) => ref
                            .read(authRemoteRepositoryProvider)
                            .verifyOtp(r.copyWith(otp: value))
                            .then(
                              (res) => res.fold((error) => false, (_) {
                                showSnackBar(l10n.code_verified, context: context, success: true);
                                Navigator.pop(context);
                                showDialog(
                                  context: navigatorKey.currentContext!,
                                  builder: (context) => ConfirmDeleteDialog(deleteAccount: r.copyWith(reason: reason)),
                                );
                                return true;
                              }),
                            ),
                  ),
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    DeleteAccountReasonType sReason = DeleteAccountReasonType.noLongerUsingUprides;
    return AlertDialog(
      shape: RoundedSuperellipseBorder(borderRadius: BorderRadiusGeometry.circular(8)),
      iconPadding: EdgeInsets.zero,
      icon: Align(alignment: Alignment.centerRight, child: IconButton(icon: const Icon(Icons.close), onPressed: () => Navigator.pop(context))),
      iconColor: Colors.black,
      insetPadding: const EdgeInsets.all(20),
      title: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.delete_your_account, style: Default.heading),
          Text(l10n.delete_account_description, textAlign: TextAlign.left, style: Secondary.bodyThin),
          const Gap(10),
          Text(l10n.select_a_reason_to_delete_account, style: Default.headingSmallThin),
        ],
      ),
      titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
      actionsOverflowButtonSpacing: 20,
      actions: <Widget>[
        Consumer(
          builder:
              (final BuildContext context, final WidgetRef ref, final Widget? child) => BlackButton(
                text: l10n.get_code,
                onPressed: () {
                  Navigator.pop(context);
                  _verifyPhone(ref, context, sReason.reason);
                  //    rideCancel(context: context, id: id, reason: sReason);
                },
              ),
        ),
      ],
      contentPadding: const EdgeInsets.only(top: 12, bottom: 12, left: 8, right: 12),
      actionsAlignment: MainAxisAlignment.end,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StatefulBuilder(
            builder:
                (final BuildContext context, final setState) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                      DeleteAccountReasonType.values
                          .map(
                            (final DeleteAccountReasonType reason) => InkWell(
                              borderRadius: BorderRadius.circular(12),
                              onTap: () => setState(() => sReason = reason),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 18,
                                    height: 18,
                                    margin: const EdgeInsets.only(right: padding, left: 16, top: 12, bottom: 12),
                                    decoration: BoxDecoration(
                                      border:
                                          reason != sReason ? Border.all(width: 2, color: darkgrey) : Border.all(width: 5.2, color: const Color(0xFF18C4B8)),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Text(reason.reason, style: Primary.titleSmall),
                                  const Gap(4),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding, vertical: p12),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: l10n.note, style: Default.title),

                  TextSpan(text: l10n.your_account_will_be_deactivated, style: Default.titleSmallThin),
                ],
              ),
            ),
          ),
          const Gap(p24),
        ],
      ),
    );
  }
}
