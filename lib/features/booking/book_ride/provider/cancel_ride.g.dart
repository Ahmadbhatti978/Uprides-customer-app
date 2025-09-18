// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_ride.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cancelRideHash() => r'6ab5fac7b22d289c5f8462894dcedae72dd14963';

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

/// See also [cancelRide].
@ProviderFor(cancelRide)
const cancelRideProvider = CancelRideFamily();

/// See also [cancelRide].
class CancelRideFamily extends Family<AsyncValue<bool>> {
  /// See also [cancelRide].
  const CancelRideFamily();

  /// See also [cancelRide].
  CancelRideProvider call(
    String id,
    String reason,
  ) {
    return CancelRideProvider(
      id,
      reason,
    );
  }

  @override
  CancelRideProvider getProviderOverride(
    covariant CancelRideProvider provider,
  ) {
    return call(
      provider.id,
      provider.reason,
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
  String? get name => r'cancelRideProvider';
}

/// See also [cancelRide].
class CancelRideProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [cancelRide].
  CancelRideProvider(
    String id,
    String reason,
  ) : this._internal(
          (ref) => cancelRide(
            ref as CancelRideRef,
            id,
            reason,
          ),
          from: cancelRideProvider,
          name: r'cancelRideProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cancelRideHash,
          dependencies: CancelRideFamily._dependencies,
          allTransitiveDependencies:
              CancelRideFamily._allTransitiveDependencies,
          id: id,
          reason: reason,
        );

  CancelRideProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.reason,
  }) : super.internal();

  final String id;
  final String reason;

  @override
  Override overrideWith(
    FutureOr<bool> Function(CancelRideRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CancelRideProvider._internal(
        (ref) => create(ref as CancelRideRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        reason: reason,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _CancelRideProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CancelRideProvider &&
        other.id == id &&
        other.reason == reason;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, reason.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CancelRideRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `reason` of this provider.
  String get reason;
}

class _CancelRideProviderElement extends AutoDisposeFutureProviderElement<bool>
    with CancelRideRef {
  _CancelRideProviderElement(super.provider);

  @override
  String get id => (origin as CancelRideProvider).id;
  @override
  String get reason => (origin as CancelRideProvider).reason;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
