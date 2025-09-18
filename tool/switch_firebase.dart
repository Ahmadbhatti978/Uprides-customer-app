import 'dart:developer';
import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    log('Usage: dart tool/switch_firebase.dart <dev|prod>');
    exit(1);
  }

  final String env = args.first.toLowerCase();
  final String projectDir = Directory.current.path;

  final config = {
    'dev': {
      'android': 'firebase_configs/android/google-services-dev.json',
      'ios': 'firebase_configs/ios/GoogleService-Info-Dev.plist',
    },
    'prod': {
      'android': 'firebase_configs/android/google-services-prod.json',
      'ios': 'firebase_configs/ios/GoogleService-Info-Prod.plist',
    },
  };

  if (!config.containsKey(env)) {
    log('❌ Invalid environment: $env (expected "dev" or "prod")');
    exit(1);
  }

  try {
    // Android
    final androidSource = File('$projectDir/${config[env]!['android']}');
    final androidTarget = File('$projectDir/android/app/google-services.json');
    androidSource.copySync(androidTarget.path);
    log('✔ Copied Android google-services.json for $env');

    // iOS
    final iosSource = File('$projectDir/${config[env]!['ios']}');
    final iosTarget = File('$projectDir/ios/Runner/GoogleService-Info.plist');
    iosSource.copySync(iosTarget.path);
    log('✔ Copied iOS GoogleService-Info.plist for $env');

    log('✅ Firebase config switched to $env');
  } catch (e) {
    log('❌ Error switching Firebase config: $e');
    exit(1);
  }
}
