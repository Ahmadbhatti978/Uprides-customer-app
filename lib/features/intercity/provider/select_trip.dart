import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/select_trip.dart';
part 'select_trip.g.dart';

@riverpod
class SelectedTrip extends _$SelectedTrip {
  // Use a class for StateProvider/Notifier equivalents
  @override
  SelectTrip build() => const SelectTrip();
  // *** IMPORTANT ***
  // Add a method to update the state, as you can't directly set `.state`
  // from outside the notifier class in generated providers.
  void updateState(SelectTrip newState) {
    state = newState;
  }
}
