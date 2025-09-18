// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Activity _$ActivityFromJson(Map<String, dynamic> json) => _Activity(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ActivityToJson(_Activity instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      rides: json['rides'] == null
          ? null
          : Rides.fromJson(json['rides'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'rides': instance.rides,
    };

_Rides _$RidesFromJson(Map<String, dynamic> json) => _Rides(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalResults: (json['totalResults'] as num?)?.toInt(),
      isNextPage: json['isNextPage'] as bool?,
      isPreviousPage: json['isPreviousPage'] as bool?,
    );

Map<String, dynamic> _$RidesToJson(_Rides instance) => <String, dynamic>{
      'results': instance.results,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
      'isNextPage': instance.isNextPage,
      'isPreviousPage': instance.isPreviousPage,
    };

_Result _$ResultFromJson(Map<String, dynamic> json) => _Result(
      customerInfo: json['customer_info'] == null
          ? null
          : ErInfo.fromJson(json['customer_info'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      countryId: json['country_id'] as String?,
      cityId: json['city_id'] as String?,
      zoneId: json['zone_id'] as String?,
      customerId: json['customer_id'] as String?,
      driverId: json['driver_id'] as String?,
      rideTypeId: json['ride_type_id'] == null
          ? null
          : RideTypeId.fromJson(json['ride_type_id'] as Map<String, dynamic>),
      rideRequest: json['ride_request'] == null
          ? null
          : RideRequest.fromJson(json['ride_request'] as Map<String, dynamic>),
      paymentIntentId: json['payment_intent_id'] as String?,
      paymentMethodId: json['payment_method_id'] as String?,
      customerStripeId: json['customer_stripe_id'] as String?,
      chargeAmount: (json['charge_amount'] as num?)?.toInt(),
      capturedAmount: (json['captured_amount'] as num?)?.toInt(),
      farePrice: (json['fare_price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      payToDriver: (json['pay_to_driver'] as num?)?.toDouble(),
      platformCharges: (json['platform_charges'] as num?)?.toDouble(),
      toCurrency: json['to_currency'] as String?,
      fromCurrency: json['from_currency'] as String?,
      cancellationCharges: (json['cancellation_charges'] as num?)?.toDouble(),
      bidCount: (json['bid_count'] as num?)?.toInt(),
      retryDriversCount: (json['retry_drivers_count'] as num?)?.toInt(),
      maxRetryDriversCount: (json['max_retry_drivers_count'] as num?)?.toInt(),
      isBidding: json['is_bidding'] as bool?,
      quotedFare: json['quoted_fare'] as String?,
      scheduledAt: json['scheduled_at'] == null
          ? null
          : DateTime.parse(json['scheduled_at'] as String),
      requestedAt: json['requested_at'] == null
          ? null
          : DateTime.parse(json['requested_at'] as String),
      status: json['status'] as String?,
      paymentStatus: json['payment_status'] as String?,
      nanoId: (json['nano_id'] as num?)?.toInt(),
      rideService: json['ride_service'] as String?,
      startedAt: json['started_at'],
      onrouteAt: json['onroute_at'] == null
          ? null
          : DateTime.parse(json['onroute_at'] as String),
      arrivedAt: json['arrived_at'] == null
          ? null
          : DateTime.parse(json['arrived_at'] as String),
      acceptedAt: json['accepted_at'] == null
          ? null
          : DateTime.parse(json['accepted_at'] as String),
      rejectedAt: json['rejected_at'],
      cancelledAt: json['cancelled_at'] == null
          ? null
          : DateTime.parse(json['cancelled_at'] as String),
      validateAt: json['validate_at'],
      completedAt: json['completed_at'],
      endAt: json['end_at'],
      customerInvoiceSeenAt: json['customer_invoice_seen_at'],
      driverInvoiceSeenAt: json['driver_invoice_seen_at'],
      rejectedDrivers: json['rejected_drivers'] as List<dynamic>?,
      requestedDrivers: (json['requested_drivers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isDriverCancelled: json['is_driver_cancelled'] as bool?,
      isCustomerCancelled: json['is_customer_cancelled'] as bool?,
      isSystemCancelled: json['is_system_cancelled'] as bool?,
      isRideEnd: json['is_ride_end'] as bool?,
      isCustomerInvoiceSeen: json['is_customer_invoice_seen'] as bool?,
      isDriverInvoiceSeen: json['is_driver_invoice_seen'] as bool?,
      isDeleted: json['is_deleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
      timeToRespond: (json['time_to_respond'] as num?)?.toInt(),
      cancelledReason: json['cancelled_reason'] as String?,
      driverInfo: json['driver_info'] == null
          ? null
          : ErInfo.fromJson(json['driver_info'] as Map<String, dynamic>),
      vehicleInfo: json['vehicle_info'] == null
          ? null
          : VehicleInfo.fromJson(json['vehicle_info'] as Map<String, dynamic>),
      conversationId: json['conversation_id'] as String?,
      organizationId: json['organization_id'] as String?,
      vehicleId: json['vehicle_id'] as String?,
    );

Map<String, dynamic> _$ResultToJson(_Result instance) => <String, dynamic>{
      'customer_info': instance.customerInfo,
      '_id': instance.id,
      'country_id': instance.countryId,
      'city_id': instance.cityId,
      'zone_id': instance.zoneId,
      'customer_id': instance.customerId,
      'driver_id': instance.driverId,
      'ride_type_id': instance.rideTypeId,
      'ride_request': instance.rideRequest,
      'payment_intent_id': instance.paymentIntentId,
      'payment_method_id': instance.paymentMethodId,
      'customer_stripe_id': instance.customerStripeId,
      'charge_amount': instance.chargeAmount,
      'captured_amount': instance.capturedAmount,
      'fare_price': instance.farePrice,
      'total_price': instance.totalPrice,
      'vat': instance.vat,
      'pay_to_driver': instance.payToDriver,
      'platform_charges': instance.platformCharges,
      'to_currency': instance.toCurrency,
      'from_currency': instance.fromCurrency,
      'cancellation_charges': instance.cancellationCharges,
      'bid_count': instance.bidCount,
      'retry_drivers_count': instance.retryDriversCount,
      'max_retry_drivers_count': instance.maxRetryDriversCount,
      'is_bidding': instance.isBidding,
      'quoted_fare': instance.quotedFare,
      'scheduled_at': instance.scheduledAt?.toIso8601String(),
      'requested_at': instance.requestedAt?.toIso8601String(),
      'status': instance.status,
      'payment_status': instance.paymentStatus,
      'nano_id': instance.nanoId,
      'ride_service': instance.rideService,
      'started_at': instance.startedAt,
      'onroute_at': instance.onrouteAt?.toIso8601String(),
      'arrived_at': instance.arrivedAt?.toIso8601String(),
      'accepted_at': instance.acceptedAt?.toIso8601String(),
      'rejected_at': instance.rejectedAt,
      'cancelled_at': instance.cancelledAt?.toIso8601String(),
      'validate_at': instance.validateAt,
      'completed_at': instance.completedAt,
      'end_at': instance.endAt,
      'customer_invoice_seen_at': instance.customerInvoiceSeenAt,
      'driver_invoice_seen_at': instance.driverInvoiceSeenAt,
      'rejected_drivers': instance.rejectedDrivers,
      'requested_drivers': instance.requestedDrivers,
      'is_driver_cancelled': instance.isDriverCancelled,
      'is_customer_cancelled': instance.isCustomerCancelled,
      'is_system_cancelled': instance.isSystemCancelled,
      'is_ride_end': instance.isRideEnd,
      'is_customer_invoice_seen': instance.isCustomerInvoiceSeen,
      'is_driver_invoice_seen': instance.isDriverInvoiceSeen,
      'is_deleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'time_to_respond': instance.timeToRespond,
      'cancelled_reason': instance.cancelledReason,
      'driver_info': instance.driverInfo,
      'vehicle_info': instance.vehicleInfo,
      'conversation_id': instance.conversationId,
      'organization_id': instance.organizationId,
      'vehicle_id': instance.vehicleId,
    };

_RideTypeId _$RideTypeIdFromJson(Map<String, dynamic> json) => _RideTypeId(
      id: json['_id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RideTypeIdToJson(_RideTypeId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };
