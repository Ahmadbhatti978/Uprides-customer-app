import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/constants.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  int expanded = -1;

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: NameBackBar(title: l10n.help),
    body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      children: <Widget>[
        Text(l10n.get_help, style: Default.heading),
        const Gap(8),
        const Text("", style: Secondary.title),
        ExpansionPanelList(
          elevation: 0,
          expandedHeaderPadding: const EdgeInsets.symmetric(horizontal: 2),
          expansionCallback: (final int panelIndex, final bool isExpanded) => setState(() => isExpanded ? expanded = panelIndex : expanded = -1),
          children: List.generate(
            8,
            (final int i) => ExpansionPanel(
              canTapOnHeader: true,
              headerBuilder:
                  (final BuildContext context, final bool isExpanded) => const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 20), child: Text("", style: Default.titleLarge)),
                  ),
              body: const Column(children: <Widget>[Text("", style: Secondary.titleLarge), Gap(10), Divider()]),
            ),
          ),
        ),
      ],
    ),
  );
}
