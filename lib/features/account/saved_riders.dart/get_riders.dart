import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/constants.dart';
import '../../../core/failure/failure.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../core/widgets/loading_error/error.dart';
import '../../../core/widgets/loading_error/loading.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../../util/widget/widgets.dart';
import '../../booking/provider/booking_provider.dart';
import '../../booking/provider/config_provider.dart';
import 'model/riders.dart';
import 'model/someone.dart';
import 'provider/save_riders.dart';

class GetRiders extends ConsumerWidget {
  const GetRiders({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final String groupValue = ref.watch(ridersProvider);

    return ref.watch(savedRidersProvider).when(
          data: (final Someone data) {
            final List<Rider> riders = <Rider>[
              Rider(id: guser!.id, phone: guser!.phone, customerId: guser!.id, fullName: 'For myself'),
              ...(data.riders ?? <Rider>[]),
            ];
            return SafeArea(
              top: false,
              maintainBottomViewPadding: true,
              minimum: const EdgeInsets.only(bottom: p12),
              child: Padding(
                padding: const EdgeInsets.only(right: horizontalSpacing, left: 8),
                child: Column(
                  spacing: 4,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(child: buildHandle),
                    Text(l10n.switch_rider, style: Default.headingSmall),
                    Expanded(
                      child: RadioGroup<String>(
                        groupValue: groupValue,
                        onChanged: (String? value) => ref.watch(ridersProvider.notifier).state = value ?? guser!.id!,
                        child: ListView.builder(
                          itemCount: riders.length + 1,
                          itemBuilder: (final BuildContext context, final int index) => index == riders.length
                              ? InkWell(
                                  borderRadius: BorderRadius.circular(12),
                                  radius: 8,
                                  onTap: () => Navigator.pushNamed(context, AppRoutes.addRider),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(14, 10, 0, 10),
                                    child: Row(
                                      children: <Widget>[
                                        const CircleAvatar(backgroundImage: AssetImage(addRider), radius: 20),
                                        const Gap(padding),
                                        Text(l10n.add_a_rider, style: Primary.title),
                                      ],
                                    ),
                                  ),
                                )
                              : RadioListTile<String>(
                                  enableFeedback: true,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                  contentPadding: const EdgeInsets.fromLTRB(11, 4, 4, 4),
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  splashRadius: 8,
                                  title: Text(riders.elementAt(index).fullName ?? '', style: Primary.title),
                                  secondary: const CircleAvatar(radius: 20),
                                  controlAffinity: ListTileControlAffinity.trailing,
                                  value: riders.elementAt(index).id!,
                                ),
                        ),
                      ),
                    ),
                    const Gap(8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: BlackButton(
                        text: l10n.done,
                        onPressed: () {
                          final bool same = guser?.id == ref.read(ridersProvider);

                          same ? ref.read(configPProvider.notifier).forSelf() : ref.read(configPProvider.notifier).forSomeone(ref.read(ridersProvider));
                          //     log(name: "someonex", ref.read(configPProvider).customerRiderId.toString());
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          error: (final Object error, final StackTrace stackTrace) => Err(error: error as ErrorDetails, stackTrace: stackTrace),
          loading: () => const ClipRRect(borderRadius: BorderRadius.vertical(top: Radius.circular(12)), child: Loading(isBack: false)),
        );
  }
}
