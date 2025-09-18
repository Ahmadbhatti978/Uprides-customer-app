// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_activity_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAcitivitesHash() => r'aa058cc9a8493ad56eaea497bf78e3a74d924214';

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

/// See also [getAcitivites].
@ProviderFor(getAcitivites)
const getAcitivitesProvider = GetAcitivitesFamily();

/// See also [getAcitivites].
class GetAcitivitesFamily extends Family<AsyncValue<Activity>> {
  /// See also [getAcitivites].
  const GetAcitivitesFamily();

  /// See also [getAcitivites].
  GetAcitivitesProvider call({
    RideStatusType? ridestatus,
  }) {
    return GetAcitivitesProvider(
      ridestatus: ridestatus,
    );
  }

  @override
  GetAcitivitesProvider getProviderOverride(
    covariant GetAcitivitesProvider provider,
  ) {
    return call(
      ridestatus: provider.ridestatus,
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
  String? get name => r'getAcitivitesProvider';
}

/// See also [getAcitivites].
class GetAcitivitesProvider extends FutureProvider<Activity> {
  /// See also [getAcitivites].
  GetAcitivitesProvider({
    RideStatusType? ridestatus,
  }) : this._internal(
          (ref) => getAcitivites(
            ref as GetAcitivitesRef,
            ridestatus: ridestatus,
          ),
          from: getAcitivitesProvider,
          name: r'getAcitivitesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAcitivitesHash,
          dependencies: GetAcitivitesFamily._dependencies,
          allTransitiveDependencies:
              GetAcitivitesFamily._allTransitiveDependencies,
          ridestatus: ridestatus,
        );

  GetAcitivitesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ridestatus,
  }) : super.internal();

  final RideStatusType? ridestatus;

  @override
  Override overrideWith(
    FutureOr<Activity> Function(GetAcitivitesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAcitivitesProvider._internal(
        (ref) => create(ref as GetAcitivitesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ridestatus: ridestatus,
      ),
    );
  }

  @override
  FutureProviderElement<Activity> createElement() {
    return _GetAcitivitesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAcitivitesProvider && other.ridestatus == ridestatus;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ridestatus.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAcitivitesRef on FutureProviderRef<Activity> {
  /// The parameter `ridestatus` of this provider.
  RideStatusType? get ridestatus;
}

class _GetAcitivitesProviderElement extends FutureProviderElement<Activity>
    with GetAcitivitesRef {
  _GetAcitivitesProviderElement(super.provider);

  @override
  RideStatusType? get ridestatus =>
      (origin as GetAcitivitesProvider).ridestatus;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
