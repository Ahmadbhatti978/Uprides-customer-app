import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../core/actions/open_intercom.dart';
import '../../../core/constants/constants.dart';
import '../../../core/failure/failure.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../core/widgets/buttons/grey.dart';
import '../../../core/widgets/loading_error/error.dart';
import '../../../core/widgets/loading_error/loading.dart';
import '../../../util/colors.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../home/model/ride_data.dart';
import '../book_ride/provider/cancel_ride.dart';
import '../book_ride/provider/ride_data.dart';
import '../book_ride/socket/ride_socket.dart';
import 'component/driver_detail_contact.dart';
import 'widget/arrivng_in_time.dart';
import 'widget/edit_ride.dart';

int duaration = 0;

class OnTrip extends ConsumerWidget {
  const OnTrip({super.key});

  @override
  Widget build(final BuildContext context, WidgetRef ref) {
    final String? id = ModalRoute.settingsOf(context)?.arguments as String?;
    ref.read(ridSocketProvider((id ?? rideId)!));
    //  final liveRideLocation = ref.watch(rideSocketProvider(acceptedRide!.ride!.id!, acceptedRide!.driverLocation!.first));
    if (currentRoute != AppRoutes.cancelledRide) currentRoute = AppRoutes.onTrip;
    return ref
        .watch(RideDataProvider((id ?? rideId)!))
        .when(
          data:
              (data) => Scaffold(
                backgroundColor: Colors.white,
                body: Stack(
                  children: <Widget>[
                    // if (data.data?.pickUpToDropOffPolyline != null)
                    //   MapOnArriving(
                    //     polyLIne: data.data!.pickUpToDropOffPolyline!,
                    //     onRoute: true,
                    //     id: id ?? rideId,
                    //     requestedRoute: [
                    //       if (data.data?.ride?.rideRequest?.pickupLocation?.coordinates != null)
                    //         LatLng(
                    //           data.data!.ride!.rideRequest!.pickupLocation!.coordinates![1],
                    //           data.data!.ride!.rideRequest!.pickupLocation!.coordinates![0],
                    //         ),
                    //       ...(data.data?.ride?.rideRequest?.stopsEta
                    //               ?.where((final stop) => stop.stop?.latitude != null && stop.stop?.longitude != null)
                    //               .map<LatLng>((final stop) => LatLng(stop.stop!.latitude!, stop.stop!.longitude!))
                    //               .toList() ??
                    //           []),
                    //       if (data.data?.ride?.rideRequest?.dropoffLocation?.coordinates != null)
                    //         LatLng(
                    //           data.data!.ride!.rideRequest!.dropoffLocation!.coordinates![1],
                    //           data.data!.ride!.rideRequest!.dropoffLocation!.coordinates![0],
                    //         ),
                    //     ],
                    //   ),
                    DraggableScrollableSheet(
                      initialChildSize: 0.4,
                      maxChildSize: 0.45,
                      minChildSize: 0.1,
                      builder:
                          (final BuildContext context, final ScrollController scrollController) => RideInfo(scrollController: scrollController, ride: data),
                    ),
                  ],
                ),
                bottomNavigationBar: SafeArea(
                  top: false,
                  maintainBottomViewPadding: true,
                  minimum: const EdgeInsets.only(bottom: p12),
                  child: Container(
                    height: 58,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: <BoxShadow>[BoxShadow(color: Color.fromARGB(100, 235, 235, 235), blurRadius: 6, offset: Offset(0, -15), spreadRadius: 10)],
                    ),
                    padding: const EdgeInsets.only(top: 8, right: padding, left: padding),
                    child: Row(
                      spacing: padding,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: TextButton.icon(
                              onPressed: openIntercom,
                              icon: const Icon(Icons.info_outline, color: primary),
                              label: Text(l10n.help, style: Primary.title),
                            ),
                          ),
                        ),
                        Expanded(child: BlackButton(text: "Emergency", onPressed: () {}, expand: false)),
                      ],
                    ),
                  ),
                ),
              ),
          error: (Object error, StackTrace stackTrace) => Err(error: error as ErrorDetails),
          loading: () => const Loading(),
        );
  }
}

class RideInfo extends StatelessWidget {
  const RideInfo({required this.scrollController, super.key, this.ride});
  final RideData? ride;
  final ScrollController scrollController;

  @override
  Widget build(final BuildContext context) {
    duaration = 320;
    return Material(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      child: Column(
        spacing: padding,
        children: [
          ArrivngInTime(ride: ride),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(bottom: padding, left: padding, right: padding),
              controller: scrollController,
              children: <Widget>[
                Text(l10n.youre_on_a_trip, style: Bold.headingSmall),
                const Gap(padding * 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(ride?.data?.driverInfo?.name ?? '', style: Bold.heading),
                        Text(ride?.data?.ride?.vehicleInfo?.registrationNumber ?? '', style: Secondary.titleLargeBold),
                      ],
                    ),
                    CachedNetworkImage(imageUrl: ride?.data?.driverInfo?.image ?? ' ', width: mediaQuery.size.width * 0.25),
                  ],
                ),
                const Gap(padding * 2),

                DriverDetailAndContact(ride: ride),

                const Gap(padding * 2),
                EditRide(ride: ride),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future dial(final BuildContext context) => showDialog(
    context: context,
    builder: (final BuildContext context) {
      String sReason = '';
      return AlertDialog(
        insetPadding: const EdgeInsets.all(24),
        title: Text(l10n.select_a_reason_to_cancel, style: Default.heading),
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        actionsOverflowButtonSpacing: 20,

        actions: <Widget>[
          Row(
            spacing: p24,
            children: <Widget>[
              GreyButton(expand: false, onPressed: () => Navigator.pop(context), text: l10n.close),

              Consumer(
                builder:
                    (final BuildContext context, final WidgetRef ref, final Widget? child) => SizedBox(
                      width: mediaQuery.size.width * .35,
                      child: BlackButton(
                        expand: false,
                        text: l10n.cancel_ride,
                        onPressed: () {
                          if (rideId != null) ref.read(cancelRideProvider(rideId!, sReason));
                          Navigator.pop(context);
                          Navigator.pop(context);
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      ),
                    ),
              ),
            ],
          ),
        ],

        contentPadding: const EdgeInsets.only(top: 12, bottom: 8, left: 8, right: 8),
        actionsAlignment: MainAxisAlignment.end,
        content: StatefulBuilder(
          builder:
              (final BuildContext context, final setState) => Column(
                mainAxisSize: MainAxisSize.min,
                children:
                    cancelRideReasons
                        .map(
                          (final String reason) => InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () => setState(() => sReason = reason),
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
                                Text(reason, style: Primary.titleSmall),
                              ],
                            ),
                          ),
                        )
                        .toList(),
              ),
        ),
      );
    },
  );

  //   Widget driverInfo() => ListTile(
  //     leading: const CircleAvatar(),
  //     title: const Text('Angel Dias', style: Primary.title),
  //     subtitle: const Row(children: <Widget>[Icon(Icons.star_sharp, color: Color.fromRGBO(244, 176, 0, 1)), Text('5.0', style: Secondary.title)]),
  //     trailing: Row(
  //       mainAxisSize: MainAxisSize.min,
  //       children: <Widget>[
  //         IconButton.filled(style: IconButton.styleFrom(backgroundColor: grey), onPressed: () {}, icon: const Icon(Icons.phone)),
  //         const Gap(padding),
  //         IconButton(style: IconButton.styleFrom(backgroundColor: grey), onPressed: () {}, icon: const Icon(Icons.sms_outlined)),
  //       ],
  //     ),
  //   );
}

String formatDuration(final int seconds) {
  final Duration duration = Duration(seconds: seconds);
  String formattedTime;

  if (duration.inMinutes == 0) {
    formattedTime = '${duration.inSeconds} sec';
  } else {
    formattedTime = '${duration.inMinutes} min';
  }
  return formattedTime;
}
