import 'dart:developer';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/handle_events.dart';
import '../../../../util/variable.dart';
import '../../../home/model/ride_data.dart';
import '../../booking_repo.dart/booking_repo.dart';
import '../socket/ride_socket.dart';
part 'ride_data.g.dart';

@riverpod
Future<RideData> rideData(Ref ref, String id) async => (await ref.read(bookingRepoProvider).rideData(id)).fold(Future.error, (data) {
  // log('rideDataProvider returned: ${data.data?.ride}');
  if (data.data?.ride?.status != null && data.data?.ride?.id != null && !finshedRideId.contains(id)) {
    FlutterNativeSplash.remove();
    handleRideStatus(
      data.data!.ride!.status!,
      data.data!.ride!.id!,
      isCustomerCancelled: data.data?.ride?.isCustomerCancelled ?? false,
      driverAccepted: data.data?.driverInfo?.id != null && data.data?.ride?.driverId != null,
      isBidding: data.data?.ride?.isBidding ?? false,
      currentRoute: // navigatorKey.currentContext != null ? (ModalRoute.of(navigatorKey.currentContext!)?.settings.name ?? currentRoute) :
       currentRoute,
      isSystemCancelled: data.data?.ride?.isSystemCancelled ?? false,
      onCanceled: () {
        ref
          ..invalidate(RidSocketProvider(id))
          ..invalidateSelf();
        if (!finshedRideId.contains(id)) {
          finshedRideId.add(id);
        }
      },
    );
  } else {
    log('Empty Data coming');
  }
  return Future.value(data);
});
