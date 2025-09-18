import 'package:flutter/material.dart';

import '../features/account/wallet/model/payment_methods.dart';
import '../features/activity/model/activity.dart';
import '../features/auth/repositories/auth_local.dart';
import '../features/booking/addlocation/model/place.dart';
import '../util/image_assets.dart';
import '../util/variable.dart';
import 'extensions/string.dart';
import 'failure/handle_refresh_token.dart';
import 'model/coordinate.dart';
import 'router/route.dart';

List<Place> getLocations(final Result ride) => <Place>[
  Place(
    mainText: ride.rideRequest?.pickupAddress ?? 'Pickup location',
    location: Coordinate(
      latitude: ride.rideRequest?.pickupLocation?.coordinates?.first ?? 0,
      longitude: ride.rideRequest?.pickupLocation?.coordinates?.last ?? 0,
    ),
  ),
  // ...ride.rideRequest?.stops?.map((waypoint) =>
  //   Place(
  //     mainText: waypoint.address ?? "Waypoint",
  //     location: Coordinate(
  //       latitude: waypoint.location?.coordinates?.first ?? 0,
  //       longitude: waypoint.location?.coordinates?.last ?? 0,
  //     ),
  //   )
  // ) ?? [],
  Place(
    mainText: ride.rideRequest?.dropoffAddress ?? 'Dropoff location',
    location: Coordinate(
      latitude: ride.rideRequest?.dropoffLocation?.coordinates?.first ?? 0,
      longitude: ride.rideRequest?.dropoffLocation?.coordinates?.last ?? 0,
    ),
  ),
];

/// Categorizes payment methods by their card brand
/// Returns a Map where each key is a brand name and the value is a list of payment methods with that brand
Map<String, List<PaymentMethods>> categorizePaymentMethodsByBrand(final List<PaymentMethods> paymentMethods) {
  // Initialize the result map
  final Map<String, List<PaymentMethods>> categorizedMethods = <String, List<PaymentMethods>>{};

  // Process each payment method
  for (final PaymentMethods method in paymentMethods) {
    // Skip if card is null or brand is missing
    if (method.card == null || method.card?.brand == null) {
      continue;
    }

    final String brand = method.card!.brand!;

    // Initialize the list for this brand if it doesn't exist
    if (!categorizedMethods.containsKey(brand)) {
      categorizedMethods[brand] = <PaymentMethods>[];
    }

    // Add the payment method to the appropriate brand list
    categorizedMethods[brand]!.add(method);
  }

  return categorizedMethods;
}

/// Categorizes payment methods by type and brand
Map<String, Map<String, List<PaymentMethods>>> categorizePaymentMethodsByType(final List<PaymentMethods> paymentMethods) {
  // Map structure: {type: {brand: [paymentMethods]}}
  final Map<String, Map<String, List<PaymentMethods>>> categorizedMethods = <String, Map<String, List<PaymentMethods>>>{};

  for (final PaymentMethods method in paymentMethods) {
    // Skip if type is null
    if (method.type == null) {
      continue;
    }

    final String type = method.type!;

    // Initialize the map for this type if it doesn't exist
    if (!categorizedMethods.containsKey(type)) {
      categorizedMethods[type] = <String, List<PaymentMethods>>{};
    }

    // Determine the brand to use
    String brandKey = 'unknown';

    if (method.card != null) {
      // First try to use brand, then fallback to displayBrand
      if (method.card!.brand != null && method.card!.brand!.isNotEmpty) {
        brandKey = method.card!.brand!;
      } else if (method.card!.displayBrand != null && method.card!.displayBrand!.isNotEmpty) {
        brandKey = method.card!.displayBrand!;
      }
    }

    // Initialize the list for this brand if it doesn't exist
    if (!categorizedMethods[type]!.containsKey(brandKey)) {
      categorizedMethods[type]![brandKey] = <PaymentMethods>[];
    }

    // Add the payment method to the appropriate category
    categorizedMethods[type]![brandKey]!.add(method);
  }

  return categorizedMethods;
}

String cardUrl(final String? brand) {
  switch (brand) {
    case 'visa':
      return visa;
    case 'mastercard':
      return mastercard;
    case 'Request Payment':
      return reqPayment;
    default:
      return card;
  }
}

String cardName(final String? brand) {
  switch (brand) {
    case 'visa':
      return 'Visa';
    case 'mastercard':
      return 'Master Card';
    default:
      return brand.capitalize;
  }
}

// Navigation helper function
void navigate(final BuildContext context, final String route) {
  if (route == l10n.jump_start) {
    Navigator.pushNamed(context, AppRoutes.jumpStart);
  } else if (route == l10n.rides) {
    Navigator.pushNamed(context, AppRoutes.addLocation);
  } else if (route == l10n.rentals) {
    Navigator.pushNamed(context, AppRoutes.rental);
  } else if (route == l10n.packages) {
    Navigator.pushNamed(context, AppRoutes.packages);
  } else if (route == l10n.intercity) {
    Navigator.pushNamed(context, AppRoutes.intercity);
  } else if (route == l10n.scheduled_rides) {
    Navigator.pushNamed(context, AppRoutes.addLocation, arguments: {"schedule": true});
    // Navigator.pushNamed(context, AppRoutes.schedule);
  } else if (route == l10n.for_someone) {
    Navigator.pushNamed(context, AppRoutes.addLocation, arguments: {"forSomeone": true});
  } else if (route == l10n.sos) {
    Navigator.pushNamed(context, AppRoutes.sos);
  } else {
    Navigator.pushNamed(context, AppRoutes.addLocation);
  }
}

Future<bool> checkForRetry(final int code) async {
  if (code == 440) {
    await AuthLocalRepo.removeUser();
    return false;
  }
  if (code == 401) {
    return handleTokenRefreshAndLogout();
  }
  return false;
}
