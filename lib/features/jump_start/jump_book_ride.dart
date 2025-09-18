import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../util/colors.dart';
import '../../core/constants/constants.dart';
import '../../core/widgets/align/icon_text.dart';
import '../../core/widgets/align/title_subtitle.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../core/widgets/buttons/grey.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../booking/addlocation/notifier/pickedlocation.dart';
import '../booking/book_ride/time.dart';
import '../booking/select_ride/model/accepted_ride.dart';

int duaration = 0;

class JumpStartRide extends StatelessWidget {
  const JumpStartRide({super.key});

  @override
  Widget build(final BuildContext context) => const Scaffold(body: Stack());
}

class RideInfo extends StatelessWidget {
  const RideInfo({required this.scrollController, required this.ride, super.key});
  final ScrollController scrollController;
  final RideAccept? ride;

  @override
  Widget build(final BuildContext context) {
    duaration = 320;
    return Material(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      child: ListView(
        padding: const EdgeInsets.only(bottom: padding),
        controller: scrollController,
        children: <Widget>[
          ColoredBox(
            color: grey,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 2, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[const Text('Arriving in ', style: Primary.body), Time(second: duaration), const Text(' ...')],
                  ),
                  const Spacer(),
                  PopupMenuButton(
                    onSelected:
                        (final item) => showModalBottomSheet(
                          context: context,
                          barrierColor: Colors.black87,
                          builder:
                              (final BuildContext context) => Padding(
                                padding: const EdgeInsets.all(padding),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Text('Cancel your ride?', style: Bold.title),
                                    const Gap(24),
                                    const Text('👋 Hi Robert, ', style: Primary.title),
                                    const Text(
                                      'Your driver is on his way to pick you up.',
                                      style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: 'Open', fontWeight: FontWeight.w400),
                                    ),
                                    const Gap(padding * 2),
                                    Consumer(
                                      builder:
                                          (final BuildContext context, final WidgetRef ref, final Widget? child) => ListTile(
                                            leading: Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(border: Border.all(width: 6.2), color: Colors.transparent),
                                            ),
                                            title: Text(ref.read(pickedlocationProvider).first.mainText ?? '', style: Primary.title),
                                            subtitle: Text(ref.read(pickedlocationProvider)[1].secondaryText ?? 'bb ', style: Secondary.titleLarge),
                                          ),
                                    ),
                               //     BlackButton(text: l10n.call_driver, onPressed: () {}),
                                    const Gap(12),
                                    GreyButton(text: l10n.cancel_ride, textColor: Colors.redAccent, onPressed: () => dial(context)),
                                    const Gap(12),
                                    Center(child: TextButton(onPressed: () {}, child: Text(l10n.go_back, style: Bold.titleBig))),
                                  ],
                                ),
                              ),
                        ),
                    menuPadding: EdgeInsets.zero,
                    icon: const Icon(Icons.more_horiz_rounded),
                    itemBuilder:
                        (final BuildContext context) => <PopupMenuEntry>[
                          const PopupMenuItem(value: 0, padding: EdgeInsets.symmetric(horizontal: padding), child: Text('Cancel ride', style: Default.title)),
                        ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: padding, vertical: padding),
            padding: const EdgeInsets.fromLTRB(padding, padding, padding, 27),
            decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      height: 88,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          const Align(alignment: Alignment.topCenter, child: CircleAvatar(radius: 36)),
                          Container(
                            padding: const EdgeInsets.only(top: 4, left: 9, right: 10, bottom: 4),
                            decoration: ShapeDecoration(color: const Color(0xFF18C4B8), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                            child: const IconText(text: '4.2/5', isWhite: true, size: 20, icon: Icons.star_rounded),
                          ),
                        ],
                      ),
                    ),
                    const Gap(19),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(ride?.payload?.driver.fullName ?? 'Brandon Saris', style: Bold.headingBig),
                        const Gap(padding / 2),
                        Text(ride?.payload?.vehicle.name ?? 'FORD Fiesta | JH01 AM 2241', style: Default.title),
                      ],
                    ),
                  ],
                ),
                const Gap(24),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[const Text('Contact your driver', style: Primary.title), Text('Share PIN:${ride?.payload?.pin}', style: Bold.title)],
                    ),
                    const Spacer(),
                    IconButton.filled(
                      style: IconButton.styleFrom(backgroundColor: const Color(0xFFE1E1E1)),
                      onPressed: () {},
                      icon: const Icon(Icons.phone, color: Color(0xFF111111)),
                    ),
                    const Gap(padding),
                    IconButton(style: IconButton.styleFrom(backgroundColor: const Color(0xFFE1E1E1)), onPressed: () {}, icon: const Icon(Icons.sms_outlined)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 112 + 106,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: padding),
              itemBuilder:
                  (final BuildContext context, final int index) => SizedBox(
                    width: 306,
                    child: Card.filled(
                      margin: const EdgeInsets.only(right: padding),
                      color: const Color(0xFFEEEEEE),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(transparent, fit: BoxFit.fitWidth, width: 306, height: 112),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(padding, 8, horizontalSpacing, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Lorem ipsum dolor sit amet', style: Bold.titleLarge),
                                Text('Lorem ipsum dolor sit amet, consectetu', style: Secondary.title),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6, bottom: 9),
                            child: TextButton.icon(
                              onPressed: () {},
                              iconAlignment: IconAlignment.end,
                              label: Text(l10n.learn_more, style: Primary.titleLarge),
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(padding, padding * 2, padding, 37),
            child: Text('Lorem ipsum dolor sit amet, sed do elit consectetur adipiscing elit, ', style: Primary.headingSmalll),
          ),
          SizedBox(
            height: 114,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: padding),
              children:
                  adSuggestions.entries
                      .map(
                        (final MapEntry<String, String> entry) => Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: padding / 2),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: <Widget>[
                                  SizedBox(
                                    width: 110,
                                    height: 114,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 80,
                                          width: 110,
                                          child: Card.filled(
                                            color: const Color(0xFFEEEEEE),
                                            clipBehavior: Clip.antiAlias,
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 20),
                                              child: Image.asset(entry.value, height: 40, fit: BoxFit.fitHeight),
                                            ),
                                          ),
                                        ),
                                        const Gap(7),
                                        Text(entry.key, style: Default.titleSmall),
                                      ],
                                    ),
                                  ),
                                  Visibility(
                                    visible: entry.key == 'Intercity',
                                    child: const ColoredBox(
                                      color: Colorx.primary,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 9, vertical: 3),
                                        child: Text('Recommended', style: White.bodySmall),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
            ),
          ),
          const Padding(padding: EdgeInsets.fromLTRB(padding, padding * 2, 0, 14), child: Text('Safety tips?', style: Primary.title)),
          Padding(
            padding: EdgeInsets.only(left: padding, right: mediaQuery.size.width * .35),
            child: FilledButton.icon(
              onPressed: () {},
              style: const ButtonStyle(
                shape: WidgetStatePropertyAll(StadiumBorder()),
                backgroundColor: WidgetStatePropertyAll(Color(0xFFEEEEEE)),
                minimumSize: WidgetStatePropertyAll(Size(10, 32)),
                alignment: Alignment.centerLeft,
                padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 10, horizontal: padding)),
              ),
              label: const Text('Ask with AI....', style: Secondary.title),
              icon: SvgPicture.asset(onpenAi),
            ),
          ),
          const Divider(height: 48, thickness: 8, color: Color(0xFFEEEEEE)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const TitleSubtitle(title: ' to Craig??', subTitle: 'Lorem ipsum dolor sit amet, consectetur'),
                Padding(
                  padding: const EdgeInsets.only(top: padding, bottom: 24),
                  child: Row(
                    children:
                        tips
                            .map(
                              (final int tip) => Container(
                                width: 40,
                                height: 40,
                                margin: const EdgeInsets.only(right: padding),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(8)),
                                child: Text('\$$tip', textAlign: TextAlign.center, style: Default.titleSmall),
                              ),
                            )
                            .toList(),
                  ),
                ),
                ClipRRect(borderRadius: BorderRadius.circular(8), child: Image.asset(transparent, height: 170, width: 400, fit: BoxFit.fitWidth)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future dial(final BuildContext context) => showDialog(
    context: context,
    builder: (final BuildContext context) {
      String sReason = '';
      return AlertDialog(
        insetPadding: const EdgeInsets.all(24),
        title: const Text('Select a reason to cancel', style: Default.heading),
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        actionsOverflowButtonSpacing: 20,
        actions: <Widget>[
          Row(
            children: <Widget>[
              GreyButton(expand: false, onPressed: () => Navigator.pop(context), text: 'Close'),
              const Gap(padding * 1.5),
              Consumer(
                builder:
                    (final BuildContext context, final WidgetRef ref, final Widget? child) => BlackButton(
                      expand: false,
                      text: 'Cancel ride',
                      onPressed: () {
                        //    ref.read(cancelRideProvider(reason: sReason, rideId: ride?.ride?.id));
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                    ),
              ),
            ],
          ),
        ],
        contentPadding: const EdgeInsets.only(top: 12, bottom: 8, left: 8, right: 8),
        actionsAlignment: MainAxisAlignment.end,
        content: StatefulBuilder(
          builder:
              (final BuildContext context, final setState) => Column(
                mainAxisSize: MainAxisSize.min,
                children:
                    cancelRideReasons
                        .map(
                          (final String reason) => InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () => setState(() => sReason = reason),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 18,
                                  height: 18,
                                  margin: const EdgeInsets.only(right: padding, left: 16, top: 12, bottom: 12),
                                  decoration: BoxDecoration(
                                    border: reason != sReason ? Border.all(width: 2, color: darkgrey) : Border.all(width: 5.2, color: const Color(0xFF18C4B8)),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Text(reason, style: Primary.titleSmall),
                              ],
                            ),
                          ),
                        )
                        .toList(),
              ),
        ),
      );
    },
  );

  Widget driverInfo() => ListTile(
    leading: const CircleAvatar(),
    title: const Text('Angel Dias', style: Primary.title),
    subtitle: const Row(children: <Widget>[Icon(Icons.star_sharp, color: Color.fromRGBO(244, 176, 0, 1)), Text('5.0', style: Secondary.title)]),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
  //      IconButton.filled(style: IconButton.styleFrom(backgroundColor: grey), onPressed: () {}, icon: const Icon(Icons.phone)),
        const Gap(padding),
        IconButton(style: IconButton.styleFrom(backgroundColor: grey), onPressed: () {}, icon: const Icon(Icons.sms_outlined)),
      ],
    ),
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
