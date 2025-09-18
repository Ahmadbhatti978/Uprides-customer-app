import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/widgets/align/title_subtitle.dart';
import '../core/widgets/appbar/filled_back_bar.dart';
import '../features/home/model/availability.dart';
import '../util/variable.dart';

class Maintain extends StatelessWidget {
  const Maintain({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const FilledBackBar(),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: TitleSubtitle(
          crossAxisAlignment: CrossAxisAlignment.center,
          heading: true,
          spacing: 6,
          title: availability.getTitle(slocal?.languageCode ?? "en") ?? l10n.blocked_rideflow_title,
          subTitle: availability.getDescription(slocal?.languageCode ?? "en") ?? l10n.blocked_rideflow_subtitle,
        ),
      ),
    ),
  );
}
