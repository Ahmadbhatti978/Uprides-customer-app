import 'package:flutter/widgets.dart';
import '../../config/cta/update_view.dart';
import '../../features/account/add_emergency.dart';
import '../../features/account/add_payment.dart';
import '../../features/account/legal/legal.dart';
import '../../features/account/legal/privacy_policy.dart';
import '../../features/account/legal/term_condition.dart';
import '../../features/account/privicy_policy.dart';
import '../../features/account/profile/profile.dart';
import '../../features/account/promotion.dart';
import '../../features/account/referral/add_a_referral.dart';
import '../../features/account/referral/invite_a_friend.dart';
import '../../features/account/referral/refer_a_friend.dart';
import '../../features/account/referral/referral.dart';
import '../../features/account/report_issue/cancellation_policy.dart';
import '../../features/account/report_issue/report.dart';
import '../../features/account/report_issue/report_issue.dart';
import '../../features/account/reward.dart';
import '../../features/account/safety.dart';
import '../../features/account/safety_splash.dart';
import '../../features/account/saved/confirm_saved_address.dart';
import '../../features/account/saved/saved_location.dart';
import '../../features/account/saved_riders.dart/add_rider.dart';
import '../../features/account/support.dart';
import '../../features/account/vouchers/add_a_voucher.dart';
import '../../features/account/vouchers/all_vouchers.dart';
import '../../features/account/vouchers/voucher.dart';
import '../../features/account/wallet/cards_list.dart';
import '../../features/account/wallet/payment_request.dart';
import '../../features/account/wallet/request_money.dart';
import '../../features/account/wallet/wallet.dart';
import '../../features/activity/component/help.dart';
import '../../features/activity/component/receipt.dart';
import '../../features/activity/trip_detail.dart';
import '../../features/auth/veiw/pages/e_login.dart';
import '../../features/auth/veiw/pages/forgot_password.dart';
import '../../features/auth/veiw/pages/languages.dart';
import '../../features/auth/veiw/pages/login.dart';
import '../../features/auth/veiw/pages/p_login.dart';
import '../../features/auth/veiw/pages/register.dart';
import '../../features/auth/veiw/pages/reset_password.dart';
import '../../features/auth/veiw/pages/sign.dart';
import '../../features/booking/addlocation/add_location.dart';
import '../../features/booking/addlocation/components/schedule.dart';
import '../../features/booking/addlocation/model/place.dart';
import '../../features/booking/arriving_waiting_ongoing/arriving_in.dart';
import '../../features/booking/arriving_waiting_ongoing/on_ride.dart';
import '../../features/booking/arriving_waiting_ongoing/on_trip.dart';
import '../../features/booking/book_ride/component/bidding.dart';
import '../../features/booking/book_ride/loading_ride.dart';
import '../../features/booking/book_ride/ride_cancelled.dart';
import '../../features/booking/confirm_locations.dart';
import '../../features/booking/confirm_pay/confirm_pay.dart';
import '../../features/booking/coupon.dart';
import '../../features/booking/paymentrequestview.dart';
import '../../features/booking/rate_review_tip.dart';
import '../../features/booking/ride_scheduled.dart';
import '../../features/booking/select_ride/choose_ride.dart';
import '../../features/intercity/book_intercity.dart';
import '../../features/intercity/intercity.dart';
import '../../features/intercity/intercity_detail.dart';
import '../../features/intercity/list_of_intercity.dart';
import '../../features/intercity/opinions.dart';
import '../../features/intercity/rating.dart';
import '../../features/intercity/rating_detail.dart';
import '../../features/intercity/reservation_detail.dart';
import '../../features/jump_start/connect_driver.dart';
import '../../features/jump_start/jump.dart';
import '../../features/jump_start/jump_book_ride.dart';
import '../../features/jump_start/jump_start_detail.dart';
import '../../features/jump_start/vehical_detail.dart';
import '../../features/message/component/chat.dart';
import '../../features/notification/notification.dart';
import '../../features/package/component/date_time.dart';
import '../../features/package/overveiw.dart';
import '../../features/package/package.dart';
import '../../features/package/package_detail.dart';
import '../../features/package/receivers_detail.dart';
import '../../features/rental/drop_location.dart';
import '../../features/rental/list_of_rental_car.dart';
import '../../features/rental/rental.dart';
import '../../features/sos/veiw/parkingsos.dart';
import '../../features/sos/veiw/send_parking_sos.dart';
import '../../features/sos/veiw/sos.dart';
import '../../features/trending/event/detail.dart';
import '../../features/trending/trending_des.dart';
import '../../features/trending/trending_locations.dart';
import '../../nav/nav.dart';
import '../../splash/get_started.dart';
import '../../splash/splash.dart';
import '../widgets/addlocation/location_on_map.dart';
import '../widgets/addlocation/single_add_location.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String splash = '/splash';

  static const String sign = '/sign';
  //auth
  static const String login = '/login';
  static const String register = '/register';
  static const String language = '/language';
  static const String phoneLogin = '/phoneLogin';
  static const String emailLogin = '/emailLogin';
  static const String resetPassword = '/resetPassword';
  static const String forgotPassword = '/forgotPassword';
  static const String getStarted = '/getStarted';
  static const String opinion = '/opinion';
  static const String intercityDetail = '/intercityDetail';
  static const String bottomNavigationScreen = '/nav';
  static const String listOfIntercity = '/listOfIntercity';
  static const String bookIntercity = '/bookIntercity';
  // PAYMENT
  static const String addPayment = '/addPayment';

  static const String rating = '/rating';
  static const String trendingLocations = '/trendingLocations';
  static const String eventDetail = '/eventDetail';
  static const String cancelledRide = '/cancelRide';
  static const String bidding = '/bidding';
  static const String choose = '/choose';
  static const String profile = '/profile';
  static const String trendingDes = '/trendingDes';
  static const String reward = '/reward';
  static const String wallet = '/wallet';
  static const String promotion = '/promotion';
  static const String safety = '/safety';
  static const String support = '/support';

  static const String privicyPolicy = '/privicyPolicy';
  static const String help = '/help';
  static const String dateTime = '/dateTime';
  static const String addEmergency = '/addEmergency';
  static const String safetySplash = '/safetySplash';
  static const String receipt = '/receipt';
  static const String tripDetail = '/tripDetail';

  static const String otp = '/otp';
  static const String email = '/email';
  static const String name = '/name';
  static const String phone = '/phone';
  static const String schedule = '$addLocation/schedule';
  static const String addRider = '/addRider';
  static const String arrivingIN = '/arrivingIN';

  static const String jumpStartRide = '/jumpStartRide';
  static const String addLocation = '/addLocation';
  static const String jumpStart = '/jumpStart';
  static const String jumpStartVehicalDetail = '$jumpStart/VehicalDetail';
  static const String rental = '/rental';
  static const String packages = '/packages';
  static const String overveiw = '$packages/overveiw';
  static const String receiversDetail = '$packages/receiversDetail';
  static const String packageDetail = '$packages/detail';
  static const String intercity = '/intercity';
  static const String ratingDetail = '/ratingDetail';
  static const String jumpStartDetail = '/jumpStartDetail';
  static const String chat = '/chat';
  static const String dropLocation = '/dropLocation';
  static const String listOfRentalCar = '/listOfRentalCar';
  static const String savedLocation = '/savedLocation';
  static const String confirmSavedLocation = '/confirmSavedLocation';
  static const String confirmLocation = '/confirmLocation';
  static const String singleLocation = '/singleLocation';
  static const String locationOnMap = '/locationOnMap';
  static const String coupon = '/coupon';
  static const String loadingRide = '/loadingRide';
  static const String reservationDetail = '/reservationDetail';
  static const String receiveDetail = '/receiveDetail';
  //sos
  static const String sos = '/sos';
  static const String parkinSoS = '/parkinSoS';
  static const String sendParkingDetail = '/sendParkingSoS';

  static const String connectDriver = '/connectDriver';
  static const String jumpRideArrivingIN = '/jumpRideArrivingIN';
  static const String confirmPay = '/confirmPay';
  static const String reveiwRating = '/reveiwRating';
  static const String notification = '/notification';
  static const String cardList = '$wallet/cardList';
  static const String paymentRequest = '$moneyRequest/PaymentRequest';
  static const String moneyRequest = '$wallet/RequestMoney';
  static const String paymentRequestVeiw = '/PaymentRequest';
  static const String onTrip = '/onTrip';
  static const String rideScheduled = '/rideScheduled';

  static const String legal = '/legal';
  static const String privacyPolicy = '$legal/privacyPolicy';
  static const String termCondition = '$legal/termCondition';
  static const String referral = '/referral';
  static const String referAFriend = '$referral/referFriend';
  static const String addReferral = '$referral/addReferral';
  static const String voucher = '/voucher';
  static const String inviteAFriendView = '/inviteAFriendView';

  static const String addVoucher = '$voucher/addVoucher';
  static const String allVouchers = '$voucher/allVouchers';
  static const String report = '/report';
  static const String reportIssue = '$report/issue';
  static const String cancellationPolicy = '$report/cancellationPolicy';
  static const String onRide = '/onRide';
  static const String updateView = "/updateView";

  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    splash: (final BuildContext context) => const Splash(),
    //auth
    sign: (final BuildContext context) => const Sign(),
    language: (final BuildContext context) => const Languages(),
    login: (final BuildContext context) => const Login(),
    register: (final BuildContext context) => const Register(),
    phoneLogin: (final BuildContext context) => const PhoneLogin(),
    emailLogin: (final BuildContext context) => const EmailLogin(),
    getStarted: (final BuildContext context) => const GetStarted(),
    resetPassword: (final BuildContext context) => const ResetPassword(),
    forgotPassword: (final BuildContext context) => const ForgotPassword(),
    //Payment
    addPayment: (final BuildContext context) => const AddPayment(),
    opinion: (final BuildContext context) => const Opinions(),
    intercityDetail: (final BuildContext context) => const IntercityDetail(),
    listOfIntercity: (final BuildContext context) => const ListOfIntercity(),
    rating: (final BuildContext context) => const Rating(),
    trendingLocations: (final BuildContext context) => const TrendingLocations(),
    trendingDes: (context) => const TrendingDes(),
    cancelledRide: (final BuildContext context) => const RideCancelled(),
    profile: (final BuildContext context) => const Profile(),
    reward: (final BuildContext context) => const Reward(),
    wallet: (final BuildContext context) => const Wallet(),
    promotion: (final BuildContext context) => const Promotion(),
    safety: (final BuildContext context) => const Safety(),
    support: (final BuildContext context) => const Support(),
    reportIssue: (final BuildContext context) => const ReportIssue(),
    privicyPolicy: (final BuildContext context) => const PrivicyPolicy(),
    help: (final BuildContext context) => const Help(),
    addEmergency: (final BuildContext context) => const AddEmergency(),
    safetySplash: (final BuildContext context) => const SafetySplash(),
    receipt: (final BuildContext context) => const Receipt(),
    tripDetail: (final BuildContext context) => const TripDetail(),
    packageDetail: (final BuildContext context) => const PackageDetail(),
    // signin: (context) => const Signin(),
    // otp: (context) => const OTP(),
    // email: (context) => const Email(),
    // name: (context) => const Name(),
    //  phone: (context) => const Phone(),
    bidding: (final BuildContext context) => const Bidding(),
    schedule: (final BuildContext context) => const Schedule(),
    addRider: (final BuildContext context) => const AddRiderScreen(),
    arrivingIN: (final BuildContext context) => const ArrivingIN(),
    jumpStartRide: (final BuildContext context) => const JumpStartRide(),
    addLocation: (final BuildContext context) => const AddLocation(),
    jumpStart: (final BuildContext context) => const JumpStart(),
    rental: (final BuildContext context) => const Rental(),
    packages: (final BuildContext context) => const Packages(),
    intercity: (final BuildContext context) => const Intercity(),
    ratingDetail: (final BuildContext context) => const RatingDetail(),
    jumpStartDetail: (final BuildContext context) => const JumpStartDetail(),
    chat: (final BuildContext context) => const Chat(),
    dropLocation: (final BuildContext context) => const DropLocation(),
    listOfRentalCar: (final BuildContext context) => const ListOfRentalCar(),
    savedLocation: (final BuildContext context) => const SavedLocation(),
    confirmSavedLocation: (final BuildContext context) => const ConfirmSavedAddress(),
    confirmLocation: (final BuildContext context) => ConfirmLocations(places: ModalRoute.of(context)!.settings.arguments! as List<Place>),
    singleLocation: (final BuildContext context) => const SingalAddLocation(),
    locationOnMap: (final BuildContext context) => const LocationOnMap(),
    coupon: (final BuildContext context) => const CouponPage(),
    choose: (final BuildContext context) => const ChooseRide(),
    dateTime: (final BuildContext context) => const DateTimes(),
    bottomNavigationScreen: (final BuildContext context) => const Nav(),
    loadingRide: (final BuildContext context) => const LoadingRide(),
    overveiw: (final BuildContext context) => const PackageOverveiw(),
    receiversDetail: (final BuildContext context) => const ReceiversDetails(),
    reservationDetail: (final BuildContext context) => const ReservationDetail(),
    sos: (final BuildContext context) => const Sos(),
    parkinSoS: (final BuildContext context) => const ParkingSoS(),
    sendParkingDetail: (final BuildContext context) => const SendParkingSoS(),
    jumpStartVehicalDetail: (final BuildContext context) => const VehicalDetail(),
    connectDriver: (final BuildContext context) => const ConnectDriver(),
    jumpRideArrivingIN: (final BuildContext context) => const JumpStartRide(),
    bookIntercity: (final BuildContext context) => const BookIntercity(),
    eventDetail: (final BuildContext context) => const Detail(),
    confirmPay: (final BuildContext context) => const ConfirmPay(),
    reveiwRating: (final BuildContext context) => const RateReviewTip(),
    notification: (final BuildContext context) => const NotificationPage(),
    cardList: (final BuildContext context) => const CardList(),
    paymentRequest: (final BuildContext context) => const PaymentRequest(),
    moneyRequest: (final BuildContext context) => const RequestMoney(),
    paymentRequestVeiw: (final BuildContext context) => const PaymentRequestView(),
    onTrip: (final BuildContext context) => const OnTrip(),
    rideScheduled: (final BuildContext context) => const RideScheduled(),
    cancellationPolicy: (final BuildContext context) => const CancellationPolicy(),
    legal: (final BuildContext context) => const Legal(),
    privacyPolicy: (final BuildContext context) => const PrivacyPolicy(),
    termCondition: (final BuildContext context) => const TermCondition(),
    referral: (final BuildContext context) => const Referral(),
    referAFriend: (final BuildContext context) => const ReferAFriend(),
    addReferral: (final BuildContext context) => const AddAReferral(),
    report: (final BuildContext context) => const Report(),
    voucher: (final BuildContext context) => const VoucherPage(),
    addVoucher: (final BuildContext context) => const AddAVoucher(),
    allVouchers: (final BuildContext context) => const AllVouchers(),
    onRide: (final BuildContext context) => const OnRide(),
    inviteAFriendView: (final BuildContext context) => const InviteAFriendView(),
    updateView: (final BuildContext context) => const UpdateView(),
  };
}
