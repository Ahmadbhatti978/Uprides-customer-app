// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookjumpStartRideHash() => r'18cbea72558487e508df7b2e7cde494604cd5e80';

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

/// See also [bookjumpStartRide].
@ProviderFor(bookjumpStartRide)
const bookjumpStartRideProvider = BookjumpStartRideFamily();

/// See also [bookjumpStartRide].
class BookjumpStartRideFamily extends Family<AsyncValue<BookedRide>> {
  /// See also [bookjumpStartRide].
  const BookjumpStartRideFamily();

  /// See also [bookjumpStartRide].
  BookjumpStartRideProvider call(
    String rideRequestId,
    String driverId,
  ) {
    return BookjumpStartRideProvider(
      rideRequestId,
      driverId,
    );
  }

  @override
  BookjumpStartRideProvider getProviderOverride(
    covariant BookjumpStartRideProvider provider,
  ) {
    return call(
      provider.rideRequestId,
      provider.driverId,
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
  String? get name => r'bookjumpStartRideProvider';
}

/// See also [bookjumpStartRide].
class BookjumpStartRideProvider extends FutureProvider<BookedRide> {
  /// See also [bookjumpStartRide].
  BookjumpStartRideProvider(
    String rideRequestId,
    String driverId,
  ) : this._internal(
          (ref) => bookjumpStartRide(
            ref as BookjumpStartRideRef,
            rideRequestId,
            driverId,
          ),
          from: bookjumpStartRideProvider,
          name: r'bookjumpStartRideProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookjumpStartRideHash,
          dependencies: BookjumpStartRideFamily._dependencies,
          allTransitiveDependencies:
              BookjumpStartRideFamily._allTransitiveDependencies,
          rideRequestId: rideRequestId,
          driverId: driverId,
        );

  BookjumpStartRideProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.rideRequestId,
    required this.driverId,
  }) : super.internal();

  final String rideRequestId;
  final String driverId;

  @override
  Override overrideWith(
    FutureOr<BookedRide> Function(BookjumpStartRideRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BookjumpStartRideProvider._internal(
        (ref) => create(ref as BookjumpStartRideRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        rideRequestId: rideRequestId,
        driverId: driverId,
      ),
    );
  }

  @override
  FutureProviderElement<BookedRide> createElement() {
    return _BookjumpStartRideProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookjumpStartRideProvider &&
        other.rideRequestId == rideRequestId &&
        other.driverId == driverId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, rideRequestId.hashCode);
    hash = _SystemHash.combine(hash, driverId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BookjumpStartRideRef on FutureProviderRef<BookedRide> {
  /// The parameter `rideRequestId` of this provider.
  String get rideRequestId;

  /// The parameter `driverId` of this provider.
  String get driverId;
}

class _BookjumpStartRideProviderElement
    extends FutureProviderElement<BookedRide> with BookjumpStartRideRef {
  _BookjumpStartRideProviderElement(super.provider);

  @override
  String get rideRequestId =>
      (origin as BookjumpStartRideProvider).rideRequestId;
  @override
  String get driverId => (origin as BookjumpStartRideProvider).driverId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
