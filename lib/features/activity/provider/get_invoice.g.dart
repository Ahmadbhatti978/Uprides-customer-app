// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_invoice.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getInvoiceHash() => r'ddd79e1bb7301aa1bf434f7dcca7618c77af6c38';

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

/// See also [getInvoice].
@ProviderFor(getInvoice)
const getInvoiceProvider = GetInvoiceFamily();

/// See also [getInvoice].
class GetInvoiceFamily extends Family<AsyncValue<Invoice>> {
  /// See also [getInvoice].
  const GetInvoiceFamily();

  /// See also [getInvoice].
  GetInvoiceProvider call(
    String id, {
    bool seen = false,
  }) {
    return GetInvoiceProvider(
      id,
      seen: seen,
    );
  }

  @override
  GetInvoiceProvider getProviderOverride(
    covariant GetInvoiceProvider provider,
  ) {
    return call(
      provider.id,
      seen: provider.seen,
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
  String? get name => r'getInvoiceProvider';
}

/// See also [getInvoice].
class GetInvoiceProvider extends FutureProvider<Invoice> {
  /// See also [getInvoice].
  GetInvoiceProvider(
    String id, {
    bool seen = false,
  }) : this._internal(
          (ref) => getInvoice(
            ref as GetInvoiceRef,
            id,
            seen: seen,
          ),
          from: getInvoiceProvider,
          name: r'getInvoiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getInvoiceHash,
          dependencies: GetInvoiceFamily._dependencies,
          allTransitiveDependencies:
              GetInvoiceFamily._allTransitiveDependencies,
          id: id,
          seen: seen,
        );

  GetInvoiceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.seen,
  }) : super.internal();

  final String id;
  final bool seen;

  @override
  Override overrideWith(
    FutureOr<Invoice> Function(GetInvoiceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetInvoiceProvider._internal(
        (ref) => create(ref as GetInvoiceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        seen: seen,
      ),
    );
  }

  @override
  FutureProviderElement<Invoice> createElement() {
    return _GetInvoiceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetInvoiceProvider && other.id == id && other.seen == seen;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, seen.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetInvoiceRef on FutureProviderRef<Invoice> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `seen` of this provider.
  bool get seen;
}

class _GetInvoiceProviderElement extends FutureProviderElement<Invoice>
    with GetInvoiceRef {
  _GetInvoiceProviderElement(super.provider);

  @override
  String get id => (origin as GetInvoiceProvider).id;
  @override
  bool get seen => (origin as GetInvoiceProvider).seen;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
