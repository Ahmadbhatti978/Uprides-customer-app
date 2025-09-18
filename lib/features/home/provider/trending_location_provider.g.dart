// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_location_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$trendingLocationHash() => r'1a55649ae2e86dfc28ab7de0466833e1725bbbd1';

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

abstract class _$TrendingLocation
    extends BuildlessAsyncNotifier<MapEntry<String, List<TrendingPlace>>> {
  late final String? type;

  FutureOr<MapEntry<String, List<TrendingPlace>>> build({
    String? type,
  });
}

/// See also [TrendingLocation].
@ProviderFor(TrendingLocation)
const trendingLocationProvider = TrendingLocationFamily();

/// See also [TrendingLocation].
class TrendingLocationFamily
    extends Family<AsyncValue<MapEntry<String, List<TrendingPlace>>>> {
  /// See also [TrendingLocation].
  const TrendingLocationFamily();

  /// See also [TrendingLocation].
  TrendingLocationProvider call({
    String? type,
  }) {
    return TrendingLocationProvider(
      type: type,
    );
  }

  @override
  TrendingLocationProvider getProviderOverride(
    covariant TrendingLocationProvider provider,
  ) {
    return call(
      type: provider.type,
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

/// See also [TrendingLocation].
class TrendingLocationProvider extends AsyncNotifierProviderImpl<
    TrendingLocation, MapEntry<String, List<TrendingPlace>>> {
  /// See also [TrendingLocation].
  TrendingLocationProvider({
    String? type,
  }) : this._internal(
          () => TrendingLocation()..type = type,
          from: trendingLocationProvider,
          name: r'trendingLocationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$trendingLocationHash,
          dependencies: TrendingLocationFamily._dependencies,
          allTransitiveDependencies:
              TrendingLocationFamily._allTransitiveDependencies,
          type: type,
        );

  TrendingLocationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final String? type;

  @override
  FutureOr<MapEntry<String, List<TrendingPlace>>> runNotifierBuild(
    covariant TrendingLocation notifier,
  ) {
    return notifier.build(
      type: type,
    );
  }

  @override
  Override overrideWith(TrendingLocation Function() create) {
    return ProviderOverride(
      origin: this,
      override: TrendingLocationProvider._internal(
        () => create()..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<TrendingLocation,
      MapEntry<String, List<TrendingPlace>>> createElement() {
    return _TrendingLocationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TrendingLocationProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TrendingLocationRef
    on AsyncNotifierProviderRef<MapEntry<String, List<TrendingPlace>>> {
  /// The parameter `type` of this provider.
  String? get type;
}

class _TrendingLocationProviderElement extends AsyncNotifierProviderElement<
    TrendingLocation,
    MapEntry<String, List<TrendingPlace>>> with TrendingLocationRef {
  _TrendingLocationProviderElement(super.provider);

  @override
  String? get type => (origin as TrendingLocationProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
