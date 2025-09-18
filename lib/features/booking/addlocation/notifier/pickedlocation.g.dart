// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickedlocation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cleanedLocationsHash() => r'a366583aef087bd379f495e9c29d00ba35dc1d60';

/// See also [cleanedLocations].
@ProviderFor(cleanedLocations)
final cleanedLocationsProvider = Provider<List<Place>>.internal(
  cleanedLocations,
  name: r'cleanedLocationsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$cleanedLocationsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CleanedLocationsRef = ProviderRef<List<Place>>;
String _$pickedlocationHash() => r'6b200259bf5fa6bf88d9a131e0268a0c1e10b7b3';

/// See also [Pickedlocation].
@ProviderFor(Pickedlocation)
final pickedlocationProvider =
    NotifierProvider<Pickedlocation, List<Place>>.internal(
  Pickedlocation.new,
  name: r'pickedlocationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pickedlocationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Pickedlocation = Notifier<List<Place>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
