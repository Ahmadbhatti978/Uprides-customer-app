// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receive_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReceiveDetail _$ReceiveDetailFromJson(Map<String, dynamic> json) =>
    _ReceiveDetail(
      type: json['type'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReceiveDetailToJson(_ReceiveDetail instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      ride: json['ride'] == null
          ? null
          : Ride.fromJson(json['ride'] as Map<String, dynamic>),
      packages: (json['packages'] as List<dynamic>?)
          ?.map((e) => Package.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'ride': instance.ride,
      'packages': instance.packages,
    };

_Package _$PackageFromJson(Map<String, dynamic> json) => _Package(
      recieverDetails: json['reciever_details'] == null
          ? null
          : RecieverDetails.fromJson(
              json['reciever_details'] as Map<String, dynamic>),
      deliveryLocation: json['delivery_location'] == null
          ? null
          : Location.fromJson(
              json['delivery_location'] as Map<String, dynamic>),
      dimensions: json['dimensions'] == null
          ? null
          : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
      charges: json['charges'] == null
          ? null
          : Charges.fromJson(json['charges'] as Map<String, dynamic>),
      driverRemarks: json['driver_remarks'] == null
          ? null
          : DriverRemarks.fromJson(
              json['driver_remarks'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      packageRide: json['package_ride'] as String?,
      packageStatus: json['package_status'] as String?,
      packageTid: json['package_tid'] as String?,
      packageType: json['package_type'] as String?,
      order: (json['order'] as num?)?.toInt(),
      media: json['media'] as List<dynamic>?,
      v: (json['__v'] as num?)?.toInt(),
      deliveryAdddress: json['delivery_adddress'] as String?,
      deliveryAddress: json['delivery_address'] as String?,
    );

Map<String, dynamic> _$PackageToJson(_Package instance) => <String, dynamic>{
      'reciever_details': instance.recieverDetails,
      'delivery_location': instance.deliveryLocation,
      'dimensions': instance.dimensions,
      'charges': instance.charges,
      'driver_remarks': instance.driverRemarks,
      '_id': instance.id,
      'package_ride': instance.packageRide,
      'package_status': instance.packageStatus,
      'package_tid': instance.packageTid,
      'package_type': instance.packageType,
      'order': instance.order,
      'media': instance.media,
      '__v': instance.v,
      'delivery_adddress': instance.deliveryAdddress,
      'delivery_address': instance.deliveryAddress,
    };

_Charges _$ChargesFromJson(Map<String, dynamic> json) => _Charges(
      amount: (json['amount'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      payment: json['payment'] as String?,
    );

Map<String, dynamic> _$ChargesToJson(_Charges instance) => <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'payment': instance.payment,
    };

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

_Dimensions _$DimensionsFromJson(Map<String, dynamic> json) => _Dimensions(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DimensionsToJson(_Dimensions instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'weight': instance.weight,
    };

_DriverRemarks _$DriverRemarksFromJson(Map<String, dynamic> json) =>
    _DriverRemarks(
      media: json['media'] as List<dynamic>?,
    );

Map<String, dynamic> _$DriverRemarksToJson(_DriverRemarks instance) =>
    <String, dynamic>{
      'media': instance.media,
    };

_RecieverDetails _$RecieverDetailsFromJson(Map<String, dynamic> json) =>
    _RecieverDetails(
      fullName: json['full_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      regOnDb: json['reg_on_db'] as bool?,
    );

Map<String, dynamic> _$RecieverDetailsToJson(_RecieverDetails instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'phone_number': instance.phoneNumber,
      'reg_on_db': instance.regOnDb,
    };

_Ride _$RideFromJson(Map<String, dynamic> json) => _Ride(
      id: json['_id'] as String?,
      user: json['user'] as String?,
      trackingId: json['tracking_id'] as String?,
      status: json['status'] as String?,
      pickupLocation: json['pickup_location'] == null
          ? null
          : Location.fromJson(json['pickup_location'] as Map<String, dynamic>),
      distanceInMeters: (json['distance_in_meters'] as num?)?.toInt(),
      polyline: json['polyline'] as String?,
      pickupTime: json['pickup_time'] == null
          ? null
          : DateTime.parse(json['pickup_time'] as String),
      v: (json['__v'] as num?)?.toInt(),
      driver: json['driver'] as String?,
      pickupAddress: json['pickup_address'] as String?,
    );

Map<String, dynamic> _$RideToJson(_Ride instance) => <String, dynamic>{
      '_id': instance.id,
      'user': instance.user,
      'tracking_id': instance.trackingId,
      'status': instance.status,
      'pickup_location': instance.pickupLocation,
      'distance_in_meters': instance.distanceInMeters,
      'polyline': instance.polyline,
      'pickup_time': instance.pickupTime?.toIso8601String(),
      '__v': instance.v,
      'driver': instance.driver,
      'pickup_address': instance.pickupAddress,
    };
