// ignore_for_file: constant_identifier_names

import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/failure/failure.dart';
import '../../../core/model/coordinate.dart';
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart';
import '../../../util/variable.dart';
import '../../home/model/ride_data.dart';
import '../addlocation/model/config.dart';
import '../addlocation/model/place.dart';
import '../model/adjusted_price.dart';
import '../model/bidding.dart';
import '../model/cancel_charges.dart';
import '../model/coupon.dart';
import '../model/drivers_location.dart';
import '../model/options.dart';
import '../model/ride_type_images.dart';
import '../model/status.dart';
part 'booking_repo.g.dart';

enum RideCancelReasonType {
  COULD_NOT_FIND_DRIVER('Could not find driver'),
  I_CHANGED_MY_MIND('I changed my mind'),
  WAIT_TIME_WAS_TOO_LONG('Wait time was too long'),
  DRIVER_ASKED_TO_CANCEL('Driver asked to cancel'),
  DRIVER_NOT_GETTING_CLOSER('Driver not getting closer'),
  OTHER('Other');

  const RideCancelReasonType(this.reason);

  final String reason;
}

// // 1) If Driver On Route (Before Arrival)
// enum RideCancelReasonOnRoute {
//   bookedByMistake,
//   myPlansChanged,
//   foundAnotherWayToTravel,
//   driverTakingTooLongToArrive,
//   driverNotMovingTowardsPickup,
//   pickupLocationEnteredIncorrectly,
//   safetyConcernWithDriversProfile,
//   other;

//   String get reason {
//     switch (this) {
//       case RideCancelReasonOnRoute.bookedByMistake:
//         return l10n.cancel_on_route_booked_by_mistake;
//       case RideCancelReasonOnRoute.myPlansChanged:
//         return l10n.cancel_on_route_my_plans_changed;
//       case RideCancelReasonOnRoute.foundAnotherWayToTravel:
//         return l10n.cancel_on_route_found_another_way_to_travel;
//       case RideCancelReasonOnRoute.driverTakingTooLongToArrive:
//         return l10n.cancel_on_route_driver_taking_too_long_to_arrive;
//       case RideCancelReasonOnRoute.driverNotMovingTowardsPickup:
//         return l10n.cancel_on_route_driver_not_moving_towards_pickup;
//       case RideCancelReasonOnRoute.pickupLocationEnteredIncorrectly:
//         return l10n.cancel_on_route_pickup_location_entered_incorrectly;
//       case RideCancelReasonOnRoute.safetyConcernWithDriversProfile:
//         return l10n.cancel_on_route_safety_concern_with_drivers_profile;
//       case RideCancelReasonOnRoute.other:
//         return l10n.other;
//     }
//   }
// }

// // 2) If Driver Arrived (Not Started Yet)
// enum RideCancelReasonArrived {
//   noLongerNeedTheRide,
//   driverRefusedToTakeMe,
//   vehicleDifferentFromWhatsShown,
//   driverAskedForExtraPayment,
//   vehicleDoesntMeetSafetyOrCleanliness,
//   driverAtWrongPickupLocation,
//   feelUnsafeOrUncomfortable,
//   other;

//   String get reason {
//     switch (this) {
//       case RideCancelReasonArrived.noLongerNeedTheRide:
//         return l10n.cancel_arrived_no_longer_need_the_ride;
//       case RideCancelReasonArrived.driverRefusedToTakeMe:
//         return l10n.cancel_arrived_driver_refused_to_take_me;
//       case RideCancelReasonArrived.vehicleDifferentFromWhatsShown:
//         return l10n.cancel_arrived_vehicle_different_from_whats_shown;
//       case RideCancelReasonArrived.driverAskedForExtraPayment:
//         return l10n.cancel_arrived_driver_asked_for_extra_payment;
//       case RideCancelReasonArrived.vehicleDoesntMeetSafetyOrCleanliness:
//         return l10n.cancel_arrived_vehicle_doesnt_meet_safety_or_cleanliness;
//       case RideCancelReasonArrived.driverAtWrongPickupLocation:
//         return l10n.cancel_arrived_driver_at_wrong_pickup_location;
//       case RideCancelReasonArrived.feelUnsafeOrUncomfortable:
//         return l10n.cancel_arrived_feel_unsafe_or_uncomfortable;
//       case RideCancelReasonArrived.other:
//         return l10n.other;
//     }
//   }
// }

// // 3) If In Trip
// enum RideCancelReasonInTrip {
//   wrongDestination,
//   requestedToEndEarly,
//   feelUnsafeDuringRide,
//   vehicleBreakdownOrTechnicalIssue,
//   personalEmergencyNeedToStop,
//   driversBehaviorInappropriate,
//   other;

//   String get reason {
//     switch (this) {
//       case RideCancelReasonInTrip.wrongDestination:
//         return l10n.cancel_in_trip_wrong_destination;
//       case RideCancelReasonInTrip.requestedToEndEarly:
//         return l10n.cancel_in_trip_requested_to_end_early;
//       case RideCancelReasonInTrip.feelUnsafeDuringRide:
//         return l10n.cancel_in_trip_feel_unsafe_during_ride;
//       case RideCancelReasonInTrip.vehicleBreakdownOrTechnicalIssue:
//         return l10n.cancel_in_trip_vehicle_breakdown_or_technical_issue;
//       case RideCancelReasonInTrip.personalEmergencyNeedToStop:
//         return l10n.cancel_in_trip_personal_emergency_need_to_stop;
//       case RideCancelReasonInTrip.driversBehaviorInappropriate:
//         return l10n.cancel_in_trip_drivers_behavior_inappropriate;
//       case RideCancelReasonInTrip.other:
//         return l10n.other;
//     }
//   }
// }

abstract interface class Booking {
  Future<Either<ErrorDetails, String>> request(
    final List<Place> places,
    final String bookedFor,
    final String accessibility,
    final String type,
    final String? scheduledAt,
    final String? customerRiderId,
  );
  Future<Either<ErrorDetails, String>> editRide(
    final List<Place> places,
    final String bookedFor,
    final String accessibility,
    final String type,
    final String rideID,
    final String? scheduledAt,
    final String? customerRiderId,
  );
  // Future<Either<ErrorDetails, RideDetail>> getAvailableOptions(List<Place> places, String bookedFor, String accessibility, String type);
  Future<Either<ErrorDetails, Options>> getOptions(final String rideId);
  Future<Either<ErrorDetails, RideTypeImages>> rideTpe();
  Future<Either<ErrorDetails, Status>> requestDriver({required final String rideReqId, required final String rideTypeId});
  Future<Either<ErrorDetails, String>> book({
    required final String rideReqId,
    required final String rideTypeId,
    required final bool assist,
    required final bool petFriendly,
    required final num calculatedFare,
    required final String customerStripeId,
    required final String customerPaymentMethod,
    final num? bidAmount,
    final num? tipAmount,
  });
  Future<Either<ErrorDetails, List<Coupon>>> getAllCoupon();
  Future<Either<ErrorDetails, List<DriversLocation>>> nearByDriver(final Coordinate location);
  Future<Either<ErrorDetails, Options>> applyCoupon({final String? rideReqId, final String? couponCode});
  Future<Either<ErrorDetails, String>> cancel({required final String rideId, required final String name});
  Future<Either<ErrorDetails, String>> addRatingComment({required final String? rideID, required final int rating, required final String comment});
  Future<Either<ErrorDetails, Bidding>> bidding({required final double adjustedPrice, required final String rId});
  Future<Either<ErrorDetails, AdjustedPrice>> getbidding({required final double adjustedPrice, required final String rId});
  Future<Either<ErrorDetails, RideData>> rideData(final String id);
  Future<Either<ErrorDetails, CancelCharges>> rideCharges(final String id);
}

@Riverpod(keepAlive: true)
BookingRepo bookingRepo(final Ref ref) => BookingRepo();

class BookingRepo implements Booking {
  Map<String, dynamic> createBookingRequest(
    final List<Place> locations,
    final String bookedFor,
    final String accessibility,
    final String type, {
    final bool isAddress = true,
    final String? scheduledAt,
    final String? customerRiderId,
  }) {
    final List<Place> places = <Place>[...locations]..removeWhere((final Place location) => location.location == null || location.mainText == null);
    if (places.length < 2) {
      throw ArgumentError('At least 2 places are required (pickup & dropoff).');
    }

    final Place pickup = places.first;
    final Place dropoff = places.last;
    final List<Place> stops = places.sublist(1, places.length - 1);

    Map<String, dynamic> placeToStopJson(final Place place) => <String, dynamic>{
      'location': place.location?.toJson(),
      'address': place.mainText ?? place.text ?? 'Unknown',
    };

    return <String, dynamic>{
      'pickup_location': //{"longitude": 74.3373277186817, "latitude": 31.517554162733234},
          pickup.location?.toJson(),
      if (isAddress) 'pickup_address': pickup.mainText ?? pickup.text ?? 'Unknown',
      'dropoff_location': //{"longitude": 74.32476300114246, "latitude": 31.51978691578161},
          dropoff.location?.toJson(),
      if (isAddress) 'dropoff_address': dropoff.mainText ?? dropoff.text ?? 'Unknown',
      'stops': stops.map(placeToStopJson).toList(),
      if (customerRiderId != null) 'customer_rider_id': customerRiderId,
      if (scheduledAt != null) 'scheduled_at': scheduledAt,
      'booked_for': bookedFor,
      'accessiblity': accessibility,
      'type': type,
    };
  }

  @override
  Future<Either<ErrorDetails, String>> request(
    final List<Place> places,
    final String bookedFor,
    final String accessibility,
    final String type,
    final String? scheduledAt,
    final String? customerRiderId,
  ) {
    final Map<String, dynamic> payload = createBookingRequest(
      places,
      bookedFor,
      accessibility,
      type,
      scheduledAt: scheduledAt,
      customerRiderId: customerRiderId,
    );
    log(payload.toString());
    return Request.post<String>(path: Api.request, payload: payload, jsonAsString: true, onSuccess: (final json) => json);
  }

  // @override
  // Future<Either<ErrorDetails, RideDetail>> getAvailableOptions(List<Place> places, String bookedFor, String accessibility, String type) {
  //   final payload = createBookingRequest(places, bookedFor, accessibility, type, isAddress: false);

  //   return Request.post<RideDetail>(
  //     path: Api.options(id),
  //     payload: payload,
  //     onSuccess: (json) {

  //       return json['message'];
  //     },
  //   );
  // }
  @override
  Future<Either<ErrorDetails, Options>> getOptions(final String rideId) =>
      Request.get<Options>(path: Api.options(rideId), onSuccess: (final json) => Options.fromJson(json));

  @override
  Future<Either<ErrorDetails, RideTypeImages>> rideTpe() =>
      Request.get<RideTypeImages>(path: Api.rideTypesForCustomer, log: false, onSuccess: (final json) => RideTypeImages.fromJson(json));

  @override
  Future<Either<ErrorDetails, Status>> requestDriver({required final String rideReqId, required final String rideTypeId}) {
    final Map<String, String> payload = <String, String>{'ride_req_id': rideReqId, 'ride_type_id': rideTypeId};

    // Implement actual API call here, this is just a placeholder
    return Request.post<Status>(
      path:
          // Api.book(rideReqId),
          Api.requestDriver,
      payload: payload,
      onSuccess: (final json) => Status.fromJson(json),
    );
  }

  @override
  Future<Either<ErrorDetails, String>> book({
    required final String rideReqId,
    required final String rideTypeId,
    required final bool assist,
    required final bool petFriendly,
    required final num calculatedFare,
    required final String customerStripeId,
    required final String customerPaymentMethod,
    final BookingType bookingType = BookingType.manual,
    final num? bidAmount,
    final num? tipAmount,
    final bool isSchedule = false,
    final String? poly,
  }) {
    final Map<String, String> payload = <String, String>{
      'ride_type_id': rideTypeId,
      'customer_stripe_id': customerStripeId,
      'customer_payment_method': customerPaymentMethod,
      "polyline": poly ?? rideRequest?.polyline ?? '',
      "booking_type": bookingType.name.toUpperCase(),
    };

    // Implement actual API call here, this is just a placeholder
    return Request.post<String>(
      path: Api.book(rideReqId),

      payload: payload,
      onSuccess: (final json) => rideId = json['data']['ride_id'],

      //  return RideTypeImages.fromJson(json);
    );
  }

  @override
  Future<Either<ErrorDetails, String>> editRide(
    final List<Place> places,
    final String bookedFor,
    final String accessibility,
    final String type,
    final String rideID,
    final String? scheduledAt,
    final String? customerRiderId,
  ) {
    final Map<String, dynamic> payload = createBookingRequest(
      places,
      bookedFor,
      accessibility,
      type,
      scheduledAt: scheduledAt,
      customerRiderId: customerRiderId,
    );

    return Request.put<String>(path: Api.editRequest(rideID), payload: payload, jsonAsString: true, onSuccess: (final json) => json);
  }

  @override
  Future<Either<ErrorDetails, List<Coupon>>> getAllCoupon() => Request.get<List<Coupon>>(
    path: Api.coupons,

    queryParameters: {"city_id": rideRequest?.pickupArea?.cityId},
    onSuccess: (final json) => List<Coupon>.from((json['data']['coupons']['results']!).map((final e) => Coupon.fromJson(e))),
  );

  @override
  Future<Either<ErrorDetails, Options>> applyCoupon({final String? rideReqId, final String? couponCode}) {
    final Map<String, String?> payload = <String, String?>{'ride_req_id': rideReqId, 'coupon_code': couponCode};
    return Request.post<Options>(path: Api.applyCoupons, payload: payload, onSuccess: (final json) => Options.fromJson(json));
  }

  @override
  Future<Either<ErrorDetails, String>> cancel({required final String rideId, required final String name}) {
    final Map<String, dynamic> payload = <String, dynamic>{"is_customer_cancelled": true, 'cancelled_reason': name};
    return Request.post<String>(path: Api.cancel(rideId), payload: payload, onSuccess: (final json) => json['message']);
  }

  @override
  Future<Either<ErrorDetails, String>> addRatingComment({required final String? rideID, required final int rating, required final String comment}) {
    final Map<String, Object> payload = <String, Object>{'rating': rating, 'comment': comment};
    return Request.post<String>(path: Api.addReview(rideId!), payload: payload, onSuccess: (final json) => json['message']);
  }

  @override
  Future<Either<ErrorDetails, List<DriversLocation>>> nearByDriver(final Coordinate location) => Request.get<List<DriversLocation>>(
    path: Api.nearby(location.latitude!, location.longitude!),
    onSuccess:
        (final json) => List<DriversLocation>.from(
          (json['data']['drivers_location_data'] as List).where((e) => e != null && e["coordinates"] != null).map((e) => DriversLocation.fromJson(e)),
        ),
  );

  @override
  Future<Either<ErrorDetails, Bidding>> bidding({required double adjustedPrice, required String rId}) {
    final Map<String, dynamic> payload = <String, dynamic>{'adjusted_price': adjustedPrice};
    return Request.post<Bidding>(path: Api.bidding(rId), payload: payload, onSuccess: (final json) => Bidding.fromJson(json));
  }

  @override
  Future<Either<ErrorDetails, AdjustedPrice>> getbidding({required double adjustedPrice, required String rId}) =>
      Request.get<AdjustedPrice>(path: Api.adjustPrice(rId, adjustedPrice.toString()), onSuccess: (final json) => AdjustedPrice.fromJson(json));

  @override
  Future<Either<ErrorDetails, RideData>> rideData(String id) => Request.get(path: Api.rideData(id), onSuccess: (json) => RideData.fromJson(json));

  @override
  Future<Either<ErrorDetails, CancelCharges>> rideCharges(String id) =>
      Request.get(path: Api.rideCharges(id), onSuccess: (json) => CancelCharges.fromJson(json));
}

// Future<Either<ErrorDetails, RideAccept>> rideRequest(String id) => Request.get(path: Api.rideRequest(id), onSuccess: (json) => RideAccept.fromJson(json));
