import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/global_loading_provider.dart';
import '../../../../core/router/route.dart';
import '../../../../core/widgets/buttons/bold_pay_button.dart';
import '../../../../core/widgets/loading_error/error.dart';
import '../../../../core/widgets/loading_error/loading.dart';
import '../../../../util/colors.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/utils.dart';
import '../../../../util/variable.dart';
import '../../../../util/widget/widgets.dart';
import '../../booking_repo.dart/booking_repo.dart';
import '../../cancel_ride_dialog.dart';
import '../provider/adjsut_price.dart';
import '../provider/ride_data.dart';
import '../socket/ride_socket.dart';

class Bidding extends ConsumerWidget {
  const Bidding({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    currentRoute = AppRoutes.bidding;
    final String? id = (ModalRoute.settingsOf(context)?.arguments as String?) ?? rideId;
    final double value = ref.watch(fValue);

    ref.read(ridSocketProvider(id!));
    return PopScope(
      canPop: false,
      child: ref
          .watch(rideDataProvider(id))
          .when(
            loading: () => const Loading(),
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
              return ColoredBox(
                color: Colors.white,
                child: SafeArea(
                  top: false,
                  maintainBottomViewPadding: true,
                  minimum: const EdgeInsets.only(bottom: padding),
                  child: Scaffold(
                    backgroundColor: Colors.white,
                    appBar: PreferredSize(
                      preferredSize: const Size.fromHeight(kToolbarHeight),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: InkWell(
                            radius: 50,
                            borderRadius: BorderRadius.circular(36),
                            onTap: () => rideCancel(context: context, id: id),
                            child: Container(
                              width: 46,
                              height: 46,
                              margin: const EdgeInsets.all(4),
                              decoration: const ShapeDecoration(color: grey, shape: CircleBorder()),
                              child: const Icon(Icons.arrow_back_ios_rounded),
                            ),
                          ),
                        ),
                      ),
                    ),
                    extendBody: true,
                    extendBodyBehindAppBar: true,
                    body:
                        (lat == null && lng == null)
                            ? const SizedBox.shrink()
                            : GoogleMap(
                              padding: EdgeInsets.only(bottom: mediaQuery.size.height * .35),
                              myLocationEnabled: true,
                              initialCameraPosition: CameraPosition(target: LatLng(lat!, lng!), zoom: 18),
                            ),
                    bottomSheet: const BottomBidding(),
                    bottomNavigationBar: BoldPayButton(
                      isEnabled: ref.watch(fValue) != 0,
                      pay:
                          ref.watch(fValue) != 0
                              ? ref.watch(AdjustPriceProvider(id)).valueOrNull?.data?.totalAmount?.toStringAsFixed(2)
                              : // (value + (data.data?.ride?.farePrice ?? 0)).toStringAsFixed(2),
                              (data.data?.ride?.totalPrice ?? 0).toStringAsFixed(2),
                      isLoading: ref.watch(gloading) || ref.watch(AdjustPriceProvider(id)).isLoading,
                      onBook: (paymentMethod) {
                        ref.read(gloading.notifier).state = true;
                        ref.read(bookingRepoProvider).bidding(adjustedPrice: value, rId: id).then((res) {
                          ref.read(gloading.notifier).state = false;
                          return res.fold(
                            (error) => showSnackBar(error.message),
                            (data) => Navigator.popAndPushNamed(context, AppRoutes.loadingRide, arguments: id),
                          );
                        });
                      },
                      buttonTitle: l10n.search_ride,
                    ),
                  ),
                ),
              );
            },
          ),
    );
  }
}

class BottomBidding extends StatelessWidget {
  const BottomBidding({super.key});

  @override
  Widget build(final BuildContext context) {
    final String? id = (ModalRoute.settingsOf(context)?.arguments as String?) ?? rideId;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        spacing: 2,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(child: buildHandle),
          Row(
            spacing: p12,
            children: <Widget>[
              Container(
                height: 32,
                width: 32,

                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: <Color>[Color.fromARGB(255, 255, 205, 15), Color.fromRGBO(254, 132, 1, 1)]),
                ),
                child: const Icon(CupertinoIcons.exclamationmark, color: Colors.black, size: 22),
              ),
              Text(l10n.oops, style: Default.titleLarge),
            ],
          ),
          Text(l10n.no_ride_available_at_the_moment, style: Secondary.titleLargeBold),
          Card.filled(
            color: grey,
            margin: const EdgeInsets.symmetric(vertical: padding),
            child: Padding(
              padding: const EdgeInsets.all(padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(l10n.increase_ride_fare, style: Primary.titleLarge),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Consumer(
                      builder: (final BuildContext context, final WidgetRef ref, final Widget? child) {
                        final double vvalue = ref.watch(vValue);
                        final double fvalue = ref.watch(fValue);
                        return Column(
                          spacing: p12,
                          children: [
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 30,
                                  color: Colors.white,
                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                                  child: Row(
                                    spacing: 6,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      const Center(child: Icon(Icons.euro_rounded, color: darkgrey)),
                                      Container(height: 18, width: 2, color: const Color(0xFFDDDDDD), margin: const EdgeInsets.only(right: 2)),
                                      Text(fvalue.toStringAsFixed(2)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Slider(
                                    padding: const EdgeInsets.only(left: padding),
                                    label: ' € ${vvalue.toStringAsFixed(2)}  ',
                                    activeColor: primary,
                                    //      max: setting.data.settings.,
                                    inactiveColor: const Color.fromARGB(255, 218, 218, 218),
                                    value: vvalue,
                                    max: 10,
                                    divisions: 100,
                                    thumbColor: Colors.white,
                                    onChangeEnd: (final double value) {
                                      ref.read(fValue.notifier).state = value;
                                    },
                                    onChanged: (final double value) => ref.read(vValue.notifier).state = value,
                                  ),
                                ),
                              ],
                            ),

                            if (ref.watch(fValue) != 0 && id != null)
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text.rich(
                                  style: Secondary.title,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: ref.watch(AdjustPriceProvider(id)).valueOrNull?.data?.adjustedTotalAmount?.toStringAsFixed(2),
                                        style: const TextStyle(fontVariations: [FontVariation('wght', 660)]),
                                      ),
                                      const TextSpan(text: '  (Including VAT)', style: TextStyle(fontSize: 12)),
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                  Text(l10n.bidding_des, style: Secondary.title),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
