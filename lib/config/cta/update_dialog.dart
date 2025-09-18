import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../core/constants/constants.dart';
import '../../util/image_assets.dart';

enum UpdateDialogAction { update, later }

class UpdateDialog extends StatelessWidget {
  const UpdateDialog({required this.title, required this.description, required this.isForceUpdate, super.key});
  final String title;
  final String description;
  final bool isForceUpdate;

  static bool _isDialogOpen = false;

  /// Shows the dialog once. Returns the user's action.
  static Future<UpdateDialogAction?> show({
    required BuildContext context,
    // REMOVED: onUpdate and onLater callbacks
    required String title,
    required String description,
    required bool isForceUpdate,
    Widget? illustration,
  }) async {
    if (_isDialogOpen) return null;
    _isDialogOpen = true;

    final UpdateDialogAction? action = await showDialog<UpdateDialogAction>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => UpdateDialog(title: title, description: description, isForceUpdate: isForceUpdate),
    ).whenComplete(() {
      _isDialogOpen = false;
    });

    // Return the action so the caller can handle it.
    // If the user dismisses via barrier, action will be null, which we treat as "later".
    return action ?? UpdateDialogAction.later;
  }

  @override
  Widget build(BuildContext context) => Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      backgroundColor: Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60),
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 48,
                  child: Visibility(
                    visible: !isForceUpdate,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(UpdateDialogAction.later);
                        },
                        icon: const Icon(Icons.close, size: 20, color: Colors.black),
                        tooltip: 'Close',
                      ),
                    ),
                  ),
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20, fontFamily: 'Open', fontVariations: [FontVariation('wght', 700)], color: Colors.black),
                ),
                const Gap(8),
                SingleChildScrollView(
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 12, fontFamily: 'Open', fontVariations: [FontVariation('wght', 400)], color: Colors.black),
                  ),
                ),
                const Gap(p24), // Replaced padding with a specific value for clarity
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () => Navigator.of(context).pop(UpdateDialogAction.update),
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      elevation: 2,
                      shadowColor: Colors.black26,
                      backgroundColor: const Color(0xFF18C4B8),
                    ),
                    child: const Text(
                      'Update now',
                      style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Red Hat Display', fontVariations: [FontVariation('wght', 600)]),
                    ),
                  ),
                ),
                if (!isForceUpdate)
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(UpdateDialogAction.later);
                    },
                    child: const Text(
                      'Later',
                      style: TextStyle(color: Color(0xFF18C4B8), fontSize: 16, fontFamily: 'Red Hat Display', fontVariations: [FontVariation('wght', 600)]),
                    ),
                  ),
              ],
            ),
          ),
          Positioned(top: -10, child: Image.asset(updateImage)), // Assuming a default image path
        ],
      ),
    );
}
