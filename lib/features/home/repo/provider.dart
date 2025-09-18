import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/failure/failure.dart';
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart';
import '../../../util/utils.dart';
import '../model/setting.dart';
part "provider.g.dart";

abstract interface class Provider {
  Future<Either<ErrorDetails, String>> settings({final String? appVersion, final String? deviceType});
  Future<Setting> getsettings();
}

@riverpod
ProviderRepoImpl bookingRepo(final Ref ref) => ProviderRepoImpl();

class ProviderRepoImpl implements Provider {
  @override
  Future<Either<ErrorDetails, String>> settings({String? appVersion, String? deviceType}) => PackageInfo.fromPlatform().then(
    (PackageInfo deviceInfo) => Request.patch(
      path: Api.settings,
      payload: {"app_version": appVersion ?? deviceInfo.version + deviceInfo.buildNumber, "device_type": Platform.isIOS ? "IOS" : "ANDROID"},
      onSuccess: (p0) => p0.toString(),
    ),
  );

  @override
  Future<Setting> getsettings() async => (await Request.get(path: Api.settings, onSuccess: (json) => Setting.fromJson(json))).fold((error) {
    showSnackBar(error.message);

    return Future.error(error);
  }, Future.value);
}
