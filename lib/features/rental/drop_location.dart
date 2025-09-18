import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/appbar/cross_name.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';

class DropLocation extends StatelessWidget {
  const DropLocation({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      appBar: const CrossName(
        title: 'Drop location',
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding, vertical: horizontalSpacing),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(8)),),
                hintText: 'Enter your location',
                filled: true,
                prefixIconConstraints: const BoxConstraints.tightFor(
                  height: 18,
                  width: 46,
                ),
                prefixIcon: Container(
                    height: 18,
                    width: 18,
                    margin: const EdgeInsets.only(right: 12, left: 16),
                    decoration: BoxDecoration(
                      border: Border.all(width: 6),
                      //   color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(8)),),
                fillColor: grey,
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(8)),),
              ),
            ),
            const Gap(padding),
            setLocationOnMap(),
          ],),),
      floatingActionButton: BlackButton(text: 'Done', onPressed: () => Navigator.pop(context)),
    );

  Widget setLocationOnMap() => Visibility(
        //   visible: pickedLocation.elementAtOrNull(value)?.location != null,
        child: TextButton.icon(
            onPressed: () {},
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => AddLocationOnMap(
            //         index: value,
            //         location: pickedLocation.elementAtOrNull(value)?.location ??
            //             pickedLocation.elementAtOrNull(0)?.location ??
            //             const Coordinate(latitude: -33.86, longitude: 151.20),
            //       ),
            //     )),
            label: const Text('Set location on map', style: Bold.titleSmall),
            icon: SvgPicture.asset(
              pin,
              width: 24,
              height: 24,
            ),),
      );
}
