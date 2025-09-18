import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/helper_fun.dart';
import '../../../../../util/image_assets.dart';
import '../../../../../util/style/typo.dart';

class RideSuggestion extends StatelessWidget {
  const RideSuggestion({super.key});

  @override
  Widget build(final BuildContext context) => SizedBox(
    height: 108,
    child: ListView(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      scrollDirection: Axis.horizontal,
      children:
          rideSuggestions.entries
              .map(
                (final MapEntry<String, String> entry) => GestureDetector(
                  onTap: () => navigate(context, entry.key),
                  child: Padding(
                    padding: const EdgeInsets.only(right: padding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ClipRRect(borderRadius: BorderRadius.circular(8), child: Image.asset(entry.value, height: 80, width: 104, fit: BoxFit.fill)),
                        Text(entry.key, style: Bold.titleSmall),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
    ),
  );
}
