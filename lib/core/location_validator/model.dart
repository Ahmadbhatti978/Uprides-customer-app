import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// Add your necessary project imports here
// ...

// Represents the result of a single validation check. No changes needed.
class LocationValidationResult {

  factory LocationValidationResult.error(String message, LocationValidationError type) =>
      LocationValidationResult._(
          isValid: false, errorMessage: message, errorType: type);

  LocationValidationResult._({
    required this.isValid,
    this.errorMessage,
    this.errorType,
  });

  factory LocationValidationResult.valid() => LocationValidationResult._(isValid: true);
  final bool isValid;
  final String? errorMessage;
  final LocationValidationError? errorType;
}

// Enum for specific validation errors. No changes needed.
enum LocationValidationError {
  consecutiveDuplicate,
  differentCountries,
  locationsTooClose,
  activeRideExists,
  insufficientLocations,
  missingCountryData,
  enrichmentFailed,
}

// **IMPROVEMENT**: Simplified state model.
// We use AsyncValue to track the validation process itself.
@immutable
class LocationValidationState {

  const LocationValidationState({
    required this.validationStatus,
    required this.errors,
  });

  factory LocationValidationState.initial() => const LocationValidationState(
        validationStatus: AsyncData(null),
        errors: [],
      );
  // Tracks the loading/error state of the entire validation *operation*.
  final AsyncValue<void> validationStatus;
  
  // Holds the list of specific validation failures from the last run.
  final List<LocationValidationResult> errors;

  LocationValidationState copyWith({
    AsyncValue<void>? validationStatus,
    List<LocationValidationResult>? errors,
  }) => LocationValidationState(
      validationStatus: validationStatus ?? this.validationStatus,
      errors: errors ?? this.errors,
    );
}