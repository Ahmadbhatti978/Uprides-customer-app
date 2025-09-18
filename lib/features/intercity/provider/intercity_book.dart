// ignore_for_file: avoid_manual_providers_as_generated_provider_dependency
import 'dart:async';
import 'dart:developer'; // Added for log

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart'; // Added for Either
// import 'package:http/src/response.dart'; // No longer needed directly
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/failure/failure.dart';
// import '../../../util/api/api_helper.dart'; // No longer needed directly
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart'; // Import the Request helper
import '../intercity_detail.dart'; // Keep for provider dependencies
// Import providers used in payload construction if they are defined elsewhere
// import 'path/to/active_provider.dart';
// import 'path/to/is_premium_provider.dart';
// import 'path/to/reservation_detail_provider.dart'; // For the commented out invalidate

part 'intercity_book.g.dart';

@riverpod
Future<String> getIntercityRideBook(final Ref ref, final String rideID) async {
  // Construct payload (same as original)
  final Map<String, Object> payload = <String, Object>{
    'ride_id': rideID,
    'travelers': ref.read(activeProvider).map((final String x) => <String, String>{'rider_id': x}).toList(),
    'cancellation_type': ref.read(isPremiumProvider) == null
        ? 'none'
        : ref.read(isPremiumProvider)!
            ? 'premium_protection'
            : 'cancellation_protection',
  };

  // Use Request.post helper
  final Either<ErrorDetails, String> result = await Request.post<String>(
    path: Api.intracityBook,
    payload: payload,
    // No need for jsonAsString: true, as the original code didn't parse the success body, just returned 'fd'.
    onSuccess: (final json) {
      // Log the actual response if needed for debugging
      log('Intercity book successful (API response: $json)', name: 'getIntercityRideBook');
      // Replicate original success return value
      // NOTE: The original code treated HTTP 400 as success. Request.post treats < 300 as success.
      // This refactored version will consider 400 an error, following the Request helper's logic.
      return 'fd';
    },
  );

  // Fold the result to match the provider's expected return type
  return result.fold(
    (final ErrorDetails error) {
      // Log the error from Request.post itself for better debugging
      // As noted above, this will now include HTTP 400 errors.
      log('Error booking intercity ride: ${error.message}', error: error.error, stackTrace: error.stackTrace);
      // Propagate the error as required by the Future<String> signature
      return Future.error(error);
    },
    (final String successData) => successData
  );
}
