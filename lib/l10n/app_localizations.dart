import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt')
  ];

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @homeQuote.
  ///
  /// In en, this message translates to:
  /// **'Let’s go somewhere new today'**
  String get homeQuote;

  /// No description provided for @suggestions.
  ///
  /// In en, this message translates to:
  /// **'Suggestions'**
  String get suggestions;

  /// No description provided for @previous_ride.
  ///
  /// In en, this message translates to:
  /// **'Previous rides'**
  String get previous_ride;

  /// No description provided for @trending_locations.
  ///
  /// In en, this message translates to:
  /// **'Explore nearby places'**
  String get trending_locations;

  /// No description provided for @what_on_your_mind.
  ///
  /// In en, this message translates to:
  /// **'What\'s on your mind?'**
  String get what_on_your_mind;

  /// No description provided for @explore_more_on.
  ///
  /// In en, this message translates to:
  /// **'Explore more on'**
  String get explore_more_on;

  /// No description provided for @offer_discount.
  ///
  /// In en, this message translates to:
  /// **'Offer & Discount'**
  String get offer_discount;

  /// No description provided for @date_time.
  ///
  /// In en, this message translates to:
  /// **'Date & Time'**
  String get date_time;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @dont_have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? '**
  String get dont_have_an_account;

  /// No description provided for @fare_details.
  ///
  /// In en, this message translates to:
  /// **'Fare details'**
  String get fare_details;

  /// No description provided for @set_location_on_map.
  ///
  /// In en, this message translates to:
  /// **'Set location on map'**
  String get set_location_on_map;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @enter_password.
  ///
  /// In en, this message translates to:
  /// **'Enter Password'**
  String get enter_password;

  /// No description provided for @book_ride.
  ///
  /// In en, this message translates to:
  /// **'Book ride'**
  String get book_ride;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @enter_location_name.
  ///
  /// In en, this message translates to:
  /// **'Enter location name'**
  String get enter_location_name;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @save_card.
  ///
  /// In en, this message translates to:
  /// **'Save card'**
  String get save_card;

  /// No description provided for @call_customer_support.
  ///
  /// In en, this message translates to:
  /// **'Call customer support'**
  String get call_customer_support;

  /// No description provided for @send_us_an_email.
  ///
  /// In en, this message translates to:
  /// **'Send us an email'**
  String get send_us_an_email;

  /// No description provided for @enter_coupon_code.
  ///
  /// In en, this message translates to:
  /// **'Enter Coupon Code'**
  String get enter_coupon_code;

  /// No description provided for @enter_user_paymentid.
  ///
  /// In en, this message translates to:
  /// **'Enter @user/paymentID'**
  String get enter_user_paymentid;

  /// No description provided for @request_payment.
  ///
  /// In en, this message translates to:
  /// **'Request payment'**
  String get request_payment;

  /// No description provided for @contact_chat_support.
  ///
  /// In en, this message translates to:
  /// **'Contact chat support'**
  String get contact_chat_support;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @call_driver.
  ///
  /// In en, this message translates to:
  /// **'Call driver'**
  String get call_driver;

  /// No description provided for @accept_veiw.
  ///
  /// In en, this message translates to:
  /// **'Accept & veiw'**
  String get accept_veiw;

  /// No description provided for @getting_location.
  ///
  /// In en, this message translates to:
  /// **'Getting Location...'**
  String get getting_location;

  /// No description provided for @error_getting_location.
  ///
  /// In en, this message translates to:
  /// **'Error getting location'**
  String get error_getting_location;

  /// No description provided for @google_pay_payment_succesfully_completed.
  ///
  /// In en, this message translates to:
  /// **'Google Pay payment succesfully completed'**
  String get google_pay_payment_succesfully_completed;

  /// No description provided for @error_e.
  ///
  /// In en, this message translates to:
  /// **'Error: \$e'**
  String get error_e;

  /// No description provided for @google_pay_is_not_supported_on_this_device.
  ///
  /// In en, this message translates to:
  /// **'Google pay is not supported on this device'**
  String get google_pay_is_not_supported_on_this_device;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @legal.
  ///
  /// In en, this message translates to:
  /// **'Legal'**
  String get legal;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @okay.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get okay;

  /// No description provided for @receipt.
  ///
  /// In en, this message translates to:
  /// **'Receipt'**
  String get receipt;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @scan_me.
  ///
  /// In en, this message translates to:
  /// **'Scan me'**
  String get scan_me;

  /// No description provided for @craig_geidt.
  ///
  /// In en, this message translates to:
  /// **'Craig Geidt'**
  String get craig_geidt;

  /// No description provided for @august_21_2024.
  ///
  /// In en, this message translates to:
  /// **'August 21, 2024'**
  String get august_21_2024;

  /// No description provided for @excellent.
  ///
  /// In en, this message translates to:
  /// **'(Excellent)'**
  String get excellent;

  /// No description provided for @view_details.
  ///
  /// In en, this message translates to:
  /// **'View details'**
  String get view_details;

  /// No description provided for @total_rating.
  ///
  /// In en, this message translates to:
  /// **'Total rating'**
  String get total_rating;

  /// No description provided for @good.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get good;

  /// No description provided for @average.
  ///
  /// In en, this message translates to:
  /// **'Average'**
  String get average;

  /// No description provided for @bad.
  ///
  /// In en, this message translates to:
  /// **'Bad'**
  String get bad;

  /// No description provided for @worst.
  ///
  /// In en, this message translates to:
  /// **'Worst'**
  String get worst;

  /// No description provided for @risk_free_cancellation.
  ///
  /// In en, this message translates to:
  /// **'Risk free cancellation'**
  String get risk_free_cancellation;

  /// No description provided for @youre_on_a_trip.
  ///
  /// In en, this message translates to:
  /// **'You’re on a trip'**
  String get youre_on_a_trip;

  /// No description provided for @please_select_any_cancellation_plan_as_per_your_preferred_choice.
  ///
  /// In en, this message translates to:
  /// **'Please select any cancellation plan as per your preferred choice.'**
  String get please_select_any_cancellation_plan_as_per_your_preferred_choice;

  /// No description provided for @cancellation_protection.
  ///
  /// In en, this message translates to:
  /// **'Cancellation protection'**
  String get cancellation_protection;

  /// No description provided for @youll_receive_80_of_the_total_refund_in_case_of_any_medical_emergency.
  ///
  /// In en, this message translates to:
  /// **'You’ll receive 80% of the total refund in case of any medical emergency.'**
  String
      get youll_receive_80_of_the_total_refund_in_case_of_any_medical_emergency;

  /// No description provided for @premium_protection.
  ///
  /// In en, this message translates to:
  /// **'Premium protection'**
  String get premium_protection;

  /// No description provided for @i_will_take_risk_and_does_not_wish_for_refund.
  ///
  /// In en, this message translates to:
  /// **'I will take risk and does not wish for refund'**
  String get i_will_take_risk_and_does_not_wish_for_refund;

  /// No description provided for @offers__promotions.
  ///
  /// In en, this message translates to:
  /// **'Offers & Promotions'**
  String get offers__promotions;

  /// No description provided for @check_for_discount.
  ///
  /// In en, this message translates to:
  /// **'Check for discount'**
  String get check_for_discount;

  /// No description provided for @your_driver.
  ///
  /// In en, this message translates to:
  /// **'Your driver'**
  String get your_driver;

  /// No description provided for @vehicle_details.
  ///
  /// In en, this message translates to:
  /// **'Vehicle details'**
  String get vehicle_details;

  /// No description provided for @travellers_details.
  ///
  /// In en, this message translates to:
  /// **'Travellers details'**
  String get travellers_details;

  /// No description provided for @travellers_will_receive_the_booking_information_by_adding_the_contact_information.
  ///
  /// In en, this message translates to:
  /// **'Travellers will receive the booking information by adding the contact information.'**
  String
      get travellers_will_receive_the_booking_information_by_adding_the_contact_information;

  /// No description provided for @add_new_traveller.
  ///
  /// In en, this message translates to:
  /// **'+Add new traveller'**
  String get add_new_traveller;

  /// No description provided for @intercity.
  ///
  /// In en, this message translates to:
  /// **'Intercity'**
  String get intercity;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @start_your_intercity_journey_with_the_ease__comfort.
  ///
  /// In en, this message translates to:
  /// **'Start your intercity journey with the ease & comfort'**
  String get start_your_intercity_journey_with_the_ease__comfort;

  /// No description provided for @select_your_trip.
  ///
  /// In en, this message translates to:
  /// **'Select your trip'**
  String get select_your_trip;

  /// No description provided for @total_passengers.
  ///
  /// In en, this message translates to:
  /// **'Total passengers'**
  String get total_passengers;

  /// No description provided for @find_trip.
  ///
  /// In en, this message translates to:
  /// **'Find trip     '**
  String get find_trip;

  /// No description provided for @welcome_to.
  ///
  /// In en, this message translates to:
  /// **'Welcome to '**
  String get welcome_to;

  /// No description provided for @privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacy;

  /// No description provided for @report_issue.
  ///
  /// In en, this message translates to:
  /// **'Report issue'**
  String get report_issue;

  /// No description provided for @saved_location.
  ///
  /// In en, this message translates to:
  /// **'Saved location'**
  String get saved_location;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @please_allow_location_to_continue_your_service.
  ///
  /// In en, this message translates to:
  /// **'Please Allow Location to continue your service'**
  String get please_allow_location_to_continue_your_service;

  /// No description provided for @where_do_you_want_to_go.
  ///
  /// In en, this message translates to:
  /// **'Where do you want to go?'**
  String get where_do_you_want_to_go;

  /// No description provided for @budget_friendlyn_rides.
  ///
  /// In en, this message translates to:
  /// **'Budget friendly rides'**
  String get budget_friendlyn_rides;

  /// No description provided for @learn_more.
  ///
  /// In en, this message translates to:
  /// **'Learn more'**
  String get learn_more;

  /// No description provided for @lisbon.
  ///
  /// In en, this message translates to:
  /// **'Lisbon'**
  String get lisbon;

  /// No description provided for @sort_by.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get sort_by;

  /// No description provided for @ford_mustang_gt_440.
  ///
  /// In en, this message translates to:
  /// **'FORD Mustang GT 440'**
  String get ford_mustang_gt_440;

  /// No description provided for @suv.
  ///
  /// In en, this message translates to:
  /// **'SUV'**
  String get suv;

  /// No description provided for @download_invoice.
  ///
  /// In en, this message translates to:
  /// **'Download invoice'**
  String get download_invoice;

  /// No description provided for @economy.
  ///
  /// In en, this message translates to:
  /// **'Economy'**
  String get economy;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @invoice.
  ///
  /// In en, this message translates to:
  /// **'Invoice'**
  String get invoice;

  /// No description provided for @gretchen_geidt.
  ///
  /// In en, this message translates to:
  /// **'Gretchen Geidt'**
  String get gretchen_geidt;

  /// No description provided for @benz_cclass.
  ///
  /// In en, this message translates to:
  /// **'Benz C-Class'**
  String get benz_cclass;

  /// No description provided for @jh_01am_2218.
  ///
  /// In en, this message translates to:
  /// **'JH 01AM 2218'**
  String get jh_01am_2218;

  /// No description provided for @start_time.
  ///
  /// In en, this message translates to:
  /// **'Start time'**
  String get start_time;

  /// No description provided for @end_time.
  ///
  /// In en, this message translates to:
  /// **'End time'**
  String get end_time;

  /// No description provided for @fair.
  ///
  /// In en, this message translates to:
  /// **'Fair'**
  String get fair;

  /// No description provided for @base_fair.
  ///
  /// In en, this message translates to:
  /// **'Base fair'**
  String get base_fair;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @subtotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subtotal;

  /// No description provided for @promotion.
  ///
  /// In en, this message translates to:
  /// **'Promotion'**
  String get promotion;

  /// No description provided for @amount_paid.
  ///
  /// In en, this message translates to:
  /// **'Amount paid'**
  String get amount_paid;

  /// No description provided for @bold_pay.
  ///
  /// In en, this message translates to:
  /// **'Bold Pay'**
  String get bold_pay;

  /// No description provided for @review_request.
  ///
  /// In en, this message translates to:
  /// **'Review request'**
  String get review_request;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @reservation_time.
  ///
  /// In en, this message translates to:
  /// **'Reservation time'**
  String get reservation_time;

  /// No description provided for @service_type.
  ///
  /// In en, this message translates to:
  /// **'Service type'**
  String get service_type;

  /// No description provided for @total_charge.
  ///
  /// In en, this message translates to:
  /// **'Total charge'**
  String get total_charge;

  /// No description provided for @rentals.
  ///
  /// In en, this message translates to:
  /// **'Rentals'**
  String get rentals;

  /// No description provided for @view_breakdown.
  ///
  /// In en, this message translates to:
  /// **'View breakdown'**
  String get view_breakdown;

  /// No description provided for @hello_lets_start_your_rental_journey.
  ///
  /// In en, this message translates to:
  /// **'Hello, let’s start your rental journey'**
  String get hello_lets_start_your_rental_journey;

  /// No description provided for @select_date.
  ///
  /// In en, this message translates to:
  /// **'Select date'**
  String get select_date;

  /// No description provided for @end_date.
  ///
  /// In en, this message translates to:
  /// **'End date'**
  String get end_date;

  /// No description provided for @pickup_deliver_on_the_selective_locations.
  ///
  /// In en, this message translates to:
  /// **'Pick-up & Deliver on the selective locations'**
  String get pickup_deliver_on_the_selective_locations;

  /// No description provided for @search_car.
  ///
  /// In en, this message translates to:
  /// **'Search CAR      '**
  String get search_car;

  /// No description provided for @rental.
  ///
  /// In en, this message translates to:
  /// **' rental'**
  String get rental;

  /// No description provided for @total_charges.
  ///
  /// In en, this message translates to:
  /// **'Total charges'**
  String get total_charges;

  /// No description provided for @due_now.
  ///
  /// In en, this message translates to:
  /// **'Due now'**
  String get due_now;

  /// No description provided for @zain_calzoni__1_traveller.
  ///
  /// In en, this message translates to:
  /// **'Zain Calzoni + 1 Traveller'**
  String get zain_calzoni__1_traveller;

  /// No description provided for @features.
  ///
  /// In en, this message translates to:
  /// **'Features'**
  String get features;

  /// No description provided for @more_mileage.
  ///
  /// In en, this message translates to:
  /// **'More mileage'**
  String get more_mileage;

  /// No description provided for @spacious.
  ///
  /// In en, this message translates to:
  /// **'Spacious'**
  String get spacious;

  /// No description provided for @pickup__drop.
  ///
  /// In en, this message translates to:
  /// **'Pickup & Drop'**
  String get pickup__drop;

  /// No description provided for @pickup.
  ///
  /// In en, this message translates to:
  /// **'Pickup'**
  String get pickup;

  /// No description provided for @drop.
  ///
  /// In en, this message translates to:
  /// **'Drop'**
  String get drop;

  /// No description provided for @otp_verification.
  ///
  /// In en, this message translates to:
  /// **'Code Verification'**
  String get otp_verification;

  /// No description provided for @resend_otp.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP'**
  String get resend_otp;

  /// No description provided for @resending_otp_in.
  ///
  /// In en, this message translates to:
  /// **'Resending OTP in: '**
  String get resending_otp_in;

  /// No description provided for @seconds.
  ///
  /// In en, this message translates to:
  /// **' seconds'**
  String get seconds;

  /// No description provided for @forgot_your_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot Your Password?'**
  String get forgot_your_password;

  /// No description provided for @enter_your_registered_phone_number__verify.
  ///
  /// In en, this message translates to:
  /// **'Enter your registered phone number & verify'**
  String get enter_your_registered_phone_number__verify;

  /// No description provided for @login_to_continue.
  ///
  /// In en, this message translates to:
  /// **'Login to continue'**
  String get login_to_continue;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signup;

  /// No description provided for @suggested_username.
  ///
  /// In en, this message translates to:
  /// **'Suggested username'**
  String get suggested_username;

  /// No description provided for @hello_register_to_get_started.
  ///
  /// In en, this message translates to:
  /// **'Let’s get you started!'**
  String get hello_register_to_get_started;

  /// No description provided for @or_signup_with.
  ///
  /// In en, this message translates to:
  /// **'or signup with'**
  String get or_signup_with;

  /// No description provided for @google.
  ///
  /// In en, this message translates to:
  /// **'Google'**
  String get google;

  /// No description provided for @apple.
  ///
  /// In en, this message translates to:
  /// **'Apple'**
  String get apple;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @first_name.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get first_name;

  /// No description provided for @already_have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? '**
  String get already_have_an_account;

  /// No description provided for @login_here.
  ///
  /// In en, this message translates to:
  /// **'Login here'**
  String get login_here;

  /// No description provided for @hello_welcome_back.
  ///
  /// In en, this message translates to:
  /// **'Hello! Welcome back'**
  String get hello_welcome_back;

  /// No description provided for @sign_in_to_continue.
  ///
  /// In en, this message translates to:
  /// **'Login to continue'**
  String get sign_in_to_continue;

  /// No description provided for @signup_here.
  ///
  /// In en, this message translates to:
  /// **'Signup here'**
  String get signup_here;

  /// No description provided for @reset_password.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get reset_password;

  /// No description provided for @sign_up_to_continue.
  ///
  /// In en, this message translates to:
  /// **'Sign up to continue'**
  String get sign_up_to_continue;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'€ \$price'**
  String get price;

  /// No description provided for @select_a_ride.
  ///
  /// In en, this message translates to:
  /// **'Select a ride'**
  String get select_a_ride;

  /// No description provided for @pet_friendly.
  ///
  /// In en, this message translates to:
  /// **'Pet friendly'**
  String get pet_friendly;

  /// No description provided for @assist.
  ///
  /// In en, this message translates to:
  /// **'Assist'**
  String get assist;

  /// No description provided for @promotion_applied.
  ///
  /// In en, this message translates to:
  /// **' promotion applied'**
  String get promotion_applied;

  /// No description provided for @book_now_to_reserve_your_seat.
  ///
  /// In en, this message translates to:
  /// **'Book now to reserve your seat'**
  String get book_now_to_reserve_your_seat;

  /// No description provided for @your_rated_rate_stars_to_this_ride.
  ///
  /// In en, this message translates to:
  /// **'Your rated \$rate stars to this ride'**
  String get your_rated_rate_stars_to_this_ride;

  /// No description provided for @add_tip_to.
  ///
  /// In en, this message translates to:
  /// **'Add tip to '**
  String get add_tip_to;

  /// No description provided for @min.
  ///
  /// In en, this message translates to:
  /// **'Min'**
  String get min;

  /// No description provided for @confirm_pay.
  ///
  /// In en, this message translates to:
  /// **'Confirm & Pay'**
  String get confirm_pay;

  /// No description provided for @confirm_your_price.
  ///
  /// In en, this message translates to:
  /// **'Confirm your price'**
  String get confirm_your_price;

  /// No description provided for @error_error.
  ///
  /// In en, this message translates to:
  /// **'Error: \$error'**
  String get error_error;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get processing;

  /// No description provided for @payment_request.
  ///
  /// In en, this message translates to:
  /// **'Payment Request'**
  String get payment_request;

  /// No description provided for @dear_user.
  ///
  /// In en, this message translates to:
  /// **'Dear user, '**
  String get dear_user;

  /// No description provided for @have_requested_you_for.
  ///
  /// In en, this message translates to:
  /// **' have requested you for '**
  String get have_requested_you_for;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @tc_apply.
  ///
  /// In en, this message translates to:
  /// **'T&C Apply'**
  String get tc_apply;

  /// No description provided for @request_from.
  ///
  /// In en, this message translates to:
  /// **'Request from'**
  String get request_from;

  /// No description provided for @finding_best_route.
  ///
  /// In en, this message translates to:
  /// **'Finding Best Route'**
  String get finding_best_route;

  /// No description provided for @confirm_locations.
  ///
  /// In en, this message translates to:
  /// **'Confirm locations'**
  String get confirm_locations;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @oops.
  ///
  /// In en, this message translates to:
  /// **'Oops!'**
  String get oops;

  /// No description provided for @ride_cancelled.
  ///
  /// In en, this message translates to:
  /// **'Ride Cancelled'**
  String get ride_cancelled;

  /// No description provided for @your_ride_has_been_cancelled.
  ///
  /// In en, this message translates to:
  /// **'Your ride has been cancelled'**
  String get your_ride_has_been_cancelled;

  /// No description provided for @redirecting_in.
  ///
  /// In en, this message translates to:
  /// **'Redirecting in '**
  String get redirecting_in;

  /// No description provided for @searching_nearby_rides.
  ///
  /// In en, this message translates to:
  /// **'Searching nearby rides...'**
  String get searching_nearby_rides;

  /// No description provided for @arriving_in.
  ///
  /// In en, this message translates to:
  /// **'Arriving in'**
  String get arriving_in;

  /// No description provided for @cancel_your_ride.
  ///
  /// In en, this message translates to:
  /// **'Do you want to cancel your ride?'**
  String get cancel_your_ride;

  /// No description provided for @your_driver_is_on_his_way_to_pick_you_up.
  ///
  /// In en, this message translates to:
  /// **'Your driver is on his way to pick you up.'**
  String get your_driver_is_on_his_way_to_pick_you_up;

  /// No description provided for @go_back.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get go_back;

  /// No description provided for @cancel_ride.
  ///
  /// In en, this message translates to:
  /// **'Cancel ride'**
  String get cancel_ride;

  /// No description provided for @contact_your_driver.
  ///
  /// In en, this message translates to:
  /// **'Contact your driver'**
  String get contact_your_driver;

  /// No description provided for @recommended.
  ///
  /// In en, this message translates to:
  /// **'Recommended'**
  String get recommended;

  /// No description provided for @safety_tips.
  ///
  /// In en, this message translates to:
  /// **'Safety tips?'**
  String get safety_tips;

  /// No description provided for @ask_anything.
  ///
  /// In en, this message translates to:
  /// **'Ask anything...'**
  String get ask_anything;

  /// No description provided for @tip.
  ///
  /// In en, this message translates to:
  /// **'\\\$\$tip'**
  String get tip;

  /// No description provided for @select_a_reason_to_cancel.
  ///
  /// In en, this message translates to:
  /// **'Select a reason to cancel'**
  String get select_a_reason_to_cancel;

  /// No description provided for @angel_dias.
  ///
  /// In en, this message translates to:
  /// **'Angel Dias'**
  String get angel_dias;

  /// No description provided for @no_ride_available_at_the_moment.
  ///
  /// In en, this message translates to:
  /// **'No ride available right now.'**
  String get no_ride_available_at_the_moment;

  /// No description provided for @increase_ride_fare.
  ///
  /// In en, this message translates to:
  /// **'Boost your fare'**
  String get increase_ride_fare;

  /// No description provided for @bidding_des.
  ///
  /// In en, this message translates to:
  /// **'Note: Boosting your fare can help get a ride faster.You’ll only pay the difference on top of your original fare.'**
  String get bidding_des;

  /// No description provided for @recent_travel.
  ///
  /// In en, this message translates to:
  /// **'Recent travel'**
  String get recent_travel;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @am.
  ///
  /// In en, this message translates to:
  /// **'AM'**
  String get am;

  /// No description provided for @pm.
  ///
  /// In en, this message translates to:
  /// **'PM'**
  String get pm;

  /// No description provided for @reschedule.
  ///
  /// In en, this message translates to:
  /// **'Reschedule'**
  String get reschedule;

  /// No description provided for @you_can_change_the_datetime_of_your_ride_or_book_it_now.
  ///
  /// In en, this message translates to:
  /// **'You can change the Date&Time of your ride or book it now'**
  String get you_can_change_the_datetime_of_your_ride_or_book_it_now;

  /// No description provided for @change_datetime.
  ///
  /// In en, this message translates to:
  /// **'Change Date&Time'**
  String get change_datetime;

  /// No description provided for @book_for_now.
  ///
  /// In en, this message translates to:
  /// **'Book for Now'**
  String get book_for_now;

  /// No description provided for @destructive_action.
  ///
  /// In en, this message translates to:
  /// **'Destructive Action'**
  String get destructive_action;

  /// No description provided for @add_stop.
  ///
  /// In en, this message translates to:
  /// **'Add Stop'**
  String get add_stop;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @booking_details.
  ///
  /// In en, this message translates to:
  /// **'Booking details'**
  String get booking_details;

  /// No description provided for @need_help.
  ///
  /// In en, this message translates to:
  /// **'Need help ?'**
  String get need_help;

  /// No description provided for @date__time.
  ///
  /// In en, this message translates to:
  /// **'Date & Time'**
  String get date__time;

  /// No description provided for @recent_trip.
  ///
  /// In en, this message translates to:
  /// **'Recent Trip'**
  String get recent_trip;

  /// No description provided for @get_help.
  ///
  /// In en, this message translates to:
  /// **'Get Help'**
  String get get_help;

  /// No description provided for @rebook.
  ///
  /// In en, this message translates to:
  /// **'Rebook'**
  String get rebook;

  /// No description provided for @whats.
  ///
  /// In en, this message translates to:
  /// **'What\'s'**
  String get whats;

  /// No description provided for @trending.
  ///
  /// In en, this message translates to:
  /// **'trending'**
  String get trending;

  /// No description provided for @around_you.
  ///
  /// In en, this message translates to:
  /// **'around you'**
  String get around_you;

  /// No description provided for @i_dropped_you_to_peter_mall.
  ///
  /// In en, this message translates to:
  /// **'I dropped you to peter mall'**
  String get i_dropped_you_to_peter_mall;

  /// No description provided for @newest.
  ///
  /// In en, this message translates to:
  /// **'Newest'**
  String get newest;

  /// No description provided for @archived.
  ///
  /// In en, this message translates to:
  /// **'Archived'**
  String get archived;

  /// No description provided for @microphone_permission_required.
  ///
  /// In en, this message translates to:
  /// **'Microphone Permission Required'**
  String get microphone_permission_required;

  /// No description provided for @this_app_needs_microphone_access_to_make_voice_calls_please_enable_microphone_permissions_in_your_device_settings.
  ///
  /// In en, this message translates to:
  /// **'This app needs microphone access to make voice calls. Please enable microphone permissions in your device settings.'**
  String
      get this_app_needs_microphone_access_to_make_voice_calls_please_enable_microphone_permissions_in_your_device_settings;

  /// No description provided for @open_settings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get open_settings;

  /// No description provided for @call_error.
  ///
  /// In en, this message translates to:
  /// **'Call Error'**
  String get call_error;

  /// No description provided for @failed_to_initialize_call_error.
  ///
  /// In en, this message translates to:
  /// **'Failed to initialize call: \$error'**
  String get failed_to_initialize_call_error;

  /// No description provided for @voice_call.
  ///
  /// In en, this message translates to:
  /// **'Voice Call'**
  String get voice_call;

  /// No description provided for @in_case_or_urgency_you_can_now_reach_out_to_our_support_team_for_help_or_your_driver_is_here_to_proceed_with_this_conversation.
  ///
  /// In en, this message translates to:
  /// **'In case or urgency you can now reach out to our support team for help. Or, your driver is here to proceed with this conversation.'**
  String
      get in_case_or_urgency_you_can_now_reach_out_to_our_support_team_for_help_or_your_driver_is_here_to_proceed_with_this_conversation;

  /// No description provided for @start_your_conversation.
  ///
  /// In en, this message translates to:
  /// **'Start your conversation with {name}'**
  String start_your_conversation(String name);

  /// No description provided for @please_note_that_your_conversation_is_accessible_to_the_bold_app_team.
  ///
  /// In en, this message translates to:
  /// **'Please note that your conversation is accessible to the BOLD app team.'**
  String
      get please_note_that_your_conversation_is_accessible_to_the_bold_app_team;

  /// No description provided for @trending_location.
  ///
  /// In en, this message translates to:
  /// **'Explore nearby places'**
  String get trending_location;

  /// No description provided for @places_to_visit.
  ///
  /// In en, this message translates to:
  /// **'Places to visit'**
  String get places_to_visit;

  /// No description provided for @mins_away.
  ///
  /// In en, this message translates to:
  /// **'mins away'**
  String get mins_away;

  /// No description provided for @view_more.
  ///
  /// In en, this message translates to:
  /// **'View more'**
  String get view_more;

  /// No description provided for @you_can_take_this_username.
  ///
  /// In en, this message translates to:
  /// **'you can take this username'**
  String get you_can_take_this_username;

  /// No description provided for @places_to_visit_nearby.
  ///
  /// In en, this message translates to:
  /// **'Places to visit nearby'**
  String get places_to_visit_nearby;

  /// No description provided for @best_time_to_visit_0930_am.
  ///
  /// In en, this message translates to:
  /// **'Best time to visit 09:30 am'**
  String get best_time_to_visit_0930_am;

  /// No description provided for @opens_at.
  ///
  /// In en, this message translates to:
  /// **'Opens at '**
  String get opens_at;

  /// No description provided for @popular.
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get popular;

  /// No description provided for @show99.
  ///
  /// In en, this message translates to:
  /// **'Show99'**
  String get show99;

  /// No description provided for @create_password.
  ///
  /// In en, this message translates to:
  /// **'Create Password'**
  String get create_password;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @send_otp.
  ///
  /// In en, this message translates to:
  /// **'Send code'**
  String get send_otp;

  /// No description provided for @login_with_email.
  ///
  /// In en, this message translates to:
  /// **'Login with Email'**
  String get login_with_email;

  /// No description provided for @enter_email_address.
  ///
  /// In en, this message translates to:
  /// **'Enter email address'**
  String get enter_email_address;

  /// No description provided for @whats_happening_nearby.
  ///
  /// In en, this message translates to:
  /// **'Whats happening nearby'**
  String get whats_happening_nearby;

  /// No description provided for @explore_more.
  ///
  /// In en, this message translates to:
  /// **'Explore more'**
  String get explore_more;

  /// No description provided for @confirm_your_address.
  ///
  /// In en, this message translates to:
  /// **'Confirm your address'**
  String get confirm_your_address;

  /// No description provided for @add_address.
  ///
  /// In en, this message translates to:
  /// **'Add address'**
  String get add_address;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @last_name.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get last_name;

  /// No description provided for @take_a_screenshot.
  ///
  /// In en, this message translates to:
  /// **'Take a screenshot'**
  String get take_a_screenshot;

  /// No description provided for @take_a_screen_recording.
  ///
  /// In en, this message translates to:
  /// **'Take a screen recording'**
  String get take_a_screen_recording;

  /// No description provided for @select_from_gallery.
  ///
  /// In en, this message translates to:
  /// **'Select from gallery'**
  String get select_from_gallery;

  /// No description provided for @switch_rider.
  ///
  /// In en, this message translates to:
  /// **'    Switch rider'**
  String get switch_rider;

  /// No description provided for @add_a_rider.
  ///
  /// In en, this message translates to:
  /// **'Add a rider'**
  String get add_a_rider;

  /// No description provided for @add_rider_details.
  ///
  /// In en, this message translates to:
  /// **'Add rider details'**
  String get add_rider_details;

  /// No description provided for @rider_full_name.
  ///
  /// In en, this message translates to:
  /// **'Rider full name'**
  String get rider_full_name;

  /// No description provided for @rider_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Rider phone number'**
  String get rider_phone_number;

  /// No description provided for @we_wont_share_this_phone_number_with_the_driver.
  ///
  /// In en, this message translates to:
  /// **'We won’t share this phone number with the driver'**
  String get we_wont_share_this_phone_number_with_the_driver;

  /// No description provided for @agree_to_share_trip_details.
  ///
  /// In en, this message translates to:
  /// **'By adding the rider you agree that we have this person’s information to send them the trip details in the Uprides app through text or email.'**
  String get agree_to_share_trip_details;

  /// No description provided for @your_name.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get your_name;

  /// No description provided for @your_email_address.
  ///
  /// In en, this message translates to:
  /// **'Your email address'**
  String get your_email_address;

  /// No description provided for @your_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Your phone number'**
  String get your_phone_number;

  /// No description provided for @delete_account.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get delete_account;

  /// No description provided for @last_update_on__july_22_2024.
  ///
  /// In en, this message translates to:
  /// **'Last update on  July 22, 2024'**
  String get last_update_on__july_22_2024;

  /// No description provided for @got_it.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get got_it;

  /// No description provided for @view_your_earned_rewards.
  ///
  /// In en, this message translates to:
  /// **'View your earned rewards'**
  String get view_your_earned_rewards;

  /// No description provided for @reedem_our_reward_points_to_enjoy_great_discounts_and_offers.
  ///
  /// In en, this message translates to:
  /// **'Reedem your reward points to enjoy great discounts and offers.'**
  String get reedem_our_reward_points_to_enjoy_great_discounts_and_offers;

  /// No description provided for @add_money_to_bold_wallet.
  ///
  /// In en, this message translates to:
  /// **'Add money to wallet'**
  String get add_money_to_bold_wallet;

  /// No description provided for @promos.
  ///
  /// In en, this message translates to:
  /// **'Promos'**
  String get promos;

  /// No description provided for @hrs.
  ///
  /// In en, this message translates to:
  /// **'hrs'**
  String get hrs;

  /// No description provided for @hr.
  ///
  /// In en, this message translates to:
  /// **'hr'**
  String get hr;

  /// No description provided for @complete_your_payment_faster_with_wallet.
  ///
  /// In en, this message translates to:
  /// **'Complete your payment faster with wallet.'**
  String get complete_your_payment_faster_with_wallet;

  /// No description provided for @safety.
  ///
  /// In en, this message translates to:
  /// **'Safety'**
  String get safety;

  /// No description provided for @rentals_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Self drive car of your choice'**
  String get rentals_subtitle;

  /// No description provided for @packages_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Send your package faster with BOLD'**
  String get packages_subtitle;

  /// No description provided for @jump_start_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Want a quick spark to re-start?'**
  String get jump_start_subtitle;

  /// No description provided for @intercity_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Travel intercity with ease'**
  String get intercity_subtitle;

  /// No description provided for @sos_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Have someone blocked your vehicle?'**
  String get sos_subtitle;

  /// No description provided for @offers.
  ///
  /// In en, this message translates to:
  /// **'Offers'**
  String get offers;

  /// No description provided for @referral.
  ///
  /// In en, this message translates to:
  /// **'Referral'**
  String get referral;

  /// No description provided for @vouchers.
  ///
  /// In en, this message translates to:
  /// **'Vouchers'**
  String get vouchers;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @account_services.
  ///
  /// In en, this message translates to:
  /// **'Account services'**
  String get account_services;

  /// No description provided for @valid_on_all_rides.
  ///
  /// In en, this message translates to:
  /// **'•  Valid on all rides'**
  String get valid_on_all_rides;

  /// No description provided for @expiring_on_12_august_2024.
  ///
  /// In en, this message translates to:
  /// **'Expiring on: 12 August, 2024'**
  String get expiring_on_12_august_2024;

  /// No description provided for @apply_now_on_booking.
  ///
  /// In en, this message translates to:
  /// **'Apply now on booking'**
  String get apply_now_on_booking;

  /// No description provided for @hello_how_can_we_help_you.
  ///
  /// In en, this message translates to:
  /// **'Hello, how can we help you?'**
  String get hello_how_can_we_help_you;

  /// No description provided for @trusted_contacts.
  ///
  /// In en, this message translates to:
  /// **'Trusted contacts'**
  String get trusted_contacts;

  /// No description provided for @share_your_live_location.
  ///
  /// In en, this message translates to:
  /// **'Share your live location'**
  String get share_your_live_location;

  /// No description provided for @add_your_trusted_contact.
  ///
  /// In en, this message translates to:
  /// **'Add your trusted contact'**
  String get add_your_trusted_contact;

  /// No description provided for @set_as_primary.
  ///
  /// In en, this message translates to:
  /// **'Set as primary'**
  String get set_as_primary;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @count.
  ///
  /// In en, this message translates to:
  /// **'(\$count)'**
  String get count;

  /// No description provided for @book_a_cab_and_let_your_known_one_pay_for_you.
  ///
  /// In en, this message translates to:
  /// **'Request a ride payment from a friend or family member.'**
  String get book_a_cab_and_let_your_known_one_pay_for_you;

  /// No description provided for @enter_the_payment_id.
  ///
  /// In en, this message translates to:
  /// **'Enter the Payment ID'**
  String get enter_the_payment_id;

  /// No description provided for @enter_the_payment_id_of_the_person_with_whom_you_want_to_request_the_money.
  ///
  /// In en, this message translates to:
  /// **'Enter the payment ID of the person with whom you want to request the money.'**
  String
      get enter_the_payment_id_of_the_person_with_whom_you_want_to_request_the_money;

  /// No description provided for @add_a_note.
  ///
  /// In en, this message translates to:
  /// **'Add a message'**
  String get add_a_note;

  /// No description provided for @your_request_will_expire_in.
  ///
  /// In en, this message translates to:
  /// **'Your request will expire in'**
  String get your_request_will_expire_in;

  /// No description provided for @minutes.
  ///
  /// In en, this message translates to:
  /// **'minutes'**
  String get minutes;

  /// No description provided for @by_sharing_the_link_you_accept_our.
  ///
  /// In en, this message translates to:
  /// **'. By sharing the link, you accept our '**
  String get by_sharing_the_link_you_accept_our;

  /// No description provided for @terms_and_conditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and conditions'**
  String get terms_and_conditions;

  /// No description provided for @total_wallet_balance.
  ///
  /// In en, this message translates to:
  /// **'Total wallet balance'**
  String get total_wallet_balance;

  /// No description provided for @id_4122_2131_770_872.
  ///
  /// In en, this message translates to:
  /// **'ID 4122 2131 770 872'**
  String get id_4122_2131_770_872;

  /// No description provided for @add_funds.
  ///
  /// In en, this message translates to:
  /// **'+ Add funds'**
  String get add_funds;

  /// No description provided for @payment_methods.
  ///
  /// In en, this message translates to:
  /// **'Payment methods'**
  String get payment_methods;

  /// No description provided for @invite_friends.
  ///
  /// In en, this message translates to:
  /// **'Invite friends'**
  String get invite_friends;

  /// No description provided for @invite_friends_des.
  ///
  /// In en, this message translates to:
  /// **'Invite your friends to use Uprides app.'**
  String get invite_friends_des;

  /// No description provided for @add_payment_methods.
  ///
  /// In en, this message translates to:
  /// **'Add payment methods'**
  String get add_payment_methods;

  /// No description provided for @available_vouchers.
  ///
  /// In en, this message translates to:
  /// **'Available vouchers'**
  String get available_vouchers;

  /// No description provided for @expires_on_12022023.
  ///
  /// In en, this message translates to:
  /// **'Expires on: 12/02/2023'**
  String get expires_on_12022023;

  /// No description provided for @added_to_wallet.
  ///
  /// In en, this message translates to:
  /// **'Added to wallet'**
  String get added_to_wallet;

  /// No description provided for @redeem_and_add_to_wallet.
  ///
  /// In en, this message translates to:
  /// **'Redeem and add to wallet'**
  String get redeem_and_add_to_wallet;

  /// No description provided for @payment_request_sent.
  ///
  /// In en, this message translates to:
  /// **'Payment request sent'**
  String get payment_request_sent;

  /// No description provided for @add_emergency_contact.
  ///
  /// In en, this message translates to:
  /// **'Add emergency contact'**
  String get add_emergency_contact;

  /// No description provided for @person_full_name.
  ///
  /// In en, this message translates to:
  /// **'Person full name'**
  String get person_full_name;

  /// No description provided for @person_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Person phone number'**
  String get person_phone_number;

  /// No description provided for @add_your_card_details.
  ///
  /// In en, this message translates to:
  /// **'Add your card details'**
  String get add_your_card_details;

  /// No description provided for @scan_card.
  ///
  /// In en, this message translates to:
  /// **'Scan Card'**
  String get scan_card;

  /// No description provided for @good_morning.
  ///
  /// In en, this message translates to:
  /// **'Good morning,'**
  String get good_morning;

  /// No description provided for @terry_lipshutz.
  ///
  /// In en, this message translates to:
  /// **'Terry Lipshutz'**
  String get terry_lipshutz;

  /// No description provided for @today_12_august_2024.
  ///
  /// In en, this message translates to:
  /// **'Today, 12 August, 2024'**
  String get today_12_august_2024;

  /// No description provided for @expires_on_12022025.
  ///
  /// In en, this message translates to:
  /// **'Expires on: 12/02/2025'**
  String get expires_on_12022025;

  /// No description provided for @redeem_now.
  ///
  /// In en, this message translates to:
  /// **'Redeem now'**
  String get redeem_now;

  /// No description provided for @your_reward_is_expiring_soon.
  ///
  /// In en, this message translates to:
  /// **'Your reward is expiring soon. '**
  String get your_reward_is_expiring_soon;

  /// No description provided for @to_enjoy_the_cash_points.
  ///
  /// In en, this message translates to:
  /// **' to enjoy the cash points'**
  String get to_enjoy_the_cash_points;

  /// No description provided for @select_an_option.
  ///
  /// In en, this message translates to:
  /// **'Select an option'**
  String get select_an_option;

  /// No description provided for @stuck_in_the_parking.
  ///
  /// In en, this message translates to:
  /// **'Stuck in the parking'**
  String get stuck_in_the_parking;

  /// No description provided for @report_nearby_vehicle.
  ///
  /// In en, this message translates to:
  /// **'(Report nearby vehicle)'**
  String get report_nearby_vehicle;

  /// No description provided for @got_scratch_in_your_vehicle.
  ///
  /// In en, this message translates to:
  /// **'Got scratch in your vehicle'**
  String get got_scratch_in_your_vehicle;

  /// No description provided for @vehicle_damaged_by_someone_nearby.
  ///
  /// In en, this message translates to:
  /// **'Vehicle damaged by someone nearby'**
  String get vehicle_damaged_by_someone_nearby;

  /// No description provided for @report_other_issue.
  ///
  /// In en, this message translates to:
  /// **'Report other issue'**
  String get report_other_issue;

  /// No description provided for @send_parking_sos.
  ///
  /// In en, this message translates to:
  /// **'Send parking SoS'**
  String get send_parking_sos;

  /// No description provided for @enter_the_blocking_vehicle_number.
  ///
  /// In en, this message translates to:
  /// **'Enter the blocking vehicle number'**
  String get enter_the_blocking_vehicle_number;

  /// No description provided for @stuck_anywhere_lets_begin_then.
  ///
  /// In en, this message translates to:
  /// **'Stuck anywhere? Let’s begin then'**
  String get stuck_anywhere_lets_begin_then;

  /// No description provided for @register_your_car.
  ///
  /// In en, this message translates to:
  /// **'Register your car'**
  String get register_your_car;

  /// No description provided for @parking.
  ///
  /// In en, this message translates to:
  /// **'Parking'**
  String get parking;

  /// No description provided for @sos.
  ///
  /// In en, this message translates to:
  /// **' SOS'**
  String get sos;

  /// No description provided for @hi_robert.
  ///
  /// In en, this message translates to:
  /// **'👋 Hi Robert, '**
  String get hi_robert;

  /// No description provided for @confirm_new_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm new password'**
  String get confirm_new_password;

  /// No description provided for @book_for_jumpstart.
  ///
  /// In en, this message translates to:
  /// **'Book for Jump-Start'**
  String get book_for_jumpstart;

  /// No description provided for @your_location.
  ///
  /// In en, this message translates to:
  /// **'Your location'**
  String get your_location;

  /// No description provided for @please_enter_you_location_to_jump_start_under_your_location_and_continue_to_call_for_your_emergency_jumpstart_service.
  ///
  /// In en, this message translates to:
  /// **'Please enter you location to jump start under ‘Your location’ and continue to call for your emergency jump-start service.'**
  String
      get please_enter_you_location_to_jump_start_under_your_location_and_continue_to_call_for_your_emergency_jumpstart_service;

  /// No description provided for @most_reliable_and_fast_service.
  ///
  /// In en, this message translates to:
  /// **'Most reliable and fast service'**
  String get most_reliable_and_fast_service;

  /// No description provided for @jump_start.
  ///
  /// In en, this message translates to:
  /// **'JUMP Start'**
  String get jump_start;

  /// No description provided for @enter_your_vehicle_number.
  ///
  /// In en, this message translates to:
  /// **'Enter your vehicle number'**
  String get enter_your_vehicle_number;

  /// No description provided for @enter_your_vehicle_name.
  ///
  /// In en, this message translates to:
  /// **'Enter your vehicle name'**
  String get enter_your_vehicle_name;

  /// No description provided for @add_receivers_details.
  ///
  /// In en, this message translates to:
  /// **'Add receivers details'**
  String get add_receivers_details;

  /// No description provided for @receiver.
  ///
  /// In en, this message translates to:
  /// **'Receiver'**
  String get receiver;

  /// No description provided for @receiver_full_name.
  ///
  /// In en, this message translates to:
  /// **'Receiver full name'**
  String get receiver_full_name;

  /// No description provided for @receiver_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Receiver phone number'**
  String get receiver_phone_number;

  /// No description provided for @now_its_more_easy_to_send_your_package.
  ///
  /// In en, this message translates to:
  /// **'Now its more easy to send your package.'**
  String get now_its_more_easy_to_send_your_package;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @receive.
  ///
  /// In en, this message translates to:
  /// **'Receive'**
  String get receive;

  /// No description provided for @packages.
  ///
  /// In en, this message translates to:
  /// **' Packages'**
  String get packages;

  /// No description provided for @how_many_package_are_you_sending.
  ///
  /// In en, this message translates to:
  /// **'How many package are you sending?'**
  String get how_many_package_are_you_sending;

  /// No description provided for @items_packages.
  ///
  /// In en, this message translates to:
  /// **'\$items Packages'**
  String get items_packages;

  /// No description provided for @by_clicking_this_you_agree_our.
  ///
  /// In en, this message translates to:
  /// **'By clicking this you agree our '**
  String get by_clicking_this_you_agree_our;

  /// No description provided for @package_type.
  ///
  /// In en, this message translates to:
  /// **'Package type'**
  String get package_type;

  /// No description provided for @document.
  ///
  /// In en, this message translates to:
  /// **'Document'**
  String get document;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @trip_details.
  ///
  /// In en, this message translates to:
  /// **'Trip details'**
  String get trip_details;

  /// No description provided for @kg.
  ///
  /// In en, this message translates to:
  /// **'kg'**
  String get kg;

  /// No description provided for @signup_with_apple.
  ///
  /// In en, this message translates to:
  /// **'Signup with Apple'**
  String get signup_with_apple;

  /// No description provided for @uploaded_image.
  ///
  /// In en, this message translates to:
  /// **'Uploaded Image'**
  String get uploaded_image;

  /// No description provided for @package.
  ///
  /// In en, this message translates to:
  /// **'Package'**
  String get package;

  /// No description provided for @add_package.
  ///
  /// In en, this message translates to:
  /// **'+ Add package'**
  String get add_package;

  /// No description provided for @trouble_signing_in.
  ///
  /// In en, this message translates to:
  /// **'Trouble logging in?'**
  String get trouble_signing_in;

  /// No description provided for @inch.
  ///
  /// In en, this message translates to:
  /// **'inch'**
  String get inch;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @add_package_photos.
  ///
  /// In en, this message translates to:
  /// **'Add package photos'**
  String get add_package_photos;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @job.
  ///
  /// In en, this message translates to:
  /// **'Job'**
  String get job;

  /// No description provided for @phone_no.
  ///
  /// In en, this message translates to:
  /// **'Phone no.'**
  String get phone_no;

  /// No description provided for @ontinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get ontinue;

  /// No description provided for @login_with_phone.
  ///
  /// In en, this message translates to:
  /// **'Login with Phone'**
  String get login_with_phone;

  /// No description provided for @login_with_apple.
  ///
  /// In en, this message translates to:
  /// **'Login with Apple'**
  String get login_with_apple;

  /// No description provided for @signup_with_email.
  ///
  /// In en, this message translates to:
  /// **'Signup with Email'**
  String get signup_with_email;

  /// No description provided for @enter_new_password.
  ///
  /// In en, this message translates to:
  /// **'Enter new password'**
  String get enter_new_password;

  /// No description provided for @code_verified.
  ///
  /// In en, this message translates to:
  /// **'Code verified'**
  String get code_verified;

  /// No description provided for @schedule.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get schedule;

  /// No description provided for @for_someone.
  ///
  /// In en, this message translates to:
  /// **'For someone'**
  String get for_someone;

  /// No description provided for @for_later.
  ///
  /// In en, this message translates to:
  /// **'For later'**
  String get for_later;

  /// No description provided for @cab_type.
  ///
  /// In en, this message translates to:
  /// **'Ride type'**
  String get cab_type;

  /// No description provided for @base_fare.
  ///
  /// In en, this message translates to:
  /// **'Base fare'**
  String get base_fare;

  /// No description provided for @search_for_language.
  ///
  /// In en, this message translates to:
  /// **'Search for language'**
  String get search_for_language;

  /// No description provided for @search_again.
  ///
  /// In en, this message translates to:
  /// **'Search Again'**
  String get search_again;

  /// No description provided for @search_ride.
  ///
  /// In en, this message translates to:
  /// **'Search Ride'**
  String get search_ride;

  /// No description provided for @cancel_request.
  ///
  /// In en, this message translates to:
  /// **'Cancel request'**
  String get cancel_request;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// No description provided for @your_profile.
  ///
  /// In en, this message translates to:
  /// **'Your profile'**
  String get your_profile;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @vat.
  ///
  /// In en, this message translates to:
  /// **'VAT'**
  String get vat;

  /// No description provided for @vat_amount.
  ///
  /// In en, this message translates to:
  /// **'VAT Amount'**
  String get vat_amount;

  /// No description provided for @rateYourTrip.
  ///
  /// In en, this message translates to:
  /// **'Rate your trip'**
  String get rateYourTrip;

  /// No description provided for @selectOneOrMoreIssues.
  ///
  /// In en, this message translates to:
  /// **'Select one or more issues'**
  String get selectOneOrMoreIssues;

  /// No description provided for @selectOneOrMoreCompliments.
  ///
  /// In en, this message translates to:
  /// **'Select one or more compliments'**
  String get selectOneOrMoreCompliments;

  /// No description provided for @selectUpTo5Issues.
  ///
  /// In en, this message translates to:
  /// **'select up to 5 issues'**
  String get selectUpTo5Issues;

  /// No description provided for @moreIssues.
  ///
  /// In en, this message translates to:
  /// **'More issues >'**
  String get moreIssues;

  /// No description provided for @moreCompliments.
  ///
  /// In en, this message translates to:
  /// **'More compliments >'**
  String get moreCompliments;

  /// No description provided for @addTipTo.
  ///
  /// In en, this message translates to:
  /// **'Add tip to {driverName}'**
  String addTipTo(String driverName);

  /// No description provided for @yourTripWas.
  ///
  /// In en, this message translates to:
  /// **'Your trip was €{amount}'**
  String yourTripWas(double amount);

  /// No description provided for @talkingOnPhone.
  ///
  /// In en, this message translates to:
  /// **'Talking on phone'**
  String get talkingOnPhone;

  /// No description provided for @unsafeRide.
  ///
  /// In en, this message translates to:
  /// **'Unsafe ride'**
  String get unsafeRide;

  /// No description provided for @smoking.
  ///
  /// In en, this message translates to:
  /// **'Smoking'**
  String get smoking;

  /// No description provided for @ridingVeryFast.
  ///
  /// In en, this message translates to:
  /// **'Riding very fast'**
  String get ridingVeryFast;

  /// No description provided for @missedTurn.
  ///
  /// In en, this message translates to:
  /// **'Missed turn'**
  String get missedTurn;

  /// No description provided for @unhygienic.
  ///
  /// In en, this message translates to:
  /// **'Unhygienic'**
  String get unhygienic;

  /// No description provided for @badAttitude.
  ///
  /// In en, this message translates to:
  /// **'Bad attitude'**
  String get badAttitude;

  /// No description provided for @poorCommunication.
  ///
  /// In en, this message translates to:
  /// **'Poor communication'**
  String get poorCommunication;

  /// No description provided for @noAc.
  ///
  /// In en, this message translates to:
  /// **'No AC'**
  String get noAc;

  /// No description provided for @phoneUsage.
  ///
  /// In en, this message translates to:
  /// **'Phone usage'**
  String get phoneUsage;

  /// No description provided for @unsafeLane.
  ///
  /// In en, this message translates to:
  /// **'Unsafe lane'**
  String get unsafeLane;

  /// No description provided for @noSeatbelt.
  ///
  /// In en, this message translates to:
  /// **'No seatbelt'**
  String get noSeatbelt;

  /// No description provided for @veryProfessional.
  ///
  /// In en, this message translates to:
  /// **'Very professional'**
  String get veryProfessional;

  /// No description provided for @cleanCar.
  ///
  /// In en, this message translates to:
  /// **'Clean car'**
  String get cleanCar;

  /// No description provided for @safeDriving.
  ///
  /// In en, this message translates to:
  /// **'Safe driving'**
  String get safeDriving;

  /// No description provided for @greatService.
  ///
  /// In en, this message translates to:
  /// **'Great service'**
  String get greatService;

  /// No description provided for @highlyPunctual.
  ///
  /// In en, this message translates to:
  /// **'Highly punctual'**
  String get highlyPunctual;

  /// No description provided for @politeBehavior.
  ///
  /// In en, this message translates to:
  /// **'Polite behavior'**
  String get politeBehavior;

  /// No description provided for @wellMannered.
  ///
  /// In en, this message translates to:
  /// **'Well-mannered'**
  String get wellMannered;

  /// Heading that shows the cancellation-fee amount.
  ///
  /// In en, this message translates to:
  /// **'Cancellation charges : € {amount}'**
  String cancelRideDialog_cancellationCharges(Object amount);

  /// No description provided for @cancelRideDialog_question.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to cancel?'**
  String get cancelRideDialog_question;

  /// No description provided for @cancelRideDialog_noChargeInfo.
  ///
  /// In en, this message translates to:
  /// **'There will be no cancellation fee applied.'**
  String get cancelRideDialog_noChargeInfo;

  /// No description provided for @cancelRideDialog_chargeInfo.
  ///
  /// In en, this message translates to:
  /// **'There will be a cancellation charge of € {fee}.'**
  String cancelRideDialog_chargeInfo(Object fee);

  /// No description provided for @cancelRideDialog_refundInfo.
  ///
  /// In en, this message translates to:
  /// **'Your refunded amount will be € {refund}.'**
  String cancelRideDialog_refundInfo(Object refund);

  /// No description provided for @no_drivers_found_title.
  ///
  /// In en, this message translates to:
  /// **'No Drivers Found Nearby'**
  String get no_drivers_found_title;

  /// No description provided for @no_drivers_found_content.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find any available drivers near your location at the moment.'**
  String get no_drivers_found_content;

  /// No description provided for @trip_confirmed.
  ///
  /// In en, this message translates to:
  /// **'Trip Confirmed'**
  String get trip_confirmed;

  /// Message shown to user about when driver details will be shared
  ///
  /// In en, this message translates to:
  /// **'We’ll share your driver details by {dateTime}'**
  String driver_details_share_info(Object dateTime);

  /// No description provided for @resending_code_in.
  ///
  /// In en, this message translates to:
  /// **'Resending code in:'**
  String get resending_code_in;

  /// No description provided for @code_sent_to_contact.
  ///
  /// In en, this message translates to:
  /// **'Code has been sent to the {contact}.'**
  String code_sent_to_contact(Object contact);

  /// No description provided for @choose_a_username.
  ///
  /// In en, this message translates to:
  /// **'Choose a @username'**
  String get choose_a_username;

  /// No description provided for @paymentRequestSentInfo.
  ///
  /// In en, this message translates to:
  /// **'We’ve sent your payment request to: {fullName}. Please don’t close the app or go back while we process your request.'**
  String paymentRequestSentInfo(String fullName);

  /// No description provided for @ensuringVehicleSafetyTitle.
  ///
  /// In en, this message translates to:
  /// **'Ensuring Vehicle Safety: A Priority in Our Ride Application'**
  String get ensuringVehicleSafetyTitle;

  /// No description provided for @ensuringVehicleSafetyDesc.
  ///
  /// In en, this message translates to:
  /// **'When it comes to transportation, safety is paramount. Our ride application is designed not only to provide a convenient and efficient travel experience but also to ensure that every journey is as safe as possible. Here\'s how we prioritize vehicle safety for our passengers and drivers:'**
  String get ensuringVehicleSafetyDesc;

  /// No description provided for @regularVehicleInspectionsTitle.
  ///
  /// In en, this message translates to:
  /// **'1. Regular Vehicle Inspections'**
  String get regularVehicleInspectionsTitle;

  /// No description provided for @regularVehicleInspectionsDesc.
  ///
  /// In en, this message translates to:
  /// **'All vehicles registered with our platform undergo strict and regular inspections. This ensures that they meet safety and quality standards, reducing the risk of mechanical issues during rides.'**
  String get regularVehicleInspectionsDesc;

  /// No description provided for @driverVerificationTrainingTitle.
  ///
  /// In en, this message translates to:
  /// **'2. Driver Verification and Training'**
  String get driverVerificationTrainingTitle;

  /// No description provided for @driverVerificationTrainingDesc.
  ///
  /// In en, this message translates to:
  /// **'Every driver is thoroughly verified before joining our platform. Additionally, we offer safety training and guidance, equipping drivers with the knowledge they need to handle various situations responsibly.'**
  String get driverVerificationTrainingDesc;

  /// No description provided for @realTimeRideMonitoringTitle.
  ///
  /// In en, this message translates to:
  /// **'3. Real-Time Ride Monitoring'**
  String get realTimeRideMonitoringTitle;

  /// No description provided for @realTimeRideMonitoringDesc.
  ///
  /// In en, this message translates to:
  /// **'Our app includes real-time ride tracking, allowing both passengers and their loved ones to monitor the trip. In case of an emergency, passengers can quickly share their location.'**
  String get realTimeRideMonitoringDesc;

  /// No description provided for @inAppEmergencyAssistanceTitle.
  ///
  /// In en, this message translates to:
  /// **'4. In-App Emergency Assistance'**
  String get inAppEmergencyAssistanceTitle;

  /// No description provided for @inAppEmergencyAssistanceDesc.
  ///
  /// In en, this message translates to:
  /// **'We provide an in-app emergency button that instantly connects passengers to local authorities or our dedicated support team. Quick assistance is just a tap away.'**
  String get inAppEmergencyAssistanceDesc;

  /// No description provided for @safetyFeedbackMechanismTitle.
  ///
  /// In en, this message translates to:
  /// **'5. Safety Feedback Mechanism'**
  String get safetyFeedbackMechanismTitle;

  /// No description provided for @safetyFeedbackMechanismDesc.
  ///
  /// In en, this message translates to:
  /// **'After each ride, passengers can rate and provide feedback on the vehicle\'s condition and driver behaviour. This helps us maintain high safety standards by addressing any issues promptly.\n\nYour safety is our top priority, and we continually strive to improve. By focusing on vehicle safety and driver accountability, we aim to make every ride a secure and pleasant experience.\n\nReady to experience safer rides? Book ride today and travel with peace of mind!'**
  String get safetyFeedbackMechanismDesc;

  /// No description provided for @ensuringPassengerSafetyTitle.
  ///
  /// In en, this message translates to:
  /// **'Ensuring Passenger Safety – Our Top Priority'**
  String get ensuringPassengerSafetyTitle;

  /// No description provided for @ensuringPassengerSafetyDesc.
  ///
  /// In en, this message translates to:
  /// **'When you book a ride, your primary expectation is not just a convenient ride but also a safe and secure journey. Our ride application is designed with advanced safety features to give you peace of mind, ensuring every trip is as safe as it is smooth'**
  String get ensuringPassengerSafetyDesc;

  /// No description provided for @keySafetyFeatures.
  ///
  /// In en, this message translates to:
  /// **'Key Safety Features'**
  String get keySafetyFeatures;

  /// No description provided for @driverVerification.
  ///
  /// In en, this message translates to:
  /// **'Driver Verification'**
  String get driverVerification;

  /// No description provided for @driverVerificationDesc.
  ///
  /// In en, this message translates to:
  /// **' All our drivers undergo a strict background check and verification process. This ensures that only trusted and responsible individuals are behind the wheel.'**
  String get driverVerificationDesc;

  /// No description provided for @realTimeTracking.
  ///
  /// In en, this message translates to:
  /// **'Real-Time Tracking'**
  String get realTimeTracking;

  /// No description provided for @realTimeTrackingDesc.
  ///
  /// In en, this message translates to:
  /// **' Track your ride in real time, share your live location with friends or family, and stay connected throughout your journey.'**
  String get realTimeTrackingDesc;

  /// No description provided for @emergencyAssistance.
  ///
  /// In en, this message translates to:
  /// **'Emergency Assistance'**
  String get emergencyAssistance;

  /// No description provided for @emergencyAssistanceDesc.
  ///
  /// In en, this message translates to:
  /// **' With the in-app Emergency Button, you can quickly alert your emergency contacts and our support team in case of any distress.'**
  String get emergencyAssistanceDesc;

  /// No description provided for @tripReviewsAndRatings.
  ///
  /// In en, this message translates to:
  /// **'Trip Reviews and Ratings'**
  String get tripReviewsAndRatings;

  /// No description provided for @tripReviewsAndRatingsDesc.
  ///
  /// In en, this message translates to:
  /// **' Your feedback helps us maintain high standards of safety. Passengers can rate drivers and report any concerns for immediate action.'**
  String get tripReviewsAndRatingsDesc;

  /// No description provided for @tipsForSafeRide.
  ///
  /// In en, this message translates to:
  /// **'Tips for a Safe Ride'**
  String get tipsForSafeRide;

  /// No description provided for @verifyTheDriver.
  ///
  /// In en, this message translates to:
  /// **'Verify the Driver:'**
  String get verifyTheDriver;

  /// No description provided for @verifyTheDriverDesc.
  ///
  /// In en, this message translates to:
  /// **' Before starting your trip, check the driver’s photo, vehicle number, and name displayed in the app.'**
  String get verifyTheDriverDesc;

  /// No description provided for @buckleUp.
  ///
  /// In en, this message translates to:
  /// **'Buckle Up'**
  String get buckleUp;

  /// No description provided for @buckleUpDesc.
  ///
  /// In en, this message translates to:
  /// **': Always wear your seatbelt for added safety during the ride.'**
  String get buckleUpDesc;

  /// No description provided for @shareYourRide.
  ///
  /// In en, this message translates to:
  /// **'Share Your Ride:'**
  String get shareYourRide;

  /// No description provided for @shareYourRideDesc.
  ///
  /// In en, this message translates to:
  /// **' Use the \"Share Trip\" feature to keep your loved ones informed about your journey in real time.'**
  String get shareYourRideDesc;

  /// No description provided for @yourSafetyOurCommitment.
  ///
  /// In en, this message translates to:
  /// **'Your Safety, Our Commitment'**
  String get yourSafetyOurCommitment;

  /// No description provided for @yourSafetyOurCommitmentDesc.
  ///
  /// In en, this message translates to:
  /// **'We believe a great ride is a safe ride. By combining technology, trained drivers, and a responsive support system, we aim to create a safer travel experience for everyone. Your trust drives us forward, and we’re dedicated to protecting what matters most—you.\nDownload our app, ride with confidence, and experience safety like never before!'**
  String get yourSafetyOurCommitmentDesc;

  /// No description provided for @importanceOfEmergencyContactTitle.
  ///
  /// In en, this message translates to:
  /// **'The Importance of Adding an Emergency Contact in your Uprides app'**
  String get importanceOfEmergencyContactTitle;

  /// No description provided for @importanceOfEmergencyContactDesc.
  ///
  /// In en, this message translates to:
  /// **'Safety is a priority when using any transportation service, especially in today’s fast-paced world. Our ride application introduces an essential feature designed with your well-being in mind: the Emergency Contact option.'**
  String get importanceOfEmergencyContactDesc;

  /// No description provided for @whyAddEmergencyContactTitle.
  ///
  /// In en, this message translates to:
  /// **'Why Should You Add an Emergency Contact?'**
  String get whyAddEmergencyContactTitle;

  /// No description provided for @whyAddEmergencyContactDesc.
  ///
  /// In en, this message translates to:
  /// **'Emergencies can happen at any time, and having a trusted person available to help is invaluable. By adding an emergency contact, you ensure that someone close to you is just a click away in case of unforeseen situations. Whether it’s a mechanical issue, sudden health concern, or feeling unsafe, this feature gives you an added layer of security.'**
  String get whyAddEmergencyContactDesc;

  /// No description provided for @howItWorksTitle.
  ///
  /// In en, this message translates to:
  /// **'How It Works'**
  String get howItWorksTitle;

  /// No description provided for @howItWorksDesc.
  ///
  /// In en, this message translates to:
  /// **'Quick Setup: Simply input the name and phone number of a trusted friend or family member in the app settings.\nInstant Alerts: In case of an emergency, tap the emergency button. Your contact will immediately receive an alert with your real-time location and trip details.\nPeace of Mind: Both you and your loved ones can relax, knowing help is always within reach.'**
  String get howItWorksDesc;

  /// No description provided for @staySafeStayConnectedTitle.
  ///
  /// In en, this message translates to:
  /// **'Stay Safe, Stay Connected'**
  String get staySafeStayConnectedTitle;

  /// No description provided for @staySafeStayConnectedDesc.
  ///
  /// In en, this message translates to:
  /// **'We are committed to creating a safer experience for all our users. Adding an emergency contact is a simple but powerful way to protect yourself and keep those who care about you informed. It’s a small step that makes a big difference.\nMake your rides safer today—add your emergency contact now!'**
  String get staySafeStayConnectedDesc;

  /// No description provided for @cancellationPolicyTitle.
  ///
  /// In en, this message translates to:
  /// **'Cancellation Policy'**
  String get cancellationPolicyTitle;

  /// No description provided for @freeCancellationWindow.
  ///
  /// In en, this message translates to:
  /// **'1. Free Cancellation Window'**
  String get freeCancellationWindow;

  /// No description provided for @standardRides.
  ///
  /// In en, this message translates to:
  /// **'Standard Rides: '**
  String get standardRides;

  /// No description provided for @standardRidesDesc.
  ///
  /// In en, this message translates to:
  /// **'Riders may cancel without charge within 2 minutes of Driver acceptance. The countdown timer is displayed in-app immediately after a Driver confirms.'**
  String get standardRidesDesc;

  /// No description provided for @preBookedRides.
  ///
  /// In en, this message translates to:
  /// **'Pre-Booked Rides:'**
  String get preBookedRides;

  /// No description provided for @preBookedRidesDesc.
  ///
  /// In en, this message translates to:
  /// **'Riders scheduling in advance have a 15-minute free cancellation window after assignment (or as shown in-app for that booking).'**
  String get preBookedRidesDesc;

  /// No description provided for @whenFeesApply.
  ///
  /// In en, this message translates to:
  /// **'2. When Cancellation Fees Apply'**
  String get whenFeesApply;

  /// No description provided for @whenFeesApplyDesc.
  ///
  /// In en, this message translates to:
  /// **'A cancellation fee will be charged if:'**
  String get whenFeesApplyDesc;

  /// No description provided for @riderCancelsAfterGrace.
  ///
  /// In en, this message translates to:
  /// **'1. Rider Cancels After Grace Period:'**
  String get riderCancelsAfterGrace;

  /// No description provided for @riderCancelsAfterGraceDesc.
  ///
  /// In en, this message translates to:
  /// **'You cancel after the free window has closed (timer shown in-app).'**
  String get riderCancelsAfterGraceDesc;

  /// No description provided for @riderRejectsRide.
  ///
  /// In en, this message translates to:
  /// **'2. Rider Rejects the Ride:'**
  String get riderRejectsRide;

  /// No description provided for @riderRejectsRideDesc.
  ///
  /// In en, this message translates to:
  /// **'You explicitly reject or refuse the ride after the Driver has accepted your request.'**
  String get riderRejectsRideDesc;

  /// No description provided for @noShow.
  ///
  /// In en, this message translates to:
  /// **'3. No-Show:'**
  String get noShow;

  /// No description provided for @noShowDesc.
  ///
  /// In en, this message translates to:
  /// **'You fail to board within 5 minutes of the Driver notifying arrival at pick-up.'**
  String get noShowDesc;

  /// No description provided for @whyAFee.
  ///
  /// In en, this message translates to:
  /// **'Why a Fee?'**
  String get whyAFee;

  /// No description provided for @whyAFeeDesc.
  ///
  /// In en, this message translates to:
  /// **'Compensates the Driver for time, fuel and opportunity costs incurred in traveling to your pick-up.'**
  String get whyAFeeDesc;

  /// No description provided for @howYouWillSeeFee.
  ///
  /// In en, this message translates to:
  /// **'3. How You’ll See the Fee'**
  String get howYouWillSeeFee;

  /// No description provided for @inAppDisplay.
  ///
  /// In en, this message translates to:
  /// **'In-App Display:'**
  String get inAppDisplay;

  /// No description provided for @inAppDisplayDesc.
  ///
  /// In en, this message translates to:
  /// **'When a cancellation fee applies, the exact amount will be displayed for your confirmation before the cancellation is final.'**
  String get inAppDisplayDesc;

  /// No description provided for @feeOnReceipt.
  ///
  /// In en, this message translates to:
  /// **'Receipt:'**
  String get feeOnReceipt;

  /// No description provided for @feeOnReceiptDesc.
  ///
  /// In en, this message translates to:
  /// **'Your trip receipt (in-app or by email) will show the fee, its type (cancellation or no-show) and how it was calculated.'**
  String get feeOnReceiptDesc;

  /// No description provided for @waiversAndExceptions.
  ///
  /// In en, this message translates to:
  /// **'4. Waivers & Exceptions'**
  String get waiversAndExceptions;

  /// No description provided for @waiversAndExceptionsDesc.
  ///
  /// In en, this message translates to:
  /// **'You will not be charged a cancellation fee if:'**
  String get waiversAndExceptionsDesc;

  /// No description provided for @driverDelay.
  ///
  /// In en, this message translates to:
  /// **'Driver Delay: '**
  String get driverDelay;

  /// No description provided for @driverDelayDesc.
  ///
  /// In en, this message translates to:
  /// **'The Driver’s ETA exceeds the in-app estimate by more than 5 minutes, or GPS shows them moving away from your pick-up point.'**
  String get driverDelayDesc;

  /// No description provided for @driverCancellation.
  ///
  /// In en, this message translates to:
  /// **'Driver Cancellation: '**
  String get driverCancellation;

  /// No description provided for @driverCancellationDesc.
  ///
  /// In en, this message translates to:
  /// **'The Driver cancels before you do.'**
  String get driverCancellationDesc;

  /// No description provided for @technicalError.
  ///
  /// In en, this message translates to:
  /// **'Technical Error:'**
  String get technicalError;

  /// No description provided for @technicalErrorDispute.
  ///
  /// In en, this message translates to:
  /// **'App or payment-authorization failures prevent completion. To dispute an erroneous charge, go to Help > Trip Issues > I was charged a cancellation fee in-app, or email {email} within 14 days of the trip.'**
  String technicalErrorDispute(String email);

  /// No description provided for @driverCancellationsAndNoShows.
  ///
  /// In en, this message translates to:
  /// **'5. Driver Cancellations & No-Shows'**
  String get driverCancellationsAndNoShows;

  /// No description provided for @driverInitiatedCancellation.
  ///
  /// In en, this message translates to:
  /// **'Driver-Initiated Cancellation:'**
  String get driverInitiatedCancellation;

  /// No description provided for @driverInitiatedCancellationDesc.
  ///
  /// In en, this message translates to:
  /// **'No fee is charged to you if the Driver cancels before arrival.'**
  String get driverInitiatedCancellationDesc;

  /// No description provided for @driverNoShow.
  ///
  /// In en, this message translates to:
  /// **'Driver No-Show:'**
  String get driverNoShow;

  /// No description provided for @driverNoShowDesc.
  ///
  /// In en, this message translates to:
  /// **'No fee applies if the Driver does not arrive within 5 minutes of ETA and then cancels. While UPrides isn’t liable for unilateral Driver cancellations, we’ll help you rebook promptly.'**
  String get driverNoShowDesc;

  /// No description provided for @waitingTimeCharges.
  ///
  /// In en, this message translates to:
  /// **'6. Waiting Time Charges'**
  String get waitingTimeCharges;

  /// No description provided for @waitingTimeChargesDesc.
  ///
  /// In en, this message translates to:
  /// **'If you require the Driver to wait after arrival notification (for example, you’re delayed boarding), a waiting-time charge may apply at the rate shown in-app. You’ll see the applicable per-minute rate before confirming any wait.'**
  String get waitingTimeChargesDesc;

  /// No description provided for @preBookedAndGroupRides.
  ///
  /// In en, this message translates to:
  /// **'7. Pre-Booked & Group Rides'**
  String get preBookedAndGroupRides;

  /// No description provided for @advanceCancellation.
  ///
  /// In en, this message translates to:
  /// **'Advance Cancellation:'**
  String get advanceCancellation;

  /// No description provided for @advanceCancellationDesc.
  ///
  /// In en, this message translates to:
  /// **'For scheduled rides, cancel at least 1 hour before pick-up (or as shown in-app) to avoid fees.'**
  String get advanceCancellationDesc;

  /// No description provided for @groupBookings.
  ///
  /// In en, this message translates to:
  /// **'Group Bookings:'**
  String get groupBookings;

  /// No description provided for @groupBookingsDesc.
  ///
  /// In en, this message translates to:
  /// **'Any applicable cancellation fee is charged per booking (not per passenger).'**
  String get groupBookingsDesc;

  /// No description provided for @contactSupport.
  ///
  /// In en, this message translates to:
  /// **'For any questions or further assistance, contact our Support team via the in-app Help Center or at {email}.'**
  String contactSupport(String email);

  /// No description provided for @supportEmail.
  ///
  /// In en, this message translates to:
  /// **'support@uprides.eu'**
  String get supportEmail;

  /// No description provided for @refer_friends_credit_title.
  ///
  /// In en, this message translates to:
  /// **'Refer friends. Every first ride they take adds credit to your wallet'**
  String get refer_friends_credit_title;

  /// No description provided for @send_link_get5_title.
  ///
  /// In en, this message translates to:
  /// **'Send your link. Get €5 in your wallet when a friend signs up'**
  String get send_link_get5_title;

  /// No description provided for @refer_friends_earn100_title.
  ///
  /// In en, this message translates to:
  /// **'Refer friends and earn up to €100 in ride credit or discounts as they ride'**
  String get refer_friends_earn100_title;

  /// No description provided for @explore_cool_spots_title.
  ///
  /// In en, this message translates to:
  /// **'Check out cool spots just around the corner. You explore, we’ll drive.'**
  String get explore_cool_spots_title;

  /// No description provided for @generous_friend_title.
  ///
  /// In en, this message translates to:
  /// **'Got a generous friend? Book your ride and tap to let them pay!'**
  String get generous_friend_title;

  /// No description provided for @go_xl_more_seats_title.
  ///
  /// In en, this message translates to:
  /// **'Rolling deep? Go XL for more seats, extra legroom, and better vibes.'**
  String get go_xl_more_seats_title;

  /// No description provided for @request_payment_no_cash_title.
  ///
  /// In en, this message translates to:
  /// **'Book your ride, request payment — no cash, no stress.'**
  String get request_payment_no_cash_title;

  /// No description provided for @rides.
  ///
  /// In en, this message translates to:
  /// **'Rides'**
  String get rides;

  /// No description provided for @emergency.
  ///
  /// In en, this message translates to:
  /// **'Emrgency'**
  String get emergency;

  /// No description provided for @something_went_wrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get something_went_wrong;

  /// No description provided for @total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get total_amount;

  /// No description provided for @edit_ride.
  ///
  /// In en, this message translates to:
  /// **'Edit ride'**
  String get edit_ride;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy;

  /// No description provided for @terms_conditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get terms_conditions;

  /// No description provided for @ride_type.
  ///
  /// In en, this message translates to:
  /// **'Ride type'**
  String get ride_type;

  /// No description provided for @scheduled_rides.
  ///
  /// In en, this message translates to:
  /// **'Scheduled ride'**
  String get scheduled_rides;

  /// No description provided for @report_des.
  ///
  /// In en, this message translates to:
  /// **'Let us know your concern. Select the options listed below and proceed.'**
  String get report_des;

  /// No description provided for @ride_in_progress.
  ///
  /// In en, this message translates to:
  /// **'Ride in Progress'**
  String get ride_in_progress;

  /// No description provided for @you_already_have_an_active_ride.
  ///
  /// In en, this message translates to:
  /// **'You already have an active ride. Please complete your current trip before requesting a new one.'**
  String get you_already_have_an_active_ride;

  /// No description provided for @view_current_ride.
  ///
  /// In en, this message translates to:
  /// **'View Current Ride'**
  String get view_current_ride;

  /// No description provided for @locations_are_in_different_countries.
  ///
  /// In en, this message translates to:
  /// **'Locations are in different countries'**
  String get locations_are_in_different_countries;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @get_code.
  ///
  /// In en, this message translates to:
  /// **'Get Code'**
  String get get_code;

  /// No description provided for @yes_delete.
  ///
  /// In en, this message translates to:
  /// **'Yes, delete'**
  String get yes_delete;

  /// No description provided for @pickup_stop_same.
  ///
  /// In en, this message translates to:
  /// **'Your pickup and stop are the same.'**
  String get pickup_stop_same;

  /// No description provided for @pickup_stop_same_des.
  ///
  /// In en, this message translates to:
  /// **'Please select a different stop location.'**
  String get pickup_stop_same_des;

  /// No description provided for @stop_drop_off_same.
  ///
  /// In en, this message translates to:
  /// **'Your stop and drop‑off are the same.'**
  String get stop_drop_off_same;

  /// No description provided for @you_already_have_an_active_ride_to_log_out.
  ///
  /// In en, this message translates to:
  /// **'You already have an active ride. Please complete your current trip before logging out.'**
  String get you_already_have_an_active_ride_to_log_out;

  /// No description provided for @profile_updated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profile_updated_successfully;

  /// No description provided for @preferred_language.
  ///
  /// In en, this message translates to:
  /// **'Preferred Language'**
  String get preferred_language;

  /// No description provided for @are_you_sure_you_want_to_delete_your_account.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account?'**
  String get are_you_sure_you_want_to_delete_your_account;

  /// No description provided for @delete_account_description.
  ///
  /// In en, this message translates to:
  /// **'We’re sorry to see you go. Deleting your account will permanently remove your personal data, ride history, and saved preferences.'**
  String get delete_account_description;

  /// No description provided for @select_a_reason_to_delete_account.
  ///
  /// In en, this message translates to:
  /// **'Select a reason for leaving:'**
  String get select_a_reason_to_delete_account;

  /// No description provided for @delete_reason_no_longer_using_uprides.
  ///
  /// In en, this message translates to:
  /// **'I\'m no longer using Uprides'**
  String get delete_reason_no_longer_using_uprides;

  /// No description provided for @delete_reason_service_too_expensive.
  ///
  /// In en, this message translates to:
  /// **'The service is too expensive'**
  String get delete_reason_service_too_expensive;

  /// No description provided for @delete_reason_want_to_change_phone_number.
  ///
  /// In en, this message translates to:
  /// **'I want to change my phone number'**
  String get delete_reason_want_to_change_phone_number;

  /// No description provided for @delete_reason_dont_understand_how_to_use_app.
  ///
  /// In en, this message translates to:
  /// **'I don\'t understand how to use the app'**
  String get delete_reason_dont_understand_how_to_use_app;

  /// No description provided for @delete_reason_not_available_in_city.
  ///
  /// In en, this message translates to:
  /// **'Uprides is not available in my city'**
  String get delete_reason_not_available_in_city;

  /// No description provided for @enter_your_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Enter your phone number'**
  String get enter_your_phone_number;

  /// No description provided for @become_a_driver.
  ///
  /// In en, this message translates to:
  /// **'Become a Driver'**
  String get become_a_driver;

  /// No description provided for @user_payment_id.
  ///
  /// In en, this message translates to:
  /// **'USER/PAYMENT ID: {id}'**
  String user_payment_id(String id);

  /// No description provided for @become_a_driver_description.
  ///
  /// In en, this message translates to:
  /// **'Join our community of drivers and earn money on your own schedule.'**
  String get become_a_driver_description;

  /// No description provided for @general_policy.
  ///
  /// In en, this message translates to:
  /// **'General policy'**
  String get general_policy;

  /// No description provided for @set_your_location_on_map.
  ///
  /// In en, this message translates to:
  /// **'Set your location on map'**
  String get set_your_location_on_map;

  /// No description provided for @drag_map_to_move_pin.
  ///
  /// In en, this message translates to:
  /// **'Drag the map to move the pin'**
  String get drag_map_to_move_pin;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @legal_policy.
  ///
  /// In en, this message translates to:
  /// **'Legal policy'**
  String get legal_policy;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @add_a_referral.
  ///
  /// In en, this message translates to:
  /// **'Add a referral'**
  String get add_a_referral;

  /// No description provided for @enter_referral_code.
  ///
  /// In en, this message translates to:
  /// **'Enter the referral code'**
  String get enter_referral_code;

  /// No description provided for @enter_referral_code_to_claim_your_reward.
  ///
  /// In en, this message translates to:
  /// **'Enter the referral code to claim your reward'**
  String get enter_referral_code_to_claim_your_reward;

  /// No description provided for @refer_a_friend.
  ///
  /// In en, this message translates to:
  /// **'Refer a friend'**
  String get refer_a_friend;

  /// No description provided for @get_euros_directly_in_your_wallet.
  ///
  /// In en, this message translates to:
  /// **'Get €{euro} directly in your Wallet! Refer as many friends as you can to join the Uprides family, and once they each complete their first booking, your reward is yours!'**
  String get_euros_directly_in_your_wallet(String euro);

  /// No description provided for @refer_via.
  ///
  /// In en, this message translates to:
  /// **'Refer via'**
  String get refer_via;

  /// No description provided for @link.
  ///
  /// In en, this message translates to:
  /// **'Link'**
  String get link;

  /// No description provided for @referral_link.
  ///
  /// In en, this message translates to:
  /// **'referral link'**
  String get referral_link;

  /// No description provided for @login_with_google.
  ///
  /// In en, this message translates to:
  /// **'Login with Google'**
  String get login_with_google;

  /// No description provided for @location_sharing_off.
  ///
  /// In en, this message translates to:
  /// **'Location sharing is currently turned off. Tap here to turn it on.'**
  String get location_sharing_off;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @applied.
  ///
  /// In en, this message translates to:
  /// **'Applied'**
  String get applied;

  /// No description provided for @capital_apply.
  ///
  /// In en, this message translates to:
  /// **'APPLY'**
  String get capital_apply;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @similar_places.
  ///
  /// In en, this message translates to:
  /// **'Similar places'**
  String get similar_places;

  /// No description provided for @high_rated.
  ///
  /// In en, this message translates to:
  /// **'High rated'**
  String get high_rated;

  /// No description provided for @activity.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get activity;

  /// No description provided for @is_requesting.
  ///
  /// In en, this message translates to:
  /// **'is requesting'**
  String get is_requesting;

  /// No description provided for @from_you.
  ///
  /// In en, this message translates to:
  /// **'from you. Would you like to view the details?'**
  String get from_you;

  /// No description provided for @promo_heading.
  ///
  /// In en, this message translates to:
  /// **'Get {discountPercentage}% off your next {rideCount} rides. Save up to {currency}{maxSavings} per trip'**
  String promo_heading(String discountPercentage, int rideCount,
      String currency, String maxSavings);

  /// No description provided for @promo_subtext.
  ///
  /// In en, this message translates to:
  /// **'We\'ll apply your best available promo automatically at checkout. Want to use a different one? You can switch promos before payment.'**
  String get promo_subtext;

  /// No description provided for @promo_validity.
  ///
  /// In en, this message translates to:
  /// **'Valid on all ride types.'**
  String get promo_validity;

  /// No description provided for @promo_max_discount.
  ///
  /// In en, this message translates to:
  /// **'Maximum {currency}{maxDiscount} discount per trip.'**
  String promo_max_discount(String currency, String maxDiscount);

  /// No description provided for @promo_expiration.
  ///
  /// In en, this message translates to:
  /// **'Expiring on: {expirationDate}'**
  String promo_expiration(String expirationDate);

  /// No description provided for @promo_cta_button.
  ///
  /// In en, this message translates to:
  /// **'Apply now on booking'**
  String get promo_cta_button;

  /// No description provided for @add_payment_method.
  ///
  /// In en, this message translates to:
  /// **'Add your payment method'**
  String get add_payment_method;

  /// No description provided for @passenger_safety.
  ///
  /// In en, this message translates to:
  /// **'Passenger safety'**
  String get passenger_safety;

  /// No description provided for @emergency_contact.
  ///
  /// In en, this message translates to:
  /// **'Emergency contact'**
  String get emergency_contact;

  /// No description provided for @delete_your_account.
  ///
  /// In en, this message translates to:
  /// **'Delete your account?'**
  String get delete_your_account;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Note: '**
  String get note;

  /// No description provided for @your_account_will_be_deactivated.
  ///
  /// In en, this message translates to:
  /// **'Your account will be deactivated first and permanently deleted after 30 days'**
  String get your_account_will_be_deactivated;

  /// No description provided for @arrived.
  ///
  /// In en, this message translates to:
  /// **'Arrived'**
  String get arrived;

  /// No description provided for @driver_arrived.
  ///
  /// In en, this message translates to:
  /// **'Your driver has arrived'**
  String get driver_arrived;

  /// No description provided for @explore_more_on_uprides.
  ///
  /// In en, this message translates to:
  /// **'Explore more with Uprides.'**
  String get explore_more_on_uprides;

  /// No description provided for @locations_too_close.
  ///
  /// In en, this message translates to:
  /// **'The picked locatios are too close'**
  String get locations_too_close;

  /// No description provided for @signup_with_google.
  ///
  /// In en, this message translates to:
  /// **'Signup with Google'**
  String get signup_with_google;

  /// No description provided for @complete_your_information.
  ///
  /// In en, this message translates to:
  /// **'Complete your information'**
  String get complete_your_information;

  /// No description provided for @offline.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get offline;

  /// No description provided for @no_internet.
  ///
  /// In en, this message translates to:
  /// **'No Internet'**
  String get no_internet;

  /// No description provided for @no_internet_des.
  ///
  /// In en, this message translates to:
  /// **'It looks like you\'re not connected to the internet. Please check your connection and try again.'**
  String get no_internet_des;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @password_is_empty.
  ///
  /// In en, this message translates to:
  /// **'Password can\'t be empty.'**
  String get password_is_empty;

  /// No description provided for @password_must_8_char_long.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters long.'**
  String get password_must_8_char_long;

  /// No description provided for @password_must_contains_one_uppercase.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one uppercase letter.'**
  String get password_must_contains_one_uppercase;

  /// No description provided for @share_to.
  ///
  /// In en, this message translates to:
  /// **'Share to'**
  String get share_to;

  /// No description provided for @ride_scheduled.
  ///
  /// In en, this message translates to:
  /// **'Ride Scheduled'**
  String get ride_scheduled;

  /// No description provided for @your_ride_has_been_scheduled_for.
  ///
  /// In en, this message translates to:
  /// **'Your ride has been scheduled for \n {time}'**
  String your_ride_has_been_scheduled_for(String time);

  /// No description provided for @add_a_voucher.
  ///
  /// In en, this message translates to:
  /// **'Add a voucher'**
  String get add_a_voucher;

  /// No description provided for @enter_voucher_number_to_claim.
  ///
  /// In en, this message translates to:
  /// **'Enter the voucher number to claim the amount'**
  String get enter_voucher_number_to_claim;

  /// No description provided for @no_vouchers_available.
  ///
  /// In en, this message translates to:
  /// **'No vouchers available'**
  String get no_vouchers_available;

  /// No description provided for @you_dont_have_any_available_voucher.
  ///
  /// In en, this message translates to:
  /// **'You don’t have any available voucher at the moment. Organisations can send you vouchers to pay for the trips or other services.'**
  String get you_dont_have_any_available_voucher;

  /// No description provided for @enter_voucher_code.
  ///
  /// In en, this message translates to:
  /// **'Enter voucher code'**
  String get enter_voucher_code;

  /// No description provided for @pay_for_name.
  ///
  /// In en, this message translates to:
  /// **'Pay for {name}'**
  String pay_for_name(String name);

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @pin.
  ///
  /// In en, this message translates to:
  /// **'PIN - {pin}'**
  String pin(String pin);

  /// No description provided for @request_money.
  ///
  /// In en, this message translates to:
  /// **'Request Money'**
  String get request_money;

  /// No description provided for @driver_is_arriving_in.
  ///
  /// In en, this message translates to:
  /// **'Your ride will arrive in'**
  String get driver_is_arriving_in;

  /// No description provided for @view_request.
  ///
  /// In en, this message translates to:
  /// **'View request'**
  String get view_request;

  /// No description provided for @cancelling_in.
  ///
  /// In en, this message translates to:
  /// **'Cancelling in '**
  String get cancelling_in;

  /// No description provided for @declined.
  ///
  /// In en, this message translates to:
  /// **'Declined'**
  String get declined;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @you_will_arrive_in.
  ///
  /// In en, this message translates to:
  /// **'You will arrive in'**
  String get you_will_arrive_in;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// Title shown when there are no completed rides.
  ///
  /// In en, this message translates to:
  /// **'No rides yet'**
  String get noRidesYetTitle;

  /// Message encouraging booking the first ride.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t completed any rides yet. Book your first ride today!'**
  String get noRidesYetMessage;

  /// Title shown when there are no cancelled rides.
  ///
  /// In en, this message translates to:
  /// **'No cancelled rides'**
  String get noCancelledRidesTitle;

  /// Message indicating no cancelled rides.
  ///
  /// In en, this message translates to:
  /// **'Looks like you haven\'t cancelled any rides.'**
  String get noCancelledRidesMessage;

  /// Title shown when there are no upcoming rides.
  ///
  /// In en, this message translates to:
  /// **'No upcoming rides'**
  String get noUpcomingRidesTitle;

  /// Message encouraging to book upcoming rides.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any rides scheduled. Book one now and we\'ll see you soon!'**
  String get noUpcomingRidesMessage;

  /// No description provided for @invite_a_friend.
  ///
  /// In en, this message translates to:
  /// **'Invite A Friend'**
  String get invite_a_friend;

  /// No description provided for @add_location.
  ///
  /// In en, this message translates to:
  /// **'Add location'**
  String get add_location;

  /// No description provided for @enter_your_location.
  ///
  /// In en, this message translates to:
  /// **'Enter your location'**
  String get enter_your_location;

  /// No description provided for @upridesMaintenanceMessageTime.
  ///
  /// In en, this message translates to:
  /// **'We’re making some improvements to give you a smoother experience. Uprides will be back and ready to use by {time}.'**
  String upridesMaintenanceMessageTime(String time);

  /// No description provided for @blocked_rideflow_title.
  ///
  /// In en, this message translates to:
  /// **'No drivers in this area yet!'**
  String get blocked_rideflow_title;

  /// No description provided for @blocked_rideflow_subtitle.
  ///
  /// In en, this message translates to:
  /// **'We’ve just launched and are expanding across all zones and cities. You can enjoy and explore the app, and as soon as rides are available in your area, you’ll receive a notification to start using the service.'**
  String get blocked_rideflow_subtitle;

  /// No description provided for @cancel_on_route_booked_by_mistake.
  ///
  /// In en, this message translates to:
  /// **'Booked by mistake'**
  String get cancel_on_route_booked_by_mistake;

  /// No description provided for @cancel_on_route_my_plans_changed.
  ///
  /// In en, this message translates to:
  /// **'My plans changed'**
  String get cancel_on_route_my_plans_changed;

  /// No description provided for @cancel_on_route_found_another_way_to_travel.
  ///
  /// In en, this message translates to:
  /// **'Found another way to travel'**
  String get cancel_on_route_found_another_way_to_travel;

  /// No description provided for @cancel_on_route_driver_taking_too_long_to_arrive.
  ///
  /// In en, this message translates to:
  /// **'Driver is taking too long to arrive'**
  String get cancel_on_route_driver_taking_too_long_to_arrive;

  /// No description provided for @cancel_on_route_driver_not_moving_towards_pickup.
  ///
  /// In en, this message translates to:
  /// **'Driver is not moving towards pickup'**
  String get cancel_on_route_driver_not_moving_towards_pickup;

  /// No description provided for @cancel_on_route_pickup_location_entered_incorrectly.
  ///
  /// In en, this message translates to:
  /// **'Pickup location entered incorrectly'**
  String get cancel_on_route_pickup_location_entered_incorrectly;

  /// No description provided for @cancel_on_route_safety_concern_with_drivers_profile.
  ///
  /// In en, this message translates to:
  /// **'Safety concern with driver’s profile'**
  String get cancel_on_route_safety_concern_with_drivers_profile;

  /// No description provided for @cancel_arrived_no_longer_need_the_ride.
  ///
  /// In en, this message translates to:
  /// **'No longer need the ride'**
  String get cancel_arrived_no_longer_need_the_ride;

  /// No description provided for @cancel_arrived_driver_refused_to_take_me.
  ///
  /// In en, this message translates to:
  /// **'Driver refused to take me'**
  String get cancel_arrived_driver_refused_to_take_me;

  /// No description provided for @cancel_arrived_vehicle_different_from_whats_shown.
  ///
  /// In en, this message translates to:
  /// **'Vehicle is different from what\'s shown in app'**
  String get cancel_arrived_vehicle_different_from_whats_shown;

  /// No description provided for @cancel_arrived_driver_asked_for_extra_payment.
  ///
  /// In en, this message translates to:
  /// **'Driver asked for extra payment'**
  String get cancel_arrived_driver_asked_for_extra_payment;

  /// No description provided for @cancel_arrived_vehicle_doesnt_meet_safety_or_cleanliness.
  ///
  /// In en, this message translates to:
  /// **'Vehicle doesn\'t meet safety/cleanliness standards'**
  String get cancel_arrived_vehicle_doesnt_meet_safety_or_cleanliness;

  /// No description provided for @cancel_arrived_driver_at_wrong_pickup_location.
  ///
  /// In en, this message translates to:
  /// **'Driver is at the wrong pickup location'**
  String get cancel_arrived_driver_at_wrong_pickup_location;

  /// No description provided for @cancel_arrived_feel_unsafe_or_uncomfortable.
  ///
  /// In en, this message translates to:
  /// **'I feel unsafe or uncomfortable'**
  String get cancel_arrived_feel_unsafe_or_uncomfortable;

  /// No description provided for @cancel_in_trip_wrong_destination.
  ///
  /// In en, this message translates to:
  /// **'Trip is going to the wrong destination'**
  String get cancel_in_trip_wrong_destination;

  /// No description provided for @cancel_in_trip_requested_to_end_early.
  ///
  /// In en, this message translates to:
  /// **'Requested to end the trip early'**
  String get cancel_in_trip_requested_to_end_early;

  /// No description provided for @cancel_in_trip_feel_unsafe_during_ride.
  ///
  /// In en, this message translates to:
  /// **'I feel unsafe during the ride'**
  String get cancel_in_trip_feel_unsafe_during_ride;

  /// No description provided for @cancel_in_trip_vehicle_breakdown_or_technical_issue.
  ///
  /// In en, this message translates to:
  /// **'Vehicle breakdown or technical issue'**
  String get cancel_in_trip_vehicle_breakdown_or_technical_issue;

  /// No description provided for @cancel_in_trip_personal_emergency_need_to_stop.
  ///
  /// In en, this message translates to:
  /// **'Personal emergency — need to stop'**
  String get cancel_in_trip_personal_emergency_need_to_stop;

  /// No description provided for @cancel_in_trip_drivers_behavior_inappropriate.
  ///
  /// In en, this message translates to:
  /// **'Driver’s behavior is inappropriate'**
  String get cancel_in_trip_drivers_behavior_inappropriate;

  /// No description provided for @invite_via_link.
  ///
  /// In en, this message translates to:
  /// **'Invite via link'**
  String get invite_via_link;

  /// No description provided for @experience_uprides_your_ride_your_way.
  ///
  /// In en, this message translates to:
  /// **'Experience Uprides – Your Ride, Your Way!'**
  String get experience_uprides_your_ride_your_way;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
