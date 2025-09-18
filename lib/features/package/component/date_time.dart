import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../../core/constants/constants.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../util/colors.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../model/package.dart';
import '../provider/package_provider.dart';

final StateProvider<DateTime> dateProvider = StateProvider<DateTime>((final Ref<DateTime> ref) => now);

final StateProvider<DayPeriod> periodProvider = StateProvider<DayPeriod>((final Ref<DayPeriod> ref) => now.hour > 12 ? DayPeriod.pm : DayPeriod.am);
final StateProvider<int> hour = StateProvider<int>((final Ref<int> ref) => now.hour > 12 ? now.hour - 12 : now.hour);
final StateProvider<int> minute = StateProvider<int>((final Ref<int> ref) => now.minute);
final DateTime now = DateTime.now();
final StateProvider<int> packagesProvider = StateProvider<int>((final Ref<int> ref) => 0);

class DateTimes extends StatefulWidget {
  const DateTimes({super.key});

  @override
  State<DateTimes> createState() => _DateTimesState();
}

class _DateTimesState extends State<DateTimes> {
  @override
  Widget build(final BuildContext context) => DefaultTabController(
    length: 2,
    child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const NameBackBar(title: 'Date & Time'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 26,
            child: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              dividerHeight: 0,
              labelStyle: Primary.title,
              unselectedLabelStyle: Secondary.title,
              labelPadding: const EdgeInsets.symmetric(horizontal: 12),
              splashBorderRadius: BorderRadius.circular(36),
              indicatorPadding: const EdgeInsets.only(left: 12, right: 40, top: 22.6),
              //  labelColor: Colors.white,
              indicatorColor: Colorx.primary,
              indicator: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Colorx.primary),
              indicatorSize: TabBarIndicatorSize.tab,
              // indicatorColor: Color(value),
              tabs: const <Widget>[
                Tab(text: 'For now  '),
                Tab(
                  //  iconMargin: EdgeInsetsDirectional.only(end: 5),
                  text: 'For later ',
                ),
              ],
            ),
          ),
          const Gap(24),
          Expanded(child: TabBarView(children: <Widget>[forNow(), const ForLater()])),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Consumer(
          builder:
              (final BuildContext contex, final WidgetRef ref, final Widget? child) => BlackButton(
                text: l10n.ontinue,
                onPressed: () {
                  if (DefaultTabController.of(contex).index == 1) {
                    final DateTime date = ref.read(dateProvider);
                    final DayPeriod period = ref.read(periodProvider);
                    final int hou = ref.read(hour);
                    final DateTime dateTime = DateTime(
                      date.year,
                      date.month,
                      date.day,
                      (period == DayPeriod.pm && hou != 12)
                          ? hou + 12
                          : (period == DayPeriod.am && hou == 12)
                          ? 0
                          : hou,
                      ref.read(minute),
                    );
                    ref.read(packageProvider.notifier).update((final Package state) => state.copyWith(pickupTime: dateTime));
                  } else {
                    ref.read(packageProvider.notifier).update((final Package state) => state.copyWith(pickupTime: DateTime.now()));
                  }

                  Navigator.pop(context);
                },
              ),
        ),
      ),
    ),
  );
}

Widget forNow() => Consumer(
  builder:
      (final BuildContext context, final WidgetRef ref, final Widget? child) => Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: padding * 2, horizontal: padding),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: ColoredBox(
                color: const Color(0xFFEEEEEE),
                child: DropdownButton(
                  menuWidth: 1000,
                  isDense: true,
                  isExpanded: true,
                  menuMaxHeight: 250,
                  hint: Text(l10n.how_many_package_are_you_sending, textAlign: TextAlign.center, style: Secondary.title),
                  padding: const EdgeInsets.symmetric(horizontal: padding, vertical: 12),
                  dropdownColor: grey,
                  underline: const SizedBox.shrink(),
                  value: ref.watch(packagesProvider) == 0 ? null : ref.watch(packagesProvider),
                  disabledHint: Text(l10n.how_many_package_are_you_sending, textAlign: TextAlign.center, style: Secondary.title),
                  borderRadius: BorderRadius.circular(16),
                  icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 32, color: darkgrey),
                  style: Primary.headingSmalll,
                  elevation: 0,
                  alignment: Alignment.centerLeft,
                  items:
                      List.generate(
                        12,
                        (int items) => DropdownMenuItem(
                          value: ++items,
                          alignment: Alignment.center,
                          child: Text('$items Packages', textAlign: TextAlign.center, style: Primary.heading),
                        ),
                      ).toList(),
                  onChanged: (final int? newValue) {
                    ref.read(packagesProvider.notifier).state = newValue!;
                  },
                ),
              ),
            ),
          ),
        ],
      ),
);

class ForLater extends ConsumerWidget {
  const ForLater({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) => Column(
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(left: padding), child: Text('Date', style: Default.heading)),
          SizedBox(
            height: 92,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: padding),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (final BuildContext context, final int index) {
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
                    color: ref.watch(dateProvider) == date ? grey : Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          index == 0
                              ? 'Today'
                              : index == 1
                              ? 'Tomorrow'
                              : DateFormat('EEEE').format(now.add(Duration(days: index))),
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
          const Padding(padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding), child: Text('Time', style: Default.heading)),
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: padding, right: 8),
                padding: const EdgeInsets.all(3),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: const BorderSide(width: 1.7, color: Color(0xFFEEEEEE))),
                ),
                child: ColoredBox(
                  color: const Color(0xFFEEEEEE),
                  child: DropdownButton(
                    menuWidth: 100,
                    isDense: true,
                    padding: const EdgeInsets.only(bottom: 6, left: padding, right: padding),
                    dropdownColor: grey,
                    underline: const SizedBox.shrink(),
                    value: ref.watch(hour),
                    borderRadius: BorderRadius.circular(16),
                    icon: const Padding(padding: EdgeInsets.only(top: 4), child: Icon(Icons.keyboard_arrow_down_rounded)),
                    elevation: 0,
                    alignment: Alignment.center,
                    items:
                        List.generate(
                          12,
                          (int items) => DropdownMenuItem(
                            value: ++items,
                            alignment: Alignment.center,
                            child: Text(items.toString(), textAlign: TextAlign.center, style: Primary.heading),
                          ),
                        ).toList(),
                    onChanged: (final int? newValue) => ref.read(hour.notifier).state = newValue!,
                  ),
                ),
              ),
              const Text(':', textAlign: TextAlign.center, style: Primary.title),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.all(3),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: const BorderSide(width: 1.7, color: Color(0xFFEEEEEE))),
                ),
                child: ColoredBox(
                  color: const Color(0xFFEEEEEE),
                  child: DropdownButton(
                    menuWidth: 100,
                    isDense: true,
                    padding: const EdgeInsets.only(bottom: 6, left: padding, right: padding),
                    dropdownColor: grey,
                    underline: const SizedBox.shrink(),
                    value: ref.watch(minute),
                    borderRadius: BorderRadius.circular(16),
                    icon: const Padding(padding: EdgeInsets.only(top: 4), child: Icon(Icons.keyboard_arrow_down_rounded)),
                    elevation: 0,
                    alignment: Alignment.center,
                    items:
                        List.generate(
                          60,
                          (final int items) => DropdownMenuItem(
                            value: items,
                            alignment: Alignment.center,
                            child: Text(items.toString(), textAlign: TextAlign.center, style: Primary.heading),
                          ),
                        ).toList(),
                    onChanged: (final int? newValue) => ref.read(minute.notifier).state = newValue!,
                  ),
                ),
              ),
              const Text(':', textAlign: TextAlign.center, style: Primary.title),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.all(3),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: const BorderSide(width: 1.7, color: Color(0xFFEEEEEE))),
                ),
                child: ColoredBox(
                  color: const Color(0xFFEEEEEE),
                  child: DropdownButton(
                    menuWidth: 100,
                    isDense: true,
                    padding: const EdgeInsets.only(bottom: 6, left: padding, right: padding),
                    dropdownColor: grey,
                    underline: const SizedBox.shrink(),
                    value: ref.watch(periodProvider),
                    borderRadius: BorderRadius.circular(16),
                    icon: const Padding(padding: EdgeInsets.only(top: 4), child: Icon(Icons.keyboard_arrow_down_rounded)),
                    elevation: 0,
                    alignment: Alignment.center,
                    items: const <DropdownMenuItem<DayPeriod>>[
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
                    onChanged: (final DayPeriod? newValue) {
                      ref.read(periodProvider.notifier).state = newValue!;
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: padding * 2, horizontal: padding),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: ColoredBox(
                color: const Color(0xFFEEEEEE),
                child: DropdownButton(
                  menuWidth: 1000,
                  isDense: true,
                  isExpanded: true,
                  menuMaxHeight: 250,
                  hint: Text(l10n.how_many_package_are_you_sending, textAlign: TextAlign.center, style: Secondary.title),
                  padding: const EdgeInsets.symmetric(horizontal: padding, vertical: 12),
                  dropdownColor: grey,
                  underline: const SizedBox.shrink(),
                  value: ref.watch(packagesProvider) == 0 ? null : ref.watch(packagesProvider),
                  disabledHint: Text(l10n.how_many_package_are_you_sending, textAlign: TextAlign.center, style: Secondary.title),
                  borderRadius: BorderRadius.circular(16),
                  icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 32, color: darkgrey),
                  style: Primary.headingSmalll,
                  elevation: 0,
                  alignment: Alignment.centerLeft,
                  items:
                      List.generate(
                        12,
                        (int items) => DropdownMenuItem(
                          value: ++items,
                          alignment: Alignment.center,
                          child: Text('$items Packages', textAlign: TextAlign.center, style: Primary.heading),
                        ),
                      ).toList(),
                  onChanged: (final int? newValue) {
                    ref.read(packagesProvider.notifier).state = newValue!;
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
