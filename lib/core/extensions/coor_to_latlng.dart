import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../model/coordinate.dart';

extension Loc on Coordinate? {
  LatLng? get latLng => (this?.latitude == null || this?.longitude == null) ? null : LatLng(this!.latitude!, this!.longitude!);
}

extension Loca on List<double> {
  LatLng get latLng => LatLng(this[0], this[1]);
}

extension Coor on LatLng {
  Coordinate get getCoordinate => Coordinate(latitude: latitude, longitude: longitude);
}
