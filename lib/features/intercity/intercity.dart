import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/extensions/date.dart';
import '../../core/router/route.dart';
import '../../core/widgets/appbar/closebar.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/utils.dart';
import '../../util/variable.dart';
import '../booking/addlocation/model/place.dart';
import 'model/select_trip.dart';
import 'provider/select_trip.dart';

class Intercity extends ConsumerWidget {
  const Intercity({super.key});

  String? check(final SelectTrip selectTrip) {
    if (selectTrip.dropoffLocation == null) {
      return 'Please specify your drop-off location.';
    } else if (selectTrip.pickupLocation == null) {
      return 'Please specify your pickup location.';
    } else if (selectTrip.on == null) {
      return 'Please select a date for your trip.';
    } else if (selectTrip.seats == null) {
      return 'Please indicate the number of passengers.';
    } else if (selectTrip.dropoffLocation == selectTrip.pickupLocation) {
      return 'Drop-off location and pickup location can not be same';
    }

    // Removed duplicate check for pickupLocation

    return null; // All required fields are filled
  }

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final SelectTrip selectTrip = ref.watch(selectedTripProvider);
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: const CloseBar(),
      body: Image.asset(intercity, height: mediaQuery.size.height * .5, width: mediaQuery.size.width, fit: BoxFit.fitWidth),
      bottomSheet: Padding(
        padding: const EdgeInsets.fromLTRB(padding, padding * 2, padding, 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(text: 'Welcome to ', style: Primary.heading),
                  TextSpan(
                    text: 'BOLD',
                    style: TextStyle(color: Color(0xFF18C4B8), fontSize: 24, fontVariations: <FontVariation>[FontVariation('wght', 700)], letterSpacing: 0.48),
                  ),
                  TextSpan(text: ' Intercity', style: Primary.heading),
                ],
              ),
            ),
            const Text('Start your intercity journey with the ease & comfort', textAlign: TextAlign.center, style: Secondary.title),
            const Gap(padding * 2),
            const Text('Select your trip', style: Default.heading),
            const Gap(padding),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: () async {
                    final Place? place = await Navigator.pushNamed(context, AppRoutes.singleLocation) as Place?;
                    if (place?.location != null) {
                      ref.read(selectedTripProvider.notifier).updateState(selectTrip.copyWith(pickupLocation: place!.location, pickName: place.mainText));
                    }
                  },
                  child: Container(
                    width: mediaQuery.size.width,
                    padding: const EdgeInsets.all(padding),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 18,
                          width: 18,
                          margin: const EdgeInsets.only(left: 4, right: padding),
                          decoration: BoxDecoration(border: Border.all(width: 6), color: Colors.transparent, shape: BoxShape.circle),
                        ),
                        Text(selectTrip.pickName ?? 'From where', textAlign: TextAlign.center, style: Secondary.headingSmall),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 21),
                  child: SizedBox(height: padding, child: VerticalDivider(thickness: 1.6, color: Colors.black)),
                ),
                InkWell(
                  onTap: () async {
                    final Object? place = await Navigator.pushNamed(context, AppRoutes.singleLocation);
                    place as Place?;
                    if (place?.location != null) {
                      ref.read(selectedTripProvider.notifier).updateState(selectTrip.copyWith(dropoffLocation: place!.location, dropoffName: place.mainText));
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: padding),
                    width: mediaQuery.size.width,
                    padding: const EdgeInsets.all(padding),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 18,
                          width: 18,
                          margin: const EdgeInsets.only(left: 4, right: padding),
                          decoration: BoxDecoration(border: Border.all(width: 6), color: Colors.transparent),
                        ),
                        Text(selectTrip.dropoffName ?? 'To where', textAlign: TextAlign.center, style: Secondary.headingSmall),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 9,
                    child: FilledButton.icon(
                      onPressed: () async {
                        final DateTime? date = await showDatePicker(
                          context: context,
                          firstDate: DateTime.now().subtract(const Duration(days: 10)),
                          lastDate: DateTime.now().add(const Duration(days: 150)),
                        );

                        ref.read(selectedTripProvider.notifier).updateState(selectTrip.copyWith(on: date));
                      },
                      style: FilledButton.styleFrom(
                        alignment: Alignment.centerLeft,
                        fixedSize: Size.fromWidth(mediaQuery.size.width),
                        backgroundColor: grey,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      label: Text(selectTrip.on?.toFormattedDate() ?? 'Select date', style: Secondary.titleLarge),
                      icon: const Icon(Icons.calendar_today_outlined, size: 20, color: Colors.black),
                    ),
                  ),
                  const Gap(12),
                  Expanded(
                    flex: 10,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: ColoredBox(
                        color: grey,
                        child: DropdownButton(
                          onChanged: (final int? value) => ref.read(selectedTripProvider.notifier).updateState( selectTrip.copyWith(seats: value)),
                          value: selectTrip.seats,
                          menuWidth: mediaQuery.size.width * .5,
                          padding: const EdgeInsets.only(left: padding, right: padding),
                          dropdownColor: grey,
                          underline: const SizedBox.shrink(),
                          // Initial Value
                          isExpanded: true,
                          borderRadius: BorderRadius.circular(16),
                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down_rounded),
                          elevation: 0,
                          alignment: Alignment.centerRight,
                          hint: const Text('Total passengers', style: Secondary.titleLarge),
                          items: List.generate(16, (int i) => DropdownMenuItem(value: ++i, child: Text(i.toString()))),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(55),
            FilledButton(
              onPressed: () {
                final String? anyError = check(selectTrip);
                if (anyError == null) {
                  Navigator.pushNamed(context, AppRoutes.listOfIntercity, arguments: selectTrip);
                } else {
                  showSnackBar(context: context, anyError);
                }
              },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.black,
                visualDensity: VisualDensity.compact,
                minimumSize: Size(mediaQuery.size.width * .35, 50),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                foregroundColor: Colors.white,
                fixedSize: Size.fromWidth(mediaQuery.size.width - horizontalSpacing * 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Find trip     ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.1,
                      height: 1.33,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      textBaseline: TextBaseline.alphabetic,
                      leadingDistribution: TextLeadingDistribution.even,
                    ),
                  ),
                  SvgPicture.asset(arrow, height: 14),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
