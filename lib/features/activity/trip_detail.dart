import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import '../../core/actions/open_intercom.dart';
import '../../core/constants/constants.dart';
import '../../core/extensions/date.dart';
import '../../core/extensions/duration.dart';
import '../../core/helper_fun.dart';
import '../../core/router/route.dart';
import '../../core/widgets/align/icon_text.dart';
import '../../core/widgets/align/pickup_drop_location.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../core/widgets/loading_error/error.dart';
import '../../core/widgets/loading_error/loading.dart';
import '../../util/colors.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../booking/model/ride_type_images.dart';
import 'model/activity.dart';
import 'model/invoice.dart';
import 'provider/get_invoice.dart';
import 'provider/rebook.dart';

class TripDetail extends ConsumerWidget {
  const TripDetail({super.key});
  bool isScheduled(Result ride) => (ride.scheduledAt != null || ride.rideRequest?.type == "SCHEDULED") && ride.cancelledAt == null;

  @override
  Widget build(final BuildContext context, WidgetRef ref) {
    final MapEntry<Result, RideType> args = ModalRoute.of(context)!.settings.arguments! as MapEntry<Result, RideType>;
    final Result ride = args.key;
    final RideType car = args.value;
    final bool isSched = isScheduled(ride);

    //  final places = [
    // Place(mainText: ride.pickupAddress, location: ride.pickupLocation),
    // Place(mainText: ride.dropoffAddress, location: ride.dropoffLocation)
    //   ];
    return Scaffold(
      appBar: NameBackBar(title: l10n.trip_details),
      body: ref
          .watch(GetInvoiceProvider(ride.id!))
          .when(
            error: (error, stackTrace) => Err(error: error),
            loading: () => const Loading(),
            data: (Invoice invoice) {
              final Vehicle? vehicle = invoice.data?.vehicleDetails?.vehicle;
              final String? carImage = car.rideImage ?? vehicle?.vehicleImage;
              return SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(padding, 0, padding, padding * 3),
                child: Column(
                  spacing: padding,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(l10n.booking_details, style: Default.heading),
                        TextButton.icon(
                          onPressed: openIntercom, //Navigator.pushNamed(context, AppRoutes.help),
                          icon: const Icon(Icons.support_agent_outlined, size: 20),
                          label: Text(
                            l10n.need_help,
                            style: const TextStyle(
                              shadows: <Shadow>[Shadow(offset: Offset(0, -2))],
                              color: Colors.transparent,
                              fontSize: 14,
                              fontFamily: 'Open',
                              height: 2,
                              decorationColor: Colors.black,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(padding),
                    Row(
                      spacing: padding,
                      children: <Widget>[
                        CircleAvatar(radius: 24, backgroundColor: grey, child: carImage != null ? SvgPicture.network(carImage) : null),

                        Column(
                          spacing: 2,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              isSched ? ride.scheduledAt!.formatDaywithRelativeDay() : ride.driverInfo?.fullName ?? ' No Name Provided',
                              style: Primary.title,
                            ),
                            Text("${vehicle?.brandName ?? car.name ?? ""} ${vehicle?.vehicleModel ?? ""}", style: Primary.titleSmall),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Divider(height: 48),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              spacing: padding,
                              children: <Widget>[
                                IconText(
                                  text: '${(((isSched ? ride.rideRequest?.distanceInMeters : invoice.data?.distance) ?? 0) / 1000).toStringAsFixed(2)} km',
                                  icon: Icons.location_on_rounded,
                                  isBold: true,

                                  size: 18,
                                ),

                                Text(l10n.date_time, style: Primary.titleNormal),
                              ],
                            ),
                            Column(
                              spacing: padding,
                              children: <Widget>[
                                IconText(
                                  text: Duration(
                                    seconds: (isSched ? ride.rideRequest?.totalEta : invoice.data?.duration) ?? 0,
                                  ).toFormattedString(showSeconds: false),
                                  icon: Icons.schedule,

                                  isBold: true,
                                  size: 18,
                                ),

                                Text(
                                  ride.createdAt == null ? 'empty' : DateFormat('MMMM dd, yyyy').format((ride.scheduledAt ?? ride.createdAt)!),
                                  style: Primary.titleSmall,
                                ),
                              ],
                            ),
                            Column(
                              spacing: padding,
                              children: <Widget>[
                                IconText(text: (invoice.data?.amountPaid ?? 0).toStringAsFixed(2), icon: Icons.euro, isBold: true, size: 18),

                                Text(
                                  ride.createdAt == null ? 'empty' : DateFormat('hh:mm a').format((ride.scheduledAt ?? ride.createdAt)!.toLocal()),
                                  style: Primary.titleSmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(height: 48, color: Color(0xFFEEEEEE)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Expanded(flex: 2, child: Locations(places: getLocations(ride), showDivider: false)),

                            Card.outlined(
                              // margin: EdgeInsets.only(bottom: 8),
                              shape: RoundedRectangleBorder(side: const BorderSide(color: Color(0xFFDDDDDD)), borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                                child: Text(vehicle?.rideTypeCategory?.type ?? car.name ?? '', style: const TextStyle(color: Color(0xFF4F4F4F), fontSize: 15)),
                              ),
                            ),
                          ],
                        ),
                        const Divider(height: 48, color: Color(0xFFEEEEEE)),

                        // Card.outlined(
                        //   clipBehavior: Clip.hardEdge,
                        //   margin: const EdgeInsets.symmetric(vertical: 12),
                        //   shape: const RoundedRectangleBorder(
                        //     side: BorderSide(width: 1.2, color: Color(0xFFDDDDDD)),
                        //     borderRadius: BorderRadius.all(Radius.circular(10)),
                        //   ),
                        //   child: SizedBox(
                        //     height: mediaQuery.size.height * .24,
                        //     child: ConfirmLocations(
                        //       places: [
                        //         Place(
                        //           mainText: ride.rideRequest?.pickupAddress ?? "",

                        //           location: Coordinate(
                        //             latitude: ride.rideRequest?.pickupLocation?.coordinates?.last ?? 0,
                        //             longitude: ride.rideRequest?.pickupLocation?.coordinates?.first ?? 0,
                        //           ),
                        //         ),
                        //         Place(
                        //           mainText: ride.rideRequest?.dropoffAddress ?? "",
                        //           location: Coordinate(
                        //             latitude: ride.rideRequest?.pickupLocation?.coordinates?.last ?? 0,
                        //             longitude: ride.rideRequest?.pickupLocation?.coordinates?.first ?? 0,
                        //           ),
                        //         ),
                        //       ],
                        //       zoom: 13,
                        //     ),
                        //   ),
                        // ),
                        if (!isSched)
                          SizedBox(
                            height: 56,
                            child: Row(
                              spacing: padding,
                              children: <Widget>[
                                Expanded(
                                  child: OutlinedButton(
                                    onPressed: () => Navigator.pushNamed(context, AppRoutes.receipt, arguments: ride.id),
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(),
                                      padding: const EdgeInsets.symmetric(vertical: 12),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                    ),
                                    child: Text(l10n.invoice, style: Default.headingSmall),
                                  ),
                                ),

                                Expanded(
                                  child: BlackButton(
                                    text: l10n.rebook,
                                    isBold: false,
                                    expand: false,
                                    onPressed: () {
                                      if (ride.rideRequest != null) rebook(ref, ride: ride.rideRequest!);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        const Gap(padding * 2),

                        if (isSched) ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(l10n.amount_paid, style: Bold.headingSmall),
                              IconText(
                                text: (invoice.data?.amountPaid ?? 0).toStringAsFixed(2),
                                gap: 4,
                                icon: Icons.euro,
                                size: 21,
                                isBold: true,
                                textSize: 21,
                              ),
                            ],
                          ),
                          const Gap(padding * 2),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: halfPadding, horizontal: 20),
                            decoration: ShapeDecoration(
                              color: const Color.fromRGBO(232, 250, 248, 1),
                              shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(12)),
                            ),
                            child: Column(
                              spacing: 2,
                              children: [
                                Text("${l10n.trip_confirmed}✌", style: Cyan.headingSmall),
                                Text(
                                  l10n.driver_details_share_info(ride.scheduledAt?.subtract(const Duration(minutes: 15)).toLocal().toMonthDayTime() ?? ""),
                                  style: Primary.titleLarge,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
    );
  }
}
