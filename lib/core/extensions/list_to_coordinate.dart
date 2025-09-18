import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../model/coordinate.dart';

extension Loac on List<double>? {
  Coordinate? get getCoordinate => this != null && this!.length > 1 ? Coordinate(latitude: this!.last, longitude: this!.first) : null;
  LatLng? get getLatLng =>
      (this != null && this!.length > 1 && this!.elementAtOrNull(0) != null && this!.elementAtOrNull(1) != null) ? LatLng(this!.last, this!.first) : null;
}
