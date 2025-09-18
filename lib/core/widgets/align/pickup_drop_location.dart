import 'package:flutter/material.dart';

import '../../../features/booking/addlocation/model/place.dart';
import '../../../util/colors.dart';
import '../../extensions/string.dart';
import 'title_subtitle.dart';

class PickupDropLocations extends StatelessWidget {
  const PickupDropLocations({required this.places, super.key, this.showeDivider = true});
  final List<Place> places;
  final bool showeDivider;

  @override
  Widget build(final BuildContext context) => Row(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(height: 18, width: 18, decoration: BoxDecoration(border: Border.all(width: 6.5), color: Colors.transparent, shape: BoxShape.circle)),
            ...List.generate(
              places.length - 2 < 0 ? 0 : places.length - 2,
              (final int index) => Column(
                children: <Widget>[
                  Container(height: 35, width: 1, color: Colors.black),
                  Container(
                    height: 19,
                    width: 19,
                    color: Colors.black,
                    alignment: Alignment.center,
                    child: Text(
                      (index + 1).toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 13, fontVariations: <FontVariation>[FontVariation('wght', 520)]),
                    ),
                  ),
                ],
              ),
            ),

            Container(height: 36, width: 1, color: Colors.black),
            Container(height: 18, width: 18, decoration: BoxDecoration(border: Border.all(width: 6), color: Colors.transparent)),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            places.length,
            (final int index) =>
                SizedBox(height: 54, child: TitleSubtitle(title: places.elementAt(index).mainText ?? '', subTitle: places.elementAt(index).secondaryText)),
          ),
        ),
      ],
    );
}

Widget circle = Container(
  height: 18,
  width: 18,
  padding: EdgeInsets.zero,
  margin: EdgeInsets.zero,
  decoration: BoxDecoration(border: Border.all(width: 6), color: Colors.white, shape: BoxShape.circle),
);
final Container box = Container(
  height: 18,
  width: 18,
  margin: EdgeInsets.zero,
  decoration: BoxDecoration(border: Border.all(width: 6), color: Colors.white),
);

class Locations extends StatelessWidget { // Fixed typo in property name
  const Locations({required this.places, super.key, this.showDivider = true});
  final List<Place> places;
  final bool showDivider;

  @override
  Widget build(final BuildContext context) {
    if (places.isEmpty) {
      return const SizedBox.shrink();
    }

    // Define circle and box widgets
    final Container circle = Container(height: 18, width: 18, decoration: BoxDecoration(border: Border.all(width: 6.5), color: Colors.white, shape: BoxShape.circle));

    final Container box = Container(height: 18, width: 18, decoration: BoxDecoration(border: Border.all(width: 6), color: Colors.white));

    return Stack(
      alignment: Alignment.centerLeft,
      children: <Widget>[
        // Background vertical line
        Positioned(
          left: 9,
          top: 18, // Start after the first circle
          bottom: 18, // End before the last box
          width: 1,
          child: Container(color: Colors.black),
        ),

        // Column of locations with markers and dividers
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: List.generate(places.length * 2 - 1, (final int index) {
            // Add dividers between items
            if (index.isOdd) {
              return Divider(height: 28, indent: 24, color: showDivider ? grey : Colors.transparent);
            }

            // Calculate the actual index for accessing places list
            final int placeIndex = index ~/ 2;

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Add padding to align marker with text properly
                Padding(
                  padding: EdgeInsets.only(
                    top: places[placeIndex].secondaryText.isBlank ? 2 : 9,
                    right: 8, // Add spacing between marker and text
                  ),
                  child:
                      placeIndex == 0
                          ? circle
                          : placeIndex == places.length - 1
                          ? box
                          : Container(
                            height: 19,
                            width: 19,
                            color: Colors.black,
                            alignment: Alignment.center,
                            child: Text(
                              (placeIndex).toString(), // Use correct index for numbering
                              style: const TextStyle(color: Colors.white, fontSize: 13, fontVariations: <FontVariation>[FontVariation('wght', 520)]),
                            ),
                          ),
                ),

                // Title and subtitle
                Expanded(child: TitleSubtitle(title: places[placeIndex].mainText ?? '', subTitle: places[placeIndex].secondaryText)),
              ],
            );
          }),
        ),
      ],
    );
  }
}
