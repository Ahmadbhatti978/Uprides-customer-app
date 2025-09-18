// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_socket.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ridSocketHash() => r'54f8cb7f3d9a389d17cafe2fd0f2a4f9f36412c2';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [ridSocket].
@ProviderFor(ridSocket)
const ridSocketProvider = RidSocketFamily();

/// See also [ridSocket].
class RidSocketFamily extends Family<AsyncValue<SocketM>> {
  /// See also [ridSocket].
  const RidSocketFamily();

  /// See also [ridSocket].
  RidSocketProvider call(
    String iD,
  ) {
    return RidSocketProvider(
      iD,
    );
  }

  @override
  RidSocketProvider getProviderOverride(
    covariant RidSocketProvider provider,
  ) {
    return call(
      provider.iD,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'ridSocketProvider';
}

/// See also [ridSocket].
class RidSocketProvider extends StreamProvider<SocketM> {
  /// See also [ridSocket].
  RidSocketProvider(
    String iD,
  ) : this._internal(
          (ref) => ridSocket(
            ref as RidSocketRef,
            iD,
          ),
          from: ridSocketProvider,
          name: r'ridSocketProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ridSocketHash,
          dependencies: RidSocketFamily._dependencies,
          allTransitiveDependencies: RidSocketFamily._allTransitiveDependencies,
          iD: iD,
        );

  RidSocketProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.iD,
  }) : super.internal();

  final String iD;

  @override
  Override overrideWith(
    Stream<SocketM> Function(RidSocketRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RidSocketProvider._internal(
        (ref) => create(ref as RidSocketRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        iD: iD,
      ),
    );
  }

  @override
  StreamProviderElement<SocketM> createElement() {
    return _RidSocketProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RidSocketProvider && other.iD == iD;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, iD.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RidSocketRef on StreamProviderRef<SocketM> {
  /// The parameter `iD` of this provider.
  String get iD;
}

class _RidSocketProviderElement extends StreamProviderElement<SocketM>
    with RidSocketRef {
  _RidSocketProviderElement(super.provider);

  @override
  String get iD => (origin as RidSocketProvider).iD;
}

String _$rideSocketConnectionHash() =>
    r'2194e6c1f1036d8c1cdac3d04bdbc9045ec90a91';

abstract class _$RideSocketConnection extends BuildlessNotifier<String> {
  late final String rideId;

  String build(
    String rideId,
  );
}

/// See also [RideSocketConnection].
@ProviderFor(RideSocketConnection)
const rideSocketConnectionProvider = RideSocketConnectionFamily();

/// See also [RideSocketConnection].
class RideSocketConnectionFamily extends Family<String> {
  /// See also [RideSocketConnection].
  const RideSocketConnectionFamily();

  /// See also [RideSocketConnection].
  RideSocketConnectionProvider call(
    String rideId,
  ) {
    return RideSocketConnectionProvider(
      rideId,
    );
  }

  @override
  RideSocketConnectionProvider getProviderOverride(
    covariant RideSocketConnectionProvider provider,
  ) {
    return call(
      provider.rideId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'rideSocketConnectionProvider';
}

/// See also [RideSocketConnection].
class RideSocketConnectionProvider
    extends NotifierProviderImpl<RideSocketConnection, String> {
  /// See also [RideSocketConnection].
  RideSocketConnectionProvider(
    String rideId,
  ) : this._internal(
          () => RideSocketConnection()..rideId = rideId,
          from: rideSocketConnectionProvider,
          name: r'rideSocketConnectionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rideSocketConnectionHash,
          dependencies: RideSocketConnectionFamily._dependencies,
          allTransitiveDependencies:
              RideSocketConnectionFamily._allTransitiveDependencies,
          rideId: rideId,
        );

  RideSocketConnectionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.rideId,
  }) : super.internal();

  final String rideId;

  @override
  String runNotifierBuild(
    covariant RideSocketConnection notifier,
  ) {
    return notifier.build(
      rideId,
    );
  }

  @override
  Override overrideWith(RideSocketConnection Function() create) {
    return ProviderOverride(
      origin: this,
      override: RideSocketConnectionProvider._internal(
        () => create()..rideId = rideId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        rideId: rideId,
      ),
    );
  }

  @override
  NotifierProviderElement<RideSocketConnection, String> createElement() {
    return _RideSocketConnectionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RideSocketConnectionProvider && other.rideId == rideId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, rideId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RideSocketConnectionRef on NotifierProviderRef<String> {
  /// The parameter `rideId` of this provider.
  String get rideId;
}

class _RideSocketConnectionProviderElement
    extends NotifierProviderElement<RideSocketConnection, String>
    with RideSocketConnectionRef {
  _RideSocketConnectionProviderElement(super.provider);

  @override
  String get rideId => (origin as RideSocketConnectionProvider).rideId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
