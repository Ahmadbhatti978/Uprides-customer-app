# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Project Overview

This is a Flutter mobile application for a ride-sharing/transportation service called "UPrides". The app is built using Flutter 3.35.2 with Dart 3.9.0 and follows a feature-driven architecture with Riverpod for state management.

## Common Development Commands

### Environment Setup and Building
```bash
# Switch to development environment and run
make dev

# Switch to production environment and run
make prod

# Build release APK for development
make build-dev

# Build release APK for production
make build-prod

# Build Android App Bundle for development
make bundle-dev

# Build Android App Bundle for production
make bundle-prod

# Build iOS for development (requires macOS/Xcode)
make ios-dev

# Build iOS for production (requires macOS/Xcode)
make ios-prod
```

### Code Generation and Dependencies
```bash
# Install dependencies
flutter pub get

# Generate code (Riverpod, Freezed, JSON serialization)
dart run build_runner build

# Generate code with clean build
dart run build_runner build --delete-conflicting-outputs

# Watch for changes and auto-generate
dart run build_runner watch

# Analyze code
flutter analyze

# Run tests
flutter test

# Run integration tests
flutter test integration_test/
```

### Single Test Execution
```bash
# Run specific test file
flutter test test/features/auth/repositories/auth_local_test.dart

# Run specific test with name pattern
flutter test --name "test_name_pattern"
```

## Architecture Overview

### State Management
- **Riverpod**: Primary state management solution using `@riverpod` annotations
- Generated providers are located throughout the codebase with `.g.dart` extensions
- State is managed at feature levels with clear separation of concerns

### Project Structure
```
lib/
├── core/                    # Shared utilities, services, and widgets
│   ├── constants/          # App-wide constants
│   ├── extensions/         # Dart extension methods
│   ├── location_validator/ # Location services and validation
│   ├── router/            # App routing configuration
│   ├── services/          # Core services (FCM, etc.)
│   └── widgets/           # Reusable widgets
├── features/               # Feature-based modules
│   ├── auth/              # Authentication flows
│   ├── booking/           # Ride booking functionality
│   ├── home/              # Home screen and related features
│   ├── intercity/         # Intercity travel features
│   ├── account/           # User account management
│   └── [other features]/
├── util/                  # Utilities and helpers
├── l10n/                  # Localization files
└── gen/                   # Generated assets
```

### Key Architectural Patterns
- **Feature-driven development**: Each major feature has its own directory with providers, models, and UI
- **Repository pattern**: Data access abstracted through repository classes
- **Clean architecture principles**: Clear separation between data, business logic, and presentation layers
- **Code generation**: Heavy use of code generation for Riverpod providers, JSON serialization, and Freezed models

### Firebase Integration
- Multiple environment configurations (dev/prod) with automatic switching
- Firebase services: Auth, Firestore, FCM, Crashlytics
- Environment switching handled by `tool/switch_firebase.dart`

### Multi-platform Considerations
- Android and iOS support with platform-specific configurations
- Location services with proper permission handling
- Google Maps integration for ride tracking
- Payment integration with Stripe

## Development Notes

### Environment Switching
The app uses a custom Firebase environment switching system. The `make dev` and `make prod` commands automatically:
1. Copy the appropriate Firebase configuration files
2. Switch `firebase_options.dart`
3. Update Google Services configuration files for both platforms
4. Run the app with the correct environment

### Code Generation Dependencies
Many files depend on code generation. Always run `dart run build_runner build` after:
- Adding new Riverpod providers with `@riverpod` annotation
- Modifying Freezed data classes
- Adding JSON serializable models
- After pulling changes that modify generated files

### Testing Structure
- Unit tests in `test/` directory
- Integration tests in `test/integration_test/`
- Widget tests follow standard Flutter conventions
- Auth repository has dedicated test coverage

### Localization
The app supports multiple locales with Flutter's localization system:
- Locale files in `lib/l10n/`
- Supports English (`en`) and Portuguese (`pt`)
- Use `AppLocalizations.of(context)` for translated strings

### State Management Best Practices
- Use `@riverpod` annotation for new providers
- Generated providers are automatically disposed
- Feature-specific providers should be grouped in their respective feature directories
- Global state lives in `core/` directory

### Asset Management
- Images stored in `assets/images/` with subdirectories by feature
- SVG files in `assets/svg/`
- App icons in `assets/icon/`
- Use generated asset classes from `lib/gen/assets.gen.dart`
