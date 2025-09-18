import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../util/variable.dart';
 
  DateTime now = DateTime.now();


final StateProvider<DateTime> dateProvider = StateProvider<DateTime>((final Ref<DateTime> ref) => now);
final StateProvider<TimeOfDay> timeProvider = StateProvider<TimeOfDay>((final Ref<TimeOfDay> ref) => TimeOfDay.now());

final StateProvider<DayPeriod> periodProvider = StateProvider<DayPeriod>((final Ref<DayPeriod> ref) => TimeOfDay.now().period);

// final StateProvider<Config> configProvider = StateProvider<Config>(( final Ref<Config> ref) => const Config());

final StateProvider<String> ridersProvider = StateProvider<String>((final Ref<String> ref) => guser!.id!);
