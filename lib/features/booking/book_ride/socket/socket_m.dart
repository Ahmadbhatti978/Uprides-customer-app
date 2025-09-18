// To parse this JSON data, do
//
//     final socketM = socketMFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/model/coordinate.dart';
part 'socket_m.freezed.dart';
part 'socket_m.g.dart';

@freezed
abstract class SocketM with _$SocketM {
  const factory SocketM({
    @JsonKey(name: "ride_id") String? rideId,
    @JsonKey(name: "is_ride_updated") bool? isRideUpdated,
    @JsonKey(name: "is_bidding") bool? isBidding,
    @JsonKey(name: "location") Coordinate? location,
    @JsonKey(name: "duration") double? duration,
    @JsonKey(name: "distance") double? distance,
  }) = _SocketM;

  factory SocketM.fromJson(Map<String, dynamic> json) => _$SocketMFromJson(json);
}