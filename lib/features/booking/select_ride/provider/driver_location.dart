import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../addlocation/notifier/pickedlocation.dart';
import '../../booking_repo.dart/booking_repo.dart';
import '../../model/drivers_location.dart';
part 'driver_location.g.dart';

@riverpod
Future<List<DriversLocation>> driverLocation(final Ref ref) async =>
    (await ref.read(bookingRepoProvider).nearByDriver(ref.read(pickedlocationProvider).first.location!)).fold(Future.error, Future.value);
