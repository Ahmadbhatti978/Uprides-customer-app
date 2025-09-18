import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/socket/socket_manager.dart';

part 'socket_p.g.dart';

/// Provides an instance of [SocketManager] that is disposed automatically when no longer needed.
///
/// This provider returns a new instance of [SocketManager] and ensures cleanup by calling [SocketManager.dispose()]
/// when the provider is disposed. If you need a persistent instance, consider using `keepAlive` via your provider configuration.
@Riverpod(keepAlive: true)
SocketManager socket(final Ref ref) {
  final SocketManager socketManager = SocketManager();
  // Automatically dispose the SocketManager when the provider is disposed.
  ref.onDispose(socketManager.dispose);
  return socketManager;
}
