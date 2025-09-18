// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_p.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sendHash() => r'9226c5f5b6757e2ca7b6c5abe4cae2e5b93265d1';

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

/// See also [send].
@ProviderFor(send)
const sendProvider = SendFamily();

/// See also [send].
class SendFamily extends Family<void> {
  /// See also [send].
  const SendFamily();

  /// See also [send].
  SendProvider call(
    String message,
    String conversationId,
    String receiver,
  ) {
    return SendProvider(
      message,
      conversationId,
      receiver,
    );
  }

  @override
  SendProvider getProviderOverride(
    covariant SendProvider provider,
  ) {
    return call(
      provider.message,
      provider.conversationId,
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
  String? get name => r'sendProvider';
}

/// See also [send].
class SendProvider extends AutoDisposeProvider<void> {
  /// See also [send].
  SendProvider(
    String message,
    String conversationId,
    String receiver,
  ) : this._internal(
          (ref) => send(
            ref as SendRef,
            message,
            conversationId,
            receiver,
          ),
          from: sendProvider,
          name: r'sendProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$sendHash,
          dependencies: SendFamily._dependencies,
          allTransitiveDependencies: SendFamily._allTransitiveDependencies,
          message: message,
          conversationId: conversationId,
          receiver: receiver,
        );

  SendProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.message,
    required this.conversationId,
    required this.receiver,
  }) : super.internal();

  final String message;
  final String conversationId;
  final String receiver;

  @override
  Override overrideWith(
    void Function(SendRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SendProvider._internal(
        (ref) => create(ref as SendRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        message: message,
        conversationId: conversationId,
        receiver: receiver,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<void> createElement() {
    return _SendProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendProvider &&
        other.message == message &&
        other.conversationId == conversationId &&
        other.receiver == receiver;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, message.hashCode);
    hash = _SystemHash.combine(hash, conversationId.hashCode);
    hash = _SystemHash.combine(hash, receiver.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SendRef on AutoDisposeProviderRef<void> {
  /// The parameter `message` of this provider.
  String get message;

  /// The parameter `conversationId` of this provider.
  String get conversationId;

  /// The parameter `receiver` of this provider.
  String get receiver;
}

class _SendProviderElement extends AutoDisposeProviderElement<void>
    with SendRef {
  _SendProviderElement(super.provider);

  @override
  String get message => (origin as SendProvider).message;
  @override
  String get conversationId => (origin as SendProvider).conversationId;
  @override
  String get receiver => (origin as SendProvider).receiver;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
