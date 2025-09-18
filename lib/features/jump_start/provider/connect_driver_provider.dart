import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart'; // Import fpdart for Either
// import 'package:http/src/response.dart'; // No longer needed directly
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/failure/failure.dart';
// import '../../../util/api/api_helper.dart'; // No longer needed directly
import '../../../core/model/coordinate.dart';
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart'; // Import the Request helper
import '../model/jump.dart';
import 'jumpstart_provider.dart';
part 'connect_driver_provider.g.dart';

@riverpod
Future<void> connectDriver(final Ref ref) async {
  // ignore: avoid_manual_providers_as_generated_provider_dependency
  final Jump detail = ref.read(jumpstartDetailProvider);
  // ignore: avoid_manual_providers_as_generated_provider_dependency
  final Coordinate? location = ref.read(jumpLocationProvider).location; // Read location safely

  // Add null check for location
  if (location == null || location.latitude == null || location.longitude == null) {
    log('Error: Jump location is null or invalid.');
    // Propagate error consistent with Future<void> signature
    return Future.error(ErrorDetails(message: 'Jump location is missing or invalid', stackTrace: StackTrace.current, route: 'connectDriver'));
  }

  final Map<String, Object?> payload = <String, Object?>{
    'current_location': location.toJson(), // Use checked location
    'model': detail.vehicalName,
    'vin': detail.vehicalNumber,
  };

  // Use Request.post helper
  // Since the function returns Future<void>, we don't need a specific success type (T).
  // We can use bool and return true in onSuccess, just to satisfy the Either structure.
  final Either<ErrorDetails, bool> result = await Request.post<bool>(
    path: Api.connectDriver,
    payload: payload,
    // jsonAsString: false, // Default is fine, we don't parse success body here
    onSuccess: (final json) => true,
  );

  // Fold the result to match the Future<void> signature (throw error on Left)
  return result.fold(
    (final ErrorDetails error) {
      // Log the specific error from Request.post
      log('Error connecting driver: ${error.message}', error: error.error, stackTrace: error.stackTrace);
      // Propagate the error as required by the Future<void> signature
      return Future.error(error);
    },
    (final bool success) {
      // Success case: do nothing, function completes successfully (void)
      log('Driver connection request successful.'); // Optional success log
    },
  );
}
