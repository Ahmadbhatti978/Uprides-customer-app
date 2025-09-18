import 'package:freezed_annotation/freezed_annotation.dart';

import 'coordinate.dart';

part 'stops_eta.g.dart';
part 'stops_eta.freezed.dart';

@freezed
abstract class StopsEta with _$StopsEta {
  const factory StopsEta({
    @JsonKey(name: "stop") Coordinate? stop,
    @JsonKey(name: "eta_seconds") int? etaSeconds,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "id") String? stopsEtaId,
  }) = _StopsEta;

  factory StopsEta.fromJson(Map<String, dynamic> json) => _$StopsEtaFromJson(json);
}
