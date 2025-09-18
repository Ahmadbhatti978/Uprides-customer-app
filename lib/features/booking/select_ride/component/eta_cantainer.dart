import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';

class EtaContainer extends StatelessWidget {
  const EtaContainer({super.key, this.etaSeconds});

  final int? etaSeconds;

  @override
  Widget build(BuildContext context) {
    final int minutes = Duration(seconds: etaSeconds ?? 0).inMinutes;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: p12),
      color: Colors.white,
      child:
          minutes < 61
              ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text(minutes.toString(), style: Bold.titleBig), Text(l10n.min, style: Secondary.bodySmll)],
              )
              : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Text(Duration(seconds: etaSeconds ?? 0).inHours.toString(), style: Bold.titleBig),
                      Text(Duration(seconds: etaSeconds ?? 0).inHours > 1 ? l10n.hrs : l10n.hr, style: Secondary.bodySmll),
                    ],
                  ),
                  Row(children: [Text((minutes % 60).toString(), style: Bold.titleBig), Text(l10n.min, style: Secondary.bodySmll)]),
                ],
              ),
    );
  }
}
