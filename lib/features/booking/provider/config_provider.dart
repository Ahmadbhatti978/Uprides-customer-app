import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../addlocation/model/config.dart';
part 'config_provider.g.dart';

@Riverpod(keepAlive: true)
class ConfigP extends _$ConfigP {
  // Use a class for StateProvider/Notifier equivalents
  @override
  Config build() => const Config();

  // void updateState(Config newState) {
  //   state = newState;
  // }

  Config forSelf() => state = state.forSelf();
  Config fromTrending() => state = state.fromTrending();
  Config fromMannual() => state = state.fromManual();
  Config changeBookingType(BookingType bookingType) => state = state.bookingTypes(bookingType);

  /// Create a copy for someone else
  Config forSomeone(final String riderId) => state = state.forSomeone(riderId);

  /// Create a copy as a scheduled ride
  Config asScheduled(final DateTime time) => state = state.asScheduled(time);

  Config onDemand() => state = state.onDemand();
}
