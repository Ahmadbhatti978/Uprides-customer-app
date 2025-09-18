import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/constants.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/align/title_subtitle.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../util/colors.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: const NameBackBar(title: 'Detail'),
        body: ColoredBox(
          color: grey,
          child: Column(
            children: <Widget>[
              ColoredBox(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 192,
                      child: PageView.builder(
                        itemCount: 5,
                        itemBuilder: (final BuildContext context, final int index) => ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: padding),
                              child: SizedBox(
                                  height: 192,
                                  width: mediaQuery.size.width - padding * 2,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(padding),
                                    child: Image.asset(
                                      intercity,
                                      height: 192,
                                      fit: BoxFit.fill,
                                    ),
                                  ),),
                            ),),
                      ),
                    ),
                    Card.filled(
                      color: const Color(0xFFF3F8FF),
                      margin: const EdgeInsets.fromLTRB(padding, padding, padding, padding * 2),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(24, 10, padding, 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const TitleSubtitle(title: 'Singing concerts', subTitle: 'Dj Lara Kirloskar'),
                            Card.outlined(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8), side: const BorderSide(color: Color(0xFFE91919)),),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                                child: Text(
                                  'Popular',
                                  style: TextStyle(color: Color(0xFFE91919), fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: padding, right: padding, bottom: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Show99',
                            style: Bold.heading,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: padding),
                            child: Text('Lorem dolor sit amet,\n consectetur elit', style: Primary.title),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              TitleSubtitle(title: 'L & T Stadium', subTitle: 'New york, USA'),
                              TitleSubtitle(title: '09:13 Pm', subTitle: '22 jan, 2024'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Card.filled(
                margin: EdgeInsets.all(padding),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('About', style: Default.heading),
                      Gap(8),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur elit, sed do.',
                        style: Primary.titleSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
            color: Colors.white,
            padding: const EdgeInsets.only(bottom: 18, left: 16, right: 16, top: 16),
            child: BlackButton(
              text: 'Send SoS',
              onPressed: () => Navigator.pushNamed(context, AppRoutes.parkinSoS),
            ),),);
}
