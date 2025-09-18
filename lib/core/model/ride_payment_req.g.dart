// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_payment_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RidePaymentResponse _$RidePaymentResponseFromJson(Map<String, dynamic> json) =>
    _RidePaymentResponse(
      payload: const PayloadConverter().fromJson(json['payload'] as String?),
      requiresDeliveryTracking: json['requiresDeliveryTracking'] as bool?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$RidePaymentResponseToJson(
        _RidePaymentResponse instance) =>
    <String, dynamic>{
      'payload': const PayloadConverter().toJson(instance.payload),
      'requiresDeliveryTracking': instance.requiresDeliveryTracking,
      'body': instance.body,
    };

_RidePaymentPayload _$RidePaymentPayloadFromJson(Map<String, dynamic> json) =>
    _RidePaymentPayload(
      type: json['type'] as String?,
      rideDetails: json['payload'] == null
          ? null
          : RideDetails.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RidePaymentPayloadToJson(_RidePaymentPayload instance) =>
    <String, dynamic>{
      'type': instance.type,
      'payload': instance.rideDetails,
    };

_RideDetails _$RideDetailsFromJson(Map<String, dynamic> json) => _RideDetails(
      accessability: json['accessability'] as String?,
      distanceInMeters: (json['distance_in_meters'] as num?)?.toInt(),
      etaInSeconds: (json['eta_in_seconds'] as num?)?.toInt(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
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
      status: json['status'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$RideDetailsToJson(_RideDetails instance) =>
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
      'status': instance.status,
      'note': instance.note,
    };

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
      dropOff: json['drop_off'] == null
          ? null
          : Spot.fromJson(json['drop_off'] as Map<String, dynamic>),
      pickup: json['pickup'] == null
          ? null
          : Spot.fromJson(json['pickup'] as Map<String, dynamic>),
      stops: (json['stops'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Stop.fromJson(e as Map<String, dynamic>))
          .toList(),
      optimizedStops: (json['optimizedStops'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : OptimizedStop.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
      'drop_off': instance.dropOff,
      'pickup': instance.pickup,
      'stops': instance.stops,
      'optimizedStops': instance.optimizedStops,
    };

_Spot _$SpotFromJson(Map<String, dynamic> json) => _Spot(
      coordinates: json['coordinates'] == null
          ? null
          : Coordinate.fromJson(json['coordinates'] as Map<String, dynamic>),
      address: json['address'] as String?,
    );

Map<String, dynamic> _$SpotToJson(_Spot instance) => <String, dynamic>{
      'coordinates': instance.coordinates,
      'address': instance.address,
    };
