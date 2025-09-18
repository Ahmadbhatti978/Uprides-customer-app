// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_intercity_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getIntercityRideDetailHash() =>
    r'76d52bf733db97f6604393e0ff6cdfa40560fbdf';

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

/// See also [getIntercityRideDetail].
@ProviderFor(getIntercityRideDetail)
const getIntercityRideDetailProvider = GetIntercityRideDetailFamily();

/// See also [getIntercityRideDetail].
class GetIntercityRideDetailFamily extends Family<AsyncValue<SelectRide>> {
  /// See also [getIntercityRideDetail].
  const GetIntercityRideDetailFamily();

  /// See also [getIntercityRideDetail].
  GetIntercityRideDetailProvider call(
    String rideID,
  ) {
    return GetIntercityRideDetailProvider(
      rideID,
    );
  }

  @override
  GetIntercityRideDetailProvider getProviderOverride(
    covariant GetIntercityRideDetailProvider provider,
  ) {
    return call(
      provider.rideID,
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
  String? get name => r'getIntercityRideDetailProvider';
}

/// See also [getIntercityRideDetail].
class GetIntercityRideDetailProvider
    extends AutoDisposeFutureProvider<SelectRide> {
  /// See also [getIntercityRideDetail].
  GetIntercityRideDetailProvider(
    String rideID,
  ) : this._internal(
          (ref) => getIntercityRideDetail(
            ref as GetIntercityRideDetailRef,
            rideID,
          ),
          from: getIntercityRideDetailProvider,
          name: r'getIntercityRideDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getIntercityRideDetailHash,
          dependencies: GetIntercityRideDetailFamily._dependencies,
          allTransitiveDependencies:
              GetIntercityRideDetailFamily._allTransitiveDependencies,
          rideID: rideID,
        );

  GetIntercityRideDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.rideID,
  }) : super.internal();

  final String rideID;

  @override
  Override overrideWith(
    FutureOr<SelectRide> Function(GetIntercityRideDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetIntercityRideDetailProvider._internal(
        (ref) => create(ref as GetIntercityRideDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        rideID: rideID,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SelectRide> createElement() {
    return _GetIntercityRideDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetIntercityRideDetailProvider && other.rideID == rideID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, rideID.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetIntercityRideDetailRef on AutoDisposeFutureProviderRef<SelectRide> {
  /// The parameter `rideID` of this provider.
  String get rideID;
}

class _GetIntercityRideDetailProviderElement
    extends AutoDisposeFutureProviderElement<SelectRide>
    with GetIntercityRideDetailRef {
  _GetIntercityRideDetailProviderElement(super.provider);

  @override
  String get rideID => (origin as GetIntercityRideDetailProvider).rideID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
