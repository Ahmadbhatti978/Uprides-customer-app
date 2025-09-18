import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/extensions/date.dart';
import '../../core/failure/failure.dart';
import '../../core/router/route.dart';
import '../../core/widgets/align/icon_text.dart';
import '../../core/widgets/align/title_subtitle.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../core/widgets/dotted_line.dart';
import '../../core/widgets/loading_error/error.dart';
import '../../core/widgets/loading_error/loading.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../account/saved_riders.dart/get_list_riders.dart';
import '../account/saved_riders.dart/model/riders.dart';
import 'model/iride.dart';
import 'model/select_ride.dart';
import 'provider/get_intercity_detail.dart';
import 'rating.dart';

final AutoDisposeStateProvider<List<String>> activeProvider = AutoDisposeStateProvider<List<String>>((final Ref<List<String>> ref) => <String>[guser!.id!]);
final AutoDisposeStateProvider<bool?> isPremiumProvider = AutoDisposeStateProvider<bool?>((final Ref<bool?> ref) => null);

class IntercityDetail extends ConsumerWidget {
  const IntercityDetail({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final String rideID = ModalRoute.of(context)!.settings.arguments! as String;
    final bool? isPremium = ref.watch(isPremiumProvider);
    // ref.listenManual(
    //   GetIntercityRideBookProvider(rideID),
    //   (previous, next) {
    //     // Handle loading state
    //     if (next.isLoading) {
    //       showDialog(
    //           context: context,
    //           useSafeArea: false,
    //           builder: (context) => Loading(
    //                 text: "Booking your ride",
    //               ));
    //     }

    //     // Handle error state
    //     if (next.hasError) {
    //       // Close loading dialog if it's open

    //       Navigator.maybePop(context);
    //       showSnackBar(
    //         context: context,
    //         error.toString(),
    //       );
    //     }

    //     // Handle data state
    //     if (!next.isLoading && !next.hasError && next.hasValue) {
    //       Navigator.popAndPushNamed(context, AppRoutes.reservationDetail, arguments: rideID);
    //       return showSnackBar(
    //         context: context,
    //         " ",
    //       );
    //     }
    //   },
    // );
    void checkAllActive() {
      final List<String?> travellers = ref.watch(ridersProvider).map((final Rider e) => e.id).toList();
      ref.read(activeProvider.notifier).update((final List<String> rides) {
        final List<String> active = <String>[...rides]..retainWhere(travellers.contains);
        return active;
      });
    }

    return ref
        .watch(GetIntercityRideDetailProvider(rideID))
        .when(
          data: (final SelectRide data) {
            final IRide ride = data.ride!;
            return Scaffold(
              backgroundColor: grey,
              appBar: NameBackBar(title: l10n.intercity),
              body: ListView(
                padding: const EdgeInsets.all(padding),
                children: <Widget>[
                  Card(
                    shadowColor: const Color.fromARGB(14, 0, 0, 0),
                    elevation: 3.6,
                    margin: const EdgeInsets.only(bottom: padding),
                    child: Padding(
                      padding: const EdgeInsets.all(padding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('Lorem ipsum', style: Default.heading),
                          const Gap(8),
                          Text(ride.description ?? '', style: Secondary.title),
                          const Gap(padding * 2),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(ride.pickupat!.toTime(), style: Primary.title),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 36),
                                    child: Text(formatDuration(Duration(seconds: ride.expectedDuration!)), style: Secondary.bodySmallBold),
                                  ),
                                  Text(ride.pickupat!.add(Duration(seconds: ride.expectedDuration!)).toTime(), style: Primary.title),
                                ],
                              ),
                              const Gap(36),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        width: 12,
                                        height: 12,
                                        margin: const EdgeInsets.only(bottom: 5, top: 4),
                                        decoration: const BoxDecoration(shape: BoxShape.circle, color: Colorx.primary),
                                      ),
                                      CustomPaint(
                                        size: const Size(4, 80),
                                        painter: DottedVerticalLinePainter(color: Colors.black, dashWidth: 6.5, thickness: 1.4),
                                      ),
                                      Container(
                                        width: 12,
                                        height: 12,
                                        margin: const EdgeInsets.only(top: 5, bottom: padding),
                                        decoration: const BoxDecoration(shape: BoxShape.circle, color: Colorx.primary),
                                      ),
                                    ],
                                  ),
                                  const Gap(horizontalSpacing),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(ride.pickupCity?.name ?? '', style: Primary.title),
                                      const Gap(4),
                                      Row(
                                        children: <Widget>[
                                          const CircleAvatar(
                                            radius: 8,
                                            backgroundColor: Colorx.primary,
                                            child: Icon(Icons.boy_outlined, size: 12, color: Colors.white),
                                          ),
                                          const Gap(6),
                                          Text('${diatance(data.plPcDistance ?? 0)} form here', style: Secondary.bodySmll),
                                        ],
                                      ),
                                      const Gap(60),
                                      Text(ride.dropoffCity?.name ?? '', style: Primary.title),
                                      const Gap(4),
                                      Row(
                                        children: <Widget>[
                                          const CircleAvatar(
                                            radius: 8,
                                            backgroundColor: Colorx.primary,
                                            child: Icon(Icons.boy_outlined, size: 12, color: Colors.white),
                                          ),
                                          const Gap(6),
                                          Text('${diatance(data.dlDcDistance ?? 0)} form drop location', style: Secondary.bodySmll),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: const Color.fromARGB(14, 0, 0, 0),
                    elevation: 3.6,
                    margin: const EdgeInsets.only(bottom: padding),
                    child: Padding(
                      padding: const EdgeInsets.all(padding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('Risk free cancellation', style: Default.heading),
                          const Gap(24),
                          const ColoredBox(
                            color: Color(0xFFD1F3F1),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 9),
                              child: Text('Please select any cancellation plan as per your preferred choice.', style: Secondary.title),
                            ),
                          ),
                          Card.outlined(
                            margin: const EdgeInsets.only(top: padding, bottom: padding * 2),
                            shape: Border.all(color: const Color(0xFFEEEEEE)),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(padding),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Checkbox(
                                            //  tristate: true,
                                            visualDensity: VisualDensity.compact,
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            value: !(isPremium ?? true),
                                            onChanged: (final bool? v) => ref.read(isPremiumProvider.notifier).state = !(v ?? true),
                                            side: const BorderSide(color: darkgrey, width: 2),
                                          ),
                                          const Gap(4),
                                          const Text('Cancellation protection', style: Primary.title),
                                          const Spacer(),
                                          const Text(r'$ 2.71', style: Primary.title),
                                        ],
                                      ),
                                      const Gap(padding),
                                      Text(l10n.youll_receive_80_of_the_total_refund_in_case_of_any_medical_emergency, style: Secondary.title),
                                      const Gap(8),
                                      GestureDetector(
                                        onTap: () {},
                                        child: const Text(
                                          'View details',
                                          style: TextStyle(
                                            color: Color(0xFF18C4B8),
                                            fontSize: 11,
                                            fontFamily: 'Open',
                                            fontWeight: FontWeight.w600,
                                            decoration: TextDecoration.underline,
                                            decorationColor: Color(0xFF18C4B8),
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(thickness: 2, color: Color(0xFFEEEEEE)),
                                Padding(
                                  padding: const EdgeInsets.all(padding),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Checkbox(
                                            //  fillColor: WidgetStatePropertyAll(Colorx.primary),
                                            activeColor: Colorx.primary,
                                            visualDensity: VisualDensity.compact,
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            value: isPremium ?? false,
                                            onChanged: (final bool? v) => ref.read(isPremiumProvider.notifier).state = v,
                                            side: const BorderSide(color: Colorx.primary, width: 2),
                                          ),
                                          const Gap(4),
                                          Text('Premium protection', style: Primary.title.copyWith(color: Colorx.primary)),
                                          const Spacer(),
                                          Text(r'$ 2.71', style: Primary.title.copyWith(color: Colorx.primary)),
                                        ],
                                      ),
                                      const Gap(padding),
                                      const Text('You’ll receive 80% of the total refund in case of any medical emergency.', style: Secondary.title),
                                      const Gap(8),
                                      GestureDetector(
                                        onTap: () {},
                                        child: const Text(
                                          'View details',
                                          style: TextStyle(color: Colorx.primary, fontSize: 11, fontFamily: 'Open', fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Checkbox(
                                activeColor: Colorx.primary,
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                value: isPremium == null,
                                onChanged: (final bool? v) => ref.read(isPremiumProvider.notifier).state = (v ?? true) ? null : true,
                                side: const BorderSide(color: darkgrey, width: 2),
                              ),
                              const Gap(4),
                              const Text('I will take risk and does not wish for refund', style: Primary.titleSmall),
                            ],
                          ),
                          const Gap(14),
                        ],
                      ),
                    ),
                  ),
                  travellersDetails(ref, context),
                  Card(
                    shadowColor: const Color.fromARGB(14, 0, 0, 0),
                    elevation: 3.6,
                    margin: const EdgeInsets.only(bottom: padding),
                    child: Padding(
                      padding: const EdgeInsets.all(padding),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const CircleAvatar(backgroundColor: Color(0xFFB380F4), child: Icon(Icons.sell_rounded)),
                              const Gap(12),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[Text('Offers & Promotions', style: Default.heading), Text('Check for discount', style: Secondary.title)],
                              ),
                              const Spacer(),
                              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios_rounded)),
                            ],
                          ),
                          const Gap(24),
                          const TextField(
                            decoration: InputDecoration(
                              suffixText: 'Apply',
                              suffixStyle: TextStyle(
                                color: Color(0xFF18C4B8),
                                fontSize: 14,
                                fontFamily: 'Open',
                                fontVariations: <FontVariation>[FontVariation('wght', 630)],
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(horizontal: padding, vertical: 10),
                              hintText: 'Enter coupon code',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: const Color.fromARGB(14, 0, 0, 0),
                    elevation: 3.6,
                    margin: const EdgeInsets.only(bottom: padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.all(padding), child: Text('Your driver', style: Default.heading)),
                        ListTile(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (final BuildContext context) => const Rating())),
                          leading: CircleAvatar(
                            backgroundImage: ride.driver?.profilePhoto != null ? CachedNetworkImageProvider(ride.driver!.profilePhoto!) : null,
                            radius: 21,
                          ),
                          title: Text(ride.driver?.fullName ?? 'hdjh', style: Primary.title),
                          subtitle: Row(children: <Widget>[SvgPicture.asset(star), const Text(' 5.0', textAlign: TextAlign.center, style: Secondary.title)]),
                          trailing: const Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    shadowColor: const Color.fromARGB(14, 0, 0, 0),
                    elevation: 3.6,
                    margin: const EdgeInsets.only(bottom: padding),
                    child: Padding(
                      padding: const EdgeInsets.all(padding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('Vehicle details', style: Default.heading),
                          const Gap(padding),

                          // IconText(
                          //   text: 'Air conditioned',
                          //   isSecondary: true,
                          //   icon: Icons.ac_unit,
                          // ),
                          // Padding(
                          //   padding: EdgeInsets.symmetric(vertical: 12),
                          //   child: IconText(
                          //     text: 'Air conditioned',
                          //     isSecondary: true,
                          //     icon: Icons.wifi_rounded,
                          //   ),
                          // ),
                          IconText(
                            text: 'Pet friendly',
                            iconColor: (data.vehicle?.petFriendly ?? false) ? Colors.green : Colors.red,
                            isSecondary: true,
                            icon: !(data.vehicle?.petFriendly ?? false) ? Icons.close_rounded : Icons.check,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              bottomNavigationBar: Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 15, bottom: 25, left: padding, right: padding),
                child: BlackButton(
                  text: 'Book ride',
                  onPressed: () {
                    checkAllActive();

                    Navigator.pushNamed(context, AppRoutes.bookIntercity, arguments: ride.id);
                    //  Navigator.popAndPushNamed(context, AppRoutes.reservationDetail, arguments: ride.id);
                    //  StripeService.instance.makePayment();

                    // ref.watch(GetIntercityRideBookProvider(ride.id!)).when(
                    //       data: (data) {
                    //         Navigator.popAndPushNamed(context, AppRoutes.reservationDetail, arguments: ride.id);
                    //       },
                    //       error: (error, stackTrace) {
                    //         Navigator.maybePop(context);
                    //         showSnackBar(
                    //           context: context,
                    //           error.toString(),
                    //         );
                    //       },
                    //       loading: () => showDialog(
                    //           context: context,
                    //           useSafeArea: false,
                    //           builder: (context) => Loading(
                    //                 text: "Booking your ride",
                    //               )),
                    //     );
                  },
                ),
              ),
            );
          },
          error: (final Object error, final StackTrace stackTrace) => Err(error: error as ErrorDetails, stackTrace: stackTrace),
          loading: () => const Loading(),
        );
  }

  Card travellersDetails(final WidgetRef ref, final BuildContext context) {
    final List<Rider> travellers = ref.watch(ridersProvider);
    final List<String> active = ref.watch(activeProvider);

    return Card(
      shadowColor: const Color.fromARGB(14, 0, 0, 0),
      elevation: 3.6,
      margin: const EdgeInsets.only(bottom: padding),
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Travellers details', style: Default.heading),
            const Gap(padding),
            const Text('Travellers will receive the booking information by adding the contact information.', style: Primary.titleSmall),
            Card.outlined(
              margin: const EdgeInsets.only(top: padding, bottom: padding / 2),
              shape: Border.all(color: const Color(0xFFEEEEEE)),
              child: Padding(
                padding: const EdgeInsets.all(padding / 2),
                child: Column(
                  children: List.generate(
                    travellers.length,
                    (final int index) => Padding(
                      padding: const EdgeInsets.all(padding / 2),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Checkbox(
                            tristate: true,
                            visualDensity: VisualDensity.compact,
                            activeColor: Colorx.primary,
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            value: active.contains(travellers.elementAt(index).id),
                            onChanged: (final bool? v) {
                              ref.read(activeProvider.notifier).update((final List<String> stat) {
                                final List<String> state = <String>[...stat];
                                active.contains(travellers.elementAt(index).id)
                                    ? state.remove(travellers.elementAt(index).id)
                                    : state.add(travellers.elementAt(index).id!);
                                return state;
                              });
                            },
                            side: const BorderSide(color: darkgrey, width: 2),
                          ),
                          const Gap(4),
                          TitleSubtitle(title: travellers.elementAt(index).fullName!, subTitle: travellers.elementAt(index).phone ?? ''),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => forSomeone(context, ref),
              child: Card.outlined(
                shadowColor: const Color.fromARGB(44, 0, 0, 0),
                elevation: 4,
                margin: const EdgeInsets.only(bottom: 2),
                shape: Border.all(color: const Color(0xFFEEEEEE)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 11),
                  child: SizedBox(width: double.maxFinite, child: Center(child: Text('+Add new traveller', style: Cyan.title))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> forSomeone(final BuildContext context, final WidgetRef ref) async {
    final List<Rider> x =
        (await showModalBottomSheet(useRootNavigator: true, context: context, builder: (final BuildContext context) => const GetListRiders())) as List<Rider>;
    ref.read(activeProvider.notifier).state = x.map((final Rider x) => x.id!).toList();
  }

  String diatance(final int meter) {
    final int kilometers = meter ~/ 1000;
    final int remainingMeters = meter % 1000;

    String dis = '';
    if (kilometers > 0) dis = '$kilometers Kilometre';
    if (remainingMeters > 0) dis = dis.isNotEmpty ? dis : '$remainingMeters meters';
    // "$dis and $remainingMeters meters"
    return dis;
  }
}
