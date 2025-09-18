//flutter build apk --dart-define="INTERCOM_APP_ID=iu9cey87" --dart-define="INTERCOM_ANDROID_KEY=android_sdk-2f1d8ba99f6b7d9a481d2631f89de3f9ee440489" --dart-define="INTERCOM_IOS_KEY=ios_sdk-9aae4703fb3af35fae6e66d4fa24f8ed4b08e7da"
//flutter build appbundle --dart-define="INTERCOM_APP_ID=iu9cey87" --dart-define="INTERCOM_ANDROID_KEY=android_sdk-2f1d8ba99f6b7d9a481d2631f89de3f9ee440489" --dart-define="INTERCOM_IOS_KEY=ios_sdk-9aae4703fb3af35fae6e66d4fa24f8ed4b08e7da"

import 'dart:developer';

import 'package:intercom_flutter/intercom_flutter.dart';

Future intercomIntegration({String? intercomToken}) async {
  // Add your function code here!
  try {
    await Intercom.instance.initialize(
      'iu9cey87',
      iosApiKey: 'ios_sdk-9aae4703fb3af35fae6e66d4fa24f8ed4b08e7da',
      androidApiKey: 'android_sdk-2f1d8ba99f6b7d9a481d2631f89de3f9ee440489',
    );
  } on Exception catch (e) {
    log("Error initializing Intercom:", error: e, stackTrace: StackTrace.current, name: "INTERCOM_INIT");
  }
  //  Intercom.instance.sendTokenToIntercom(intercomToken);
}
