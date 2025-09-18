// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$suggestionHash() => r'a7240acf9687194ea1f1066a17dfe59aeb4d51e1';

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

/// See also [suggestion].
@ProviderFor(suggestion)
const suggestionProvider = SuggestionFamily();

/// See also [suggestion].
class SuggestionFamily extends Family<AsyncValue<List<String>>> {
  /// See also [suggestion].
  const SuggestionFamily();

  /// See also [suggestion].
  SuggestionProvider call(
    String fullName,
  ) {
    return SuggestionProvider(
      fullName,
    );
  }

  @override
  SuggestionProvider getProviderOverride(
    covariant SuggestionProvider provider,
  ) {
    return call(
      provider.fullName,
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
  String? get name => r'suggestionProvider';
}

/// See also [suggestion].
class SuggestionProvider extends FutureProvider<List<String>> {
  /// See also [suggestion].
  SuggestionProvider(
    String fullName,
  ) : this._internal(
          (ref) => suggestion(
            ref as SuggestionRef,
            fullName,
          ),
          from: suggestionProvider,
          name: r'suggestionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$suggestionHash,
          dependencies: SuggestionFamily._dependencies,
          allTransitiveDependencies:
              SuggestionFamily._allTransitiveDependencies,
          fullName: fullName,
        );

  SuggestionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fullName,
  }) : super.internal();

  final String fullName;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(SuggestionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SuggestionProvider._internal(
        (ref) => create(ref as SuggestionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        fullName: fullName,
      ),
    );
  }

  @override
  FutureProviderElement<List<String>> createElement() {
    return _SuggestionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SuggestionProvider && other.fullName == fullName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fullName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SuggestionRef on FutureProviderRef<List<String>> {
  /// The parameter `fullName` of this provider.
  String get fullName;
}

class _SuggestionProviderElement extends FutureProviderElement<List<String>>
    with SuggestionRef {
  _SuggestionProviderElement(super.provider);

  @override
  String get fullName => (origin as SuggestionProvider).fullName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
