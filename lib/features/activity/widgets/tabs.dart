import 'package:flutter/material.dart';
import '../../../util/colors.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
      height: 32,
      child: TabBar(
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        dividerHeight: 0,
        labelPadding: const EdgeInsets.symmetric(horizontal: 12),
        splashBorderRadius: const BorderRadius.all(Radius.circular(16)),
        indicatorPadding: const EdgeInsets.only(left: 16, right: 16, top: 27.5, bottom: 2),

        indicatorColor: primary,
        indicator: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)), color: primary),
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelStyle: Secondary.titleBig,
        labelStyle: Bold.title17,
        tabs: <Widget>[
          Tab(text: l10n.completed),
          Tab(
            //  iconMargin: EdgeInsetsDirectional.only(end: 5),
            text: l10n.cancelled,
          ),
          Tab(
            //  iconMargin: EdgeInsetsDirectional.only(end: 5),
            text: l10n.upcoming,
          ),
        ],
      ),
    );
}
