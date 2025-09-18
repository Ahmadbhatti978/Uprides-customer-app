import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../booking_repo.dart/booking_repo.dart';
import '../model/coupon.dart';

part 'get_all_coupon.g.dart';

@riverpod
Future<List<Coupon>> getAllCoupon(final Ref ref) async =>
    (await ref.read(bookingRepoProvider).getAllCoupon()).fold(Future.error, Future.value);
