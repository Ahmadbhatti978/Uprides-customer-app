import '../../model/ride_payment.dart';

abstract class FCMAction {
  const FCMAction();
}

/// An action that commands the UI to navigate to the ride screen.
class NavigateToRideAction extends FCMAction {
  const NavigateToRideAction(this.rideId);
  final String rideId;

  // Manual override for value equality
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is NavigateToRideAction && other.rideId == rideId;
  }

  // Manual override for hashCode
  @override
  int get hashCode => rideId.hashCode;
}

// ...existing code...
/// An action that commands the UI to pop the current screen for cancel payment.
class CancelPaymentDialogAction extends FCMAction {
  const CancelPaymentDialogAction();
}

class RejectPaymentDialogAction extends FCMAction {
  const RejectPaymentDialogAction();
}

// ...existing code...
/// An action that commands the UI to display a payment request dialog.
class ShowPaymentDialogAction extends FCMAction {
  const ShowPaymentDialogAction(this.ride);
  final RidePaymentModel ride;

  // Manual override for value equality
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    // Assumes RidePaymentModel has its own == and hashCode implementation
    return other is ShowPaymentDialogAction && other.ride == ride;
  }

  // Manual override for hashCode
  @override
  int get hashCode => ride.hashCode;
}
