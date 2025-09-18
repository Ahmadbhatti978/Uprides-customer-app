// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_charges.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chargesHash() => r'8b333d81d4dda1404906410bb6b3d27a7d589cc8';

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

/// See also [charges].
@ProviderFor(charges)
const chargesProvider = ChargesFamily();

/// See also [charges].
class ChargesFamily extends Family<AsyncValue<CancelCharges>> {
  /// See also [charges].
  const ChargesFamily();

  /// See also [charges].
  ChargesProvider call(
    String? rideid,
  ) {
    return ChargesProvider(
      rideid,
    );
  }

  @override
  ChargesProvider getProviderOverride(
    covariant ChargesProvider provider,
  ) {
    return call(
      provider.rideid,
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
  String? get name => r'chargesProvider';
}

/// See also [charges].
class ChargesProvider extends AutoDisposeFutureProvider<CancelCharges> {
  /// See also [charges].
  ChargesProvider(
    String? rideid,
  ) : this._internal(
          (ref) => charges(
            ref as ChargesRef,
            rideid,
          ),
          from: chargesProvider,
          name: r'chargesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chargesHash,
          dependencies: ChargesFamily._dependencies,
          allTransitiveDependencies: ChargesFamily._allTransitiveDependencies,
          rideid: rideid,
        );

  ChargesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.rideid,
  }) : super.internal();

  final String? rideid;

  @override
  Override overrideWith(
    FutureOr<CancelCharges> Function(ChargesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChargesProvider._internal(
        (ref) => create(ref as ChargesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        rideid: rideid,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CancelCharges> createElement() {
    return _ChargesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChargesProvider && other.rideid == rideid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, rideid.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChargesRef on AutoDisposeFutureProviderRef<CancelCharges> {
  /// The parameter `rideid` of this provider.
  String? get rideid;
}

class _ChargesProviderElement
    extends AutoDisposeFutureProviderElement<CancelCharges> with ChargesRef {
  _ChargesProviderElement(super.provider);

  @override
  String? get rideid => (origin as ChargesProvider).rideid;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
