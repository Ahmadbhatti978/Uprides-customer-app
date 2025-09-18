//import 'package:file_picker/file_picker.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../config/safe_dialog.dart';
import 'variable.dart';

Color hexToColor(final String hex) => Color(int.parse(hex, radix: 16) + 0xFF000000);

void showSnackBar(final String content, {final BuildContext? context, final bool success = false}) {
  if ((context ?? navigatorKey.currentContext)!.mounted) {
    (context == null ? scaffoldKey.currentState! : ScaffoldMessenger.of(context))
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
          backgroundColor: Colors.black87,
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: GestureDetector(onTap: () => Clipboard.setData(ClipboardData(text: content)), child: Text(content)),
        ),

        /// snackBarAnimationStyle: AnimationStyle()
      );
  }
}

// Future<File?> pickImage() async {
//   try {
//     final filePickerRes = await FilePicker.platform.pickFiles(
//       type: FileType.image,
//     );

//     if (filePickerRes != null) {
//       return File(filePickerRes.files.first.xFile.path);
//     }
//     return null;
//   } catch (e) {
//     return null;
//   }
// }

// Future<File?> pickAudio() async {
//   try {
//     final filePickerRes = await FilePicker.platform.pickFiles(
//       type: FileType.audio,
//     );

//     if (filePickerRes != null) {
//       return File(filePickerRes.files.first.xFile.path);
//     }
//     return null;
//   } catch (e) {
//     return null;
//   }
// }

void showLoading({required final BuildContext context}) => safeShowDialog(
  context: context,
  routeSettings: const RouteSettings(name: "/loading"),
  barrierDismissible: false,
  builder: (_) => const Center(child: CircularProgressIndicator()),
);

void showError({required final BuildContext context, required final String error}) {
  // Dismiss the loader before showing an error dialog
  Navigator.of(context).pop();
  safeShowDialog(
    context: context,
    routeSettings: const RouteSettings(name: "/error"),
    barrierDismissible: false,
    builder:
        (_) => AlertDialog(
          title: Text(l10n.error),
          content: Text(error),
          actions: <Widget>[TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.ok))],
        ),
  );
}

void showAlertDialog(BuildContext context, {required final String content}) {
  showCupertinoDialog<void>(
    context: context,
    builder:
        (BuildContext context) => CupertinoAlertDialog(
          title: Text(l10n.error),
          content: Text(content),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(l10n.okay),
            ),
          ],
        ),
  );
}
