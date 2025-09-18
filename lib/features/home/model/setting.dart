// To parse this JSON data, do
//
//     final setting = settingFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../auth/model/ride_details.dart';

part 'setting.freezed.dart';
part 'setting.g.dart';

@freezed
abstract class Setting with _$Setting {
  const factory Setting({@JsonKey(name: "success") bool? success, @JsonKey(name: "message") String? message, @JsonKey(name: "data") Data? data}) = _Setting;

  factory Setting.fromJson(Map<String, dynamic> json) => _$SettingFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: "settings") Settings? settings,
    @JsonKey(name: "provider_details") ProviderDetails? providerDetails,
    @JsonKey(name: "ride_id") dynamic rideId,
    @JsonKey(name: "ride_details") RideDetails? rideDetails,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class ProviderDetails with _$ProviderDetails {
  const factory ProviderDetails({
    @JsonKey(name: "last_location") LastLocation? lastLocation,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "designation") String? designation,
    @JsonKey(name: "is_blocked") bool? isBlocked,
    @JsonKey(name: "is_completed") bool? isCompleted,
    @JsonKey(name: "is_deleted") bool? isDeleted,
    @JsonKey(name: "is_email_verified") bool? isEmailVerified,
    @JsonKey(name: "is_phone_verified") bool? isPhoneVerified,
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "rating_count") int? ratingCount,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "device_id") String? deviceId,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "full_name") String? fullName,
    @JsonKey(name: "language") String? language,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "profile_pic") String? profilePic,
    @JsonKey(name: "provider") String? provider,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "fcm_token") String? fcmToken,
    @JsonKey(name: "app_version") String? appVersion,
    @JsonKey(name: "device_type") String? deviceType,
  }) = _ProviderDetails;

  factory ProviderDetails.fromJson(Map<String, dynamic> json) => _$ProviderDetailsFromJson(json);
}

@freezed
abstract class LastLocation with _$LastLocation {
  const factory LastLocation({@JsonKey(name: "coordinates") List<dynamic>? coordinates}) = _LastLocation;

  factory LastLocation.fromJson(Map<String, dynamic> json) => _$LastLocationFromJson(json);
}

@freezed
abstract class Settings with _$Settings {
  const factory Settings({
    @JsonKey(name: "admin_country") String? adminCountry,
    @JsonKey(name: "admin_currency_code") String? adminCurrencyCode,
    @JsonKey(name: "admin_currency") String? adminCurrency,
    @JsonKey(name: "admin_timezone") String? adminTimezone,
    @JsonKey(name: "display_date_timezone") String? displayDateTimezone,
    @JsonKey(name: "admin_phoneNumber") String? adminPhoneNumber,
    @JsonKey(name: "admin_email") String? adminEmail,
    @JsonKey(name: "default_map_load_latitude") String? defaultMapLoadLatitude,
    @JsonKey(name: "default_map_load_longitude") String? defaultMapLoadLongitude,
    @JsonKey(name: "driver_timeout_in_seconds") int? driverTimeoutInSeconds,
    @JsonKey(name: "default_search_radius") int? defaultSearchRadius,
    @JsonKey(name: "Scheduled_request_pre_start_seconds") int? scheduledRequestPreStartSeconds,
    @JsonKey(name: "number_of_loop_for_nearest_driver") int? numberOfLoopForNearestDriver,
    @JsonKey(name: "nearest_driver_type") String? nearestDriverType,
    @JsonKey(name: "nearby_providers_call_time") int? nearbyProvidersCallTime,
    @JsonKey(name: "providers_realtime_location_update") int? providersRealtimeLocationUpdate,
    @JsonKey(name: "send_sms_whatsapp") bool? sendSmsWhatsapp,
    @JsonKey(name: "sms_notification") bool? smsNotification,
    @JsonKey(name: "email_notification") bool? emailNotification,
    @JsonKey(name: "draw_path_user_app") bool? drawPathUserApp,
    @JsonKey(name: "android_user_app_force_update") bool? androidUserAppForceUpdate,
    @JsonKey(name: "android_driver_app_force_update") bool? androidDriverAppForceUpdate,
    @JsonKey(name: "ios_user_app_force_update") bool? iosUserAppForceUpdate,
    @JsonKey(name: "ios_driver_app_force_update") bool? iosDriverAppForceUpdate,
    @JsonKey(name: "show_estimation_driver") bool? showEstimationDriver,
    @JsonKey(name: "show_estimation_user") bool? showEstimationUser,
    @JsonKey(name: "nearby_drivers_limit_count") int? nearbyDriversLimitCount,
    @JsonKey(name: "driver_offline_after_min") int? driverOfflineAfterMin,
    @JsonKey(name: "min_online_hr_per_day") int? minOnlineHrPerDay,
    @JsonKey(name: "vat") int? vat,
    @JsonKey(name: "radius_factor_multiplication") int? radiusFactorMultiplication,
    @JsonKey(name: "increase_bid_count") int? increaseBidCount,
    @JsonKey(name: "increase_bid_show_after_time") int? increaseBidShowAfterTime,
    @JsonKey(name: "retry_fetch_nearby_drivers_after_time") int? retryFetchNearbyDriversAfterTime,
    @JsonKey(name: "retry_fetch_trip_drivers_count") int? retryFetchTripDriversCount,
    @JsonKey(name: "pet_friendly") int? petFriendly,
    @JsonKey(name: "promotion") int? promotion,
    @JsonKey(name: "cancellation_fix_charges") int? cancellationFixCharges,
    @JsonKey(name: "platform_commission") int? platformCommission,
    @JsonKey(name: "assist_charges") int? assistCharges,
    @JsonKey(name: "payment_gateway_charges") int? paymentGatewayCharges,
    @JsonKey(name: "driver_profit") int? driverProfit,
    @JsonKey(name: "ride_cancellation_grace_period") int? rideCancellationGracePeriod,
    @JsonKey(name: "assist_value") int? assistValue,
    @JsonKey(name: "min_online_hr_per_week") int? minOnlineHrPerWeek,
    @JsonKey(name: "driver_weekly_subscription_fee") int? driverWeeklySubscriptionFee,
    @JsonKey(name: "customer_android_app_version") String? customerAndroidAppVersion,
    @JsonKey(name: "customer_android_force_update") bool? customerAndroidForceUpdate,
    @JsonKey(name: "driver_android_app_version") String? driverAndroidAppVersion,
    @JsonKey(name: "driver_android_force_update") bool? driverAndroidForceUpdate,
    @JsonKey(name: "customer_ios_app_version") String? customerIosAppVersion,
    @JsonKey(name: "customer_ios_force_update") bool? customerIosForceUpdate,
    @JsonKey(name: "driver_ios_app_version") String? driverIosAppVersion,
    @JsonKey(name: "driver_ios_force_update") bool? driverIosForceUpdate,
    @JsonKey(name: "maintenance_title") String? maintenanceTitle,
    @JsonKey(name: "maintenance_description") String? maintenanceDescription,
    @JsonKey(name: "is_driver_app_under_maintenance") bool? isDriverAppUnderMaintenance,
    @JsonKey(name: "is_customer_app_under_maintenance") bool? isCustomerAppUnderMaintenance,
    @JsonKey(name: "driver_maintenance_scheduled_until") String? driverMaintenanceScheduledUntil,
    @JsonKey(name: "customer_maintenance_scheduled_until") String? customerMaintenanceScheduledUntil,
    @JsonKey(name: "min_bidding_fare") int? minBiddingFare,
    @JsonKey(name: "max_bidding_fare") double? maxBiddingFare,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);
}
