import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../addlocation/import.dart';
import '../../booking_repo.dart/booking_repo.dart';
import '../../model/adjusted_price.dart';
part 'adjsut_price.g.dart';

final AutoDisposeStateProvider<double> vValue = AutoDisposeStateProvider<double>((final Ref<double> ref) => 0);

final AutoDisposeStateProvider<double> fValue = AutoDisposeStateProvider<double>((final Ref<double> ref) => 0);

@riverpod
Future<AdjustedPrice> adjustPrice(final Ref ref, final String rideId) {
  final double biddingPrice = ref.watch(fValue);
  if (biddingPrice == 0) {
    // If the bidding price is 0, do not make an API call.
    // Return a default AdjustedPrice object wrapped in a Future.
    return Future.value(const AdjustedPrice());
  }
  // Otherwise, proceed with the API call.
  return ref.read(bookingRepoProvider).getbidding(adjustedPrice: biddingPrice, rId: rideId).then((final either) => either.fold(Future.error, Future.value));
}
