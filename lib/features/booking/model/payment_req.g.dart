// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentRequest _$PaymentRequestFromJson(Map<String, dynamic> json) =>
    _PaymentRequest(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PaymentRequestData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaymentRequestToJson(_PaymentRequest instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_PaymentRequestData _$PaymentRequestDataFromJson(Map<String, dynamic> json) =>
    _PaymentRequestData(
      data: json['data'] == null
          ? null
          : DataData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentRequestDataToJson(_PaymentRequestData instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_DataData _$DataDataFromJson(Map<String, dynamic> json) => _DataData(
      id: json['_id'] as String?,
      countryId: json['country_id'] as String?,
      cityId: json['city_id'] as String?,
      zoneId: json['zone_id'] as String?,
      customerId: json['customer_id'] as String?,
      paidById: json['paid_by_id'] as String?,
      rideTypeId: json['ride_type_id'] == null
          ? null
          : RideTypeId.fromJson(json['ride_type_id'] as Map<String, dynamic>),
      rideRequest: json['ride_request'] == null
          ? null
          : RideRequest.fromJson(json['ride_request'] as Map<String, dynamic>),
      quotedFare: json['quoted_fare'] as String?,
      customerFullname: json['customer_fullname'] as String?,
      paidByFullname: json['paid_by_fullname'] as String?,
      rideService: json['ride_service'] as String?,
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      priceWithoutVat: (json['price_without_vat'] as num?)?.toDouble(),
      discountedPriceWithoutVat:
          (json['discounted_price_without_vat'] as num?)?.toDouble(),
      vatAmount: (json['vat_amount'] as num?)?.toDouble(),
      note: json['note'] as String?,
      status: json['status'] as String?,
      isDeleted: json['is_deleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
      customerDetails: json['customer_details'] == null
          ? null
          : CustomerDetails.fromJson(
              json['customer_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataDataToJson(_DataData instance) => <String, dynamic>{
      '_id': instance.id,
      'country_id': instance.countryId,
      'city_id': instance.cityId,
      'zone_id': instance.zoneId,
      'customer_id': instance.customerId,
      'paid_by_id': instance.paidById,
      'ride_type_id': instance.rideTypeId,
      'ride_request': instance.rideRequest,
      'quoted_fare': instance.quotedFare,
      'customer_fullname': instance.customerFullname,
      'paid_by_fullname': instance.paidByFullname,
      'ride_service': instance.rideService,
      'total_amount': instance.totalAmount,
      'price_without_vat': instance.priceWithoutVat,
      'discounted_price_without_vat': instance.discountedPriceWithoutVat,
      'vat_amount': instance.vatAmount,
      'note': instance.note,
      'status': instance.status,
      'is_deleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'customer_details': instance.customerDetails,
    };

_CustomerDetails _$CustomerDetailsFromJson(Map<String, dynamic> json) =>
    _CustomerDetails(
      customerId: json['customer_id'] as String?,
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      profilePic: json['profile_pic'] as String?,
      fcmToken: json['fcm_token'] as String?,
      username: json['username'] as String?,
      currentRideId: json['current_ride_id'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      ratingCount: (json['rating_count'] as num?)?.toInt(),
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$CustomerDetailsToJson(_CustomerDetails instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'full_name': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'profile_pic': instance.profilePic,
      'fcm_token': instance.fcmToken,
      'username': instance.username,
      'current_ride_id': instance.currentRideId,
      'rating': instance.rating,
      'rating_count': instance.ratingCount,
      '_id': instance.id,
    };

_RideTypeId _$RideTypeIdFromJson(Map<String, dynamic> json) => _RideTypeId(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      isDeleted: json['is_deleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
      rideImage: json['ride_image'] as String?,
      type: json['type'] as String?,
      rideCategory: json['ride_category'] as String?,
      isActive: json['is_active'] as bool?,
      numberOfSeats: (json['number_of_seats'] as num?)?.toInt(),
      tag: json['tag'] as String?,
    );

Map<String, dynamic> _$RideTypeIdToJson(_RideTypeId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'is_deleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'ride_image': instance.rideImage,
      'type': instance.type,
      'ride_category': instance.rideCategory,
      'is_active': instance.isActive,
      'number_of_seats': instance.numberOfSeats,
      'tag': instance.tag,
    };
