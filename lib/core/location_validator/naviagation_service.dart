import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/booking/addlocation/model/place.dart';
import '../../features/booking/addlocation/notifier/pickedlocation.dart';
import '../router/route.dart';
import 'error_handling.dart';
import 'model.dart';
import 'provider.dart';

Future<void> navigateToConfirmScreen(BuildContext context, WidgetRef ref) async {
  // 1. Trigger the validation logic from the notifier.
  final bool isValidationSuccessful = await ref.read(locationValidatorProvider.notifier).validateLocations();

  // 2. Handle the result.
  if (isValidationSuccessful) {
    // On success, get the required data and navigate.
    final List<Place> places = ref.read(pickedlocationProvider);
    // Ensure the context is still valid before navigating.
    if (context.mounted) {
      unawaited(Navigator.of(context).pushNamed(AppRoutes.confirmLocation, arguments: places));
    }
  } else {
    // On failure, read the errors from the state and display the first one.
    final List<LocationValidationResult> errors = ref.read(locationValidatorProvider).errors;
    if (errors.isNotEmpty && context.mounted) {
      LocationValidationErrorHandler.handleValidationError(context, errors.first);
    }
  }
}
