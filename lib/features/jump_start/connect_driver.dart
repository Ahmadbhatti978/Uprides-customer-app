import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/appbar/backbar.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../core/widgets/loading_error/loading.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import 'provider/connect_driver_provider.dart';

class ConnectDriver extends StatelessWidget {
  const ConnectDriver({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: const BackBar(),
    body: Padding(
      padding: const EdgeInsets.all(padding),
      child: Column(
        children: <Widget>[
          const Text('Lorem ipsum sit dolor', style: Primary.heading),
          const Gap(padding),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
            textAlign: TextAlign.center,
            style: Secondary.title,
          ),
          Padding(padding: const EdgeInsets.fromLTRB(10, 56, 10, 86), child: Image.asset(connectJump)),
          Consumer(
            builder:
                (final BuildContext context, final WidgetRef ref, final Widget? child) => BlackButton(
                  text: 'Connect driver',
                  onPressed: () {
                    ref
                      ..invalidate(connectDriverProvider)
                      ..read(connectDriverProvider);
                    showDialog(
                      context: context,
                      useSafeArea: false,
                      builder: (final BuildContext context) => const Loading(text: 'Searching nearby driver for Jumpstart'),
                    );
                  },
                ),
          ),
        ],
      ),
    ),
  );
}
