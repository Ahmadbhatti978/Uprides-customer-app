import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import '../../core/router/route.dart';
import '../../core/services/fcm/fcm_actions.dart';
import '../../core/services/fcm/fcm_service.dart';
import '../../features/booking/payment_request_dialog.dart';
import '../../main.dart';
import '../variable.dart';
import 'deeplink_handler.dart';

class MyAppWrapper extends StatefulWidget {
  const MyAppWrapper({super.key});

  @override
  State<MyAppWrapper> createState() => _MyAppWrapperState();
}

class _MyAppWrapperState extends State<MyAppWrapper> {
  late final DeepLinkHandler _deepLinkHandler;
  StreamSubscription? _fcmSubscription;
  @override
  void initState() {
    super.initState();
    _deepLinkHandler = DeepLinkHandler(navigatorKey: navigatorKey);
   
    _deepLinkHandler.init();
    _listenToFCMActions();
  }

  /// Subscribes to the FCM action stream and performs UI updates.
  void _listenToFCMActions() {
    _fcmSubscription = FCMService.instance.actionStream.listen((action) {
      final BuildContext? context = navigatorKey.currentContext;
      if (context == null) {
        log("Cannot perform UI action, context is null.");
        return;
      }

      // Use pattern matching or if/else to handle different actions
      if (action is NavigateToRideAction) {
        navigatorKey.currentState?.pushNamedAndRemoveUntil(
          AppRoutes.loadingRide,
          ModalRoute.withName(AppRoutes.bottomNavigationScreen),
          arguments: action.rideId,
        );
      } else if (action is ShowPaymentDialogAction) {
        // ignore: use_build_context_synchronously
        showDialog(context: context, builder: (_) => PaymentRequestDialog(ride: action.ride), barrierDismissible: false, requestFocus: true);
      }
      if (action is CancelPaymentDialogAction) {
        log("not logged", name: "logged");
        navigatorKey.currentState?.pop();
        navigatorKey.currentState?.pop();
      }
      if (action is RejectPaymentDialogAction) {
        log("RejectPaymentDialogAction", name: "logged");

        navigatorKey.currentState?.pop();
        navigatorKey.currentState?.pop();
      }
    });
  }

  @override
  void dispose() {
    _deepLinkHandler.dispose();
    _fcmSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => const MyApp();
}
