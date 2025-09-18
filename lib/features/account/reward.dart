import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/appbar/closebar.dart';
import '../../core/widgets/dotted_line.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';

class Reward extends StatelessWidget {
  const Reward({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: const CloseBar(),
    body: DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[Text(l10n.good_morning, style: Secondary.title), Text(guser?.fullName ?? '', style: Primary.heading)],
                ),
                CircleAvatar(radius: 24, backgroundImage: CachedNetworkImageProvider(guser?.profilePic ?? "")),
              ],
            ),
          ),
          const Reedem(),
          const Gap(12),
          SizedBox(
            height: 26,
            child: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              dividerHeight: 0,
              labelPadding: const EdgeInsets.symmetric(horizontal: 12),
              splashBorderRadius: BorderRadius.circular(36),
              indicatorPadding: const EdgeInsets.only(left: 12, right: 40, top: 21, bottom: 2),
              //  labelColor: Colors.white,
              indicatorColor: Colorx.primary,
              indicator: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Colorx.primary),
              indicatorSize: TabBarIndicatorSize.tab,
              // indicatorColor: Color(value),
              tabs: const <Widget>[
                Tab(text: 'Reward  '),
                Tab(
                  //  iconMargin: EdgeInsetsDirectional.only(end: 5),
                  text: 'Send   ',
                ),
                Tab(text: 'Received'),
              ],
            ),
          ),
          const Gap(24),
          Expanded(child: TabBarView(children: <Widget>[page(), const SizedBox(), const SizedBox()])),
        ],
      ),
    ),
  );

  Column page() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Padding(padding: EdgeInsets.only(left: padding), child: Text('Today, 12 August, 2024', style: Primary.titleSmall)),
      Card.filled(
        color: const Color(0xFFE9FAE3),
        margin: const EdgeInsets.fromLTRB(padding, 24, padding, 0),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(padding: const EdgeInsets.only(right: 120), child: SvgPicture.asset(cofetti)),
                  const Gap(60),
                  SizedBox(
                    height: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('Expires on: 12/02/2025', style: TextStyle(color: Colors.black38, fontSize: 10, fontFamily: 'Open')),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            minimumSize: const Size(30, 20),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                            tapTargetSize: MaterialTapTargetSize.padded,
                            backgroundColor: Colors.white60,
                          ),
                          child: const Text(
                            'Added to wallet',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black54, fontSize: 11, fontFamily: 'Open'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 64 + 16,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundColor: const Color.fromRGBO(255, 255, 255, 0.6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[SvgPicture.asset(euro), const Text('12', style: Bold.headingBig)],
                          ),
                        ),
                        Positioned(bottom: 0, child: SvgPicture.asset(smallCofetti, height: 16)),
                        Positioned(bottom: 12, right: -4, child: SvgPicture.asset(smallCofetti, height: 16)),
                      ],
                    ),
                  ),
                  const Gap(8),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(r'You’ve earned $22 BOLD cash', style: Primary.title),
                      Text('Redeem and add to wallet', style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.3), fontSize: 12, fontFamily: 'Open')),
                      Gap(padding),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Card.filled(
        color: const Color(0xFFFAF8E3),
        margin: const EdgeInsets.fromLTRB(padding, 24, padding, 0),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(padding: const EdgeInsets.only(right: 120), child: SvgPicture.asset(cofetti)),
                  const Gap(60),
                  SizedBox(
                    height: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('Expires on: 12/02/2025', style: TextStyle(color: Colors.black38, fontSize: 10, fontFamily: 'Open')),
                        FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            minimumSize: const Size(20, 10),
                            // surfaceTintColor: Colors.white,
                            // overlayColor: Colors.white,
                            // foregroundColor: Colors.white,
                            splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                            tapTargetSize: MaterialTapTargetSize.padded,
                          ),
                          child: const Text(
                            'Redeem now',
                            style: TextStyle(fontSize: 11, fontFamily: 'Open', fontVariations: <FontVariation>[FontVariation('wght', 600)]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 64 + 16,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundColor: const Color.fromRGBO(255, 255, 255, 0.6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[SvgPicture.asset(euro), const Text('33', style: Bold.headingBig)],
                          ),
                        ),
                        Positioned(bottom: 0, child: SvgPicture.asset(smallCofetti, height: 16)),
                        Positioned(bottom: 12, right: -4, child: SvgPicture.asset(smallCofetti, height: 16)),
                      ],
                    ),
                  ),
                  const Gap(8),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(r'You’ve earned $22 BOLD cash', style: Primary.title),
                      Text('Redeem and add to wallet', style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.3), fontSize: 12, fontFamily: 'Open')),
                      Gap(padding),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: CustomPaint(
          size: const Size.fromHeight(4),
          painter: DottedLinePainter(color: const Color(0xFFEEEEEE), dashWidth: 8, gapWidth: 7, thickness: 1.4),
        ),
      ),
      const Padding(padding: EdgeInsets.only(left: padding), child: Text('Today, 12 August, 2024', style: Primary.titleSmall)),
      Card.filled(
        color: const Color(0xFFFAE3EA),
        margin: const EdgeInsets.fromLTRB(padding, 16, padding, 0),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(padding: const EdgeInsets.only(right: 120), child: SvgPicture.asset(cofetti)),
                  const Gap(60),
                  SizedBox(
                    height: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('Expires on: 12/02/2025', style: TextStyle(color: Colors.black26, fontSize: 10, fontFamily: 'Open')),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            minimumSize: const Size(20, 10),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                            tapTargetSize: MaterialTapTargetSize.padded,
                            backgroundColor: Colors.white60,
                          ),
                          child: const Text('Added to wallet', style: TextStyle(color: Colors.black54, fontSize: 11, fontFamily: 'Open')),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 64 + 16,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundColor: const Color.fromRGBO(255, 255, 255, 0.6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[SvgPicture.asset(euro), const Text('12', style: Bold.headingBig)],
                          ),
                        ),
                        Positioned(bottom: 0, child: SvgPicture.asset(smallCofetti, height: 16)),
                        Positioned(bottom: 12, right: -4, child: SvgPicture.asset(smallCofetti, height: 16)),
                      ],
                    ),
                  ),
                  const Gap(8),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(r'You’ve earned $22 BOLD cash', style: Primary.title),
                      Text('Redeem and add to wallet', style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.3), fontSize: 12, fontFamily: 'Open')),
                      Gap(padding),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

class Reedem extends StatelessWidget {
  const Reedem({super.key});

  @override
  Widget build(BuildContext context) => const Card.filled(
      margin: EdgeInsets.symmetric(horizontal: padding, vertical: 24),
      color: Color(0xFFFEEDFF),
      child: Padding(
        padding: EdgeInsets.fromLTRB(8, 8, 10, 10),
        child: Row(
          children: <Widget>[
            CircleAvatar(backgroundColor: Colors.white, child: Icon(CupertinoIcons.gift_fill, color: Color(0xFF18C4B8))),
            Gap(8),
            Expanded(
              child: Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(text: 'Your reward is expiring soon. ', style: Primary.titleSmall),
                    TextSpan(
                      text: 'Redeem now',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Open',
                        letterSpacing: -0.3,
                        fontVariations: <FontVariation>[FontVariation('wght', 700)],
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: ' to enjoy the cash points', style: Primary.titleSmall),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
}
