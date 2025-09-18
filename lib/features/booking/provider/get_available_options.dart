import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../booking_repo.dart/booking_repo.dart';
import '../model/options.dart';
import 'selected_ride.dart';

part 'get_available_options.g.dart';

//@Riverpod(keepAlive: true)

@riverpod
Future<Options> getOptions(final Ref ref, final String rideId) async =>
    (await ref.read(bookingRepoProvider).getOptions(rideId)).fold(Future.error, (final Options r) {
      if (!(r.data?.options?.isEmpty ?? true)) ref.read(selectedRideProvider.notifier).updateState(r.data?.options?.firstOrNull);
      return Future.value(r);
    });
