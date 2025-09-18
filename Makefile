# Switch firebase_options.dart for dev
switch-firebase-options-dev:
	cp firebase_configs/firebase_options_dev.dart lib/firebase_options.dart

# Switch firebase_options.dart for uat
switch-firebase-options-uat:
	cp firebase_configs/firebase_options_dev.dart lib/firebase_options.dart

# Switch firebase_options.dart for prod
switch-firebase-options-prod:
	cp firebase_configs/firebase_options_prod.dart lib/firebase_options.dart

# Run app with dev Firebase config
dev:
	make switch-firebase-options-dev
	dart tool/switch_firebase.dart dev
	flutter run -t lib/main.dart

# Run app with prod Firebase config
prod:
	make switch-firebase-options-prod
	dart tool/switch_firebase.dart prod
	flutter run -t lib/main.dart

# Build release APK for prod
build-prod:
	make switch-firebase-options-prod
	dart tool/switch_firebase.dart prod
	flutter build apk --release --no-tree-shake-icons

# Build release APK for dev
build-dev:
	make switch-firebase-options-dev
	dart tool/switch_firebase.dart dev
	flutter build apk --release --no-tree-shake-icons

# Build Android App Bundle (AAB) for prod
bundle-prod:
	make switch-firebase-options-prod
	dart tool/switch_firebase.dart prod
	flutter build appbundle --release --no-tree-shake-icons

# Build Android App Bundle (AAB) for dev
bundle-dev:
	make switch-firebase-options-dev
	dart tool/switch_firebase.dart dev
	flutter build appbundle --release --no-tree-shake-icons

# Build iOS release for prod (requires Xcode & macOS)
ios-prod:
	make switch-firebase-options-prod
	dart tool/switch_firebase.dart prod
	flutter build ios --release --no-tree-shake-icons

# Build iOS release for dev
ios-dev:
	make switch-firebase-options-dev
	dart tool/switch_firebase.dart dev
	flutter build ios --release
