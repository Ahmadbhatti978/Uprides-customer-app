import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../core/constants/constants.dart';
import '../../../core/failure/failure.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/loading_error/error.dart';
import '../../../core/widgets/loading_error/loading.dart' as load;
import '../../../util/variable.dart';

import 'component/loading.dart';
import 'provider/ride_data.dart';
import 'socket/ride_socket.dart';

class LoadingRide extends ConsumerWidget {
  const LoadingRide({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final String? id = ModalRoute.settingsOf(context)?.arguments as String?;
    if ((id ?? rideId) == null) return const load.Loading();
    if (!finshedRideId.contains(id ?? rideId)) ref.read(ridSocketProvider((id ?? rideId)!));
    if (currentRoute != AppRoutes.cancelledRide) currentRoute = AppRoutes.loadingRide;

    return ref
        .watch(rideDataProvider((id ?? rideId)!))
        .when(
          loading: () => const load.Loading(isBack: false),
          error: (error, stackTrace) => Err(error: error as ErrorDetails),
          data: (data) {
            final double? lat =
                data.data?.ride?.rideRequest?.pickupLocation?.coordinates?.elementAtOrNull(1) ??
                currentCoordinate.latitude ??
                data.data?.ride?.rideRequest?.dropoffLocation?.coordinates?.elementAtOrNull(1);
            final double? lng =
                data.data?.ride?.rideRequest?.pickupLocation?.coordinates?.firstOrNull ??
                currentCoordinate.longitude ??
                data.data?.ride?.rideRequest?.dropoffLocation?.coordinates?.firstOrNull;
            return PopScope(
              canPop: false,
              child: Scaffold(
                body:
                    (lat == null && lng == null)
                        ? const SizedBox.shrink()
                        : GoogleMap(
                          padding: EdgeInsets.only(bottom: mediaQuery.size.height * .35),
                          myLocationEnabled: true,
                          initialCameraPosition: CameraPosition(target: LatLng(lat!, lng!), zoom: 18),
                        ),
                bottomSheet: const SafeArea(top: false, maintainBottomViewPadding: true, minimum: EdgeInsets.only(bottom: p12), child: Loading()),
              ),
            );
          },
        );
  }
}
