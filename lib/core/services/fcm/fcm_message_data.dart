import 'dart:convert';
import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';
import '../../../notification_type.dart';

/// A wrapper for a [RemoteMessage] that provides structured, parsed data.
class ParsedFCMMessage {
  ParsedFCMMessage({required this.data, this.payload, this.type, this.rideId});

  /// A factory to safely parse a [RemoteMessage].
  factory ParsedFCMMessage.fromRemoteMessage(RemoteMessage message) {
    try {
      final Map<String, dynamic> messageData = message.data;
      Map<String, dynamic>? parsedPayload;

      final dynamic payloadString = messageData['payload'];
      log(payloadString);
      if (payloadString is String) {
        dynamic decoded = jsonDecode(payloadString);
        // Handle cases where the payload is double-encoded JSON
        if (decoded is String) {
          decoded = jsonDecode(decoded);
        }
        parsedPayload = decoded as Map<String, dynamic>?;
      }

      return ParsedFCMMessage(
        data: messageData,
        payload: parsedPayload,
        type: parsedPayload?['type'] as String?,
        rideId: parsedPayload?['payload']?['ride_id'] as String?,
      );
    } catch (e) {
      log('🛑 Error parsing FCM message data:', error: e, name: "ParsedFCMMessage.fromRemoteMessage");
      // Return a partially-filled object on failure
      return ParsedFCMMessage(data: message.data);
    }
  }

  /// The original, unparsed data from the message.
  final Map<String, dynamic> data;

  /// The parsed 'payload' object from the message data.
  final Map<String, dynamic>? payload;

  /// The notification type, extracted from the payload.
  final String? type;

  /// The ride ID, extracted from the nested payload.
  final String? rideId;

  // --- Getters for Business Logic ---
  bool get isPaymentRequest => type == NotificationTypes.ridePaymentRequest;
  bool get isPaidRideRequest => type == NotificationTypes.paidRidePaymentRequest;
  bool get isScheduledRide => payload?[NotificationTypes.scheduleDriverMatching] == true;
  bool get requiresRideNavigation => (isScheduledRide || isPaidRideRequest) && rideId != null;
  bool get isCancelPaymentRequest => type == NotificationTypes.cancelRidePaymentRequest;
  bool get isPaymentRequestReject => type == NotificationTypes.rejectRidePaymentRequest;
}
