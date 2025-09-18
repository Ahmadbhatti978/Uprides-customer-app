import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/constants.dart';
import '../../../core/extensions/date.dart';
import '../../../core/router/route.dart';
import '../../../util/colors.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../booking/addlocation/model/place.dart';
import '../model/package.dart';
import '../provider/package_provider.dart';

final StateProvider<List<MapEntry<Place, ReceiverDetails?>>> locationProvider = StateProvider<List<MapEntry<Place, ReceiverDetails?>>>(
  (final Ref<List<MapEntry<Place, ReceiverDetails?>>> ref) => <MapEntry<Place, ReceiverDetails?>>[],
);
final StateProvider<String?> packageType = StateProvider<String?>((final Ref<String?> ref) => null);

class Send extends ConsumerWidget {
  const Send({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    //  Package package =   ref.read(packageProvider);
    final Package package = ref.watch(packageProvider);
    final List<MapEntry<Place, ReceiverDetails?>> places = ref.watch(locationProvider);
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: ()  {
            // final List<Place> locations = await Navigator.push(context, MaterialPageRoute(builder: (final BuildContext context) => const AddLocation(locationType: 'Package')));
            // locations.removeWhere((final Place place) => place.location == null);
            // final List<MapEntry<Place, ReceiverDetails?>> x = <MapEntry<Place, ReceiverDetails?>>[];
            // for (int i = 0; i < locations.length; i++) {
            //   x.add(MapEntry(locations[i], places.elementAtOrNull(i)?.value ?? const ReceiverDetails()));
            // }
//   ref.read(locationProvider.notifier).state = x;
          },
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 56,
                    margin: const EdgeInsets.only(bottom: padding),
                    width: mediaQuery.size.width,
                    padding: const EdgeInsets.fromLTRB(46, padding, padding, padding),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(12)),
                    child: Text(places.elementAtOrNull(0)?.key.mainText ?? 'Pick up', textAlign: TextAlign.center, maxLines: 1, style: Secondary.headingSmall),
                  ),
                  if (!(places.length - 2).isNegative)
                    ...List.generate(
                      places.length - 2,
                      (final int index) => Container(
                        height: 56,
                        margin: const EdgeInsets.only(bottom: padding),
                        width: mediaQuery.size.width,
                        padding: const EdgeInsets.fromLTRB(46, padding, padding, padding),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          places.elementAtOrNull(index + 1)?.key.mainText ?? 'Drop off',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: Secondary.headingSmall,
                        ),
                      ),
                    ),
                  Container(
                    height: 56,
                    margin: const EdgeInsets.only(bottom: padding),
                    width: mediaQuery.size.width,
                    padding: const EdgeInsets.fromLTRB(46, padding, padding, padding),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      places.length > 1 ? places.last.key.mainText ?? '' : 'Drop off',
                      textAlign: TextAlign.center,
                      style: Secondary.headingSmall,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 19),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 19.5,
                      width: 19.5,
                      decoration: BoxDecoration(border: Border.all(width: 6), color: Colors.transparent, shape: BoxShape.circle),
                    ),
                    Container(height: 52, width: 1, color: Colors.black),
                    if (!(places.length - 2).isNegative)
                      ...List.generate(
                        places.length - 2,
                        (final int index) => Column(
                          children: <Widget>[
                            Container(
                              height: 19.5,
                              width: 19,
                              color: Colors.black,
                              alignment: Alignment.center,
                              child: Text(
                                (index + 1).toString(),
                                style: const TextStyle(color: Colors.white, fontSize: 13, fontVariations: <FontVariation>[FontVariation('wght', 520)]),
                              ),
                            ),
                            Container(height: 52.5, width: 1, color: Colors.black),
                          ],
                        ),
                      ),
                    Container(height: 18.5, width: 18.5, decoration: BoxDecoration(border: Border.all(width: 6), color: Colors.transparent)),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60,
          child: Row(
            children: <Widget>[
              Expanded(
                child: FilledButton.icon(
                  onPressed: () => Navigator.pushNamed(context, AppRoutes.dateTime),
                  style: FilledButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.padded,
                    alignment: Alignment.centerLeft,
                    backgroundColor: grey,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  label: Text(package.pickupTime != null ? package.pickupTime!.toFormattedDate() : 'Select date', style: Secondary.titleLarge),
                  icon: const Icon(Icons.calendar_today_outlined, color: Colors.black),
                ),
              ),
              const Gap(12),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: ColoredBox(
                    color: grey,
                    child: DropdownButton(
                      autofocus: true,
                      onChanged: (final String? value) => ref.read(packageType.notifier).state = value,

                      value: ref.watch(packageType),
                      padding: const EdgeInsets.only(left: padding, top: horizontalSpacing, bottom: horizontalSpacing),
                      dropdownColor: grey,
                      underline: const SizedBox.shrink(),

                      // Initial Value
                      borderRadius: BorderRadius.circular(16),
                      // Down Arrow Icon
                      icon: const Padding(padding: EdgeInsets.only(left: padding * 2), child: Icon(Icons.keyboard_arrow_down_rounded)),
                      elevation: 0,
                      alignment: Alignment.center,
                      hint:   Text(l10n.package_type, style: Secondary.titleLarge),
                      items: const <DropdownMenuItem<String>>[
                        DropdownMenuItem(value: 'Document', child: Text('Document')),
                        DropdownMenuItem(value: 'Other', child: Text('Other')),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
