import 'package:flutter/material.dart';
import '../features/booking/driver_not_found.dart';
import '../features/booking/rate_review_tip.dart';
import '../util/variable.dart'; // Assuming this contains navigatorKey, finshedRideId, etc.
import 'router/route.dart';

// 1. ENUM ENHANCEMENT: The enum now holds its own route information.


enum RideStatus {
  created,
  booked,
  pending,
  requesting,
  accepted,
  validated,
  arrived,
  onroute,
  canceled,
  rejected,
  waiting,
  ongoing,
  completed;

  /// A factory constructor to safely create a RideStatus from a string.
  static RideStatus? fromString(String? status) {
    if (status == null) return null;
    try {
      return RideStatus.values.byName(status.toLowerCase());
    } catch (e) {
      return null; // Return null if the string doesn't match any enum value
    }
  }

  /// Getter to associate a route with a status. This is cleaner than a separate function.
  String? get routeName {
    switch (this) {
      case RideStatus.booked:
      case RideStatus.pending:
      case RideStatus.requesting:
        return AppRoutes.loadingRide;
      case RideStatus.accepted:
      case RideStatus.validated:
      case RideStatus.arrived:
      case RideStatus.onroute:
      case RideStatus.waiting:
      case RideStatus.ongoing:
        return AppRoutes.onRide;
      case RideStatus.canceled:
      case RideStatus.rejected:
        return AppRoutes.cancelledRide;

      case RideStatus.completed:
        return AppRoutes.rating;
      case RideStatus.created:
        return null;
    }
  }
}

// 2. REFACTORED HANDLER: Main logic is now in a much clearer `switch` statement.
void handleRideStatus(
  String status,
  String rideId, {
  required String currentRoute, // Pass currentRoute instead of using a global
  required bool driverAccepted,
  bool isBidding = false,
  bool isSystemCancelled = false,
  bool isCustomerCancelled = false,
  VoidCallback? onCanceled,
}) {
  // Guard Clause: Exit early if the ride is already finished.
  if (finshedRideId.contains(rideId)) {
    navigatorKey.currentState?.popUntil(ModalRoute.withName(AppRoutes.bottomNavigationScreen));
    onCanceled?.call();
    return;
  }

  final RideStatus? rideStatus = RideStatus.fromString(status);
  if (rideStatus == null) return; // Exit if status is invalid.

  // Using a switch statement for clarity and type safety.
  switch (rideStatus) {
    case RideStatus.requesting || RideStatus.booked when isBidding:
      _navigateTo(AppRoutes.bidding, rideId, currentRoute, rideStatus);

    case RideStatus.completed:
      _showRateAndReviewBottomSheet(rideId);

    case RideStatus.canceled:
      onCanceled?.call();
      if (isSystemCancelled) {
        _showDriverNotFoundDialog();
      } else {
        _navigateTo(AppRoutes.cancelledRide, rideId, currentRoute, rideStatus);
      }
    // Other cancellation logic can be handled here if needed.

    // Default case for all other statuses that simply navigate.
    default:
      _navigateTo(rideStatus.routeName, rideId, currentRoute, rideStatus);
  }
}

// 3. HELPER FUNCTIONS: Logic for UI and navigation is encapsulated.

/// Handles navigation logic to avoid repetition.
void _navigateTo(String? path, String rideId, String currentRoute, RideStatus rideStatus) {
  if (path == null || path == currentRoute) return;

  final NavigatorState? navigator = navigatorKey.currentState;
  if (navigator == null) return;

  //final Object arg = (path == AppRoutes.onRide) ? (rideId, rideStatus) : rideId;
  // This logic is now in one place.
  if (currentRoute == AppRoutes.bottomNavigationScreen) {
    navigator.pushNamed(path, arguments: rideId);
  } else {
    navigator.popAndPushNamed(path, arguments: rideId);
  }
  // You might want to update your global `currentRoute` variable here if you must keep it.
  // For example: `globalCurrentRoute = path;`
}

/// Shows the rating bottom sheet.
void _showRateAndReviewBottomSheet(String rideId) {
  final BuildContext? context = navigatorKey.currentContext;
  if (context == null) return;

  navigatorKey.currentState?.popUntil(ModalRoute.withName(AppRoutes.bottomNavigationScreen));

  // Using a post-frame callback is slightly cleaner than Future.delayed(Duration.zero)
  WidgetsBinding.instance.addPostFrameCallback((_) {
    if (navigatorKey.currentContext != null) {
      showModalBottomSheet(
        useRootNavigator: true,
        enableDrag: false,
        isDismissible: false,
        isScrollControlled: true,
        context: navigatorKey.currentContext!,
        builder: (context) => PopScope(canPop: false, child: RateReviewTip(id: rideId)),
      );
    }
  });
}

/// Shows the driver not found dialog.
void _showDriverNotFoundDialog() {
  final BuildContext? context = navigatorKey.currentContext;
  if (context == null) return;

  navigatorKey.currentState?.popUntil(ModalRoute.withName(AppRoutes.bottomNavigationScreen));
  showDialog(context: context, barrierDismissible: false, builder: (_) => const DriverNotFound());
}
