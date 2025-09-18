import 'dart:developer';

// ignore: avoid_classes_with_only_static_members

String env = 'uat';

// ignore: avoid_classes_with_only_static_members
class Api {
  // --- Environment Configuration ---
  // ignore: do_not_use_environment
  static final String _environment =
      String.fromEnvironment('ENVIRONMENT', defaultValue: env);

  // --- Base URLs by Environment ---
  static String get _authServiceBase {
    switch (_environment) {
      case 'prod':
        return 'https://prod.service.auth.uprides.eu/api/v1';
      case 'uat':
        return 'https://uat.service.auth.uprides.eu/api/v1';
      case 'dev':
      default:
        return 'https://dev.service.auth.boldrides.com/api/v1';
    }
  }

  static String get _paymentServiceBase {
    switch (_environment) {
      case 'prod':
        return 'https://prod.service.payment.uprides.eu/api/v1';
      case 'uat':
        return 'https://uat.service.payment.uprides.eu/api/v1';
      case 'dev':
      default:
        return 'https://dev.service.payment.boldrides.com/api/v1';
    }
  }

  static String get _rideServiceBase {
    switch (_environment) {
      case 'prod':
        return 'https://prod.service.ride.uprides.eu/api/v1';
      case 'uat':
        return 'https://uat.service.ride.uprides.eu/api/v1';
      case 'dev':
      default:
        return 'https://dev.service.ride.boldrides.com/api/v1';
    }
  }

  static String get _chatServiceBase {
    switch (_environment) {
      case 'prod':
        return 'https://prod.service.chat.uprides.eu/api/v1';
      case 'uat':
        return 'https://uat.service.chat.uprides.eu/api/v1';
      case 'dev':
      default:
        return 'https://dev.service.chat.boldrides.com/api/v1';
    }
  }

  static String get _locationServiceBase {
    switch (_environment) {
      case 'prod':
        return 'https://prod.service.location.uprides.eu/api/v1';
      case 'uat':
        return 'https://uat.service.location.uprides.eu/api/v1';
      case 'dev':
      default:
        return 'https://dev.service.location.boldrides.com/api/v1';
    }
  }

  static String get _organizationServiceBase {
    switch (_environment) {
      case 'prod':
        return 'https://prod.service.org.uprides.eu/api/v1';
      case 'uat':
        return 'https://uat.service.org.uprides.eu/api/v1';
      case 'dev':
      default:
        return 'https://dev.service.org.boldrides.com/api/v1';
    }
  }

  static String get _notificationServiceBase {
    switch (_environment) {
      case 'prod':
        return 'https://prod.service.notification.uprides.eu/api/v1';
      case 'uat':
        return 'https://uat.service.notification.uprides.eu/api/v1';
      case 'dev':
      default:
        return 'https://dev.service.notification.boldrides.com/api/v1';
    }
  }

  static String get rideSocketUrl {
    switch (_environment) {
      case 'prod':
        return 'wss://prod.service.location.uprides.eu';
      case 'uat':
        return 'wss://uat.service.location.uprides.eu';
      case 'dev':
      default:
        return 'wss://dev.service.notification.boldrides.com';
    }
  }

  static String get chatSocketUrl {
    switch (_environment) {
      case 'prod':
        return 'wss://prod.service.chat.uprides.eu';
      case 'uat':
        return 'wss://uat.service.chat.uprides.eu';
      case 'dev':
      default:
        return 'wss://dev.service.chat.boldrides.com';
    }
  }

  static String get attachmentINChat =>
      '$_chatServiceBase/attachments/customer';
  // --- Service Base URLs ---
  static String get authBase => _authServiceBase;
  static String get paymentBaseUrl =>
      '$_paymentServiceBase/payments/customer-payment-methods';
  static String get rideBaseUrl => _rideServiceBase;
  static String get chatBaseUrl => '$_chatServiceBase/messages';
  static String get locationBaseUrl => _locationServiceBase;
  static String get organizationBaseUrl => _organizationServiceBase;
  static String get notificationBaseUrl => _notificationServiceBase;

  // --- Authentication Endpoints ---
  static String get authBaseUrl => '$authBase/customers';
  static String get sendPhoneOtp => '$authBaseUrl/sent-phone-otp';
  static String get verifyPhoneOtp => '$authBaseUrl/verify-phone';
  static String get sendEmailOtp => '$authBaseUrl/send-email-otp';
  static String get verifyEmailOtp => '$authBaseUrl/verify-email';
  static String get suggestUserName => '$authBaseUrl/suggest-username';
  static String get loginEmail => '$authBaseUrl/login-email';
  static String get verifyLoginEmail => '$authBaseUrl/verify-email-login';
  static String get loginPhone => '$authBaseUrl/login-phone';
  static String get verifyPhoneLoginOTP =>
      '$authBaseUrl/verify-phone-login-otp';
  static String get socialAuth => '$authBaseUrl/social-auth';
  static String get verifyIDToken => '$authBaseUrl/verify-id-token';
  static String get refreshToken => '$authBaseUrl/refresh-token';
  static String get logout => '$authBaseUrl/logout';
  static String get forgotPasswordOTP => '$authBaseUrl/forget-password-otp';
  static String get verfyForgotOTP => '$authBaseUrl/verify-forgot-otp';
  static String get updatePassword => '$authBaseUrl/update-forgot-password';
  static String get completeRegistration =>
      '$authBaseUrl/complete-registration';
  static String get updateUserInfo => '$authBaseUrl/update-user-info';
  static String getByUserName(final String username) =>
      '$authBaseUrl/get-by-username/$username';
  static String get settings => "$authBase/provider/settings";
  static String get sendOtp => '$authBaseUrl/send-otp';
  static String get verifyOtp => '$authBaseUrl/verify-otp';
  static String get account => '$authBaseUrl/account';

  // --- Payment Endpoints ---
  static String get addPaymentMethods => '$paymentBaseUrl/add';
  static String get createPaymentMethods => '$paymentBaseUrl/create-account';
  static String get attachPaymentMethod => '$paymentBaseUrl/attach-method';
  static String get makeDefaultPaymentMethod =>
      '$paymentBaseUrl/default-method';
  static String removePaymentMethod(final String paymentId) =>
      '$paymentBaseUrl/delete-method/$paymentId';
  static String get getAllMethod => '$paymentBaseUrl/get-all-methods/';

  // --- Ride & Booking Endpoints ---
  static String get ride => '$rideBaseUrl/ride';
  static String rideCharges(final String id) => '$ride/cancel/charges/$id';

  static String get customer => '$ride/customer';
  static String rideData(final String id) => '$ride/$id';
  static String invoice(final String id) => '$ride/invoice/$id';
  static String price(final String id) => '$ride/price/$id';
  static String get request => '$ride/request';
  static String editRequest(final String rideID) => '$ride/edit/$rideID';
  static String book(final String rideID) => '$ride/book/$rideID';
  static String schedule(final String rideID) => '$ride/schedule/$rideID';
  static String get requestDriver => '$ride/request/drivers';
  static String get prepare => '$ride/prepare';
  static String options(final String id) => '$ride/options/$id';
  static String get applyCoupons => '$ride/apply-coupon';
  static String addReview(final String rideId) =>
      '$ride/ratings/add-review/customer/$rideId';
  static String cancel(final String rideId) => '$ride/cancel/$rideId';
  static String bidding(final String rideId) => '$ride/adjust-price/$rideId';
  static String adjustPrice(final String rideId, final String price) =>
      '$ride/adjusted-price/$rideId?adjusted_price=$price';
  static String get coupons => '$rideBaseUrl/super-admin/coupons/all';
  static String get rideTypesForCustomer =>
      '$rideBaseUrl/super-admin/ride-types/for-customer';
  static String get savedRiders => '$rideBaseUrl/customer-riders/';
  static String get history => '$customer/history';
  static String getAllNotification(final int page, final int limit) =>
      '$notificationBaseUrl/notifications/fetch?page=$page&limit=$limit';

  // --- Payment Request Endpoints (Related to Rides) ---
  static String get ridePaymentReqBaseUrl => '$ride/payment-request';

  static String requestPayment(final String id) =>
      '$ridePaymentReqBaseUrl/create/$id';
  static String requestPaymentaccept(final String paymentRequestId) =>
      '$ridePaymentReqBaseUrl/accept/$paymentRequestId';
  static String requestPaymentData(final String paymentRequestId) =>
      '$ridePaymentReqBaseUrl/$paymentRequestId';
  static String requestPaymentCancel(final String paymentRequestId) =>
      '$ridePaymentReqBaseUrl/cancel/$paymentRequestId';
  static String requestPaymentReject(final String paymentRequestId) =>
      '$ridePaymentReqBaseUrl/reject/$paymentRequestId';
  static String requestPaymentConfirm(final String rideRequestId) =>
      '$ridePaymentReqBaseUrl/confirm/$rideRequestId';

  // --- Location Endpoints ---
  static String get savedLocation => '$authBase/customer-locations/';
  static String nearby(final double longitude, final double latitude) =>
      '$locationBaseUrl/nearby/area/drivers?longitude=$longitude&latitude=$latitude';

  // --- Chat Endpoints ---
  static String chat(final String id) =>
      '$chatBaseUrl/get-messages-customer/$id';

  // --- Organization Endpoints ---
  // Add organization-specific endpoints here as needed

  // --- Notification Endpoints ---
  // Add notification-specific endpoints here as needed

  // --- Deprecated Endpoints ---
  // Note: These seem to be relative paths or potentially full paths missing base URLs in the original.
  // Grouping them as "Other" or "Potentially Incomplete".

  static const String intracityDetails = 'ride/user/intracityDetails';
  static const String intracity = 'ride/user/intracity';
  static const String intracityBook = 'ride/user/intracity/book';
  static const String reservation = 'ride/user/reservation';
  static const String package = 'ride/user/package';
  static const String connectDriver = 'ride/user/jumpstart/connectDriver';
  static const String jumpStartBook = 'ride/user/jumpstart/requestService';

  // --- Utility Methods ---
  static String get currentEnvironment => _environment;

  static void logCurrentConfiguration() {
    log('Current Environment: $_environment');
    log('Auth Service: $authBase');
    log('Payment Service: $_paymentServiceBase');
    log('Ride Service: $rideBaseUrl');
    log('Chat Service: $_chatServiceBase');
    log('Location Service: $locationBaseUrl');
    log('Organization Service: $organizationBaseUrl');
    log('Notification Service: $notificationBaseUrl');
  }
}
