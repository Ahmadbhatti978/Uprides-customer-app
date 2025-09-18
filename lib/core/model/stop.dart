import 'package:freezed_annotation/freezed_annotation.dart';

part 'stop.g.dart';
part 'stop.freezed.dart';

@freezed
abstract class Stop with _$Stop {
  const factory Stop({
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "coordinates") List<double>? coordinates,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "id") String? stopId,
  }) = _Stop;

  factory Stop.fromJson(Map<String, dynamic> json) => _$StopFromJson(json);
}
