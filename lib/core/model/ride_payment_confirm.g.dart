// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_payment_confirm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RidePaymentConfirm _$RidePaymentConfirmFromJson(Map<String, dynamic> json) =>
    _RidePaymentConfirm(
      body: json['body'] as String?,
      payload: json['payload'] == null
          ? null
          : PayloadWrapper.fromJson(json['payload'] as Map<String, dynamic>),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      requiresDeliveryTracking: json['requiresDeliveryTracking'] as bool?,
    );

Map<String, dynamic> _$RidePaymentConfirmToJson(_RidePaymentConfirm instance) =>
    <String, dynamic>{
      'body': instance.body,
      'payload': instance.payload,
      'metadata': instance.metadata,
      'requiresDeliveryTracking': instance.requiresDeliveryTracking,
    };

_Metadata _$MetadataFromJson(Map<String, dynamic> json) => _Metadata(
      rideId: json['ride_id'] as String?,
      capturedAmount: json['captured_amount'] as String?,
    );

Map<String, dynamic> _$MetadataToJson(_Metadata instance) => <String, dynamic>{
      'ride_id': instance.rideId,
      'captured_amount': instance.capturedAmount,
    };

_PayloadWrapper _$PayloadWrapperFromJson(Map<String, dynamic> json) =>
    _PayloadWrapper(
      type: json['type'] as String?,
      payload: json['payload'] == null
          ? null
          : RideModel.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PayloadWrapperToJson(_PayloadWrapper instance) =>
    <String, dynamic>{
      'type': instance.type,
      'payload': instance.payload,
    };

_RideModel _$RideModelFromJson(Map<String, dynamic> json) => _RideModel(
      accessability: json['accessability'] as String?,
      distanceInMeters: (json['distance_in_meters'] as num?)?.toInt(),
      etaInSeconds: (json['eta_in_seconds'] as num?)?.toInt(),
      location: json['location'] == null
          ? null
          : Coordinate.fromJson(json['location'] as Map<String, dynamic>),
      totalAmount: (json['total_amount'] as num?)?.toInt(),
      discountedPriceWithoutVat:
          (json['discounted_price_without_vat'] as num?)?.toInt(),
      vatAmount: (json['vat_amount'] as num?)?.toInt(),
      paymentRequestId: json['payment_request_id'] as String?,
      rideReqId: json['ride_req_id'] as String?,
      rideTypeId: json['ride_type_id'] as String?,
      bookedFor: json['booked_for'] as String?,
      type: json['type'] as String?,
      rideService: json['ride_service'] as String?,
      rideName: json['ride_name'] as String?,
      customerFullname: json['customer_fullname'] as String?,
      polyline: json['polyline'] as String?,
      status: json['status'] as String?,
      note: json['note'] as String?,
      scheduledAt: json['scheduled_at'] == null
          ? null
          : DateTime.parse(json['scheduled_at'] as String),
    );

Map<String, dynamic> _$RideModelToJson(_RideModel instance) =>
    <String, dynamic>{
      'accessability': instance.accessability,
      'distance_in_meters': instance.distanceInMeters,
      'eta_in_seconds': instance.etaInSeconds,
      'location': instance.location,
      'total_amount': instance.totalAmount,
      'discounted_price_without_vat': instance.discountedPriceWithoutVat,
      'vat_amount': instance.vatAmount,
      'payment_request_id': instance.paymentRequestId,
      'ride_req_id': instance.rideReqId,
      'ride_type_id': instance.rideTypeId,
      'booked_for': instance.bookedFor,
      'type': instance.type,
      'ride_service': instance.rideService,
      'ride_name': instance.rideName,
      'customer_fullname': instance.customerFullname,
      'polyline': instance.polyline,
      'status': instance.status,
      'note': instance.note,
      'scheduled_at': instance.scheduledAt?.toIso8601String(),
    };
