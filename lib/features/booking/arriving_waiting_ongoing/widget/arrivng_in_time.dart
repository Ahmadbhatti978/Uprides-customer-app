import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../../config/safe_dialog.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/handle_events.dart';
import '../../../../core/widgets/buttons/filled_black_button.dart';
import '../../../../core/widgets/buttons/grey.dart';
import '../../../../util/colors.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';
import '../../../home/model/ride_data.dart';
import '../../book_ride/time.dart';
import '../../booking_repo.dart/booking_repo.dart';
import '../../cancel_ride_dialog.dart';

final cancelRideReasonProvider = AutoDisposeStateProvider<RideCancelReasonType?>((ref) => null);

class ArrivngInTime extends StatelessWidget {
  const ArrivngInTime({this.ride, super.key});
  final RideData? ride;

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String?;
    final RideStatus? rideState = RideStatus.fromString(ride?.data?.ride?.status);

    final int? eta = rideState != RideStatus.ongoing ? ride?.data?.driverInfo?.driverEta?.last.eta : ride?.data?.ride?.rideRequest?.totalEta;
    return ColoredBox(
      color: grey,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 2, 24, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),

            // Consumer(
            //   builder:
            //       (context, ref, child) => ref
            //           .watch(ridSocketProvider(id ?? rideId!))
            //           .when(
            //             skipError: true,
            //             data:
            //                 (data) =>
            //                     eta == 0
            //                         ? Text(l10n.driver_arrived, style: Primary.body)
            //                         : Row(
            //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                           children: <Widget>[Text(l10n.arriving_in, style: Primary.body), Time(second: eta ?? 100), const Text(' ...')],
            //                         ),
            //             error: (error, stackTrace) => Text(error.toString()),
            //             loading: () => const Text("..."),
            //           ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 4,
              children: <Widget>[
                Text(rideState == RideStatus.ongoing ? l10n.arriving_in : l10n.driver_is_arriving_in, style: Primary.body),
                Time(second: eta ?? 100),
                const Text('...'),
              ],
            ),

            const Spacer(),
            PopupMenuButton(
              onSelected:
                  (final item) => showModalBottomSheet(
                    context: context,
                    barrierColor: Colors.black54,
                    useSafeArea: true,
                    builder:
                        (final BuildContext contex) => Padding(
                          padding: const EdgeInsets.all(padding),
                          child: Column(
                            spacing: 12,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  l10n.cancel_your_ride,
                                  style: const TextStyle(fontSize: 15, color: Colors.redAccent, fontVariations: <FontVariation>[FontVariation('wght', 700)]),
                                ),
                              ),
                              const Gap(12),
                              Text('👋 Hi ${guser?.fullName}, ', style: Primary.title),
                              Text(l10n.your_driver_is_on_his_way_to_pick_you_up, style: Primary.titleNormal),
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Consumer(
                                  builder:
                                      (final BuildContext context, final WidgetRef ref, final Widget? child) => ListTile(
                                        leading: Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(border: Border.all(width: 6.2), color: Colors.transparent),
                                        ),
                                        title: Text(ride?.data?.ride?.rideRequest?.dropoffAddress ?? "", style: Primary.title),
                                        //    subtitle: Text(ref.read(pickedlocationProvider)[1].secondaryText ?? '', style: Secondary.titleLarge),
                                      ),
                                ),
                              ),

                              //      BlackButton(text: l10n.call_driver, onPressed: () {}),
                              GreyButton(
                                text: l10n.cancel_ride,
                                textColor: Colors.redAccent,
                                onPressed: () {
                                  Navigator.pop(context);
                                  dial(context, id);
                                },
                              ),

                              Center(child: TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.go_back, style: Bold.titleBig))),
                              const Gap(12),
                            ],
                          ),
                        ),
                  ),
              menuPadding: EdgeInsets.zero,
              icon: const Icon(Icons.more_horiz_rounded),
              itemBuilder:
                  (final BuildContext context) => <PopupMenuEntry>[
                    PopupMenuItem(value: 0, padding: const EdgeInsets.symmetric(horizontal: padding), child: Text(l10n.cancel_ride, style: Default.title)),
                  ],
            ),
          ],
        ),
      ),
    );
  }

  Future dial(final BuildContext context, final String? id) => safeShowDialog(
    context: context,
    builder:
        (final BuildContext contex) => Consumer(
          builder: (final BuildContext contex, final WidgetRef ref, final Widget? child) {
            final RideCancelReasonType? sReason = ref.watch(cancelRideReasonProvider);
            return AlertDialog(
              insetPadding: const EdgeInsets.all(24),
              title: Text(l10n.select_a_reason_to_cancel, style: Default.heading),
              titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
              actionsOverflowButtonSpacing: 20,
              actions: <Widget>[
                SizedBox(height: 50, child: GreyButton(expand: false, onPressed: () => Navigator.pop(contex), text: l10n.close)),
                SizedBox(
                  height: 50,
                  width: mediaQuery.size.width * .35,
                  child: BlackButton(
                    expand: false,
                    text: l10n.cancel_ride,
                    onPressed:
                        sReason == null
                            ? null
                            : () {
                              Navigator.pop(contex);

                              rideCancel(context: context, id: id, reason: sReason.name);
                            },
                  ),
                ),
              ],
              contentPadding: const EdgeInsets.only(top: 12, bottom: 8, left: 8, right: 8),
              actionsAlignment: MainAxisAlignment.end,
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children:
                    RideCancelReasonType.values
                        .map(
                          (final RideCancelReasonType reason) => InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () => ref.read(cancelRideReasonProvider.notifier).state = reason,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 18,
                                  height: 18,
                                  margin: const EdgeInsets.only(right: padding, left: 16, top: 12, bottom: 12),
                                  decoration: BoxDecoration(
                                    border: reason != sReason ? Border.all(width: 2, color: darkgrey) : Border.all(width: 5.2, color: const Color(0xFF18C4B8)),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Text(reason.reason, style: Primary.titleSmall),
                              ],
                            ),
                          ),
                        )
                        .toList(),
              ),
            );
          },
        ),
  );
}
