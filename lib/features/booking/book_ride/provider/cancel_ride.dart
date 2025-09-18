import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../util/variable.dart';
import '../../booking_repo.dart/booking_repo.dart';
import '../socket/ride_socket.dart';

part 'cancel_ride.g.dart';

@riverpod
Future<bool> cancelRide(final Ref ref, final String id, String reason) async {
  if (finshedRideId.contains(id)) {
    rideId = null;
    rideRequest = null;
    ref
      ..invalidate(RidSocketProvider(id))
      ..invalidateSelf();
    return false;
  } else {
    finshedRideId.add(id);

    ref.invalidate(RidSocketProvider(id));
    await ref.read(bookingRepoProvider).cancel(rideId: id, name: reason);

    return true;
  }
}
