// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_online_status.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getOnlineStatusHash() => r'b66356e03f04db643fa3bbb82359512d473fe751';

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

/// See also [getOnlineStatus].
@ProviderFor(getOnlineStatus)
const getOnlineStatusProvider = GetOnlineStatusFamily();

/// See also [getOnlineStatus].
class GetOnlineStatusFamily extends Family<AsyncValue<bool>> {
  /// See also [getOnlineStatus].
  const GetOnlineStatusFamily();

  /// See also [getOnlineStatus].
  GetOnlineStatusProvider call(
    String receiver,
  ) {
    return GetOnlineStatusProvider(
      receiver,
    );
  }

  @override
  GetOnlineStatusProvider getProviderOverride(
    covariant GetOnlineStatusProvider provider,
  ) {
    return call(
      provider.receiver,
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
  String? get name => r'getOnlineStatusProvider';
}

/// See also [getOnlineStatus].
class GetOnlineStatusProvider extends AutoDisposeStreamProvider<bool> {
  /// See also [getOnlineStatus].
  GetOnlineStatusProvider(
    String receiver,
  ) : this._internal(
          (ref) => getOnlineStatus(
            ref as GetOnlineStatusRef,
            receiver,
          ),
          from: getOnlineStatusProvider,
          name: r'getOnlineStatusProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getOnlineStatusHash,
          dependencies: GetOnlineStatusFamily._dependencies,
          allTransitiveDependencies:
              GetOnlineStatusFamily._allTransitiveDependencies,
          receiver: receiver,
        );

  GetOnlineStatusProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.receiver,
  }) : super.internal();

  final String receiver;

  @override
  Override overrideWith(
    Stream<bool> Function(GetOnlineStatusRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetOnlineStatusProvider._internal(
        (ref) => create(ref as GetOnlineStatusRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        receiver: receiver,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<bool> createElement() {
    return _GetOnlineStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetOnlineStatusProvider && other.receiver == receiver;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, receiver.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetOnlineStatusRef on AutoDisposeStreamProviderRef<bool> {
  /// The parameter `receiver` of this provider.
  String get receiver;
}

class _GetOnlineStatusProviderElement
    extends AutoDisposeStreamProviderElement<bool> with GetOnlineStatusRef {
  _GetOnlineStatusProviderElement(super.provider);

  @override
  String get receiver => (origin as GetOnlineStatusProvider).receiver;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
