import 'dart:developer';
import 'dart:io';
import 'package:fpdart/fpdart.dart';
import '../../../core/failure/failure.dart';
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart';
import '../../../util/utils.dart';
import '../../../util/variable.dart';
import '../../auth/repositories/auth_local.dart';

Future<void> updateFCMToken() async {
  if ((fcmToken != null) && (fcmToken != guser?.fcmToken)) {
    //  log(userDetail?.accessToken ?? "no token Came", name: "Token");
    (await updateUserInfo()).fold((final ErrorDetails l) => showSnackBar(l.message), AuthLocalRepo.saveUserMap);
  } else {
    if (fcmToken == guser?.fcmToken) {
      log('  FCM Same', name: 'Same', level: 2000);
    }
  }
}

Future<Either<ErrorDetails, Map<String, dynamic>>> updateUserInfo({final String? fullName, final String? language, final File? file, final String? fileField}) {
  final Map<String, String> payload = <String, String>{
    if (fullName != null) 'full_name': fullName,
    if (language != null) 'language': language,
    if ((fcmToken != null) && (fcmToken != guser?.fcmToken)) 'fcm_token': fcmToken!,
  };
  return Request.upload<Map<String, dynamic>>(
    path: Api.updateUserInfo,
    payload: payload,
    file: file,
    onSuccess: (final dynamic json) => json['data'],
    fileField: fileField,
    method: 'PUT',
  );
}
