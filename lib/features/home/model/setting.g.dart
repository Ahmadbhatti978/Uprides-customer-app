// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Setting _$SettingFromJson(Map<String, dynamic> json) => _Setting(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingToJson(_Setting instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      settings: json['settings'] == null
          ? null
          : Settings.fromJson(json['settings'] as Map<String, dynamic>),
      providerDetails: json['provider_details'] == null
          ? null
          : ProviderDetails.fromJson(
              json['provider_details'] as Map<String, dynamic>),
      rideId: json['ride_id'],
      rideDetails: json['ride_details'] == null
          ? null
          : RideDetails.fromJson(json['ride_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'settings': instance.settings,
      'provider_details': instance.providerDetails,
      'ride_id': instance.rideId,
      'ride_details': instance.rideDetails,
    };

_ProviderDetails _$ProviderDetailsFromJson(Map<String, dynamic> json) =>
    _ProviderDetails(
      lastLocation: json['last_location'] == null
          ? null
          : LastLocation.fromJson(
              json['last_location'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      email: json['email'] as String?,
      v: (json['__v'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      designation: json['designation'] as String?,
      isBlocked: json['is_blocked'] as bool?,
      isCompleted: json['is_completed'] as bool?,
      isDeleted: json['is_deleted'] as bool?,
      isEmailVerified: json['is_email_verified'] as bool?,
      isPhoneVerified: json['is_phone_verified'] as bool?,
      rating: (json['rating'] as num?)?.toInt(),
      ratingCount: (json['rating_count'] as num?)?.toInt(),
      role: json['role'] as String?,
      status: json['status'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      phone: json['phone'] as String?,
      deviceId: json['device_id'] as String?,
      firstName: json['first_name'] as String?,
      fullName: json['full_name'] as String?,
      language: json['language'] as String?,
      lastName: json['last_name'] as String?,
      profilePic: json['profile_pic'] as String?,
      provider: json['provider'] as String?,
      username: json['username'] as String?,
      fcmToken: json['fcm_token'] as String?,
      appVersion: json['app_version'] as String?,
      deviceType: json['device_type'] as String?,
    );

Map<String, dynamic> _$ProviderDetailsToJson(_ProviderDetails instance) =>
    <String, dynamic>{
      'last_location': instance.lastLocation,
      '_id': instance.id,
      'email': instance.email,
      '__v': instance.v,
      'createdAt': instance.createdAt?.toIso8601String(),
      'designation': instance.designation,
      'is_blocked': instance.isBlocked,
      'is_completed': instance.isCompleted,
      'is_deleted': instance.isDeleted,
      'is_email_verified': instance.isEmailVerified,
      'is_phone_verified': instance.isPhoneVerified,
      'rating': instance.rating,
      'rating_count': instance.ratingCount,
      'role': instance.role,
      'status': instance.status,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'phone': instance.phone,
      'device_id': instance.deviceId,
      'first_name': instance.firstName,
      'full_name': instance.fullName,
      'language': instance.language,
      'last_name': instance.lastName,
      'profile_pic': instance.profilePic,
      'provider': instance.provider,
      'username': instance.username,
      'fcm_token': instance.fcmToken,
      'app_version': instance.appVersion,
      'device_type': instance.deviceType,
    };

_LastLocation _$LastLocationFromJson(Map<String, dynamic> json) =>
    _LastLocation(
      coordinates: json['coordinates'] as List<dynamic>?,
    );

Map<String, dynamic> _$LastLocationToJson(_LastLocation instance) =>
    <String, dynamic>{
      'coordinates': instance.coordinates,
    };

_Settings _$SettingsFromJson(Map<String, dynamic> json) => _Settings(
      adminCountry: json['admin_country'] as String?,
      adminCurrencyCode: json['admin_currency_code'] as String?,
      adminCurrency: json['admin_currency'] as String?,
      adminTimezone: json['admin_timezone'] as String?,
      displayDateTimezone: json['display_date_timezone'] as String?,
      adminPhoneNumber: json['admin_phoneNumber'] as String?,
      adminEmail: json['admin_email'] as String?,
      defaultMapLoadLatitude: json['default_map_load_latitude'] as String?,
      defaultMapLoadLongitude: json['default_map_load_longitude'] as String?,
      driverTimeoutInSeconds:
          (json['driver_timeout_in_seconds'] as num?)?.toInt(),
      defaultSearchRadius: (json['default_search_radius'] as num?)?.toInt(),
      scheduledRequestPreStartSeconds:
          (json['Scheduled_request_pre_start_seconds'] as num?)?.toInt(),
      numberOfLoopForNearestDriver:
          (json['number_of_loop_for_nearest_driver'] as num?)?.toInt(),
      nearestDriverType: json['nearest_driver_type'] as String?,
      nearbyProvidersCallTime:
          (json['nearby_providers_call_time'] as num?)?.toInt(),
      providersRealtimeLocationUpdate:
          (json['providers_realtime_location_update'] as num?)?.toInt(),
      sendSmsWhatsapp: json['send_sms_whatsapp'] as bool?,
      smsNotification: json['sms_notification'] as bool?,
      emailNotification: json['email_notification'] as bool?,
      drawPathUserApp: json['draw_path_user_app'] as bool?,
      androidUserAppForceUpdate: json['android_user_app_force_update'] as bool?,
      androidDriverAppForceUpdate:
          json['android_driver_app_force_update'] as bool?,
      iosUserAppForceUpdate: json['ios_user_app_force_update'] as bool?,
      iosDriverAppForceUpdate: json['ios_driver_app_force_update'] as bool?,
      showEstimationDriver: json['show_estimation_driver'] as bool?,
      showEstimationUser: json['show_estimation_user'] as bool?,
      nearbyDriversLimitCount:
          (json['nearby_drivers_limit_count'] as num?)?.toInt(),
      driverOfflineAfterMin:
          (json['driver_offline_after_min'] as num?)?.toInt(),
      minOnlineHrPerDay: (json['min_online_hr_per_day'] as num?)?.toInt(),
      vat: (json['vat'] as num?)?.toInt(),
      radiusFactorMultiplication:
          (json['radius_factor_multiplication'] as num?)?.toInt(),
      increaseBidCount: (json['increase_bid_count'] as num?)?.toInt(),
      increaseBidShowAfterTime:
          (json['increase_bid_show_after_time'] as num?)?.toInt(),
      retryFetchNearbyDriversAfterTime:
          (json['retry_fetch_nearby_drivers_after_time'] as num?)?.toInt(),
      retryFetchTripDriversCount:
          (json['retry_fetch_trip_drivers_count'] as num?)?.toInt(),
      petFriendly: (json['pet_friendly'] as num?)?.toInt(),
      promotion: (json['promotion'] as num?)?.toInt(),
      cancellationFixCharges:
          (json['cancellation_fix_charges'] as num?)?.toInt(),
      platformCommission: (json['platform_commission'] as num?)?.toInt(),
      assistCharges: (json['assist_charges'] as num?)?.toInt(),
      paymentGatewayCharges: (json['payment_gateway_charges'] as num?)?.toInt(),
      driverProfit: (json['driver_profit'] as num?)?.toInt(),
      rideCancellationGracePeriod:
          (json['ride_cancellation_grace_period'] as num?)?.toInt(),
      assistValue: (json['assist_value'] as num?)?.toInt(),
      minOnlineHrPerWeek: (json['min_online_hr_per_week'] as num?)?.toInt(),
      driverWeeklySubscriptionFee:
          (json['driver_weekly_subscription_fee'] as num?)?.toInt(),
      customerAndroidAppVersion:
          json['customer_android_app_version'] as String?,
      customerAndroidForceUpdate:
          json['customer_android_force_update'] as bool?,
      driverAndroidAppVersion: json['driver_android_app_version'] as String?,
      driverAndroidForceUpdate: json['driver_android_force_update'] as bool?,
      customerIosAppVersion: json['customer_ios_app_version'] as String?,
      customerIosForceUpdate: json['customer_ios_force_update'] as bool?,
      driverIosAppVersion: json['driver_ios_app_version'] as String?,
      driverIosForceUpdate: json['driver_ios_force_update'] as bool?,
      maintenanceTitle: json['maintenance_title'] as String?,
      maintenanceDescription: json['maintenance_description'] as String?,
      isDriverAppUnderMaintenance:
          json['is_driver_app_under_maintenance'] as bool?,
      isCustomerAppUnderMaintenance:
          json['is_customer_app_under_maintenance'] as bool?,
      driverMaintenanceScheduledUntil:
          json['driver_maintenance_scheduled_until'] as String?,
      customerMaintenanceScheduledUntil:
          json['customer_maintenance_scheduled_until'] as String?,
      minBiddingFare: (json['min_bidding_fare'] as num?)?.toInt(),
      maxBiddingFare: (json['max_bidding_fare'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SettingsToJson(_Settings instance) => <String, dynamic>{
      'admin_country': instance.adminCountry,
      'admin_currency_code': instance.adminCurrencyCode,
      'admin_currency': instance.adminCurrency,
      'admin_timezone': instance.adminTimezone,
      'display_date_timezone': instance.displayDateTimezone,
      'admin_phoneNumber': instance.adminPhoneNumber,
      'admin_email': instance.adminEmail,
      'default_map_load_latitude': instance.defaultMapLoadLatitude,
      'default_map_load_longitude': instance.defaultMapLoadLongitude,
      'driver_timeout_in_seconds': instance.driverTimeoutInSeconds,
      'default_search_radius': instance.defaultSearchRadius,
      'Scheduled_request_pre_start_seconds':
          instance.scheduledRequestPreStartSeconds,
      'number_of_loop_for_nearest_driver':
          instance.numberOfLoopForNearestDriver,
      'nearest_driver_type': instance.nearestDriverType,
      'nearby_providers_call_time': instance.nearbyProvidersCallTime,
      'providers_realtime_location_update':
          instance.providersRealtimeLocationUpdate,
      'send_sms_whatsapp': instance.sendSmsWhatsapp,
      'sms_notification': instance.smsNotification,
      'email_notification': instance.emailNotification,
      'draw_path_user_app': instance.drawPathUserApp,
      'android_user_app_force_update': instance.androidUserAppForceUpdate,
      'android_driver_app_force_update': instance.androidDriverAppForceUpdate,
      'ios_user_app_force_update': instance.iosUserAppForceUpdate,
      'ios_driver_app_force_update': instance.iosDriverAppForceUpdate,
      'show_estimation_driver': instance.showEstimationDriver,
      'show_estimation_user': instance.showEstimationUser,
      'nearby_drivers_limit_count': instance.nearbyDriversLimitCount,
      'driver_offline_after_min': instance.driverOfflineAfterMin,
      'min_online_hr_per_day': instance.minOnlineHrPerDay,
      'vat': instance.vat,
      'radius_factor_multiplication': instance.radiusFactorMultiplication,
      'increase_bid_count': instance.increaseBidCount,
      'increase_bid_show_after_time': instance.increaseBidShowAfterTime,
      'retry_fetch_nearby_drivers_after_time':
          instance.retryFetchNearbyDriversAfterTime,
      'retry_fetch_trip_drivers_count': instance.retryFetchTripDriversCount,
      'pet_friendly': instance.petFriendly,
      'promotion': instance.promotion,
      'cancellation_fix_charges': instance.cancellationFixCharges,
      'platform_commission': instance.platformCommission,
      'assist_charges': instance.assistCharges,
      'payment_gateway_charges': instance.paymentGatewayCharges,
      'driver_profit': instance.driverProfit,
      'ride_cancellation_grace_period': instance.rideCancellationGracePeriod,
      'assist_value': instance.assistValue,
      'min_online_hr_per_week': instance.minOnlineHrPerWeek,
      'driver_weekly_subscription_fee': instance.driverWeeklySubscriptionFee,
      'customer_android_app_version': instance.customerAndroidAppVersion,
      'customer_android_force_update': instance.customerAndroidForceUpdate,
      'driver_android_app_version': instance.driverAndroidAppVersion,
      'driver_android_force_update': instance.driverAndroidForceUpdate,
      'customer_ios_app_version': instance.customerIosAppVersion,
      'customer_ios_force_update': instance.customerIosForceUpdate,
      'driver_ios_app_version': instance.driverIosAppVersion,
      'driver_ios_force_update': instance.driverIosForceUpdate,
      'maintenance_title': instance.maintenanceTitle,
      'maintenance_description': instance.maintenanceDescription,
      'is_driver_app_under_maintenance': instance.isDriverAppUnderMaintenance,
      'is_customer_app_under_maintenance':
          instance.isCustomerAppUnderMaintenance,
      'driver_maintenance_scheduled_until':
          instance.driverMaintenanceScheduledUntil,
      'customer_maintenance_scheduled_until':
          instance.customerMaintenanceScheduledUntil,
      'min_bidding_fare': instance.minBiddingFare,
      'max_bidding_fare': instance.maxBiddingFare,
    };
