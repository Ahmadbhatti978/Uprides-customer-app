// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_available_options.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getOptionsHash() => r'd5453b6e16de23b69eeadfc92711190c25c027d6';

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

/// See also [getOptions].
@ProviderFor(getOptions)
const getOptionsProvider = GetOptionsFamily();

/// See also [getOptions].
class GetOptionsFamily extends Family<AsyncValue<Options>> {
  /// See also [getOptions].
  const GetOptionsFamily();

  /// See also [getOptions].
  GetOptionsProvider call(
    String rideId,
  ) {
    return GetOptionsProvider(
      rideId,
    );
  }

  @override
  GetOptionsProvider getProviderOverride(
    covariant GetOptionsProvider provider,
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
  String? get name => r'getOptionsProvider';
}

/// See also [getOptions].
class GetOptionsProvider extends AutoDisposeFutureProvider<Options> {
  /// See also [getOptions].
  GetOptionsProvider(
    String rideId,
  ) : this._internal(
          (ref) => getOptions(
            ref as GetOptionsRef,
            rideId,
          ),
          from: getOptionsProvider,
          name: r'getOptionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getOptionsHash,
          dependencies: GetOptionsFamily._dependencies,
          allTransitiveDependencies:
              GetOptionsFamily._allTransitiveDependencies,
          rideId: rideId,
        );

  GetOptionsProvider._internal(
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
    FutureOr<Options> Function(GetOptionsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetOptionsProvider._internal(
        (ref) => create(ref as GetOptionsRef),
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
  AutoDisposeFutureProviderElement<Options> createElement() {
    return _GetOptionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetOptionsProvider && other.rideId == rideId;
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
mixin GetOptionsRef on AutoDisposeFutureProviderRef<Options> {
  /// The parameter `rideId` of this provider.
  String get rideId;
}

class _GetOptionsProviderElement
    extends AutoDisposeFutureProviderElement<Options> with GetOptionsRef {
  _GetOptionsProviderElement(super.provider);

  @override
  String get rideId => (origin as GetOptionsProvider).rideId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
