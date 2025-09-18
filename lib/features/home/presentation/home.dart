import 'package:flutter/material.dart';
import '../repo/provider.dart';
import 'component/widgets/heading.dart';
import 'import.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  final GlobalKey _sheetKey = GlobalKey();
  AppLifecycleListener? _lifecycleListener;
  @override
  void initState() {
    if (!ref.exists(currentLocationProvider)) {
      ref
        ..read(currentLocationProvider)
        ..read(currentPlaceProvider);
    }
    initializeApp();

    FlutterNativeSplash.remove();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkForLanguage(ref);
    });
    updateFCMToken();
    // Modern lifecycle listener
    _lifecycleListener = AppLifecycleListener(
      onResume: () async {
        debugPrint("App resumed - checking for updates");
        if (setting?.data?.settings != null) await checkAppUpdate(context, setting!.data!.settings!, showNonForcible: false);
      },
      onHide: () => debugPrint("App hidden"),
      onInactive: () => debugPrint("App inactive"),
      onPause: () => debugPrint("App paused"),
    );
    // LiveActivityManager.instance.endAll();
    // LiveActivityManager.instance.start(payload: model.toJson());
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light));
    super.initState();
  }

  Future<Availability?> avail() async {
    if (env != 'prod') return null;

    try {
      final DocumentSnapshot snapshot = await FirebaseFirestore.instance.collection('maintenance').doc('customer').get();
      final Map<String, dynamic> data = snapshot.data()! as Map<String, dynamic>;
      return Availability.fromJson(data);
    } on Exception catch (e) {
      // Future.error(e);
      log('Error fetching availability: ', error: e);
      return null;
    }
  }

  Future<void> initializeApp() async {
    final Availability? availabitly = await avail();
    if (availabitly != null) {
      availability = availabitly;
    }
    try {
      if (!appStarted) {
        appStarted = true;

        await ref.read(bookingRepoProvider).settings();

        await ref.read(getRideTypeImagesProvider.future); // Adjust based on provider type
        setting = await ref.read(bookingRepoProvider).getsettings();
        await checkAppUpdate(context, setting!.data!.settings!);
        rideId = setting?.data?.rideId;
        final String? status = setting?.data?.rideDetails?.status;

        if (rideId != null && status != null) {
          currentRoute = AppRoutes.bottomNavigationScreen;

          ref.refresh(RideDataProvider(rideId!).future);
          //   handleRideStatus(status, rideId!);
        }
      }
    } catch (e) {
      return Future.error('App initialization failed: $e');
      // Handle initialization failure
    }
  }

  @override
  void dispose() {
    _lifecycleListener?.dispose();
    super.dispose();
  }

  DraggableScrollableSheet get sheet => _sheetKey.currentWidget! as DraggableScrollableSheet;

  @override
  Widget build(final BuildContext context) {
    currentRoute = AppRoutes.bottomNavigationScreen;

    return Scaffold(
      appBar: const LocationBanner(),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          const HomeTrendingScreen(),
          const NotificationAndTrending(),
          const Quote(),
          DraggableScrollableSheet(
            key: _sheetKey,
            initialChildSize: 0.45,
            minChildSize: 0.44,
            builder: (final BuildContext context, final ScrollController scrollController) => BottomSheetWidget(scrollController: scrollController),
          ),
        ],
      ),
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({required this.scrollController, super.key});
  final ScrollController scrollController;

  @override
  Widget build(final BuildContext context) => DecoratedBox(
        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          controller: scrollController,
          slivers: <Widget>[
            SliverToBoxAdapter(child: Center(child: buildHandle)),
            searching(context),
            // TODO(username): non-mvp feature
            // Heading(heading: l10n.suggestions),
            // const Suggestions(),
            Heading(heading: l10n.trending_location),
            const Trending(),
            Heading(heading: l10n.what_on_your_mind),
            const SliverToBoxAdapter(child: Services()),
            Heading(heading: l10n.explore_more_on_uprides),
            const SliverToBoxAdapter(child: RideSuggestion()),
            Heading(heading: l10n.offer_discount),
            const Bottom(),
            const SliverGap(24),
          ],
        ),
      );
}
