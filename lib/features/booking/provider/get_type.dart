import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../booking_repo.dart/booking_repo.dart';
import '../model/ride_type_images.dart';
part 'get_type.g.dart';

@Riverpod(keepAlive: true)
Future<RideTypeImages> getRideTypeImages(final Ref ref) =>
    ref.read(bookingRepoProvider).rideTpe().then((res) => res.fold(Future.error, Future.value)//, onError: (f, q) => Future.error(f, q)
    );
