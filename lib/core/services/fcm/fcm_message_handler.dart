import 'dart:async';
import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';
import '../../../features/auth/repositories/auth_local.dart';
import '../../model/ride_payment.dart';
import 'fcm_actions.dart';
import 'fcm_message_data.dart';

/// Handles the logic of processing FCM messages and converting them into actionable events.
class FCMMessageHandler {
  FCMMessageHandler({required StreamController<FCMAction> actionStreamController}) : _actionStreamController = actionStreamController;
  final StreamController<FCMAction> _actionStreamController;

  /// Process a message received while the app is in the foreground.
  Future<void> handleForegroundMessage(RemoteMessage message) async {
    log('Processing foreground message: ${message.messageId}', name: "FCMMessageHandler.handleForegroundMessage");
    _processMessageAndDispatchAction(message);
  }

  /// Process a message that was tapped by the user, opening the app.
  Future<void> handleMessageTap(RemoteMessage message) async {
    log('Processing tapped message: ${message.messageId}', name: "handleForegroundMessage.handleMessageTap");
    // Persist the notification for potential later use, as per original logic.
    await AuthLocalRepo.saveLastNotification(message);
    _processMessageAndDispatchAction(message);
  }

  /// Parses the message and dispatches the appropriate action to the UI layer via the stream.
  void _processMessageAndDispatchAction(RemoteMessage message) {
    try {
      final parsedMessage = ParsedFCMMessage.fromRemoteMessage(message);

      // Rule 1: Check if navigation is required.
      if (parsedMessage.requiresRideNavigation && parsedMessage.rideId != null) {
        log('Dispatching NavigateToRideAction for rideId: ${parsedMessage.rideId}', name: "handleForegroundMessage.processMessageAndDispatchAction");
        _actionStreamController.add(NavigateToRideAction(parsedMessage.rideId!));
      }

      // Rule 2: Check if a payment dialog should be shown.
      if (parsedMessage.isPaymentRequest) {
        log('Dispatching ShowPaymentDialogAction.', name: "handleForegroundMessage.processMessageAndDispatchAction");
        final ridePaymentModel = RidePaymentModel.fromJson(message.data);
        _actionStreamController.add(ShowPaymentDialogAction(ridePaymentModel));
      }
      if (parsedMessage.isCancelPaymentRequest) {
        log('Dispatching CancelPaymentDialogAction.', name: "handleForegroundMessage.processMessageAndDispatchAction");
        _actionStreamController.add(const CancelPaymentDialogAction());
      }
      if (parsedMessage.isPaymentRequestReject) {
        log('Dispatching RejectPaymentDialogAction.', name: "handleForegroundMessage.processMessageAndDispatchAction");
        _actionStreamController.add(const RejectPaymentDialogAction());
      }

      // Add more rules for other notification types here.
    } catch (e, stackTrace) {
      log('🛑 Error processing message:', error: e, stackTrace: stackTrace);
    }
  }
}
