import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/helper_fun.dart';
import '../../../../../util/colors.dart';
import '../../../../../util/image_assets.dart';
import '../../../../../util/style/typo.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({super.key});

  @override
  Widget build(final BuildContext context) => SliverToBoxAdapter(
        child: SizedBox(
            height: 90,
            child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: padding),
                scrollDirection: Axis.horizontal,
                children: suggestions.entries
                    .map((final MapEntry<String, String> entry) => GestureDetector(
                          onTap: () => navigate(context,entry.key ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 24),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 32,
                                  backgroundColor: grey,
                                  backgroundImage: AssetImage(entry.value),
                                ),
                                Text(entry.key, style: Bold.titleSmall),
                              ],
                            ),
                          ),
                        ),)
                    .toList(),),),
      );
}
