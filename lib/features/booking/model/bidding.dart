// To parse this JSON data, do
//
//     final bidding = biddingFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bidding.freezed.dart';
part 'bidding.g.dart';

@freezed
abstract class Bidding with _$Bidding {
  const factory Bidding({@JsonKey(name: "ride_id") String? rideId, @JsonKey(name: "status") String? status}) = _Bidding;

  factory Bidding.fromJson(Map<String, dynamic> json) => _$BiddingFromJson(json);
}
