import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/router/route.dart';
import '../../core/widgets/appbar/backbar.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import 'model/jump.dart';
import 'provider/jumpstart_provider.dart';

class VehicalDetail extends ConsumerWidget {
  const VehicalDetail({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) => Scaffold(
    appBar: const BackBar(),
    body: Padding(
      padding: const EdgeInsets.all(padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(l10n.enter_your_vehicle_number, style: Default.heading),
          Padding(
            padding: const EdgeInsets.only(top: padding, bottom: 24),
            child: TextField(
              onChanged: (final String value) => ref.read(jumpstartDetailProvider.notifier).update((final Jump state) => state.copyWith(vehicalNumber: value)),
              decoration: const InputDecoration(hintText: 'Enter your VIN number'),
            ),
          ),
          Text(l10n.enter_your_vehicle_name, style: Default.heading),
          const Gap(padding),
          TextField(
            onChanged: (final String value) => ref.read(jumpstartDetailProvider.notifier).update((final Jump state) => state.copyWith(vehicalName: value)),
            decoration: const InputDecoration(hintText: 'What is your vehicle name? F-mustang?'),
          ),
        ],
      ),
    ),
    floatingActionButton: BlackButton(
      text: l10n.ontinue,
      onPressed: () {
        ref.read(jumpstartDetailProvider);
        Navigator.pushNamed(context, AppRoutes.connectDriver);
      },
    ),
  );

  // check(Jump jD) {
  //   if ((jD.vehicalName ?? "").length > 3) {
  //     return "Please Enter your vehicle number";
  //   } else if ((jD.phoneNumber ?? "").length > 4) {
  //     return "Please Enter your phone number";
  //   } else {
  //     return null;
  //   }
  // }
}
