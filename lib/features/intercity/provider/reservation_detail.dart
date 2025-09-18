import 'dart:async';
import 'dart:developer'; // Keep for logging if needed

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart'; // Import fpdart for Either
// import 'package:http/src/response.dart'; // No longer needed directly
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/failure/failure.dart';
// import '../../../util/api/api_helper.dart'; // No longer needed directly
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart'; // Import the Request helper
import '../model/reservation_detail.dart';

part 'reservation_detail.g.dart';

@Riverpod(keepAlive: true)
Future<ReservationDetail> getResevationDetail(final Ref ref, final String rideID) async {
  // Use queryParameters for GET request
  final Map<String, String> queryParameters = <String, String>{'ride_id': rideID};

  // Use Request.get helper
  final Either<ErrorDetails, ReservationDetail> result = await Request.get<ReservationDetail>(
    path: Api.reservation,
    queryParameters: queryParameters,
    jsonAsString: true, // Because reservationDetailFromJson expects a String
    onSuccess: (final json) {
      // json is the raw response body string because jsonAsString is true
      final String responseBody = json as String;
      // Parse the raw JSON string using the dedicated function
      return reservationDetailFromJson(responseBody);
    },
  );

  // Fold the result from Request.get to match the provider's expected return type
  return result.fold((final ErrorDetails error) {
    // Log the error from Request.get itself for better debugging
    log('Error fetching reservation details: ${error.message}', error: error.error, stackTrace: error.stackTrace);
    // Propagate the error as required by the Future<ReservationDetail> signature
    return Future.error(error);
  }, (final ReservationDetail successData) => successData);
}
