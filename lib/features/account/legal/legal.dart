import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

Map<String, Function()> data(BuildContext context) => {
  l10n.privacy_policy: () => Navigator.pushNamed(context, AppRoutes.privacyPolicy),
  l10n.terms_conditions: () => Navigator.pushNamed(context, AppRoutes.termCondition),
};

class Legal extends StatelessWidget {
  const Legal({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: NameBackBar(title: l10n.legal),
    body: ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: p12),
      itemBuilder:
          (context, index) => InkWell(
            onTap: data(context).entries.elementAt(index).value,
            customBorder: RoundedSuperellipseBorder(borderRadius: BorderRadiusGeometry.circular(8)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(data(context).entries.elementAt(index).key, style: Default.title), const Icon(Icons.arrow_forward_ios_rounded)],
              ),
            ),
          ),
      separatorBuilder: (context, index) => const Divider(height: 5, indent: 5, endIndent: 8),
      itemCount: data(context).length,
    ),
  );
}
