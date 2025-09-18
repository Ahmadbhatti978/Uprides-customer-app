// ignore_for_file: constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.freezed.dart';

enum BookedFor { SELF, SOMEONE }

enum RideType { ON_DEMAND, SCHEDULED }

enum BookingType { manual, trending }

enum Accessibility { NONE, PetFriendly, Assist }

@freezed
abstract class Config with _$Config {
  // Add private constructor for methods
  const factory Config({
    @Default(BookedFor.SELF) final BookedFor bookedFor,
    @Default(RideType.ON_DEMAND) final RideType type,
    @Default(BookingType.manual) final BookingType bookingType,
    @Default(Accessibility.NONE) final Accessibility accessibility,

    final String? scheduledAt,
    final String? customerRiderId,
  }) = _Config;
  const Config._();

  /// Check if the ride is booked for someone else and has valid rider info
  bool isForSomeone() => bookedFor == BookedFor.SOMEONE && customerRiderId != null && customerRiderId!.isNotEmpty;

  /// Check if the ride is scheduled for a later time
  bool isForLater() => scheduledAt != null && type == RideType.SCHEDULED;

  /// Create a copy with self booking
  Config forSelf() => copyWith(bookedFor: BookedFor.SELF, customerRiderId: null);
  Config fromTrending() => copyWith(bookingType: BookingType.trending);
  Config fromManual() => copyWith(bookingType: BookingType.manual);
  Config bookingTypes(BookingType bookingType) => copyWith(bookingType: bookingType);

  /// Create a copy for someone else
  Config forSomeone(final String riderId) => copyWith(bookedFor: BookedFor.SOMEONE, customerRiderId: riderId);

  /// Create a copy as a scheduled ride
  Config asScheduled(final DateTime time) => copyWith(type: RideType.SCHEDULED, scheduledAt: time.toIso8601String());

  Config onDemand() => copyWith(type: RideType.ON_DEMAND, scheduledAt: null);

  /// Validate that the configuration is complete and consistent
  bool isValid() {
    if (bookedFor == BookedFor.SOMEONE && (customerRiderId == null || customerRiderId!.isEmpty)) {
      return false;
    }

    if (type == RideType.SCHEDULED && scheduledAt == null) {
      return false;
    }

    return true;
  }
}
