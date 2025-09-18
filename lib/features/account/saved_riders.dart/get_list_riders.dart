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
import 'model/riders.dart';
import 'model/someone.dart';
import 'provider/save_riders.dart';

final Rider rider = Rider(id: guser!.id, phone: guser!.phone, fullName: 'For myself');
final StateProvider<List<Rider>> ridersProvider = StateProvider<List<Rider>>((final Ref<List<Rider>> ref) => <Rider>[rider]);

class GetListRiders extends ConsumerWidget {
  const GetListRiders({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final List<Rider> pickedRiders = ref.watch(ridersProvider);
    return ref
        .watch(savedRidersProvider)
        .when(
          data: (final Someone data) {
            final List<Rider> riders = <Rider>[rider, ...(data.riders ?? <Rider>[])];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: horizontalSpacing),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(child: buildHandle),
                  Text(l10n.switch_rider, style: Default.headingSmall),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: mediaQuery.size.height * .3, minHeight: mediaQuery.size.height * .1),
                    child: ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(top: padding),
                      itemCount: riders.length,
                      itemBuilder: (final BuildContext context, final int index) {
                        final Rider rider = riders[index];
                        return RadioListTile(
                          enableFeedback: true,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          contentPadding: const EdgeInsets.all(6),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          splashRadius: 8,

                          title: Text(rider.fullName ?? '', style: Primary.title),
                          secondary: const CircleAvatar(),
                          controlAffinity: ListTileControlAffinity.trailing,
                          value: pickedRiders.contains(rider),

                          groupValue: false,
                          onChanged: (final bool? value) {
                            ref.read(ridersProvider.notifier).update((final List<Rider> currentState) {
                              final List<Rider> updatedState = List.from(currentState);
                              if (pickedRiders.contains(rider)) {
                                updatedState.remove(rider);
                              } else {
                                updatedState.add(rider);
                              }
                              return updatedState;
                            });
                          },
                        );
                      },
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(12),
                    radius: 8,
                    onTap: () => Navigator.pushNamed(context, AppRoutes.addRider),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: padding, horizontal: 6),
                      child: Row(
                        children: <Widget>[CircleAvatar(backgroundImage: AssetImage(addRider)), Gap(padding), Text('Add a rider', style: Primary.title)],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: padding),
                    child: BlackButton(text: l10n.done, onPressed: () => Navigator.pop(context, pickedRiders)),
                  ),
                ],
              ),
            );
          },
          error: (final Object error, final StackTrace stackTrace) => Err(error: error as ErrorDetails, stackTrace: stackTrace),
          loading: () => const ClipRRect(borderRadius: BorderRadius.vertical(top: Radius.circular(12)), child: Loading(isBack: false)),
        );
  }
}
