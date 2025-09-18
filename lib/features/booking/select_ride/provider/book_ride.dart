import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/router/route.dart';
import '../../../../util/variable.dart';
import '../../../account/wallet/model/payment_methods.dart';
import '../../../account/wallet/provider/payment_methods.dart';
import '../../../activity/provider/get_activity_provider.dart';
import '../../addlocation/model/config.dart';
import '../../booking_repo.dart/booking_repo.dart';
import '../../model/ride.dart';
import '../../model/status.dart';
import '../../provider/config_provider.dart';
import '../../provider/selected_ride.dart';
part 'book_ride.g.dart';

@riverpod
Future<String> paymentRequest(final Ref ref) async {
  final Ride? sRide = ref.watch(selectedRideProvider);
  final AsyncValue<List<PaymentMethods>> method = ref.read(paymentMethodsNotifierProvider);
  final Config config = ref.read(configPProvider);

  return (await ref
      .read(bookingRepoProvider)
      .book(
        rideReqId: rideRequest!.rideId!,
        rideTypeId: sRide!.rideTypeId!,
        bookingType: config.bookingType,
        assist: config.accessibility == Accessibility.Assist,
        petFriendly: config.accessibility == Accessibility.PetFriendly,
        calculatedFare: sRide.totalAmount ?? 0,
        customerStripeId: method.value?.first.customer ?? '',
        customerPaymentMethod: method.value!.firstWhere((final PaymentMethods element) => element.isDefault ?? false).id ?? '',
        isSchedule: config.isForLater(),
      )).fold(Future.error, (final String r) {
    if (config.isForLater()) {
      navigatorKey.currentState?.pushNamedAndRemoveUntil(AppRoutes.rideScheduled, (Route<dynamic> route) => route.settings.name == AppRoutes.addLocation ||
            route.settings.name == AppRoutes.trendingDes ||
            route.settings.name == AppRoutes.bottomNavigationScreen, arguments: r);
      ref.invalidate(getAcitivitesProvider(ridestatus: RideStatusType.UPCOMMING));
      //      navigatorKey.currentState?.popUntil(ModalRoute.withName(AppRoutes.bottomNavigationScreen));
    } else {
      rideId = r;
      navigatorKey.currentState?.pushNamedAndRemoveUntil(AppRoutes.loadingRide, (Route<dynamic> route) => route.settings.name == AppRoutes.addLocation ||
            route.settings.name == AppRoutes.trendingDes ||
            route.settings.name == AppRoutes.bottomNavigationScreen, arguments: r);
    }

    return Future.value(r);
  });
}

@Riverpod(keepAlive: true)
Future<Status> requestDriver(final Ref ref) async {
  final Ride? sRide = ref.watch(selectedRideProvider);
  if (sRide == null) {
    return Future.error("There is ride are selected");
  }
  return (await ref.read(bookingRepoProvider).requestDriver(rideReqId: rideRequest!.rideId!, rideTypeId: sRide.rideTypeId!)).fold(Future.error, Future.value);
}
