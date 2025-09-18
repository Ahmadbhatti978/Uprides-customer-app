// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$requestMoneyHash() => r'8c1a2b4deb76a0511a8bed8e2219a63664c8a9e5';

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

/// See also [requestMoney].
@ProviderFor(requestMoney)
const requestMoneyProvider = RequestMoneyFamily();

/// See also [requestMoney].
class RequestMoneyFamily extends Family<AsyncValue<ReqData>> {
  /// See also [requestMoney].
  const RequestMoneyFamily();

  /// See also [requestMoney].
  RequestMoneyProvider call(
    String id,
    String message,
  ) {
    return RequestMoneyProvider(
      id,
      message,
    );
  }

  @override
  RequestMoneyProvider getProviderOverride(
    covariant RequestMoneyProvider provider,
  ) {
    return call(
      provider.id,
      provider.message,
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
  String? get name => r'requestMoneyProvider';
}

/// See also [requestMoney].
class RequestMoneyProvider extends AutoDisposeFutureProvider<ReqData> {
  /// See also [requestMoney].
  RequestMoneyProvider(
    String id,
    String message,
  ) : this._internal(
          (ref) => requestMoney(
            ref as RequestMoneyRef,
            id,
            message,
          ),
          from: requestMoneyProvider,
          name: r'requestMoneyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$requestMoneyHash,
          dependencies: RequestMoneyFamily._dependencies,
          allTransitiveDependencies:
              RequestMoneyFamily._allTransitiveDependencies,
          id: id,
          message: message,
        );

  RequestMoneyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.message,
  }) : super.internal();

  final String id;
  final String message;

  @override
  Override overrideWith(
    FutureOr<ReqData> Function(RequestMoneyRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RequestMoneyProvider._internal(
        (ref) => create(ref as RequestMoneyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        message: message,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ReqData> createElement() {
    return _RequestMoneyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RequestMoneyProvider &&
        other.id == id &&
        other.message == message;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, message.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RequestMoneyRef on AutoDisposeFutureProviderRef<ReqData> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `message` of this provider.
  String get message;
}

class _RequestMoneyProviderElement
    extends AutoDisposeFutureProviderElement<ReqData> with RequestMoneyRef {
  _RequestMoneyProviderElement(super.provider);

  @override
  String get id => (origin as RequestMoneyProvider).id;
  @override
  String get message => (origin as RequestMoneyProvider).message;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
