// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_by_username.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getByUsernameHash() => r'68e3513559d4d9b95b1da9d40a6a35fd36b89208';

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

/// See also [getByUsername].
@ProviderFor(getByUsername)
const getByUsernameProvider = GetByUsernameFamily();

/// See also [getByUsername].
class GetByUsernameFamily extends Family<AsyncValue<User>> {
  /// See also [getByUsername].
  const GetByUsernameFamily();

  /// See also [getByUsername].
  GetByUsernameProvider call(
    String username,
  ) {
    return GetByUsernameProvider(
      username,
    );
  }

  @override
  GetByUsernameProvider getProviderOverride(
    covariant GetByUsernameProvider provider,
  ) {
    return call(
      provider.username,
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
  String? get name => r'getByUsernameProvider';
}

/// See also [getByUsername].
class GetByUsernameProvider extends FutureProvider<User> {
  /// See also [getByUsername].
  GetByUsernameProvider(
    String username,
  ) : this._internal(
          (ref) => getByUsername(
            ref as GetByUsernameRef,
            username,
          ),
          from: getByUsernameProvider,
          name: r'getByUsernameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getByUsernameHash,
          dependencies: GetByUsernameFamily._dependencies,
          allTransitiveDependencies:
              GetByUsernameFamily._allTransitiveDependencies,
          username: username,
        );

  GetByUsernameProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
  }) : super.internal();

  final String username;

  @override
  Override overrideWith(
    FutureOr<User> Function(GetByUsernameRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetByUsernameProvider._internal(
        (ref) => create(ref as GetByUsernameRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
      ),
    );
  }

  @override
  FutureProviderElement<User> createElement() {
    return _GetByUsernameProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetByUsernameProvider && other.username == username;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetByUsernameRef on FutureProviderRef<User> {
  /// The parameter `username` of this provider.
  String get username;
}

class _GetByUsernameProviderElement extends FutureProviderElement<User>
    with GetByUsernameRef {
  _GetByUsernameProviderElement(super.provider);

  @override
  String get username => (origin as GetByUsernameProvider).username;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
