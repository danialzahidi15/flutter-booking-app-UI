import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_location_provider.g.dart';

@riverpod
class MapLocation extends _$MapLocation {
  @override
  LatLng build() {
    return LatLng(-7.795680746215928, 110.36780614638249);
  }

  void setMapLocation(LatLng position) {
    state = position;
  }
}
