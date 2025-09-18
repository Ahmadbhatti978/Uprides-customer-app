import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/failure/failure.dart';
import '../../../core/handle_events.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/loading_error/error.dart';
import '../../../core/widgets/loading_error/loading.dart';
import '../../../util/variable.dart';
import '../book_ride/provider/ride_data.dart';
import 'component/preveiw_ride_Info.dart';

class ArrivingIN extends ConsumerWidget {
  const ArrivingIN({super.key});

  @override
  Widget build(final BuildContext context, WidgetRef ref) {
    if (currentRoute != AppRoutes.cancelledRide) currentRoute = AppRoutes.arrivingIN;

    final String? id = ModalRoute.settingsOf(context)?.arguments as String?;
    //  final liveRideLocation = ref.watch(rideSocketProvider(acceptedRide!.ride!.id!, acceptedRide!.driverLocation!.first));
    return ref
        .watch(RideDataProvider((id ?? rideId)!))
        .when(
          data: (data) {
            final double min = 380 / mediaQuery.size.height;
            return Scaffold(
              body: Stack(
                children: <Widget>[
                  if (data.data?.driverToPickUpPolyline != null && data.data!.driverToPickUpPolyline!.isNotEmpty)
                    // MapOnArriving(
                    //   polyLIne: data.data!.driverToPickUpPolyline!,
                    //   id: id ?? rideId,
                    //   requestedRoute: [
                    //     if (data.data?.ride?.rideRequest?.pickupLocation?.coordinates != null)
                    //       LatLng(data.data!.ride!.rideRequest!.pickupLocation!.coordinates![1], data.data!.ride!.rideRequest!.pickupLocation!.coordinates![0]),
                    //     if (data.data?.ride?.rideRequest!.dropoffLocation?.coordinates != null)
                    //       LatLng(
                    //         data.data!.ride!.rideRequest!.dropoffLocation!.coordinates![1],
                    //         data.data!.ride!.rideRequest!.dropoffLocation!.coordinates![0],
                    //       ),
                    //   ],
                    // )
                    // else
                    //   ErrorW(error: ErrorDetails(stackTrace: StackTrace.current, message: "Driver's Route Data not coming")),
                    DraggableScrollableSheet(
                      initialChildSize: min + 0.1,
                      maxChildSize: 0.93,
                      minChildSize: min,
                      builder:
                          (final BuildContext context, final ScrollController scrollController) =>
                              PreveiwRideInfo(scrollController: scrollController, ride: data, rideState: RideStatus.accepted),
                    ),
                  // GestureDetector(
                  //   onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Waiting())),
                  //   child: Container(width: 100, height: 100, color: Colors.red),
                  // ),
                ],
              ),
            );
          },
          error: (Object error, StackTrace stackTrace) => Err(error: error as ErrorDetails),
          loading: () => const Loading(),
        );
  }
}
