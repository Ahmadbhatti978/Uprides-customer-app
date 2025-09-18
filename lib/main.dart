import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'core/actions/intercom_integration.dart';
import 'core/constants/constants.dart';
import 'core/logging/navigation_observer.dart';
import 'core/router/route.dart';
import 'core/services/fcm/fcm_service.dart';
import 'features/auth/repositories/auth_local.dart';
import 'firebase_options.dart';
import 'l10n/app_localizations.dart';
import 'util/deeplink/deeplink_wrapper.dart';
import 'util/theme.dart';
import 'util/variable.dart';

StateProvider<Locale?> locale = StateProvider<Locale?>((final Ref<Locale?> ref) => slocal);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
    ),
  );
  HttpOverrides.global = MyHttpOverrides();
  await AuthLocalRepo.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  await FCMService.instance.initialize();
  Stripe.publishableKey = stripePublishableKey;
  Stripe.merchantIdentifier = 'com.boldrides.customer';
  unawaited(Stripe.instance.applySettings());

  // Ideal time to initialize
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  unawaited(intercomIntegration());

  runApp(
    const ProviderScope(
      observers: <ProviderObserver>[
        // MyObserver(
        // ),
      ],
      child: MyAppWrapper(),
    ),
  );
}

// In your MyApp class
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context, WidgetRef ref) {
    mediaQuery = MediaQuery.of(context);
    slocal = ref.watch(locale);
    return MaterialApp(
      scaffoldMessengerKey: scaffoldKey,
      color: Colors.white,
      navigatorKey: navigatorKey,
      title: 'UPrides',
      themeMode: ThemeMode.light,
      theme: theme,
      locale: AppLocalizations.supportedLocales.contains(slocal) ? slocal : const Locale('en'),
      localeResolutionCallback: (locale, supportedLocales) {
        slocal = locale;
        log(locale?.countryCode ?? "");
        return locale;
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      restorationScopeId: 'app',
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      navigatorObservers: <NavigatorObserver>[NavigatorObserverx()],
      // IMPORTANT: Use initialRoute or home to define your starting screen
      initialRoute: AppRoutes.splash,
      routes: AppRoutes.routes,
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(final SecurityContext? context) =>
      super.createHttpClient(context)..badCertificateCallback = (final X509Certificate cert, final String host, final int port) => true;
}
