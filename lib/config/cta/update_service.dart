// lib/update_service.dart

import 'package:package_info_plus/package_info_plus.dart';
import '../../core/constants/constants.dart';
import '../../features/home/model/setting.dart';

// Step 1: Define data holders for the status.
class MaintenanceInfo {
  MaintenanceInfo(this.scheduledUntil);
  final String? scheduledUntil;
}

class UpdateInfo {
  UpdateInfo({required this.targetVersion, required this.isForceUpdate, required this.storeUrl});
  final String targetVersion;
  final bool isForceUpdate;
  final String storeUrl;
}

// Step 2: Create a result class to hold both statuses.
class AppStatusResult {
  AppStatusResult({this.updateInfo, this.maintenanceInfo});
  final UpdateInfo? updateInfo;
  final MaintenanceInfo? maintenanceInfo;
}

// Step 3: Update the service to return the new result class.
class UpdateService {
  UpdateService(this._settings);
  final Settings _settings;

  Future<AppStatusResult> checkAppUpdate({required bool isAndroid, required bool isIOS}) async {
    // Gather current version info.
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final String currentVersion = packageInfo.version.trim();

    // Check for available update.
    final (String? targetVersion, bool forceUpdate) = _resolveVersionPolicy(isAndroid: isAndroid, isIOS: isIOS);
    UpdateInfo? updateInfo;
    if (targetVersion != null && targetVersion.isNotEmpty) {
      final bool isOutdated = _isVersionLower(currentVersion, targetVersion);
      if (isOutdated) {
        final String storeUrl = _getStoreUrl(isAndroid: isAndroid, isIOS: isIOS);
        updateInfo = UpdateInfo(targetVersion: targetVersion, isForceUpdate: forceUpdate, storeUrl: storeUrl);
      }
    }

    // Check for maintenance mode independently.
    MaintenanceInfo? maintenanceInfo;
    if (_settings.isCustomerAppUnderMaintenance ?? false) {
      maintenanceInfo = MaintenanceInfo(_settings.customerMaintenanceScheduledUntil?.toString());
    }

    // Return the combined status.
    return AppStatusResult(updateInfo: updateInfo, maintenanceInfo: maintenanceInfo);
  }

  (String?, bool) _resolveVersionPolicy({required bool isAndroid, required bool isIOS}) {
    if (isAndroid) {
      return (_settings.customerAndroidAppVersion, _settings.customerAndroidForceUpdate ?? false);
    }
    if (isIOS) {
      return (_settings.customerIosAppVersion, _settings.customerIosForceUpdate ?? false);
    }
    return (null, false);
  }

  String _getStoreUrl({required bool isAndroid, required bool isIOS}) {
    if (isAndroid) return playStoreLink;
    if (isIOS) return appStoreLink;
    return '';
  }

  bool _isVersionLower(String current, String target) {
    final List<int?> currentParts = current.split('.').map(int.tryParse).toList();
    final List<int?> targetParts = target.split('.').map(int.tryParse).toList();
    final int maxLength = currentParts.length > targetParts.length ? currentParts.length : targetParts.length;

    for (int i = 0; i < maxLength; i++) {
      final int cur = i < currentParts.length ? currentParts[i] ?? 0 : 0;
      final int tar = i < targetParts.length ? targetParts[i] ?? 0 : 0;
      if (cur < tar) return true;
      if (cur > tar) return false;
    }
    return false;
  }
}
