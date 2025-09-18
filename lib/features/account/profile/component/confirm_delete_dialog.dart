import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/constants.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';
import '../../../auth/model/delete_account.dart';
import '../../../auth/repositories/auth_remote.dart';
import '../../provider/logout.dart';

class ConfirmDeleteDialog extends StatelessWidget {
  const ConfirmDeleteDialog({required this.deleteAccount, super.key});
  final DeleteAccount deleteAccount;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(padding * 2),
    child: Center(
      child: Material(
        shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close)),
            Padding(
              padding: const EdgeInsets.fromLTRB(padding, 0, padding, padding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 12,
                children: [
                  Text(l10n.delete_your_account, textAlign: TextAlign.center, style: Default.headingSmall),
                  Text(l10n.are_you_sure_you_want_to_delete_your_account, textAlign: TextAlign.center, style: Secondary.titleBig),

                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(4), side: const BorderSide(color: Colors.deepOrangeAccent)),
                      ),
                      child: Text(
                        l10n.no,
                        style: const TextStyle(fontSize: 16, color: Colors.red, fontVariations: <FontVariation>[FontVariation('wght', 600)]),
                      ),
                    ),
                  ),
                  Consumer(
                    builder:
                        (final BuildContext context, final WidgetRef ref, final Widget? child) => InkWell(
                          onTap: () {
                            ref.read(authRemoteRepositoryProvider).deleteAccount(deleteAccount);

                            ref.read(logOutofAppProvider);
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF18C4B8),
                              shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(4)),
                            ),
                            child: Text(l10n.yes_delete, style: White.titleLarge),
                          ),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
