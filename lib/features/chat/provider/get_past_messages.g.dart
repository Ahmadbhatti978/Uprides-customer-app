// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_past_messages.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPastChatHash() => r'000b865d34128ccb999d2591dde0816f096d3aa6';

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

/// See also [getPastChat].
@ProviderFor(getPastChat)
const getPastChatProvider = GetPastChatFamily();

/// See also [getPastChat].
class GetPastChatFamily extends Family<AsyncValue<List<Message>>> {
  /// See also [getPastChat].
  const GetPastChatFamily();

  /// See also [getPastChat].
  GetPastChatProvider call(
    String id,
  ) {
    return GetPastChatProvider(
      id,
    );
  }

  @override
  GetPastChatProvider getProviderOverride(
    covariant GetPastChatProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getPastChatProvider';
}

/// See also [getPastChat].
class GetPastChatProvider extends AutoDisposeFutureProvider<List<Message>> {
  /// See also [getPastChat].
  GetPastChatProvider(
    String id,
  ) : this._internal(
          (ref) => getPastChat(
            ref as GetPastChatRef,
            id,
          ),
          from: getPastChatProvider,
          name: r'getPastChatProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPastChatHash,
          dependencies: GetPastChatFamily._dependencies,
          allTransitiveDependencies:
              GetPastChatFamily._allTransitiveDependencies,
          id: id,
        );

  GetPastChatProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<List<Message>> Function(GetPastChatRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPastChatProvider._internal(
        (ref) => create(ref as GetPastChatRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Message>> createElement() {
    return _GetPastChatProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPastChatProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPastChatRef on AutoDisposeFutureProviderRef<List<Message>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetPastChatProviderElement
    extends AutoDisposeFutureProviderElement<List<Message>>
    with GetPastChatRef {
  _GetPastChatProviderElement(super.provider);

  @override
  String get id => (origin as GetPastChatProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
