// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_stream.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatStreamHash() => r'0c6d00f7e4987392fe277a789e9be14e3fe1a94f';

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

/// See also [chatStream].
@ProviderFor(chatStream)
const chatStreamProvider = ChatStreamFamily();

/// See also [chatStream].
class ChatStreamFamily extends Family<AsyncValue<List<Message>>> {
  /// See also [chatStream].
  const ChatStreamFamily();

  /// See also [chatStream].
  ChatStreamProvider call(
    String conversationId,
  ) {
    return ChatStreamProvider(
      conversationId,
    );
  }

  @override
  ChatStreamProvider getProviderOverride(
    covariant ChatStreamProvider provider,
  ) {
    return call(
      provider.conversationId,
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
  String? get name => r'chatStreamProvider';
}

/// See also [chatStream].
class ChatStreamProvider extends AutoDisposeStreamProvider<List<Message>> {
  /// See also [chatStream].
  ChatStreamProvider(
    String conversationId,
  ) : this._internal(
          (ref) => chatStream(
            ref as ChatStreamRef,
            conversationId,
          ),
          from: chatStreamProvider,
          name: r'chatStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatStreamHash,
          dependencies: ChatStreamFamily._dependencies,
          allTransitiveDependencies:
              ChatStreamFamily._allTransitiveDependencies,
          conversationId: conversationId,
        );

  ChatStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.conversationId,
  }) : super.internal();

  final String conversationId;

  @override
  Override overrideWith(
    Stream<List<Message>> Function(ChatStreamRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChatStreamProvider._internal(
        (ref) => create(ref as ChatStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        conversationId: conversationId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<Message>> createElement() {
    return _ChatStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatStreamProvider &&
        other.conversationId == conversationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, conversationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChatStreamRef on AutoDisposeStreamProviderRef<List<Message>> {
  /// The parameter `conversationId` of this provider.
  String get conversationId;
}

class _ChatStreamProviderElement
    extends AutoDisposeStreamProviderElement<List<Message>> with ChatStreamRef {
  _ChatStreamProviderElement(super.provider);

  @override
  String get conversationId => (origin as ChatStreamProvider).conversationId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
