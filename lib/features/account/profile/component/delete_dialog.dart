
import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';
import 'delete_reason_dialog.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(padding * 2),
    child: Center(
      child: Material(
        shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding, vertical: p24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 12,
            children: [
              Text("${l10n.delete_account}?", textAlign: TextAlign.center, style: Default.headingSmall),
              Text(l10n.are_you_sure_you_want_to_delete_your_account, textAlign: TextAlign.center, style: Secondary.titleBig),

              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(color: const Color(0xFF18C4B8), shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(4))),
                  child: Text(l10n.no, style: White.titleLarge),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  showDialog(context: context, builder: (final BuildContext context) => const DeleteReasonDialog());
                },
                child: Container(
                  width: double.infinity,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    shape: RoundedSuperellipseBorder(side: const BorderSide(color: Color(0xFF18C4B8)), borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Text(l10n.yes, style: Cyan.headingSmall),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
