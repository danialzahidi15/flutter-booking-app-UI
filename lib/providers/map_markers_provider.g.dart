// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_markers_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String _$MapMarkersHash() => r'dc4fdc5065efd6dc9ae0c3f91cab52387d023e61';

/// See also [MapMarkers].
final mapMarkersProvider =
    AutoDisposeAsyncNotifierProvider<MapMarkers, Set<Marker>>(
  MapMarkers.new,
  name: r'mapMarkersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$MapMarkersHash,
);
typedef MapMarkersRef = AutoDisposeAsyncNotifierProviderRef<Set<Marker>>;

abstract class _$MapMarkers extends AutoDisposeAsyncNotifier<Set<Marker>> {
  @override
  FutureOr<Set<Marker>> build();
}
