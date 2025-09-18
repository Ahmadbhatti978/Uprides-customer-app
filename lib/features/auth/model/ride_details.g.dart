// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RideDetails _$RideDetailsFromJson(Map<String, dynamic> json) => _RideDetails(
      rideId: json['ride_id'] as String?,
      status: json['status'] as String?,
      customerId: json['customer_id'] as String?,
      driverId: json['driver_id'] as String?,
      canceled: json['canceled'] as bool?,
      canceledByCustomer: json['canceled_by_customer'] as bool?,
      canceledByDriver: json['canceled_by_driver'] as bool?,
    );

Map<String, dynamic> _$RideDetailsToJson(_RideDetails instance) =>
    <String, dynamic>{
      'ride_id': instance.rideId,
      'status': instance.status,
      'customer_id': instance.customerId,
      'driver_id': instance.driverId,
      'canceled': instance.canceled,
      'canceled_by_customer': instance.canceledByCustomer,
      'canceled_by_driver': instance.canceledByDriver,
    };
