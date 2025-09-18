import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../util/style/typo.dart';
import 'opinions.dart';

class RatingDetail extends StatelessWidget {
  const RatingDetail({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
      appBar: const NameBackBar(title: 'Ratings'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Gap(padding * 2),
            const Text('Total rating', style: Default.heading),
            const Gap(8),
            const Text(
              '5/5',
              style: TextStyle(
                color: Colors.black,
                fontSize: 72,
                fontFamily: 'Open',
                fontVariations: <FontVariation>[FontVariation('wght', 600)],
              ),
            ),
            const Text('24 opinions', style: Secondary.title),
            const Gap(32),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text('Excellent', style: Primary.heading), Text('8', style: Primary.heading)],
            ),
            const Gap(32),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text('Good', style: Primary.heading), Text('8', style: Primary.heading)],
            ),
            const Gap(32),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text('Average', style: Primary.heading), Text('8', style: Primary.heading)],
            ),
            const Gap(32),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text('Bad', style: Primary.heading), Text('8', style: Primary.heading)],
            ),
            const Gap(32),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text('Worst', style: Primary.heading), Text('8', style: Primary.heading)],
            ),
            const Divider(
              height: 48,
            ),
            const Gap(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('24 opinions', style: Primary.heading),
                IconButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (final BuildContext context) => const Opinions(),
                        ),),
                    icon: const Icon(Icons.arrow_forward_ios_rounded),),
              ],
            ),
          ],
        ),
      ),
    );
}
