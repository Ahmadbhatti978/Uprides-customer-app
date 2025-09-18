import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import '../../../util/variable.dart';
import '../../notification/notification_serv.dart';
import 'fcm_actions.dart';
import 'fcm_message_handler.dart';
import 'fcm_token_manager.dart';

/// A top-level function required for background message handling.
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  log("📳 Handling a background message: ${message.messageId}", name: "firebaseMessagingBackgroundHandler");
  // For data-only messages received in the background, we must trigger a local notification manually.
  // Note: Ensure that initializing NotificationService here is lightweight.
  // final notificationService = NotificationService();
  // await notificationService.initialize();
  // notificationService.showNotification(message);
}

/// The main service for managing all FCM functionality.
class FCMService {
  factory FCMService() => instance;
  // Singleton pattern
  FCMService._internal();
  static final FCMService instance = FCMService._internal();

  // Dependencies
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  late final NotificationService _notificationService;
  late final FCMTokenManager _tokenManager;
  late final FCMMessageHandler _messageHandler;

  bool _isInitialized = false;

  // Stream controller to broadcast actions to the UI
  final _actionStreamController = StreamController<FCMAction>.broadcast();

  /// A stream of actions for the UI to listen to.
  Stream<FCMAction> get actionStream => _actionStreamController.stream;

  /// Initializes all FCM components. Call this once when your app starts.
  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      // 1. Instantiate dependencies
      _notificationService = NotificationService();
      _tokenManager = FCMTokenManager(_messaging);
      _messageHandler = FCMMessageHandler(actionStreamController: _actionStreamController);

      // 2. Initialize local notifications and request permissions
      await _notificationService.initialize();
      await _requestPermissions();

      // 3. Initialize token management
      await _tokenManager.initialize();
      fcmToken = _tokenManager.currentToken; // Sync with legacy global variable

      // 4. Set up message listeners
      _setupMessageListeners();

      // 5. Check if the app was opened from a terminated state via a notification
      await _handleInitialMessage();

      _isInitialized = true;
      log('✅ FCMService initialized successfully.', name: "FCMService.initialize");
    } catch (e) {
      log('🛑 Error initializing FCMService: ', error: e, name: "FCMService.initialize");
      rethrow;
    }
  }

  Future<void> _requestPermissions() async {
    await _messaging.requestPermission(announcement: true, criticalAlert: true, provisional: true);
    await _messaging.setForegroundNotificationPresentationOptions(alert: true, badge: true, sound: true);
  }

  void _setupMessageListeners() {
    // For messages received when the app is in the foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log('📬 Message received in foreground.', name: "FirebaseMessaging.onMessage");
      // Display a local notification to the user
      if (Platform.isAndroid) {
        _notificationService.showNotification(message);
      }
      // Also process the message for any immediate in-app actions
      _messageHandler.handleForegroundMessage(message);
    });

    // For when the user taps a notification, opening the app from the background
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      log('👆 Notification tapped from background.', name: "FirebaseMessaging.onMessageOpenedApp");
      _messageHandler.handleMessageTap(message);
    });

    // For messages received when the app is in the background or terminated
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  }

  /// Checks for and handles the message that opened the app from a terminated state.
  Future<void> _handleInitialMessage() async {
    final RemoteMessage? initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      log('📱 App opened from terminated state via notification.', name: "handleInitialMessage");
      await _messageHandler.handleMessageTap(initialMessage);
    }
  }

  /// Public API to access the current token.
  String? get currentToken => _tokenManager.currentToken;

  void dispose() {
    _actionStreamController.close();
    _tokenManager.dispose();
    _isInitialized = false;
    log('FCMService disposed.', name: "dispose");
  }
}
