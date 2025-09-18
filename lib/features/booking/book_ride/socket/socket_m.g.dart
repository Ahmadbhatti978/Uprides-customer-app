// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_m.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketM _$SocketMFromJson(Map<String, dynamic> json) => _SocketM(
      rideId: json['ride_id'] as String?,
      isRideUpdated: json['is_ride_updated'] as bool?,
      isBidding: json['is_bidding'] as bool?,
      location: json['location'] == null
          ? null
          : Coordinate.fromJson(json['location'] as Map<String, dynamic>),
      duration: (json['duration'] as num?)?.toDouble(),
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SocketMToJson(_SocketM instance) => <String, dynamic>{
      'ride_id': instance.rideId,
      'is_ride_updated': instance.isRideUpdated,
      'is_bidding': instance.isBidding,
      'location': instance.location,
      'duration': instance.duration,
      'distance': instance.distance,
    };
