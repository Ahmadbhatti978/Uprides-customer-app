import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart'; // Import the Request helper

part 'book.g.dart';

@Riverpod(keepAlive: true)
Future<BookedRide> bookjumpStartRide(final Ref ref, final String rideRequestId, final String driverId) async {
  final Map<String, String> payload = <String, String>{'ride_id': rideRequestId, 'driver_id': driverId};

  return (await Request.post<BookedRide>(
    path: Api.jumpStartBook,
    payload: payload,
    onSuccess: (final json) => BookedRide(),
  )).fold(Future.error, (final BookedRide successData) => successData);
}

class BookedRide {}
