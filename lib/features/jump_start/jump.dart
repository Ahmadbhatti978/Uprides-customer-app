import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/router/route.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../booking/addlocation/model/place.dart';
import 'provider/jumpstart_provider.dart';

class JumpStart extends ConsumerWidget {
  const JumpStart({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final Place location = ref.watch(jumpLocationProvider);
    return Scaffold(
      //  resizeToAvoidBottomInset: false,
      appBar: const NameBackBar(title: 'Jump-Start'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(child: Image.asset(jumpstart, width: mediaQuery.size.width - 90)),
            Padding(padding: const EdgeInsets.symmetric(vertical: 32), child: Text(l10n.book_for_jumpstart, style: Bold.headingBig)),
            Text(l10n.your_location, style: Default.heading),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 32),
              child: FilledButton.icon(
                onPressed: () async {
                  final Place? place = await Navigator.pushNamed(context, AppRoutes.singleLocation) as Place?;
                  if (place?.location != null) {
                    ref.read(jumpLocationProvider.notifier).state = place!;
                  }
                },
                style: FilledButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  fixedSize: Size.fromWidth(mediaQuery.size.width),
                  backgroundColor: grey,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                label: Text(location.mainText ?? '', style: Primary.title),
                icon: Container(
                  height: 18,
                  width: 18,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(border: Border.all(width: 6), color: Colors.transparent, shape: BoxShape.circle),
                ),
              ),
            ),
            const Gap(padding), // Spacer(),

            // const Text('Your phone number', style: Default.heading),
            // Padding(
            //   padding: const EdgeInsets.only(top: 8, bottom: 32),
            //   child: PhoneNo(
            //     initPhone: j.phoneNumber,
            //     onTextChanged: (text) =>
            //         ref.read(jumpstartDetailProvider.notifier).update((state) => state.copyWith(phoneNumber: text)),
            //   ),
            // ),
            Text(
              l10n.please_enter_you_location_to_jump_start_under_your_location_and_continue_to_call_for_your_emergency_jumpstart_service,
              style: Secondary.title,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
        child: BlackButton(text: 'Next', onPressed: () => Navigator.pushNamed(context, AppRoutes.jumpStartVehicalDetail)),
      ),
    );
  }
}
