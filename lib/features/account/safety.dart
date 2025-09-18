import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/router/route.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';

class Safety extends StatelessWidget {
  const Safety({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    resizeToAvoidBottomInset: false,
    appBar: NameBackBar(title: l10n.safety),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding, vertical: padding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(l10n.trusted_contacts, textAlign: TextAlign.center, style: Bold.headingSmall),
          const Gap(padding * 2),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Icon(Icons.location_on_rounded),
                const Gap(8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(l10n.share_your_live_location, style: Primary.title),
                      const Gap(6),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
                        style: Secondary.titleSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(indent: padding * 2, height: padding * 3),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Icon(Icons.support_agent_outlined),
                const Gap(8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(l10n.add_your_trusted_contact, style: Primary.title),
                      const Gap(6),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
                        style: Secondary.titleSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    floatingActionButton: BlackButton(text: l10n.add_emergency_contact, onPressed: () => Navigator.pushNamed(context, AppRoutes.safetySplash)),
  );
}
