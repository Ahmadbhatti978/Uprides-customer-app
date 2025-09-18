import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';

class Opinions extends StatelessWidget {
  const Opinions({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
      appBar: const NameBackBar(title: 'Opinions'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding),
        child: ListView.builder(
          itemBuilder: (final BuildContext context, final int index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Gap(padding * 2),
              const Text('Craig Geidt', style: Primary.heading),
              const Gap(padding / 2),
              Row(
                children: <Widget>[
                  SvgPicture.asset(star),
                  const Gap(8),
                  const Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        TextSpan(text: '4.5', style: Primary.title),
                        TextSpan(text: '(Excellent)', style: Secondary.title),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco',
                    style: Secondary.titleSmall,),
              ),
              Text('August 21, 2024',
                  style: Secondary.titleBig.copyWith(
                    fontVariations: <FontVariation>[const FontVariation('wght', 600)],
                  ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('24 opinions', style: Primary.heading),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios_rounded)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
}
