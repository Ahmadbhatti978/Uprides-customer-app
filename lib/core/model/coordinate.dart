// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'coordinate.g.dart';
// part 'coordinate.freezed.dart';

// @freezed
// class Coordinate with _$Coordinate {
//   //const Coordinate._();
//   const factory Coordinate({ @JsonKey(name: "longitude") double? longitude,@JsonKey(name: "latitude") double? latitude,}) = _Coordinate;

//   factory Coordinate.fromJson(Map<String, dynamic> json) => _$CoordinateFromJson(json);

// //  Map<String, String> toStringJson() => {"latitude": latitude.toString(), "longitude": longitude.toString()};
// }
import 'package:freezed_annotation/freezed_annotation.dart';
part 'coordinate.g.dart';
part 'coordinate.freezed.dart';

@freezed
abstract class Coordinate with _$Coordinate {
  const factory Coordinate({
    @JsonKey(name: 'latitude') final double? latitude,
    @JsonKey(name: 'longitude') final double? longitude,
  }) = _Coordinate;

  factory Coordinate.fromJson(final Map<String, dynamic> json) => _$CoordinateFromJson(json);
}
