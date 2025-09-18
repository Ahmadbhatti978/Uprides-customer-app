// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$requestRideHash() => r'4651ad3cb5d24a930e7d321ec1c83e92bede3fbe';

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

/// See also [requestRide].
@ProviderFor(requestRide)
const requestRideProvider = RequestRideFamily();

/// See also [requestRide].
class RequestRideFamily extends Family<AsyncValue<RideRequest>> {
  /// See also [requestRide].
  const RequestRideFamily();

  /// See also [requestRide].
  RequestRideProvider call({
    List<Place>? places,
    String? bookedFor,
    String? accessibility,
    String? type,
  }) {
    return RequestRideProvider(
      places: places,
      bookedFor: bookedFor,
      accessibility: accessibility,
      type: type,
    );
  }

  @override
  RequestRideProvider getProviderOverride(
    covariant RequestRideProvider provider,
  ) {
    return call(
      places: provider.places,
      bookedFor: provider.bookedFor,
      accessibility: provider.accessibility,
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
  String? get name => r'requestRideProvider';
}

/// See also [requestRide].
class RequestRideProvider extends AutoDisposeFutureProvider<RideRequest> {
  /// See also [requestRide].
  RequestRideProvider({
    List<Place>? places,
    String? bookedFor,
    String? accessibility,
    String? type,
  }) : this._internal(
          (ref) => requestRide(
            ref as RequestRideRef,
            places: places,
            bookedFor: bookedFor,
            accessibility: accessibility,
            type: type,
          ),
          from: requestRideProvider,
          name: r'requestRideProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$requestRideHash,
          dependencies: RequestRideFamily._dependencies,
          allTransitiveDependencies:
              RequestRideFamily._allTransitiveDependencies,
          places: places,
          bookedFor: bookedFor,
          accessibility: accessibility,
          type: type,
        );

  RequestRideProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.places,
    required this.bookedFor,
    required this.accessibility,
    required this.type,
  }) : super.internal();

  final List<Place>? places;
  final String? bookedFor;
  final String? accessibility;
  final String? type;

  @override
  Override overrideWith(
    FutureOr<RideRequest> Function(RequestRideRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RequestRideProvider._internal(
        (ref) => create(ref as RequestRideRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        places: places,
        bookedFor: bookedFor,
        accessibility: accessibility,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<RideRequest> createElement() {
    return _RequestRideProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RequestRideProvider &&
        other.places == places &&
        other.bookedFor == bookedFor &&
        other.accessibility == accessibility &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, places.hashCode);
    hash = _SystemHash.combine(hash, bookedFor.hashCode);
    hash = _SystemHash.combine(hash, accessibility.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RequestRideRef on AutoDisposeFutureProviderRef<RideRequest> {
  /// The parameter `places` of this provider.
  List<Place>? get places;

  /// The parameter `bookedFor` of this provider.
  String? get bookedFor;

  /// The parameter `accessibility` of this provider.
  String? get accessibility;

  /// The parameter `type` of this provider.
  String? get type;
}

class _RequestRideProviderElement
    extends AutoDisposeFutureProviderElement<RideRequest> with RequestRideRef {
  _RequestRideProviderElement(super.provider);

  @override
  List<Place>? get places => (origin as RequestRideProvider).places;
  @override
  String? get bookedFor => (origin as RequestRideProvider).bookedFor;
  @override
  String? get accessibility => (origin as RequestRideProvider).accessibility;
  @override
  String? get type => (origin as RequestRideProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
