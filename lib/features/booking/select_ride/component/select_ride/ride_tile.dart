import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/widgets/align/icon_text.dart';
import '../../../../../core/widgets/align/title_subtitle.dart';
import '../../../../../core/widgets/loading_error/loading.dart';
import '../../../../../util/image_assets.dart';
import '../../../../../util/style/typo.dart';
import '../../../../../util/variable.dart';
import '../../../model/ride.dart';
import '../../../model/ride_type_images.dart';

class RideTile extends StatelessWidget {
  const RideTile({required this.ride, required this.rideCategory, super.key, this.isLoading = true, this.s = false});
  final bool isLoading;
  final bool s;
  final RideType rideCategory;

  final Ride? ride;

  @override
  Widget build(final BuildContext context) => AnimatedContainer(
    height: s ? 180 : 83,
    width: mediaQuery.size.width,

    decoration: BoxDecoration(color: s ? const Color.fromARGB(255, 238, 238, 240) : null, borderRadius: s ? BorderRadius.circular(12) : null),
    padding: s ? const EdgeInsets.fromLTRB(0, 8, 0, 14) : null,
    duration: Durations.medium1,
    margin: const EdgeInsets.only(bottom: 8),
    child: Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: <Widget>[
        AnimatedAlign(
          alignment: s ? Alignment.topCenter : Alignment.centerLeft,
          duration: Durations.medium2,
          child: AnimatedContainer(
            margin: EdgeInsets.only(top: s ? padding : 2),

            curve: Curves.ease,
            width: s ? 120 : 70,
            duration: Durations.extralong2,
            child: AnimatedScale(
              scale: s ? 1.6 : 1,
              duration: Durations.medium4,
              child: (isLoading || rideCategory.rideImage == null) ? loading : SvgPicture.network(rideCategory.rideImage!, height: 50),
            ),
            //Image.asset(excar, fit: BoxFit.fitWidth),
          ),
        ),
        AnimatedPositioned(
          left: s ? 16 : 80,
          bottom: s ? 0 : null,
          duration: Durations.medium1,
          width: mediaQuery.size.width - (s ? padding * 3 + 20 : padding * 2 + 80),
          child: Row(
            children: <Widget>[
              if (s)
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(ride?.rideName ?? '', style: Primary.heading),

                      const Gap(4),
                      Row(
                        spacing: 8,
                        children: [
                          Text(ride?.nearestDriver ?? '', style: Secondary.title, maxLines: 1),
                          SvgText(url: seatBelt, title: ride?.totalSeats?.toString() ?? "", height: 14, width: 16),
                        ],
                      ),
                      Text(ride?.tag ?? "", style: Secondary.titleLarge, maxLines: 2),
                    ],
                  ),
                )
              else
                Expanded(
                  flex: 4,
                  child: TitleSubtitle(
                    title: ride?.rideName ?? '',
                    subTitle: ride?.nearestDriver ?? '',
                    heading: true,
                    subtitleicon: SvgText(url: seatBelt, title: ride?.totalSeats?.toString() ?? "", height: 14, width: 14),
                  ),
                ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(top: s ? 18 : 0),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  // mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    AnimatedPadding(
                      duration: Durations.long1,
                      padding: EdgeInsets.only(bottom: s ? 28 : 0),
                      child: IconText(
                        text: ride?.discountedPriceWithoutVat?.toString() ?? r'$22',
                        isBold: true,
                        textSize: 18,
                        gap: 0,
                        icon: Icons.euro,
                        size: 20.5,
                      ),
                    ),

                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        if (s)
                          SizedBox(
                            width: 75,
                            child: IconText(
                              mainAxisAlignment: MainAxisAlignment.center,
                              text: ride?.priceWithoutVat?.toString() ?? '',
                              isBold: true,
                              iconColor: const Color.fromARGB(255, 119, 119, 129),
                              color: const Color.fromARGB(255, 119, 119, 129),
                              gap: 0,
                              size: 18,
                              icon: Icons.euro,
                            ),
                          )
                        else
                          const SizedBox.shrink(),
                        AnimatedContainer(
                          duration: Durations.extralong1,
                          alignment: Alignment.centerLeft,
                          width: s ? 60 : 0,
                          height: s ? 1 : 0,
                          color: const Color.fromARGB(255, 119, 119, 129),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
