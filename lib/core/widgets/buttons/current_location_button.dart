import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../features/booking/addlocation/model/place.dart';
import '../../../features/home/provider/location_name.dart';
import '../../../util/style/typo.dart';
import '../../constants/constants.dart';

class CurrentLocationButton extends ConsumerWidget {
  const CurrentLocationButton({
    required this.setCurrentLocation,
    this.padding = const EdgeInsets.only(top: 8, left: horizontalSpacing / 2, bottom: 2),
    super.key,
  });
  final ValueChanged<Place> setCurrentLocation;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) => Padding(
    padding: const EdgeInsets.all(8),
    child: ref
        .watch(currentPlaceProvider)
        .when(
          data:
              (current) => TextButton.icon(
                onPressed: () => setCurrentLocation(current),
                label: Text(current.mainText ?? '', style: Bold.titleSmall),
                icon: Container(
                  height: 16,
                  width: 16,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(border: Border.all(width: 5), color: Colors.transparent, shape: BoxShape.circle),
                ),
              ),
          error: (error, stackTrace) => const SizedBox.shrink(),
          loading:
              () => TextButton.icon(
                onPressed: null,
                label: const Text('Fetching your current location', style: Bold.titleSmall),
                icon: Container(
                  height: 16,
                  width: 16,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(border: Border.all(width: 5), color: Colors.transparent, shape: BoxShape.circle),
                ),
              ),
        ),
  );
}
