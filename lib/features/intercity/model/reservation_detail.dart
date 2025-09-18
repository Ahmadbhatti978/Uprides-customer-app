// To parse this JSON data, do
//
//     final reservationDetail = reservationDetailFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'iride.dart';

part 'reservation_detail.freezed.dart';
part 'reservation_detail.g.dart';

ReservationDetail reservationDetailFromJson(final String str) => ReservationDetail.fromJson(json.decode(str));

String reservationDetailToJson(final ReservationDetail data) => json.encode(data.toJson());

@freezed
abstract class ReservationDetail with _$ReservationDetail {
  const factory ReservationDetail({
    @JsonKey(name: 'details') final Details? details,
  }) = _ReservationDetail;

  factory ReservationDetail.fromJson(final Map<String, dynamic> json) => _$ReservationDetailFromJson(json);
}

@freezed
abstract class Details with _$Details {
  const factory Details({
    @JsonKey(name: 'ride') final IRide? ride,
    @JsonKey(name: 'ticket_id') final String? ticketId,
    @JsonKey(name: 'boardingStatus') final String? boardingStatus,
    @JsonKey(name: 'plusPassnegers') final int? plusPassnegers,
  }) = _Details;

  factory Details.fromJson(final Map<String, dynamic> json) => _$DetailsFromJson(json);
}
