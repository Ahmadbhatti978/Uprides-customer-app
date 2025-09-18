import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/align/text_icon.dart';
import '../../../../util/colors.dart';
import '../../../../util/style/buttons.dart';
import '../../../account/saved_riders.dart/get_riders.dart';
import '../../../home/presentation/import.dart';
import '../../provider/config_provider.dart';
import '../model/config.dart';

class Types extends ConsumerWidget implements PreferredSizeWidget {
  const Types({required this.onPressed, super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final VoidCallback onPressed;

  void _showActionSheet(final BuildContext context, final WidgetRef ref) {
    showCupertinoModalPopup<void>(
      context: context,
      builder:
          (final BuildContext context) => CupertinoActionSheet(
            title: Text(l10n.reschedule, style: const TextStyle(fontSize: 26)),
            message: Text(l10n.you_can_change_the_datetime_of_your_ride_or_book_it_now),
            actions: <CupertinoActionSheetAction>[
              CupertinoActionSheetAction(
                /// This parameter indicates the action would be a default
                /// default behavior, turns the action's text to bold text.
                // isDefaultAction: true,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.schedule);
                },
                child: Text(l10n.change_datetime),
              ),
              CupertinoActionSheetAction(
                isDestructiveAction: true,
                onPressed: () {
                  ref.read(configPProvider.notifier).onDemand();
                  Navigator.pop(context);
                },
                child: Text(l10n.book_for_now),
              ),
              // CupertinoActionSheetAction(
              //   /// This parameter indicates the action would perform
              //   /// a destructive action such as delete or exit and turns
              //   /// the action's text color to red.
              //   isDestructiveAction: true,
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   child: const Text('Destructive Action'),
              // ),
            ],
            cancelButton: CupertinoActionSheetAction(
              /// This parameter indicates the action would be a default
              /// default behavior, turns the action's text to bold text.
              //   isDefaultAction: true,
              onPressed: () => Navigator.pop(context),

              child: Text(l10n.cancel),
            ),
          ),
    );
  }

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final Config scheduleSomeone = ref.watch(configPProvider);
    final bool isForSomeone = scheduleSomeone.isForSomeone();
    final bool isForLater = scheduleSomeone.isForLater();
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Gap(8),
          const CloseButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(grey))),
          Expanded(
            child: SizedBox(
              height: 32,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: p12,
                  children: [
                    SizedBox(
                      height: 32,

                      child: FilledButton.icon(
                        onPressed: () => isForLater ? _showActionSheet(context, ref) : Navigator.pushNamed(context, AppRoutes.schedule),
                        label: TextIcon(text: l10n.for_later, isWhite: isForLater, icon: CupertinoIcons.chevron_down, size: 16, gap: 5),
                        icon: const Icon(Icons.schedule, size: 16),
                        style: isForLater ? blackRound : greyRound,
                      ),
                    ),

                    SizedBox(
                      height: 32,
                      child: FilledButton.icon(
                        onPressed:
                            () => showModalBottomSheet(
                              useRootNavigator: true,
                              useSafeArea: true,
                              context: context,
                              builder: (final BuildContext context) => const GetRiders(),
                            ),
                        label: TextIcon(text: l10n.for_someone, icon: CupertinoIcons.chevron_down, gap: 5, size: 16, isWhite: isForSomeone),

                        icon: const Icon(CupertinoIcons.person_crop_circle, size: 20),
                        style: isForSomeone ? blackRound : greyRound,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox.shrink(),
        ],
      ),
    );
  }
}
