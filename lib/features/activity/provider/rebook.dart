import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/extensions/ride_request_to_places.dart';
import '../../../core/router/route.dart';
import '../../../util/utils.dart';
import '../../../util/variable.dart';
import '../../booking/addlocation/model/place.dart';
import '../../booking/addlocation/notifier/pickedlocation.dart';
import '../../home/model/ride_data.dart';

bool rebook(WidgetRef ref, {required RideRequest ride}) {
  final List<Place> places = ride.getPlaces;
  if (places.length > 1) {
    ref.read(pickedlocationProvider.notifier).setPlaces(places);
    navigatorKey.currentState!.pushNamed(AppRoutes.confirmLocation, arguments: ref.read(pickedlocationProvider));
    return true;
  } else {
    showSnackBar("Oops! We couldn't rebook your ride. Try again or pick another one.");
    return false;
  }
}
