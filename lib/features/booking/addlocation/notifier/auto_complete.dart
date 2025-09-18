import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/failure/failure.dart';
import '../../../../util/variable.dart';
import '../model/place.dart';
import '../repo/add_location_repo.dart';

class PlacesNotifier extends StateNotifier<List<Place>> {
  PlacesNotifier(this.ref) : super(<Place>[]);

  final Ref ref;
  final Map<String, List<Place>> cache = <String, List<Place>>{};

  static const String androidKey = '593584096267-d64n515mshtuh33jvtfc76iqg8prrcni.apps.googleusercontent.com';
  static const String iosKey = '593584096267 - ujib2k1ip89g5h0ajjav7ummgtbrckff.apps.googleusercontent.com';
  //final apiKey = Platform.isAndroid ? androidKey : iosKey;

  Future<void> fetchPlaces(final String input) async {
    input.trim();

    if (input.trim().isEmpty) {
      state = <Place>[];
      return;
    }

    if (cache.containsKey(input)) {
      state = cache[input]!;
      return;
    }
    // final stopwatch = Stopwatch()..start();

    // stopwatch.stop();
    // log(
    //     'The code block executed in ${stopwatch.elapsedMilliseconds} milliseconds');

    // if (currentPosition == null) {
    //   throw Exception('Location is not available');
    // }
    // final stopwatc = Stopwatch()..start();
    final Either<ErrorDetails, List<Place>> getPlaces = await AddLocationRepo.fetchPlaces(input, currentCoordinate.latitude, currentCoordinate.longitude);
    getPlaces.fold((final ErrorDetails failure) => log(failure.message), (final List<Place> places) {
      cache[input] = places;
      state = places;
    });
    //stopwatc.stop();
    // print(
    //     'The code block executed in 🔸 ${stopwatc.elapsedMilliseconds} milliseconds');
  }
}

final StateNotifierProvider<PlacesNotifier, List<Place>> placesProvider = StateNotifierProvider<PlacesNotifier, List<Place>>(PlacesNotifier.new);
