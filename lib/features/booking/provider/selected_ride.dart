import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/ride.dart';
part 'selected_ride.g.dart';

@riverpod
class SelectedRide extends _$SelectedRide {
  // Use a class for StateProvider/Notifier equivalents
  @override
  Ride? build() => null;
  // *** IMPORTANT ***
  // Add a method to update the state, as you can't directly set `.state`
  // from outside the notifier class in generated providers.
  void updateState(Ride? newState) {
    state = newState;
  }
}
