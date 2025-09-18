// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_payment_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$requestPaymentDataHash() =>
    r'c98f4468c8e1f08f9783b306ffd33024251d41ad';

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

/// See also [requestPaymentData].
@ProviderFor(requestPaymentData)
const requestPaymentDataProvider = RequestPaymentDataFamily();

/// See also [requestPaymentData].
class RequestPaymentDataFamily extends Family<AsyncValue<PaymentRequest>> {
  /// See also [requestPaymentData].
  const RequestPaymentDataFamily();

  /// See also [requestPaymentData].
  RequestPaymentDataProvider call(
    String id,
  ) {
    return RequestPaymentDataProvider(
      id,
    );
  }

  @override
  RequestPaymentDataProvider getProviderOverride(
    covariant RequestPaymentDataProvider provider,
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
  String? get name => r'requestPaymentDataProvider';
}

/// See also [requestPaymentData].
class RequestPaymentDataProvider
    extends AutoDisposeFutureProvider<PaymentRequest> {
  /// See also [requestPaymentData].
  RequestPaymentDataProvider(
    String id,
  ) : this._internal(
          (ref) => requestPaymentData(
            ref as RequestPaymentDataRef,
            id,
          ),
          from: requestPaymentDataProvider,
          name: r'requestPaymentDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$requestPaymentDataHash,
          dependencies: RequestPaymentDataFamily._dependencies,
          allTransitiveDependencies:
              RequestPaymentDataFamily._allTransitiveDependencies,
          id: id,
        );

  RequestPaymentDataProvider._internal(
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
    FutureOr<PaymentRequest> Function(RequestPaymentDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RequestPaymentDataProvider._internal(
        (ref) => create(ref as RequestPaymentDataRef),
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
  AutoDisposeFutureProviderElement<PaymentRequest> createElement() {
    return _RequestPaymentDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RequestPaymentDataProvider && other.id == id;
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
mixin RequestPaymentDataRef on AutoDisposeFutureProviderRef<PaymentRequest> {
  /// The parameter `id` of this provider.
  String get id;
}

class _RequestPaymentDataProviderElement
    extends AutoDisposeFutureProviderElement<PaymentRequest>
    with RequestPaymentDataRef {
  _RequestPaymentDataProviderElement(super.provider);

  @override
  String get id => (origin as RequestPaymentDataProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
