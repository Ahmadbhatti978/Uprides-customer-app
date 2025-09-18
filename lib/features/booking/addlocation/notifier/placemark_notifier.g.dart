// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placemark_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchPlacemarkFromCoordinatesHash() =>
    r'15baae92befc76485278fc149437be61b7e5ad32';

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

/// See also [fetchPlacemarkFromCoordinates].
@ProviderFor(fetchPlacemarkFromCoordinates)
const fetchPlacemarkFromCoordinatesProvider =
    FetchPlacemarkFromCoordinatesFamily();

/// See also [fetchPlacemarkFromCoordinates].
class FetchPlacemarkFromCoordinatesFamily
    extends Family<AsyncValue<Placemark>> {
  /// See also [fetchPlacemarkFromCoordinates].
  const FetchPlacemarkFromCoordinatesFamily();

  /// See also [fetchPlacemarkFromCoordinates].
  FetchPlacemarkFromCoordinatesProvider call({
    required double latitude,
    required double longitude,
  }) {
    return FetchPlacemarkFromCoordinatesProvider(
      latitude: latitude,
      longitude: longitude,
    );
  }

  @override
  FetchPlacemarkFromCoordinatesProvider getProviderOverride(
    covariant FetchPlacemarkFromCoordinatesProvider provider,
  ) {
    return call(
      latitude: provider.latitude,
      longitude: provider.longitude,
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
  String? get name => r'fetchPlacemarkFromCoordinatesProvider';
}

/// See also [fetchPlacemarkFromCoordinates].
class FetchPlacemarkFromCoordinatesProvider extends FutureProvider<Placemark> {
  /// See also [fetchPlacemarkFromCoordinates].
  FetchPlacemarkFromCoordinatesProvider({
    required double latitude,
    required double longitude,
  }) : this._internal(
          (ref) => fetchPlacemarkFromCoordinates(
            ref as FetchPlacemarkFromCoordinatesRef,
            latitude: latitude,
            longitude: longitude,
          ),
          from: fetchPlacemarkFromCoordinatesProvider,
          name: r'fetchPlacemarkFromCoordinatesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPlacemarkFromCoordinatesHash,
          dependencies: FetchPlacemarkFromCoordinatesFamily._dependencies,
          allTransitiveDependencies:
              FetchPlacemarkFromCoordinatesFamily._allTransitiveDependencies,
          latitude: latitude,
          longitude: longitude,
        );

  FetchPlacemarkFromCoordinatesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.latitude,
    required this.longitude,
  }) : super.internal();

  final double latitude;
  final double longitude;

  @override
  Override overrideWith(
    FutureOr<Placemark> Function(FetchPlacemarkFromCoordinatesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchPlacemarkFromCoordinatesProvider._internal(
        (ref) => create(ref as FetchPlacemarkFromCoordinatesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        latitude: latitude,
        longitude: longitude,
      ),
    );
  }

  @override
  FutureProviderElement<Placemark> createElement() {
    return _FetchPlacemarkFromCoordinatesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPlacemarkFromCoordinatesProvider &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, latitude.hashCode);
    hash = _SystemHash.combine(hash, longitude.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchPlacemarkFromCoordinatesRef on FutureProviderRef<Placemark> {
  /// The parameter `latitude` of this provider.
  double get latitude;

  /// The parameter `longitude` of this provider.
  double get longitude;
}

class _FetchPlacemarkFromCoordinatesProviderElement
    extends FutureProviderElement<Placemark>
    with FetchPlacemarkFromCoordinatesRef {
  _FetchPlacemarkFromCoordinatesProviderElement(super.provider);

  @override
  double get latitude =>
      (origin as FetchPlacemarkFromCoordinatesProvider).latitude;
  @override
  double get longitude =>
      (origin as FetchPlacemarkFromCoordinatesProvider).longitude;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
