import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../util/variable.dart';
import '../../booking_repo.dart/booking_repo.dart';
import '../../model/cancel_charges.dart';
part 'ride_charges.g.dart';

@riverpod
Future<CancelCharges> charges(final Ref ref, final String? rideid) async =>( await ref.read(bookingRepoProvider).rideCharges((rideid ?? rideId)!)).fold(Future.error, Future.value);
