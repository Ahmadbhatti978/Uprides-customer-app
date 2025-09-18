import 'dart:async';
import 'dart:developer';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/router/route.dart';
import '../../features/auth/repositories/auth_local.dart';
import '../../features/home/model/setting.dart';
import '../../util/variable.dart';
import 'update_dialog.dart';
import 'update_service.dart';

Future<bool> checkAppUpdate(BuildContext context, Settings settings, {bool showNonForcible = true}) async {
  if (!context.mounted) return false;

  // 1. Instantiate the service and get the combined app status.
  final updateService = UpdateService(settings);
  final AppStatusResult status = await updateService.checkAppUpdate(isAndroid: !kIsWeb && Platform.isAndroid, isIOS: !kIsWeb && Platform.isIOS);

  if (!context.mounted) return false;

  // 2. Handle update availability first.
  if (status.updateInfo != null && (status.updateInfo!.isForceUpdate || showNonForcible)) {
    final UpdateInfo updateInfo = status.updateInfo!;
    final UpdateDialogAction? userAction = await UpdateDialog.show(
      context: context,
      isForceUpdate: updateInfo.isForceUpdate,
      title: updateInfo.isForceUpdate ? 'App update required' : 'Update available',
      description: updateInfo.isForceUpdate
          ? ' To continue using the app, you need to install the latest version. Want to skip this step next time? Turn on auto-updates in your settings.'
          : ' A new version is ready with improvements and bug fixes. Update now for the best experience.',
    );

    if (userAction == UpdateDialogAction.update) {
      // User chose to update, launch the store URL.
      final Uri? uri = Uri.tryParse(updateInfo.storeUrl);
      if (uri != null) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
        //navigatorKey.currentState?.pushReplacementNamed(AppRoutes.splash);
      }
      return false; // Interrupt app startup; user is navigating away.
    } else {
      await AuthLocalRepo.prefs.setBool("showNonForcible", false);

      // User chose "Later". NOW check for maintenance.
      if (status.maintenanceInfo != null && navigatorKey.currentContext != null) {
        unawaited(navigatorKey.currentState!.pushNamed(AppRoutes.updateView, arguments: status.maintenanceInfo!.scheduledUntil));
        return false; // Interrupt app startup for maintenance.
      }
      // User chose "Later" and there's no maintenance, so proceed.
      return true;
    }
  }

  // 3. If no update, check for maintenance.
  if (status.maintenanceInfo != null) {
    unawaited(Navigator.pushNamed(context, AppRoutes.updateView, arguments: status.maintenanceInfo!.scheduledUntil));
    return false; // Interrupt app startup for maintenance.
  }

  // 4. If no update and no maintenance, proceed normally.
  log("App is up to date.");
  return true;
}
