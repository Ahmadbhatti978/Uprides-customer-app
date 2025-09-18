// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReservationDetail _$ReservationDetailFromJson(Map<String, dynamic> json) =>
    _ReservationDetail(
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReservationDetailToJson(_ReservationDetail instance) =>
    <String, dynamic>{
      'details': instance.details,
    };

_Details _$DetailsFromJson(Map<String, dynamic> json) => _Details(
      ride: json['ride'] == null
          ? null
          : IRide.fromJson(json['ride'] as Map<String, dynamic>),
      ticketId: json['ticket_id'] as String?,
      boardingStatus: json['boardingStatus'] as String?,
      plusPassnegers: (json['plusPassnegers'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DetailsToJson(_Details instance) => <String, dynamic>{
      'ride': instance.ride,
      'ticket_id': instance.ticketId,
      'boardingStatus': instance.boardingStatus,
      'plusPassnegers': instance.plusPassnegers,
    };
