import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/failure/failure.dart';
import '../../../util/utils.dart';
import '../../../util/variable.dart';
import '../booking_repo.dart/booking_repo.dart';
import '../coupon.dart';
import '../model/options.dart';
import '../select_ride/provider/coupon_provider.dart';
part 'apply_coupon.g.dart';

@Riverpod(keepAlive: true)
Future<Options> applyCoupon(
  Ref ref, {
  required String couponCode,
  String? rideReqId,
}) async {
  try {
    final Either<ErrorDetails, Options> result = await ref.read(bookingRepoProvider).applyCoupon(
          rideReqId: rideReqId ?? rideRequest?.rideId,
          couponCode: couponCode,
        );

    return result.fold(
      (error) {
        // Reset state on error
        ref.read(couponID.notifier).state = "";
        ref.read(couponProvider.notifier).state = null;

        // Log error for debugging
        //   logger.error('Coupon application failed', error: error);
        showSnackBar(error.toString());

        throw error; // Re-throw for proper error propagation
      },
      (data) {
        // Success state update
        ref.read(couponID.notifier).state = "";
        ref.read(couponProvider.notifier).state = couponCode;
        showSnackBar("Coupon applied successfully", success: true);
        return data;
      },
    );
  } catch (e) {
    // Catch any unexpected errors
    //logger.error('Unexpected error in applyCoupon', error: e, stackTrace: stackTrace);
    ref.read(couponProvider.notifier).state = null;
    rethrow;
  }
}
