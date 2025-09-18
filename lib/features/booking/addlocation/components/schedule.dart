import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/appbar/name_backarrow.dart';
import '../../../../core/widgets/buttons/filled_black_button.dart';
import '../../../../util/colors.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/utils.dart';
import '../../../../util/variable.dart';
import '../../provider/booking_provider.dart';
import '../../provider/config_provider.dart';

class Schedule extends ConsumerWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Selected date
    final DateTime selectedDate = ref.watch(dateProvider);
    // Selected time as 24-hour TimeOfDay
    final TimeOfDay time = ref.watch(timeProvider);
    // Display 12-hour value
    final int displayHour = time.hour % 12 == 0 ? 12 : time.hour % 12;
    // AM or PM
    final DayPeriod displayPeriod = time.period;
    //  now = DateTime.now();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: NameBackBar(title: l10n.date_time),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Date picker header
          Padding(padding: const EdgeInsets.only(left: padding), child: Text(l10n.date, style: Default.heading)),
          SizedBox(
            height: 92,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: padding),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                final DateTime date = now.add(Duration(days: index));
                final String dateFormat = DateFormat('dd-MM-yyyy').format(date);

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: MaterialButton(
                    elevation: 0,
                    colorBrightness: Brightness.light,
                    shape: RoundedRectangleBorder(side: const BorderSide(width: 1.7, color: Color(0xFFEEEEEE)), borderRadius: BorderRadius.circular(10)),
                    onPressed: () => ref.read(dateProvider.notifier).state = date,
                    padding: const EdgeInsets.fromLTRB(16, 8, 30, 8),
                    color: selectedDate.day == date.day ? grey : Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          index == 0
                              ? 'Today'
                              : index == 1
                              ? 'Tomorrow'
                              : DateFormat('EEEE').format(date),
                          style: Bold.title,
                        ),
                        Text(dateFormat, style: Secondary.title),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Time picker header
          Padding(padding: const EdgeInsets.symmetric(horizontal: padding, vertical: padding), child: Text(l10n.time, style: Default.heading)),
          Row(
            children: <Widget>[
              // Hour dropdown
              Container(
                margin: const EdgeInsets.only(left: padding, right: 8),
                padding: const EdgeInsets.all(3),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: const BorderSide(width: 1.7, color: Color(0xFFEEEEEE))),
                ),
                child: ColoredBox(
                  color: const Color(0xFFEEEEEE),
                  child: DropdownButton<int>(
                    menuWidth: 100,
                    isDense: true,
                    padding: const EdgeInsets.only(bottom: 6, left: padding, right: padding),
                    dropdownColor: grey,
                    underline: const SizedBox.shrink(),
                    value: displayHour,
                    borderRadius: BorderRadius.circular(16),
                    icon: const Padding(padding: EdgeInsets.only(top: 4), child: Icon(Icons.keyboard_arrow_down_rounded)),
                    elevation: 0,
                    alignment: Alignment.center,
                    items:
                        List.generate(12, (i) {
                          final int h12 = i + 1;
                          return DropdownMenuItem(
                            value: h12,
                            alignment: Alignment.center,
                            child: Text(h12.toString(), textAlign: TextAlign.center, style: Primary.heading),
                          );
                        }).toList(),
                    onChanged: (newH12) {
                      if (newH12 == null) return;
                      final int newHour24 = displayPeriod == DayPeriod.pm ? (newH12 % 12) + 12 : (newH12 % 12);
                      ref.read(timeProvider.notifier).state = TimeOfDay(hour: newHour24, minute: time.minute);
                    },
                  ),
                ),
              ),

              const Text(':', textAlign: TextAlign.center, style: Primary.title),

              // Minute dropdown
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.all(3),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: const BorderSide(width: 1.7, color: Color(0xFFEEEEEE))),
                ),
                child: ColoredBox(
                  color: const Color(0xFFEEEEEE),
                  child: DropdownButton<int>(
                    menuWidth: 100,
                    isDense: true,
                    padding: const EdgeInsets.only(bottom: 6, left: padding, right: padding),
                    dropdownColor: grey,
                    underline: const SizedBox.shrink(),
                    value: time.minute,
                    borderRadius: BorderRadius.circular(16),
                    icon: const Padding(padding: EdgeInsets.only(top: 4), child: Icon(Icons.keyboard_arrow_down_rounded)),
                    elevation: 0,
                    alignment: Alignment.center,
                    items:
                        List.generate(
                          60,
                          (i) => DropdownMenuItem(
                            value: i,
                            alignment: Alignment.center,
                            child: Text(i.toString(), textAlign: TextAlign.center, style: Primary.heading),
                          ),
                        ).toList(),
                    onChanged: (newMin) {
                      if (newMin == null) return;
                      ref.read(timeProvider.notifier).state = time.replacing(minute: newMin);
                    },
                  ),
                ),
              ),

              const Text(':', textAlign: TextAlign.center, style: Primary.title),

              // AM/PM dropdown
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.all(3),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: const BorderSide(width: 1.7, color: Color(0xFFEEEEEE))),
                ),
                child: ColoredBox(
                  color: const Color(0xFFEEEEEE),
                  child: DropdownButton<DayPeriod>(
                    menuWidth: 100,
                    isDense: true,
                    padding: const EdgeInsets.only(bottom: 6, left: padding, right: padding),
                    dropdownColor: grey,
                    underline: const SizedBox.shrink(),
                    value: displayPeriod,
                    borderRadius: BorderRadius.circular(16),
                    icon: const Padding(padding: EdgeInsets.only(top: 4), child: Icon(Icons.keyboard_arrow_down_rounded)),
                    elevation: 0,
                    alignment: Alignment.center,
                    items: const [
                      DropdownMenuItem(
                        value: DayPeriod.am,
                        alignment: Alignment.center,
                        child: Text('AM', textAlign: TextAlign.center, style: Primary.heading),
                      ),
                      DropdownMenuItem(
                        value: DayPeriod.pm,
                        alignment: Alignment.center,
                        child: Text('PM', textAlign: TextAlign.center, style: Primary.heading),
                      ),
                    ],
                    onChanged: (newPeriod) {
                      if (newPeriod == null) return;
                      final int h12 = time.hour % 12;
                      final int newHour24 = newPeriod == DayPeriod.pm ? h12 + 12 : h12;
                      ref.read(timeProvider.notifier).state = TimeOfDay(hour: newHour24, minute: time.minute);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      // Schedule button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: BlackButton(
          text: 'Schedule ride',
          onPressed: () {
            final DateTime date = ref.read(dateProvider);
            final TimeOfDay t = ref.read(timeProvider);
            final DateTime dateTime = DateTime(date.year, date.month, date.day, t.hour, t.minute);
            now = DateTime.now();
            if (now.compareTo(dateTime) > 0) {
              showSnackBar("Please select a Future date and time");
            } else if (now.add(const Duration(minutes: 15)).compareTo(dateTime) > 0) {
              showSnackBar("Please select a time at least 15 minutes from now.");
            } else {
              ref.read(configPProvider.notifier).asScheduled(dateTime.toUtc());
              debugPrint('Scheduled at: $dateTime');
              Navigator.pop(context);
            }
          },
        ),
      ),
    );
  }
}
