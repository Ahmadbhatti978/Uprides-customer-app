// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_coupon.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$applyCouponHash() => r'bf56187a47e7608ac12589066c983d63e20ce5b0';

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

/// See also [applyCoupon].
@ProviderFor(applyCoupon)
const applyCouponProvider = ApplyCouponFamily();

/// See also [applyCoupon].
class ApplyCouponFamily extends Family<AsyncValue<Options>> {
  /// See also [applyCoupon].
  const ApplyCouponFamily();

  /// See also [applyCoupon].
  ApplyCouponProvider call({
    required String couponCode,
    String? rideReqId,
  }) {
    return ApplyCouponProvider(
      couponCode: couponCode,
      rideReqId: rideReqId,
    );
  }

  @override
  ApplyCouponProvider getProviderOverride(
    covariant ApplyCouponProvider provider,
  ) {
    return call(
      couponCode: provider.couponCode,
      rideReqId: provider.rideReqId,
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
  String? get name => r'applyCouponProvider';
}

/// See also [applyCoupon].
class ApplyCouponProvider extends FutureProvider<Options> {
  /// See also [applyCoupon].
  ApplyCouponProvider({
    required String couponCode,
    String? rideReqId,
  }) : this._internal(
          (ref) => applyCoupon(
            ref as ApplyCouponRef,
            couponCode: couponCode,
            rideReqId: rideReqId,
          ),
          from: applyCouponProvider,
          name: r'applyCouponProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$applyCouponHash,
          dependencies: ApplyCouponFamily._dependencies,
          allTransitiveDependencies:
              ApplyCouponFamily._allTransitiveDependencies,
          couponCode: couponCode,
          rideReqId: rideReqId,
        );

  ApplyCouponProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.couponCode,
    required this.rideReqId,
  }) : super.internal();

  final String couponCode;
  final String? rideReqId;

  @override
  Override overrideWith(
    FutureOr<Options> Function(ApplyCouponRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ApplyCouponProvider._internal(
        (ref) => create(ref as ApplyCouponRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        couponCode: couponCode,
        rideReqId: rideReqId,
      ),
    );
  }

  @override
  FutureProviderElement<Options> createElement() {
    return _ApplyCouponProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ApplyCouponProvider &&
        other.couponCode == couponCode &&
        other.rideReqId == rideReqId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, couponCode.hashCode);
    hash = _SystemHash.combine(hash, rideReqId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ApplyCouponRef on FutureProviderRef<Options> {
  /// The parameter `couponCode` of this provider.
  String get couponCode;

  /// The parameter `rideReqId` of this provider.
  String? get rideReqId;
}

class _ApplyCouponProviderElement extends FutureProviderElement<Options>
    with ApplyCouponRef {
  _ApplyCouponProviderElement(super.provider);

  @override
  String get couponCode => (origin as ApplyCouponProvider).couponCode;
  @override
  String? get rideReqId => (origin as ApplyCouponProvider).rideReqId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
