import 'dart:async';
import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import '../../features/auth/model/user_detail.dart';
import '../../features/auth/repositories/auth_local.dart';

import '../../util/api/api_routes.dart';
import '../../util/api/call.dart';
import '../../util/variable.dart';
import 'failure.dart';

// ignore: avoid_classes_with_only_static_members
class TokenRefreshManager {
  static bool _isRefreshing = false;
  static Completer<bool>? _refreshCompleter; // Make it nullable

  /// Handles token refresh with concurrent request management
  static Future<bool> handleTokenRefreshAndLogout({final String? refreshToken}) async {
    // If already refreshing, wait for the result
    if (_isRefreshing && _refreshCompleter != null) {
      log('🔄 Token refresh already in progress, waiting...', name: "REFRESH");
      return _refreshCompleter!.future;
    }

    // Start new refresh process
    _isRefreshing = true;
    _refreshCompleter = Completer<bool>();

    try {
      final bool result = await _executeRefresh(refreshToken);
      _refreshCompleter!.complete(result);
      return result;
    } catch (e) {
      log('❌ Token refresh failed: $e', name: "REFRESH");
      _refreshCompleter!.complete(false);
      return false;
    } finally {
      _isRefreshing = false;
      // Keep completer for a short time to handle any race conditions
      Future.delayed(const Duration(milliseconds: 100), () {
        _refreshCompleter = null;
      });
    }
  }

  /// Execute the actual refresh logic
  static Future<bool> _executeRefresh(String? refreshToken) async {
    log('🔄 Starting token refresh process...', name: "REFRESH");

    final Map<String, String?> payload = {'refresh_token': refreshToken ?? userDetail?.refreshToken};

    // Validate refresh token exists
    if (payload['refresh_token'] == null || payload['refresh_token']!.isEmpty) {
      log('❌ No refresh token available', name: "REFRESH");
      await _handleRefreshFailure();
      return false;
    }

    try {
      final Either<ErrorDetails, UserDetail?> result = await Request.post<UserDetail?>(
        path: Api.refreshToken,
        payload: payload,
        retry: false,
        onSuccess: (final json) {
          if (json["success"] is bool) {
            if (!json["success"]) {
              AuthLocalRepo.removeUser();
              return null;
            }
          }

          log('✅ Token refresh successful', name: "REFRESH");
          return AuthLocalRepo.saveUserDetailMap(json);
        },
      );

      return result.fold(
        (final ErrorDetails refreshError) async {
          log('❌ Token refresh API failed: ${refreshError.message}', name: "REFRESH");
          await _handleRefreshFailure();
          return false;
        },
        (final UserDetail? data) async {
          log('✅ Token refresh completed successfully', name: "REFRESH");
          if (data == null) {
            await _handleRefreshFailure();
            return false;
          }
          return true;
        },
      );
    } catch (e) {
      log('❌ Unexpected error during token refresh: $e', name: "REFRESH");
      await _handleRefreshFailure();
      return false;
    }
  }

  /// Handle refresh failure - cleanup and logout
  static Future<void> _handleRefreshFailure() async {
    log('🧹 Cleaning up after failed refresh...', name: "REFRESH");
    await AuthLocalRepo.removeUser();
    // Add any additional cleanup logic here
  }
}

/// Updated version of your original function
Future<bool> handleTokenRefreshAndLogout({final String? refreshToken}) => TokenRefreshManager.handleTokenRefreshAndLogout(refreshToken: refreshToken);

Future<Either<ErrorDetails, bool>> logOut({final String? token}) => Request.get<bool>(
  path: Api.logout,
  onSuccess: (final json) {
    Request.clientService.token = '';
    return true;
  },
);
