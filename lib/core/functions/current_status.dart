import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/home/model/setting.dart';
import '../../features/home/repo/provider.dart';
import '../../util/variable.dart';
import '../global_loading_provider.dart';
part 'current_status.g.dart';


@riverpod
Future<bool> currentRideHappening(Ref ref) async {
  try {
    final Setting value = await ref.read(bookingRepoProvider).getsettings();
    rideId = value.data?.rideId;
    final String? status = value.data?.rideDetails?.status;
    ref.read(gloading.notifier).state = false;
    if (rideId == null || status == null) return false;
    return true;
    // final RideStatus? rideStatus = rideStatusFromString(status.toUpperCase());
    // switch (rideStatus) {
    //   case RideStatus.canceled:
    //   case RideStatus.completed:
    //     return false;
    //   default:
    //     return true;
    // }
  } catch (e) {
    // Optionally log the error or handle it as needed
    ref.read(gloading.notifier).state = false;
    return false;
  }
}

// ...existing code...
