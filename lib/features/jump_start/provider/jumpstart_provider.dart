import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../booking/addlocation/model/place.dart';
import '../model/jump.dart';

final StateProvider<Place> jumpLocationProvider = StateProvider<Place>((final Ref<Place> ref) {
  const Place current = Place(); //=   ref.watch(currentPlaceProvider);

  return current;
});

final StateProvider<Jump> jumpstartDetailProvider = StateProvider<Jump>((final Ref<Jump> ref) => const Jump());
