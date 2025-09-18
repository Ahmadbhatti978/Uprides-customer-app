import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../util/colors.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';

class PrivicyPolicy extends StatelessWidget {
  const PrivicyPolicy({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    resizeToAvoidBottomInset: false,
    appBar:   NameBackBar(title: l10n.privacy_policy ),
    body: DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          TabBar(
            dividerHeight: 0,
            padding: const EdgeInsets.symmetric(horizontal: padding),
            splashBorderRadius: BorderRadius.circular(36),
            indicatorPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: padding),
            labelColor: Colors.white,

            indicator: const ShapeDecoration(shape: StadiumBorder(), color: Colors.black),
            indicatorSize: TabBarIndicatorSize.tab,
            // indicatorColor: Color(value),
            tabs:   <Widget>[Tab(text: l10n.general_policy), Tab(text: l10n.legal_policy)],
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Card.filled(
                        margin: EdgeInsets.symmetric(vertical: 24),
                        color: grey,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 22, horizontal: padding),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          ),
                        ),
                      ),
                      const Text('Last update on  July 22, 2024', style: Secondary.title),
                      const Gap(24),
                      const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.', style: Primary.titleSmall),
                      const Gap(49),
                      SizedBox(width: double.maxFinite, child: OutlinedButton(onPressed: () {}, child: Text(l10n.got_it))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Card.filled(
                        margin: EdgeInsets.symmetric(vertical: 24),
                        color: grey,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 22, horizontal: padding),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          ),
                        ),
                      ),
                      const Text('Last update on  July 22, 2024', style: Secondary.title),
                      const Gap(24),
                      const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.', style: Primary.titleSmall),
                      const Gap(49),
                      SizedBox(width: double.maxFinite, child: OutlinedButton(onPressed: () {}, child: Text(l10n.got_it))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
