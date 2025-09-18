// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intercity_book.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getIntercityRideBookHash() =>
    r'33ea660d68d0d0f3c0b5d588d395a1dc22851dff';

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

/// See also [getIntercityRideBook].
@ProviderFor(getIntercityRideBook)
const getIntercityRideBookProvider = GetIntercityRideBookFamily();

/// See also [getIntercityRideBook].
class GetIntercityRideBookFamily extends Family<AsyncValue<String>> {
  /// See also [getIntercityRideBook].
  const GetIntercityRideBookFamily();

  /// See also [getIntercityRideBook].
  GetIntercityRideBookProvider call(
    String rideID,
  ) {
    return GetIntercityRideBookProvider(
      rideID,
    );
  }

  @override
  GetIntercityRideBookProvider getProviderOverride(
    covariant GetIntercityRideBookProvider provider,
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
  String? get name => r'getIntercityRideBookProvider';
}

/// See also [getIntercityRideBook].
class GetIntercityRideBookProvider extends AutoDisposeFutureProvider<String> {
  /// See also [getIntercityRideBook].
  GetIntercityRideBookProvider(
    String rideID,
  ) : this._internal(
          (ref) => getIntercityRideBook(
            ref as GetIntercityRideBookRef,
            rideID,
          ),
          from: getIntercityRideBookProvider,
          name: r'getIntercityRideBookProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getIntercityRideBookHash,
          dependencies: GetIntercityRideBookFamily._dependencies,
          allTransitiveDependencies:
              GetIntercityRideBookFamily._allTransitiveDependencies,
          rideID: rideID,
        );

  GetIntercityRideBookProvider._internal(
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
    FutureOr<String> Function(GetIntercityRideBookRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetIntercityRideBookProvider._internal(
        (ref) => create(ref as GetIntercityRideBookRef),
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
  AutoDisposeFutureProviderElement<String> createElement() {
    return _GetIntercityRideBookProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetIntercityRideBookProvider && other.rideID == rideID;
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
mixin GetIntercityRideBookRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `rideID` of this provider.
  String get rideID;
}

class _GetIntercityRideBookProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with GetIntercityRideBookRef {
  _GetIntercityRideBookProviderElement(super.provider);

  @override
  String get rideID => (origin as GetIntercityRideBookProvider).rideID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
