import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyObserver extends ProviderObserver {
  static const String _logName = 'Px'; // Consistent base name for all logs
  static const int _logLevel = 800; // Consistent log level

  String _getProviderInfo(ProviderBase<Object?> provider) =>
      provider.name ?? provider.runtimeType.toString();

  /// Truncates a string to maxLength characters
  String _truncate(Object? value, [int maxLength = 200]) {
    final String str = value?.toString() ?? 'null';
    return str.length > maxLength ? '${str.substring(0, maxLength)}...' : str;
  }

  @override
  void didAddProvider(
      ProviderBase<Object?> provider, Object? value, ProviderContainer container) {
    final String providerInfo = _getProviderInfo(provider);
    log(
      'Value: ${_truncate(value)}',
      name: '$_logName 💡📦 Add Provider: $providerInfo',
      level: _logLevel,
      zone: Zone.current,
    );
  }

  @override
  void didDisposeProvider(
      ProviderBase<Object?> provider, ProviderContainer container) {
    final String providerInfo = _getProviderInfo(provider);
    log(
      'Provider disposed',
      name: '$_logName 🗑️🪓 Dispose Provider: $providerInfo',
      level: _logLevel,
      zone: Zone.current,
    );
  }

  @override
  void didUpdateProvider(
      ProviderBase<Object?> provider,
      Object? previousValue,
      Object? newValue,
      ProviderContainer container) {
    final String providerInfo = _getProviderInfo(provider);
    log(
      'Previous: ${_truncate(previousValue)} → New: ${_truncate(newValue)}',
      name: '$_logName ⚙️🔧 Update Provider: $providerInfo',
      level: _logLevel,
      zone: Zone.current,
    );
  }

  @override
  void providerDidFail(
      ProviderBase<Object?> provider,
      Object error,
      StackTrace stackTrace,
      ProviderContainer container) {
    final String providerInfo = _getProviderInfo(provider);
    log(
      'Error: ${_truncate(error)}',
      name: '$_logName 📟❌ Provider Failed: $providerInfo',
      level: _logLevel,
      zone: Zone.current,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
