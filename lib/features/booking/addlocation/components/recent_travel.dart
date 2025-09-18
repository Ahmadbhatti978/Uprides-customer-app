import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/align/title_subtitle.dart';
import '../../../../util/colors.dart';
import '../../../../util/variable.dart';
import '../model/place.dart';

class RecentTravel extends StatelessWidget {
  const RecentTravel({required this.ref, required this.savedPlaces, required this.myValueSetter, super.key});
  final WidgetRef ref;
  final List<Place> savedPlaces;
  final ValueChanged<Place> myValueSetter;

  @override
  Widget build(final BuildContext context) {
    final List<Place> places = <Place>[...savedPlaces];
    return Visibility(
      visible: places.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: horizontalSpacing, bottom: 6, left: padding),
            child: Text(
              l10n.recent_travel,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                // fontWeight: FontWeight.w500,
                fontVariations: <FontVariation>[FontVariation('wght', 660)],
                letterSpacing: 0.1,

                height: 0,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: const EdgeInsets.symmetric(horizontal: horizontalSpacing),
              itemCount: places.length,
              separatorBuilder: (final BuildContext context, final int index) => const Divider(height: 0, indent: 36, endIndent: 0),
              itemBuilder: (final BuildContext context, final int index) => Tile(myValueSetter: myValueSetter, places: places.elementAt(index)),
            ),
          ),
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({required this.myValueSetter, required this.places, super.key});

  final ValueChanged<Place> myValueSetter;
  final Place places;

  @override
  Widget build(final BuildContext context) => InkWell(
    borderRadius: BorderRadius.circular(8),
    onTap: () => myValueSetter(places),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: p12 / 2),
      child: Row(
        spacing: padding,
        children: <Widget>[
          Icon(places.type == 'saved' ? CupertinoIcons.star_fill : Icons.location_on_rounded, color: darkgrey),
          Expanded(child: TitleSubtitle(title: places.mainText ?? '', subTitle: places.secondaryText)),
        ],
      ),
    ),
  );
}
