import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../config/cta/check_update.dart';
import '../core/router/route.dart';
import '../features/auth/model/user_detail.dart';
import '../features/auth/repositories/auth_local.dart';
import '../features/booking/book_ride/provider/ride_data.dart';
import '../features/booking/provider/get_type.dart';
import '../features/home/model/ride_data.dart';
import '../features/home/provider/current_location_notifier.dart';
import '../features/home/provider/location_name.dart';
import '../features/home/repo/provider.dart';
import '../l10n/app_localizations.dart';
import '../l10n/app_localizations_en.dart';
import '../main.dart';
import '../util/api/call.dart';
import '../util/colors.dart';
import '../util/image_assets.dart';
import '../util/style/typo.dart';
import '../util/variable.dart';

Future<String> getInitialRoute() async {
  // Assuming AuthLocalRepo.getUser() returns user data if available or null otherwise.
  // AuthLocalRepo.saveUserDetailMap(userWithExpiredTToken);
  final UserDetail? user = AuthLocalRepo.getUser();
  appStarted = false;
  if (user != null) {
    return AppRoutes.bottomNavigationScreen; // Home screen routecd ..
  } else {
    FlutterNativeSplash.remove();
    return AppRoutes.sign; // Language screen route
  }
}

class Splash extends ConsumerStatefulWidget {
  const Splash({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashState();
}

class _SplashState extends ConsumerState<Splash> {
  @override
  void initState() {
    super.initState();
    ref
      ..refresh(currentLocationProvider)
      ..refresh(currentPlaceProvider);
    _handleSplashSequence();
  }

  Future<void> _handleSplashSequence() async {
    // Remove native splash and show second splash
    FlutterNativeSplash.remove();

    final String route = await getInitialRoute();

    if (route == AppRoutes.bottomNavigationScreen) {
      WidgetsBinding.instance.addPostFrameCallback((_) => checkForLanguage());

      await initializeApp();
    } else {
      await Future.delayed(Durations.long4);
      // Navigate to second splash screen
      // ignore: use_build_context_synchronously
      unawaited(Navigator.pushReplacementNamed(context, route));
    }
  }

  void checkForLanguage() {
    if (slocal?.languageCode != guser?.language) {
      ref.read(locale.notifier).state = Locale(guser?.language ?? '');
      slocal = Locale(guser?.language ?? '');
    }
  }

  Future<void> initializeApp() async {
    try {
      if (!appStarted) {
        appStarted = true;

        // Update provider/device settings; this may trigger token refresh on 401
        await ref.read(bookingRepoProvider).settings();

        // If logout happened during settings (e.g., refresh failed), stop initialization
        if (!mounted || Request.clientService.token.isEmpty) return;

        // Fetch ride type images only if authenticated
        await ref.read(getRideTypeImagesProvider.future); // Adjust based on provider type
        setting = await ref.read(bookingRepoProvider).getsettings();

        rideId = setting?.data?.rideId;
        final String? status = setting?.data?.rideDetails?.status;
        // Navigate only after successful init and still authenticated
        if (mounted && Request.clientService.token.isNotEmpty) {
          unawaited(Navigator.pushReplacementNamed(context, AppRoutes.bottomNavigationScreen));
        } else {
          return;
        }

        unawaited(checkAppUpdate(context, setting!.data!.settings!, showNonForcible: AuthLocalRepo.prefs.getBool("showNonForcible") ?? true));

        if (rideId != null && status != null) {
          currentRoute = AppRoutes.bottomNavigationScreen;

          final Future<RideData> _ = ref.refresh(RideDataProvider(rideId!).future);
          //   handleRideStatus(status, rideId!);
        }
      }
    } catch (e) {
      //log('💥 App initialization failed: $e', name: "INIT");

      if (mounted) unawaited(Navigator.pushReplacementNamed(context, AppRoutes.bottomNavigationScreen));

      return Future.error('App initialization failed: $e');
      // Handle initialization failure
    }
  }

  void localization(BuildContext context) => l10n = AppLocalizations.of(context) ?? AppLocalizationsEn();

  @override
  Widget build(BuildContext context) {
    localization(context);
    return Material(
      color: primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          // ✨ ANIMATION WIDGET ADDED HERE ✨
          TweenAnimationBuilder(
            // Define the animation properties
            tween: Tween<double>(begin: 0, end: 1), // Scale from 0% to 100%
            duration: Durations.extralong1, // Animation duration
            curve: Curves.easeOutQuint, // An optional pleasant animation curve
            // This builder is called for each frame of the animation
            builder: (BuildContext context, double scale, Widget? child) => Opacity(opacity: scale, child: Transform.scale(scale: scale, child: child)),
            // The widget to animate (passed as 'child' to the builder)
            child: Image.asset(icon, width: 1024),
          ),
          const Spacer(),
          const Text("Made in Portugal", style: reggaeOneWhite),
          const Gap(kBottomNavigationBarHeight),
        ],
      ),
    );
  }
}
