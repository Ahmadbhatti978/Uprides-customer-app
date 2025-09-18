import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';

/// Manages the lifecycle of the FCM registration token.
class FCMTokenManager {
  FCMTokenManager(this._messaging);
  final FirebaseMessaging _messaging;
  String? _currentToken;

  // IMPORTANT: For production, load this key from environment variables
  // using --dart-define, instead of hardcoding it.
  static const String _vapidKey = 'BHhAY9AbvGM5ISd-wVtqteQFLcVHfwWGj46r-Bv9fghtjohGBX5vjHWYKHXD6CQ7Uyfc6ITH0MU4teFDp6Xp-sc';

  String? get currentToken => _currentToken;

  /// Initializes the token manager, gets the initial token, and listens for refreshes.
  Future<void> initialize() async {
    try {
      _currentToken = await _getFCMToken();
      log('FCM Token Initialized: $_currentToken', name: "FCMTokenManager.initialize");
      _messaging.onTokenRefresh.listen(_onTokenRefresh);
    } catch (e) {
      log('🛑 Error initializing FCMTokenManager:', error: e, name: "FCMTokenManager.initialize");
    }
  }

  Future<String?> _getFCMToken() async {
    try {
      return await _messaging.getToken(vapidKey: _vapidKey);
    } catch (e) {
      log('🛑 Error getting FCM token:', error: e, name: "FCMTokenManager.getFCMToken");
      return null;
    }
  }

  /// Called when FCM issues a new token.
  void _onTokenRefresh(String token) {
    _currentToken = token;
    log('FCM token was refreshed by FCM: $token', name: "FCMTokenManager.onTokenRefresh");
    _sendTokenToServer(token);
  }

  /// Placeholder for the logic to send the token to your backend.
  void _sendTokenToServer(String token) {
    log('⬆️ Updating backend with new token: $token', name: "FCMTokenManager.sendTokenToServer");
    // Example: await yourApiService.updateFcmToken(token);
  }

  void dispose() {
    _currentToken = null;
    log('FCMTokenManager disposed.', name: "FCMTokenManager.dispose");
  }
}
