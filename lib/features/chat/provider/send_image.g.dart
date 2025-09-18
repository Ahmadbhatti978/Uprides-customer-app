// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_image.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$uploadAttachmentsHash() => r'c84290b760824088257db84a939938b3f3ae51f6';

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

/// See also [uploadAttachments].
@ProviderFor(uploadAttachments)
const uploadAttachmentsProvider = UploadAttachmentsFamily();

/// See also [uploadAttachments].
class UploadAttachmentsFamily extends Family<AsyncValue<Attachment>> {
  /// See also [uploadAttachments].
  const UploadAttachmentsFamily();

  /// See also [uploadAttachments].
  UploadAttachmentsProvider call({
    required String conversationId,
    required String receiver,
    File? pic,
  }) {
    return UploadAttachmentsProvider(
      conversationId: conversationId,
      receiver: receiver,
      pic: pic,
    );
  }

  @override
  UploadAttachmentsProvider getProviderOverride(
    covariant UploadAttachmentsProvider provider,
  ) {
    return call(
      conversationId: provider.conversationId,
      receiver: provider.receiver,
      pic: provider.pic,
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
  String? get name => r'uploadAttachmentsProvider';
}

/// See also [uploadAttachments].
class UploadAttachmentsProvider extends AutoDisposeFutureProvider<Attachment> {
  /// See also [uploadAttachments].
  UploadAttachmentsProvider({
    required String conversationId,
    required String receiver,
    File? pic,
  }) : this._internal(
          (ref) => uploadAttachments(
            ref as UploadAttachmentsRef,
            conversationId: conversationId,
            receiver: receiver,
            pic: pic,
          ),
          from: uploadAttachmentsProvider,
          name: r'uploadAttachmentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$uploadAttachmentsHash,
          dependencies: UploadAttachmentsFamily._dependencies,
          allTransitiveDependencies:
              UploadAttachmentsFamily._allTransitiveDependencies,
          conversationId: conversationId,
          receiver: receiver,
          pic: pic,
        );

  UploadAttachmentsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.conversationId,
    required this.receiver,
    required this.pic,
  }) : super.internal();

  final String conversationId;
  final String receiver;
  final File? pic;

  @override
  Override overrideWith(
    FutureOr<Attachment> Function(UploadAttachmentsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UploadAttachmentsProvider._internal(
        (ref) => create(ref as UploadAttachmentsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        conversationId: conversationId,
        receiver: receiver,
        pic: pic,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Attachment> createElement() {
    return _UploadAttachmentsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UploadAttachmentsProvider &&
        other.conversationId == conversationId &&
        other.receiver == receiver &&
        other.pic == pic;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, conversationId.hashCode);
    hash = _SystemHash.combine(hash, receiver.hashCode);
    hash = _SystemHash.combine(hash, pic.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UploadAttachmentsRef on AutoDisposeFutureProviderRef<Attachment> {
  /// The parameter `conversationId` of this provider.
  String get conversationId;

  /// The parameter `receiver` of this provider.
  String get receiver;

  /// The parameter `pic` of this provider.
  File? get pic;
}

class _UploadAttachmentsProviderElement
    extends AutoDisposeFutureProviderElement<Attachment>
    with UploadAttachmentsRef {
  _UploadAttachmentsProviderElement(super.provider);

  @override
  String get conversationId =>
      (origin as UploadAttachmentsProvider).conversationId;
  @override
  String get receiver => (origin as UploadAttachmentsProvider).receiver;
  @override
  File? get pic => (origin as UploadAttachmentsProvider).pic;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
