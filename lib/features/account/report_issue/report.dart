import 'package:flutter/material.dart';

import '../../../core/actions/open_intercom.dart';
import '../../../core/constants/constants.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

Map<String, Function()> data(BuildContext context) => {
  l10n.cancellationPolicyTitle: () => Navigator.pushNamed(context, AppRoutes.cancellationPolicy),
  l10n.report_issue: openIntercom,
  // () => Navigator.pushNamed(context, AppRoutes.reportIssue),
};

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: NameBackBar(title: l10n.report_issue),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [Text(l10n.report_issue, style: Default.headingSmall), Text(l10n.report_des, style: Secondary.title)],
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: p12),
            itemBuilder:
                (context, index) => InkWell(
                  onTap: data(context).entries.elementAt(index).value,
                  customBorder: RoundedSuperellipseBorder(borderRadius: BorderRadiusGeometry.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(data(context).entries.elementAt(index).key), const Icon(Icons.arrow_forward_ios_rounded)],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => const Divider(height: 5, indent: 5, endIndent: 8),
            itemCount: data(context).length,
          ),
        ),
      ],
    ),
  );
}
