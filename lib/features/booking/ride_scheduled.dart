import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../core/constants/constants.dart';
import '../../core/extensions/date.dart';
import '../../core/widgets/appbar/filled_back_bar.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import 'provider/config_provider.dart';

class RideScheduled extends StatelessWidget {
  const RideScheduled({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const FilledBackBar(),
    body: Center(
      child: Column(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 126, child: Image.asset(schedule)),
          const Gap(p24),
          Text(l10n.ride_scheduled, style: Default.heading),
          Consumer(
            builder:
                (context, ref, child) => Text(
                  l10n.your_ride_has_been_scheduled_for(DateTime.parse(ref.read(configPProvider).scheduledAt!).toLocal().formatDateTimeWithRelativeDay()),
                  style: Secondary.titleSmall,
                  textAlign: TextAlign.center,
                ),
          ),
        ],
      ),
    ),
  );
}
