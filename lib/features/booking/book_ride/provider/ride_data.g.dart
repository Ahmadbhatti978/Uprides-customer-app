// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rideDataHash() => r'8aa23bc8cb90cdeb8be68170677cd03ab0b4c7e7';

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

/// See also [rideData].
@ProviderFor(rideData)
const rideDataProvider = RideDataFamily();

/// See also [rideData].
class RideDataFamily extends Family<AsyncValue<RideData>> {
  /// See also [rideData].
  const RideDataFamily();

  /// See also [rideData].
  RideDataProvider call(
    String id,
  ) {
    return RideDataProvider(
      id,
    );
  }

  @override
  RideDataProvider getProviderOverride(
    covariant RideDataProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'rideDataProvider';
}

/// See also [rideData].
class RideDataProvider extends AutoDisposeFutureProvider<RideData> {
  /// See also [rideData].
  RideDataProvider(
    String id,
  ) : this._internal(
          (ref) => rideData(
            ref as RideDataRef,
            id,
          ),
          from: rideDataProvider,
          name: r'rideDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rideDataHash,
          dependencies: RideDataFamily._dependencies,
          allTransitiveDependencies: RideDataFamily._allTransitiveDependencies,
          id: id,
        );

  RideDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<RideData> Function(RideDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RideDataProvider._internal(
        (ref) => create(ref as RideDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<RideData> createElement() {
    return _RideDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RideDataProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RideDataRef on AutoDisposeFutureProviderRef<RideData> {
  /// The parameter `id` of this provider.
  String get id;
}

class _RideDataProviderElement
    extends AutoDisposeFutureProviderElement<RideData> with RideDataRef {
  _RideDataProviderElement(super.provider);

  @override
  String get id => (origin as RideDataProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
