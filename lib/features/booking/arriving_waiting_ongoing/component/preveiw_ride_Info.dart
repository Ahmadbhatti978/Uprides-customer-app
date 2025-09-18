// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/actions/open_intercom.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/extensions/string.dart';
import '../../../../core/handle_events.dart';
import '../../../../core/widgets/align/title_subtitle.dart';
import '../../../../util/colors.dart';
import '../../../../util/ride_type_svg.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';
import '../../../home/model/ride_data.dart';
import '../../../home/presentation/component/ride_suggestion/ride_suggestion.dart';
import '../../../home/presentation/component/services/services.dart';
import '../widget/arrivng_in_time.dart';
import '../widget/edit_ride.dart';
import 'driver_detail_contact.dart';

class PreveiwRideInfo extends StatelessWidget {
  const PreveiwRideInfo({required this.scrollController, required this.rideState, super.key, this.ride});
  final ScrollController scrollController;
  final RideData? ride;
  final RideStatus rideState;

  @override
  Widget build(final BuildContext context) {
    final String pin = ride?.data?.pin == null ? '' : ride!.data!.pin!.toString().padLeft(4, '0');

    return Material(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      child: ListView(
        padding: const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
        controller: scrollController,
        children: <Widget>[
          ArrivngInTime(ride: ride),
          const Gap(p24),
          Padding(padding: const EdgeInsets.all(padding), child: DriverDetailAndContact(ride: ride)),
          Card.filled(
            margin: const EdgeInsets.all(padding),
            color: grey,
            // decoration: BoxDecoration(color: , borderRadius: BorderRadius.circular(8)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(padding, padding, padding, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TitleSubtitle(
                            heading: true,
                            bold: true,
                            subtitleicon: Container(
                              width: 16,
                              height: 16,
                              color: ride?.data?.driverInfo?.color != null ? Color(ride!.data!.driverInfo!.color!.hexTo0xFF) : Colors.transparent,
                            ),
                            title: ride?.data?.ride?.vehicleInfo?.registrationNumber ?? "",
                            subTitle: "${ride?.data?.driverInfo?.name} ${ride?.data?.driverInfo?.model}",
                            //  : ${ride?.data?.driverInfo?.color != null ? ride!.data!.driverInfo!.color!.hexTo0xFF.colorName : ""}
                          ),
                          if (rideState != RideStatus.ongoing)
                            Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Text(l10n.pin(pin), style: Bold.title)),
                        ],
                      ),

                      SizedBox(width: mediaQuery.size.width * 0.3, child: RideTypeSvg(ride?.data?.ride?.rideTypeId)),
                    ],
                  ),
                ),

                EditRide(ride: ride),
              ],
            ),
          ),
          const Gap(p24),
          const Services(),
          const Gap(p24),
          const ExploreMore(),
          // SizedBox(
          //   height: 112 + 106,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     padding: const EdgeInsets.symmetric(horizontal: padding),
          //     itemBuilder:
          //         (final BuildContext context, final int index) => SizedBox(
          //           width: 306,
          //           child: Card.filled(
          //             margin: const EdgeInsets.only(right: padding),
          //             color: const Color(0xFFEEEEEE),
          //             clipBehavior: Clip.antiAlias,
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: <Widget>[
          //                 Image.asset(transparent, fit: BoxFit.fitWidth, width: 306, height: 112),
          //                 const Padding(
          //                   padding: EdgeInsets.fromLTRB(padding, 8, horizontalSpacing, 10),
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: <Widget>[
          //                       Text('Lorem ipsum dolor sit amet', style: Bold.titleLarge),
          //                       Text('Lorem ipsum dolor sit amet, consectetu', style: Secondary.title),
          //                     ],
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 6, bottom: 9),
          //                   child: TextButton.icon(
          //                     onPressed: () {},
          //                     iconAlignment: IconAlignment.end,
          //                     label: Text(l10n.learn_more, style: Primary.titleLarge),
          //                     icon: const Icon(Icons.arrow_forward),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //   ),
          // ),
          // const Padding(
          //   padding: EdgeInsets.fromLTRB(padding, padding * 2, padding, 37),
          //   child: Text('Lorem ipsum dolor sit amet, sed do elit consectetur adipiscing elit, ', style: Primary.headingSmalll),
          // ),
          // SizedBox(
          //   height: 114,
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     padding: const EdgeInsets.symmetric(horizontal: padding),
          //     children:
          //         adSuggestions.entries
          //             .map(
          //               (final MapEntry<String, String> entry) => Stack(
          //                 alignment: Alignment.topCenter,
          //                 children: <Widget>[
          //                   Padding(
          //                     padding: const EdgeInsets.only(right: padding / 2),
          //                     child: Stack(
          //                       alignment: Alignment.topCenter,
          //                       children: <Widget>[
          //                         SizedBox(
          //                           width: 110,
          //                           height: 114,
          //                           child: Column(
          //                             mainAxisAlignment: MainAxisAlignment.end,
          //                             children: <Widget>[
          //                               SizedBox(
          //                                 height: 80,
          //                                 width: 110,
          //                                 child: Card.filled(
          //                                   color: const Color(0xFFEEEEEE),
          //                                   clipBehavior: Clip.antiAlias,
          //                                   child: Padding(
          //                                     padding: const EdgeInsets.symmetric(vertical: 20),
          //                                     child: Image.asset(entry.value, height: 40, fit: BoxFit.fitHeight),
          //                                   ),
          //                                 ),
          //                               ),
          //                               const Gap(7),
          //                               Text(entry.key, style: Default.titleSmall),
          //                             ],
          //                           ),
          //                         ),
          //                         Visibility(
          //                           visible: entry.key == 'Intercity',
          //                           child: ColoredBox(
          //                             color: Colorx.primary,
          //                             child: Padding(
          //                               padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
          //                               child: Text(l10n.recommended, style: White.bodySmall),
          //                             ),
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             )
          //             .toList(),
          //   ),
          // ),
          Padding(padding: const EdgeInsets.fromLTRB(padding, padding * 2, 0, 14), child: Text(l10n.support, style: Primary.title)),
          Padding(
            padding: EdgeInsets.only(left: padding, right: mediaQuery.size.width * .35),
            child: FilledButton.icon(
              onPressed: openIntercom, // Navigator.pushNamed(context, AppRoutes.support),
              style: const ButtonStyle(
                shape: WidgetStatePropertyAll(StadiumBorder()),
                backgroundColor: WidgetStatePropertyAll(Color(0xFFEEEEEE)),
                minimumSize: WidgetStatePropertyAll(Size(10, 32)),
                alignment: Alignment.centerLeft,
                padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 10, horizontal: padding)),
              ),
              label: Text(l10n.ask_anything, style: Secondary.title),
              icon: const Icon(Icons.support_agent, color: primary),
            ),
          ),

          // const Divider(height: 48, thickness: 8, color: Color(0xFFEEEEEE)),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: padding),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          //       TitleSubtitle(title: l10n.add_tip_to, subTitle: 'Lorem ipsum dolor sit amet, consectetur'),
          //       Padding(
          //         padding: const EdgeInsets.only(top: padding, bottom: 24),
          //         child: Row(
          //           children:
          //               tips
          //                   .map(
          //                     (final int tip) => Container(
          //                       width: 40,
          //                       height: 40,
          //                       margin: const EdgeInsets.only(right: padding),
          //                       alignment: Alignment.center,
          //                       decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(8)),
          //                       child: Text('\$$tip', textAlign: TextAlign.center, style: Default.titleSmall),
          //                     ),
          //                   )
          //                   .toList(),
          //         ),
          //       ),
          //       ClipRRect(borderRadius: BorderRadius.circular(8), child: Image.asset(transparent, height: 170, width: 400, fit: BoxFit.fitWidth)),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget driverInfo() => ListTile(
    leading: const CircleAvatar(),
    title: const Text('Angel Dias', style: Primary.title),
    subtitle: const Row(children: <Widget>[Icon(Icons.star_sharp, color: Color.fromRGBO(244, 176, 0, 1)), Text('5.0', style: Secondary.title)]),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        //   IconButton.filled(style: IconButton.styleFrom(backgroundColor: grey), onPressed: () {}, icon: const Icon(Icons.phone)),
        const Gap(padding),
        IconButton(style: IconButton.styleFrom(backgroundColor: grey), onPressed: () {}, icon: const Icon(Icons.sms_outlined)),
      ],
    ),
  );
}

class ExploreMore extends StatelessWidget {
  const ExploreMore({super.key});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [Padding(padding: const EdgeInsets.all(padding), child: Text(l10n.explore_more_on_uprides, style: Default.headingSmall)), const RideSuggestion()],
  );
}

String formatDuration(final int seconds) {
  final Duration duration = Duration(seconds: seconds);
  String formattedTime;

  if (duration.inMinutes == 0) {
    formattedTime = '${duration.inSeconds} sec';
  } else {
    formattedTime = '${duration.inMinutes} min';
  }
  return formattedTime;
}
