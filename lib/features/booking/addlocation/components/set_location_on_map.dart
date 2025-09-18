import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/constants.dart';
import '../../../../util/image_assets.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';
import '../model/place.dart';

class SetLocationOnMap extends StatelessWidget {
  const SetLocationOnMap({
    required this.activeLocationIndex,
    required this.pickedLocations,
    required this.onPressed,
    super.key,
    this.padding = const EdgeInsets.only(left: horizontalSpacing / 2),
  });

  final ValueNotifier<int> activeLocationIndex;
  final List<Place> pickedLocations;
  final Future<void> Function(int) onPressed;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) => Padding(
    padding: padding,
    child: ValueListenableBuilder<int>(
      valueListenable: activeLocationIndex,
      builder: (context, value, _) {
        final bool isLocationAvailable = pickedLocations.elementAtOrNull(value)?.location != null || currentCoordinate.latitude != 0;
        return Visibility(
          visible: isLocationAvailable,
          child: TextButton.icon(
            onPressed: () => onPressed(value),
            label: Text(l10n.set_location_on_map, style: Bold.titleSmall),
            icon: SvgPicture.asset(pin, width: 24, height: 24),
          ),
        );
      },
    ),
  );
}
