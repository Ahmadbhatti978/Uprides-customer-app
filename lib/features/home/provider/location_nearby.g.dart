// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_nearby.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$trendingLocationHash() => r'e12b5ef477dcf36a9368c9b1726f3a5a586bd0e0';

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

/// See also [trendingLocation].
@ProviderFor(trendingLocation)
const trendingLocationProvider = TrendingLocationFamily();

/// See also [trendingLocation].
class TrendingLocationFamily extends Family<AsyncValue<List<TrendingPlace>>> {
  /// See also [trendingLocation].
  const TrendingLocationFamily();

  /// See also [trendingLocation].
  TrendingLocationProvider call({
    required Coordinate location,
  }) {
    return TrendingLocationProvider(
      location: location,
    );
  }

  @override
  TrendingLocationProvider getProviderOverride(
    covariant TrendingLocationProvider provider,
  ) {
    return call(
      location: provider.location,
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
  String? get name => r'trendingLocationProvider';
}

/// See also [trendingLocation].
class TrendingLocationProvider extends FutureProvider<List<TrendingPlace>> {
  /// See also [trendingLocation].
  TrendingLocationProvider({
    required Coordinate location,
  }) : this._internal(
          (ref) => trendingLocation(
            ref as TrendingLocationRef,
            location: location,
          ),
          from: trendingLocationProvider,
          name: r'trendingLocationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$trendingLocationHash,
          dependencies: TrendingLocationFamily._dependencies,
          allTransitiveDependencies:
              TrendingLocationFamily._allTransitiveDependencies,
          location: location,
        );

  TrendingLocationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.location,
  }) : super.internal();

  final Coordinate location;

  @override
  Override overrideWith(
    FutureOr<List<TrendingPlace>> Function(TrendingLocationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TrendingLocationProvider._internal(
        (ref) => create(ref as TrendingLocationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        location: location,
      ),
    );
  }

  @override
  FutureProviderElement<List<TrendingPlace>> createElement() {
    return _TrendingLocationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TrendingLocationProvider && other.location == location;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, location.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TrendingLocationRef on FutureProviderRef<List<TrendingPlace>> {
  /// The parameter `location` of this provider.
  Coordinate get location;
}

class _TrendingLocationProviderElement
    extends FutureProviderElement<List<TrendingPlace>>
    with TrendingLocationRef {
  _TrendingLocationProviderElement(super.provider);

  @override
  Coordinate get location => (origin as TrendingLocationProvider).location;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
