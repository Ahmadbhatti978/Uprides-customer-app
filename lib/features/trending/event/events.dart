import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/constants.dart';
import '../../../core/router/route.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(final BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      const Gap(padding),
      SizedBox(
        height: 170,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: padding),
          scrollDirection: Axis.horizontal,
          itemBuilder:
              (final BuildContext context, final int index) => Card(
                margin: const EdgeInsets.only(bottom: padding, right: 12),
                clipBehavior: Clip.antiAlias,
                elevation: 4,
                child: SizedBox(height: 152, child: Image.asset(intercity, height: 152, width: 144, fit: BoxFit.fill)),
              ),
        ),
      ),
      InkWell(
        onTap: () => Navigator.pushNamed(context, AppRoutes.eventDetail),
        child: SizedBox(height: 168, child: Image.asset(intercity, height: 168, width: mediaQuery.size.width - padding * 2, fit: BoxFit.fill)),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding, vertical: 24),
        child: Row(
          children: <Widget>[
            Text(l10n.whats_happening_nearby, textAlign: TextAlign.start, style: Default.title),
            const Padding(
              padding: EdgeInsets.only(bottom: 12, left: 6),
              child: CircleAvatar(radius: 12, backgroundColor: Color(0xFF18C4B8), child: Text('31', style: Bold.small)),
            ),
            const Spacer(),
            TextButton.icon(
              onPressed: () {},
              label: const Text('Explore more', style: Default.bodymedium),
              iconAlignment: IconAlignment.end,
              icon:
              //    Icon(Icons.arrow_forward),
              // )
              SvgPicture.asset(arrow, width: 11, height: 11, colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn)),
            ),
          ],
        ),
      ),
    ],
  );
}
