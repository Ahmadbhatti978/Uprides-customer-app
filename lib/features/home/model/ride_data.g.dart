// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RideData _$RideDataFromJson(Map<String, dynamic> json) => _RideData(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RideDataToJson(_RideData instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      ride: json['ride'] == null
          ? null
          : Ride.fromJson(json['ride'] as Map<String, dynamic>),
      pin: (json['pin'] as num?)?.toInt(),
      driverInfo: json['driver_info'] == null
          ? null
          : DriverInfo.fromJson(json['driver_info'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      driverToPickUpPolyline: json['driver_to_pick_up_polyline'] as String?,
      pickUpToDropOffPolyline: json['pick_up_to_drop_off_polyline'] as String?,
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'ride': instance.ride,
      'pin': instance.pin,
      'driver_info': instance.driverInfo,
      '_id': instance.id,
      'driver_to_pick_up_polyline': instance.driverToPickUpPolyline,
      'pick_up_to_drop_off_polyline': instance.pickUpToDropOffPolyline,
    };

_DriverInfo _$DriverInfoFromJson(Map<String, dynamic> json) => _DriverInfo(
      id: json['id'] as String?,
      fullName: json['full_name'] as String?,
      profilePic: json['profile_pic'] as String?,
      currentLocation: json['current_location'] == null
          ? null
          : CurrentLocation.fromJson(
              json['current_location'] as Map<String, dynamic>),
      ratings: (json['ratings'] as num?)?.toDouble(),
      name: json['name'] as String?,
      vin: json['vin'] as String?,
      color: json['color'] as String?,
      image: json['image'] as String?,
      vehicleType: json['vehicle_type'] as String?,
      model: json['model'] as String?,
      driverEta: (json['driver_eta'] as List<dynamic>?)
          ?.map((e) => DriverEta.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DriverInfoToJson(_DriverInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'profile_pic': instance.profilePic,
      'current_location': instance.currentLocation,
      'ratings': instance.ratings,
      'name': instance.name,
      'vin': instance.vin,
      'color': instance.color,
      'image': instance.image,
      'vehicle_type': instance.vehicleType,
      'model': instance.model,
      'driver_eta': instance.driverEta,
    };

_CurrentLocation _$CurrentLocationFromJson(Map<String, dynamic> json) =>
    _CurrentLocation(
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CurrentLocationToJson(_CurrentLocation instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

_DriverEta _$DriverEtaFromJson(Map<String, dynamic> json) => _DriverEta(
      eta: (json['eta'] as num?)?.toInt(),
      distance: (json['distance'] as num?)?.toInt(),
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$DriverEtaToJson(_DriverEta instance) =>
    <String, dynamic>{
      'eta': instance.eta,
      'distance': instance.distance,
      '_id': instance.id,
    };

_Ride _$RideFromJson(Map<String, dynamic> json) => _Ride(
      customerInfo: json['customer_info'] == null
          ? null
          : ErInfo.fromJson(json['customer_info'] as Map<String, dynamic>),
      driverInfo: json['driver_info'] == null
          ? null
          : ErInfo.fromJson(json['driver_info'] as Map<String, dynamic>),
      vehicleInfo: json['vehicle_info'] == null
          ? null
          : VehicleInfo.fromJson(json['vehicle_info'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      countryId: json['country_id'] as String?,
      cityId: json['city_id'] as String?,
      zoneId: json['zone_id'] as String?,
      customerId: json['customer_id'] as String?,
      driverId: json['driver_id'] as String?,
      rideTypeId: json['ride_type_id'] as String?,
      rideRequest: json['ride_request'] == null
          ? null
          : RideRequest.fromJson(json['ride_request'] as Map<String, dynamic>),
      paymentIntentId: json['payment_intent_id'] as String?,
      paymentMethodId: json['payment_method_id'] as String?,
      customerStripeId: json['customer_stripe_id'] as String?,
      chargeAmount: (json['charge_amount'] as num?)?.toInt(),
      capturedAmount: (json['captured_amount'] as num?)?.toDouble(),
      farePrice: (json['fare_price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      payToDriver: (json['pay_to_driver'] as num?)?.toDouble(),
      platformCharges: (json['platform_charges'] as num?)?.toDouble(),
      toCurrency: json['to_currency'] as String?,
      fromCurrency: json['from_currency'] as String?,
      cancellationCharges: (json['cancellation_charges'] as num?)?.toInt(),
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
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      onrouteAt: json['onroute_at'] == null
          ? null
          : DateTime.parse(json['onroute_at'] as String),
      arrivedAt: json['arrived_at'] == null
          ? null
          : DateTime.parse(json['arrived_at'] as String),
      acceptedAt: json['accepted_at'] == null
          ? null
          : DateTime.parse(json['accepted_at'] as String),
      rejectedAt: json['rejected_at'] == null
          ? null
          : DateTime.parse(json['rejected_at'] as String),
      cancelledAt: json['cancelled_at'] == null
          ? null
          : DateTime.parse(json['cancelled_at'] as String),
      validateAt: json['validate_at'] == null
          ? null
          : DateTime.parse(json['validate_at'] as String),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      endAt: json['end_at'] == null
          ? null
          : DateTime.parse(json['end_at'] as String),
      customerInvoiceSeenAt: json['customer_invoice_seen_at'] == null
          ? null
          : DateTime.parse(json['customer_invoice_seen_at'] as String),
      driverInvoiceSeenAt: json['driver_invoice_seen_at'] == null
          ? null
          : DateTime.parse(json['driver_invoice_seen_at'] as String),
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
      conversationId: json['conversation_id'] as String?,
      organizationId: json['organization_id'] as String?,
      vehicleId: json['vehicle_id'] as String?,
    );

Map<String, dynamic> _$RideToJson(_Ride instance) => <String, dynamic>{
      'customer_info': instance.customerInfo,
      'driver_info': instance.driverInfo,
      'vehicle_info': instance.vehicleInfo,
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
      'started_at': instance.startedAt?.toIso8601String(),
      'onroute_at': instance.onrouteAt?.toIso8601String(),
      'arrived_at': instance.arrivedAt?.toIso8601String(),
      'accepted_at': instance.acceptedAt?.toIso8601String(),
      'rejected_at': instance.rejectedAt?.toIso8601String(),
      'cancelled_at': instance.cancelledAt?.toIso8601String(),
      'validate_at': instance.validateAt?.toIso8601String(),
      'completed_at': instance.completedAt?.toIso8601String(),
      'end_at': instance.endAt?.toIso8601String(),
      'customer_invoice_seen_at':
          instance.customerInvoiceSeenAt?.toIso8601String(),
      'driver_invoice_seen_at': instance.driverInvoiceSeenAt?.toIso8601String(),
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
      'conversation_id': instance.conversationId,
      'organization_id': instance.organizationId,
      'vehicle_id': instance.vehicleId,
    };

_ErInfo _$ErInfoFromJson(Map<String, dynamic> json) => _ErInfo(
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$ErInfoToJson(_ErInfo instance) => <String, dynamic>{
      'full_name': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'username': instance.username,
    };

_RideRequest _$RideRequestFromJson(Map<String, dynamic> json) => _RideRequest(
      pickupLocation: json['pickup_location'] == null
          ? null
          : Location.fromJson(json['pickup_location'] as Map<String, dynamic>),
      dropoffLocation: json['dropoff_location'] == null
          ? null
          : Location.fromJson(json['dropoff_location'] as Map<String, dynamic>),
      countryId: json['country_id'] as String?,
      cityId: json['city_id'] as String?,
      zoneId: json['zone_id'] as String?,
      customerId: json['customer_id'] as String?,
      pickupAddress: json['pickup_address'] as String?,
      dropoffAddress: json['dropoff_address'] as String?,
      stops: (json['stops'] as List<dynamic>?)
          ?.map((e) => Stop.fromJson(e as Map<String, dynamic>))
          .toList(),
      optimizedStops: (json['optimized_stops'] as List<dynamic>?)
          ?.map((e) => OptimizedStop.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookedFor: json['booked_for'] as String?,
      accessiblity: json['accessiblity'] as String?,
      type: json['type'] as String?,
      distanceInMeters: (json['distance_in_meters'] as num?)?.toInt(),
      totalEta: (json['total_eta'] as num?)?.toInt(),
      stopsEta: (json['stops_eta'] as List<dynamic>?)
          ?.map((e) => StopsEta.fromJson(e as Map<String, dynamic>))
          .toList(),
      scheduledAt: json['scheduled_at'] == null
          ? null
          : DateTime.parse(json['scheduled_at'] as String),
      serverScheduledAt: json['server_scheduled_at'] == null
          ? null
          : DateTime.parse(json['server_scheduled_at'] as String),
      isDeleted: json['is_deleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$RideRequestToJson(_RideRequest instance) =>
    <String, dynamic>{
      'pickup_location': instance.pickupLocation,
      'dropoff_location': instance.dropoffLocation,
      'country_id': instance.countryId,
      'city_id': instance.cityId,
      'zone_id': instance.zoneId,
      'customer_id': instance.customerId,
      'pickup_address': instance.pickupAddress,
      'dropoff_address': instance.dropoffAddress,
      'stops': instance.stops,
      'optimized_stops': instance.optimizedStops,
      'booked_for': instance.bookedFor,
      'accessiblity': instance.accessiblity,
      'type': instance.type,
      'distance_in_meters': instance.distanceInMeters,
      'total_eta': instance.totalEta,
      'stops_eta': instance.stopsEta,
      'scheduled_at': instance.scheduledAt?.toIso8601String(),
      'server_scheduled_at': instance.serverScheduledAt?.toIso8601String(),
      'is_deleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'id': instance.id,
    };

_VehicleInfo _$VehicleInfoFromJson(Map<String, dynamic> json) => _VehicleInfo(
      vin: json['vin'] as String?,
      registrationNumber: json['registration_number'] as String?,
    );

Map<String, dynamic> _$VehicleInfoToJson(_VehicleInfo instance) =>
    <String, dynamic>{
      'vin': instance.vin,
      'registration_number': instance.registrationNumber,
    };
