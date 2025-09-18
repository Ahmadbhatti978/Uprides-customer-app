// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_p.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$socketHash() => r'd1509362fa67b54a1e3ac7d9b53b9723dd3efee6';

/// Provides an instance of [SocketManager] that is disposed automatically when no longer needed.
///
/// This provider returns a new instance of [SocketManager] and ensures cleanup by calling [SocketManager.dispose()]
/// when the provider is disposed. If you need a persistent instance, consider using `keepAlive` via your provider configuration.
///
/// Copied from [socket].
@ProviderFor(socket)
final socketProvider = Provider<SocketManager>.internal(
  socket,
  name: r'socketProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$socketHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SocketRef = ProviderRef<SocketManager>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
