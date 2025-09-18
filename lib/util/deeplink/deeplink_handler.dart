import 'dart:async';
import 'dart:convert';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';


String emailFromDeepLink = "";
String phoneFromDeepLink = "";
String countryCode = "";

class DeepLinkHandler {
  DeepLinkHandler({required this.navigatorKey});
  final GlobalKey<NavigatorState> navigatorKey;
  StreamSubscription<Uri>? _linkSubscription;
  void init() {
    _linkSubscription = AppLinks().uriLinkStream.listen((uri) {
      debugPrint('onAppLink: $uri');
      _handleUri(uri);
    });
  }
  void dispose() {
    _linkSubscription?.cancel();
  }
  void _handleUri(Uri uri) {
    if (uri.pathSegments.contains('register')) {

      // Raw encrypted (base64 encoded) values
      final String encodedEmail = uri.queryParameters['email'] ?? "";
      final String encodedPhone = uri.queryParameters['phone'] ?? "";
      final String encodedCountryCode = uri.queryParameters['countryCode']?.trim() ?? "";

      // Decode using Base64
      final String e = _tryDecodeBase64(encodedEmail);
      final String p = _tryDecodeBase64(encodedPhone);
      final String c = _tryDecodeBase64(encodedCountryCode);
      emailFromDeepLink = e;
      phoneFromDeepLink = c + p;
      navigatorKey.currentState?.pushNamed('/register');
    }
  }
  // Helper method to decode Base64 safely
  String _tryDecodeBase64(String encoded) {
    try {
      return utf8.decode(base64Url.decode(encoded));
    } catch (e) {
      debugPrint("Base64 decode failed: $e");
      return encoded; // fallback to original if decoding fails
    }
  }
}
