// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adjsut_price.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$adjustPriceHash() => r'cc3aa7a26ce9aa108cba458e27e762323325ce8b';

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

/// See also [adjustPrice].
@ProviderFor(adjustPrice)
const adjustPriceProvider = AdjustPriceFamily();

/// See also [adjustPrice].
class AdjustPriceFamily extends Family<AsyncValue<AdjustedPrice>> {
  /// See also [adjustPrice].
  const AdjustPriceFamily();

  /// See also [adjustPrice].
  AdjustPriceProvider call(
    String rideId,
  ) {
    return AdjustPriceProvider(
      rideId,
    );
  }

  @override
  AdjustPriceProvider getProviderOverride(
    covariant AdjustPriceProvider provider,
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
  String? get name => r'adjustPriceProvider';
}

/// See also [adjustPrice].
class AdjustPriceProvider extends AutoDisposeFutureProvider<AdjustedPrice> {
  /// See also [adjustPrice].
  AdjustPriceProvider(
    String rideId,
  ) : this._internal(
          (ref) => adjustPrice(
            ref as AdjustPriceRef,
            rideId,
          ),
          from: adjustPriceProvider,
          name: r'adjustPriceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$adjustPriceHash,
          dependencies: AdjustPriceFamily._dependencies,
          allTransitiveDependencies:
              AdjustPriceFamily._allTransitiveDependencies,
          rideId: rideId,
        );

  AdjustPriceProvider._internal(
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
  Override overrideWith(
    FutureOr<AdjustedPrice> Function(AdjustPriceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AdjustPriceProvider._internal(
        (ref) => create(ref as AdjustPriceRef),
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
  AutoDisposeFutureProviderElement<AdjustedPrice> createElement() {
    return _AdjustPriceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AdjustPriceProvider && other.rideId == rideId;
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
mixin AdjustPriceRef on AutoDisposeFutureProviderRef<AdjustedPrice> {
  /// The parameter `rideId` of this provider.
  String get rideId;
}

class _AdjustPriceProviderElement
    extends AutoDisposeFutureProviderElement<AdjustedPrice>
    with AdjustPriceRef {
  _AdjustPriceProviderElement(super.provider);

  @override
  String get rideId => (origin as AdjustPriceProvider).rideId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
