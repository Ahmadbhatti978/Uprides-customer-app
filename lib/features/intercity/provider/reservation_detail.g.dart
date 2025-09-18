// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getResevationDetailHash() =>
    r'957cdb7c33e30cf8e194a9006884765e085e4b47';

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

/// See also [getResevationDetail].
@ProviderFor(getResevationDetail)
const getResevationDetailProvider = GetResevationDetailFamily();

/// See also [getResevationDetail].
class GetResevationDetailFamily extends Family<AsyncValue<ReservationDetail>> {
  /// See also [getResevationDetail].
  const GetResevationDetailFamily();

  /// See also [getResevationDetail].
  GetResevationDetailProvider call(
    String rideID,
  ) {
    return GetResevationDetailProvider(
      rideID,
    );
  }

  @override
  GetResevationDetailProvider getProviderOverride(
    covariant GetResevationDetailProvider provider,
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
  String? get name => r'getResevationDetailProvider';
}

/// See also [getResevationDetail].
class GetResevationDetailProvider extends FutureProvider<ReservationDetail> {
  /// See also [getResevationDetail].
  GetResevationDetailProvider(
    String rideID,
  ) : this._internal(
          (ref) => getResevationDetail(
            ref as GetResevationDetailRef,
            rideID,
          ),
          from: getResevationDetailProvider,
          name: r'getResevationDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getResevationDetailHash,
          dependencies: GetResevationDetailFamily._dependencies,
          allTransitiveDependencies:
              GetResevationDetailFamily._allTransitiveDependencies,
          rideID: rideID,
        );

  GetResevationDetailProvider._internal(
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
    FutureOr<ReservationDetail> Function(GetResevationDetailRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetResevationDetailProvider._internal(
        (ref) => create(ref as GetResevationDetailRef),
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
  FutureProviderElement<ReservationDetail> createElement() {
    return _GetResevationDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetResevationDetailProvider && other.rideID == rideID;
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
mixin GetResevationDetailRef on FutureProviderRef<ReservationDetail> {
  /// The parameter `rideID` of this provider.
  String get rideID;
}

class _GetResevationDetailProviderElement
    extends FutureProviderElement<ReservationDetail>
    with GetResevationDetailRef {
  _GetResevationDetailProviderElement(super.provider);

  @override
  String get rideID => (origin as GetResevationDetailProvider).rideID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
