import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/align/icon_text.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import 'rating_detail.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
      appBar: const NameBackBar(title: 'Ratings'),
      body: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 50,
          ),
          const Text('Craig Geidt', textAlign: TextAlign.center, style: Primary.heading),
          const Text('4.8 rated', textAlign: TextAlign.center, style: Secondary.title),
          const Gap(padding * 3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('Lorem ipsum dolor', style: Default.heading),
                const Gap(padding * 2),
                Row(
                  children: <Widget>[
                    SvgPicture.asset(star),
                    const Text.rich(
                      TextSpan(
                        children: <InlineSpan>[
                          TextSpan(text: '5.0', style: Primary.heading),
                          TextSpan(text: ' - 15 total ratings', style: Secondary.heading),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (final BuildContext context) => const RatingDetail(),
                            ),),
                        icon: const Icon(Icons.arrow_forward_ios_rounded),),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
            color: Color(0xFFEEEEEE),
          ),
          const Padding(
            padding: EdgeInsets.only(left: padding, top: 24),
            child: IconText(
              iconColor: Colorx.primary,
              text: 'Verified email address',
              icon: Icons.check,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: padding, top: 19),
            child: IconText(
              iconColor: Colorx.primary,
              text: 'Verified email address',
              icon: Icons.check,
            ),
          ),
        ],
      ),
    );
}
