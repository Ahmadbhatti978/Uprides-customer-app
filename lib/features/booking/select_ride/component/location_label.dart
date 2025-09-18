import 'package:flutter/material.dart';

import '../../../../util/colors.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';

class LocationLabel extends StatelessWidget {
  const LocationLabel({required this.place, super.key});

  final String place;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(color: Colorx.primary, borderRadius: BorderRadius.circular(12)),
    alignment: Alignment.center,
    child: Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: mediaQuery.size.width * 0.45, minWidth: 50, maxHeight: 64, minHeight: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              place,
              maxLines: 2,
              overflow: TextOverflow.ellipsis, // Changed from clip
              softWrap: true,
              textAlign: TextAlign.center,
              style: White.titleLarge,
            ),
          ],
        ),
      ),
    ),
  );
}
