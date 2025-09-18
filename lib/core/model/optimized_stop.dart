import 'package:freezed_annotation/freezed_annotation.dart';

import 'coordinate.dart';
part 'optimized_stop.g.dart';
part 'optimized_stop.freezed.dart';

@freezed
abstract class OptimizedStop with _$OptimizedStop {
  const factory OptimizedStop({
    @JsonKey(name: 'location') final Coordinate? location,
    @JsonKey(name: 'order') final int? order,
    @JsonKey(name: 'address') final String? address,
    @JsonKey(name: '_id') final String? id,
    @JsonKey(name: 'id') final String? optimizedStopId,
  }) = _OptimizedStop;

  factory OptimizedStop.fromJson(final Map<String, dynamic> json) => _$OptimizedStopFromJson(json);
}
