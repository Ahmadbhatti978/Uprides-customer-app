// 5. Error Display Service
import 'package:flutter/cupertino.dart';
import '../../features/booking/addlocation/import.dart';
import '../../features/booking/book_ride/provider/ride_data.dart';
import 'model.dart';

// ignore: avoid_classes_with_only_static_members
class LocationValidationErrorHandler {
  static void handleValidationError(BuildContext context, LocationValidationResult result) {
    if (result.isValid) return;

    switch (result.errorType) {
      case LocationValidationError.activeRideExists:
        _showActiveRideDialog(context);
      case LocationValidationError.consecutiveDuplicate:
      case LocationValidationError.differentCountries:
      case LocationValidationError.locationsTooClose:
      case LocationValidationError.insufficientLocations:
      case LocationValidationError.missingCountryData:
        _showSnackBarError(context, result.errorMessage!);
      //   case: LocationValidationError.enrichmentFailed
      default:
        _showSnackBarError(context, result.errorMessage ?? "Unknown error");
    }
  }

  static void _showSnackBarError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red, duration: const Duration(seconds: 3)));
  }

  // ignore: unnecessary_async
  static Future<void> _showActiveRideDialog(BuildContext context) async => showCupertinoDialog(
    context: context,
    builder:
        (context) => CupertinoAlertDialog(
          title: Text(l10n.ride_in_progress),
          content: Text(l10n.you_already_have_an_active_ride),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () => Navigator.of(context).pop(),
              child: Text(l10n.okay, style: const TextStyle(color: Colors.blue)),
            ),
            Consumer(
              builder:
                  (context, ref, child) => CupertinoDialogAction(
                    onPressed: () {
                      currentRoute = AppRoutes.bottomNavigationScreen;
                      Navigator.pop(context);
                      currentRoute = AppRoutes.bottomNavigationScreen;
                      ref.refresh(RideDataProvider(rideId!));
                    },
                    child: Text(l10n.view_current_ride, style: const TextStyle(color: Colors.blue)),
                  ),
            ),
          ],
        ),
  );
}
