import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: implementation_imports
import 'package:fpdart/src/either.dart';
import 'package:gap/gap.dart';
import '../../core/constants/constants.dart';
import '../../core/extensions/list_to_coordinate.dart';
import '../../core/failure/failure.dart';
import '../../core/global_loading_provider.dart';
import '../../core/model/optimized_stop.dart';
import '../../core/widgets/align/icon_text.dart';
import '../../core/widgets/align/pickup_drop_location.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/buttons/bold_pay_button.dart';
import '../../core/widgets/loading_error/loading.dart';
import '../../core/widgets/preveiw_map.dart';
import '../../util/style/typo.dart';
import '../../util/utils.dart';
import '../../util/variable.dart';
import '../account/wallet/repo/payment_remote.dart';
import '../account/wallet/repo/req_payment.dart';
import '../account/wallet/wallet.dart';
import 'addlocation/model/place.dart';
import 'book_ride/provider/request_payment_data.dart';
import 'model/payment_req.dart';

class PaymentRequestView extends ConsumerWidget {
  const PaymentRequestView({super.key});

  @override
  Widget build(final BuildContext context, WidgetRef ref) {
    // final RidePaymentModel ride = ModalRoute.of(context)!.settings.arguments! as RidePaymentModel;
    // final Location? location = ride.payload!.rideDetails!.location;

    final String? rideReqId = ModalRoute.of(context)!.settings.arguments as String?;

    return PopScope(
      onPopInvokedWithResult: (didPop, result) => ref.read(reqpaymentEnabled.notifier).state = true,
      child: ref
          .watch(requestPaymentDataProvider(rideReqId!))
          .when(
            data: (data) {
              final DataData? ride = data.data?.data;
              return Scaffold(
                appBar: NameBackBar(title: l10n.payment_request),
                body: ListView(
                  padding: EdgeInsets.only(bottom: kBottomNavigationBarHeight + mediaQuery.padding.bottom),
                  children: <Widget>[
                    if (ride?.rideRequest != null) ...[SizedBox(height: mediaQuery.size.height * .25, child: PreveiwMap(rideRequest: ride!.rideRequest!))],
                    Padding(
                      padding: const EdgeInsets.all(padding),
                      child: Column(
                        spacing: padding,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(l10n.review_request, style: Default.heading),
                          Locations(
                            places: <Place>[
                              Place(location: ride!.rideRequest!.pickupLocation!.coordinates!.getCoordinate, mainText: ride.rideRequest!.pickupAddress),
                              ...ride.rideRequest!.optimizedStops!
                                  .where((optimized) => optimized.location != null)
                                  .map((final OptimizedStop? e) => Place(location: e!.location, mainText: e.address)),
                              Place(location: ride.rideRequest!.dropoffLocation!.coordinates!.getCoordinate, mainText: ride.rideRequest!.dropoffAddress),
                            ],
                            showDivider: false,
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: padding, thickness: 2),

                    Padding(
                      padding: const EdgeInsets.all(padding),
                      child: Column(
                        spacing: padding / 2,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(l10n.request_from, style: Bold.title),
                          Text(ride.customerFullname ?? '', style: Bold.heading),
                          const Gap(p24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              //Text(l10n.service_type, style: Bold.titleSmall),
                              Text(l10n.ride_type, style: Bold.titleSmall),
                              Text(l10n.total_charges, style: Bold.titleSmall),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              //   Text(ride.rideService ?? '', style: Default.heading),
                              Text(ride.rideTypeId?.name ?? '', style: Default.heading),
                              IconText(
                                text: ride.totalAmount == null ? ' ' : (ride.totalAmount!).toStringAsFixed(2),
                                icon: Icons.euro,
                                isBold: true,
                                gap: 2,
                                size: 22,
                                textSize: 22,
                              ),
                            ],
                          ),
                          const Gap(padding),
                          Text(l10n.message, style: Bold.titleSmall),
                          const Gap(4),
                          Container(
                            width: mediaQuery.size.width,
                            padding: const EdgeInsets.symmetric(horizontal: p12, vertical: padding),
                            decoration: ShapeDecoration(
                              shape: RoundedSuperellipseBorder(
                                borderRadius: BorderRadiusGeometry.circular(8),
                                side: const BorderSide(color: Color(0xFFDDDDDD)),
                              ),
                            ),

                            child: Text(ride.note ?? "", style: Secondary.title),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                bottomNavigationBar: PaymentBottom(ride: ride, rideReqId: rideReqId),
              );
            },
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const Loading(isBack: false),
          ),
    );
  }
}

class PaymentBottom extends StatelessWidget {
  const PaymentBottom({required this.ride, required this.rideReqId, super.key});

  final String rideReqId;
  final DataData ride;

  @override
  Widget build(BuildContext context) => SafeArea(
    minimum: const EdgeInsets.only(bottom: p12),
    maintainBottomViewPadding: true,
    child: Consumer(
      builder:
          (final BuildContext context, final WidgetRef ref, final Widget? child) => BoldPayButton(
            timer: Padding(
              padding: const EdgeInsets.only(top: p12, bottom: padding),
              child: InkWell(
                onTap: () {
                  ReqPayment.reject(paymentRequestId: rideReqId);

                  Navigator.pop(context);
                },
                child: TimerTextWidget(
                  prefixText: l10n.declined,
                  onTimerComplete: () {
                    // Navigator.pop(context);
                  },
                ),
              ),
            ),
            pay: null,
            isLoading: ref.watch(gloading),
            onBook: (paymentMethod) async {
              ref.read(gloading.notifier).state = true;
              final Either<ErrorDetails, dynamic> res = await ref
                  .read(paymentRemoteRepositoryProvider)
                  .requestPaymentConfirm(
                    rideReqId: rideReqId,
                    customerStripeId: paymentMethod.customer!,
                    customerPaymentMethod: paymentMethod.id!,
                    rideTypeId: ride.rideTypeId?.id ?? "",
                    polyline: ride.rideRequest?.polyline ?? "",
                  );
              ref.read(gloading.notifier).state = false;
              res.fold((error) => showSnackBar(error.message), (data) => Navigator.pop(context));
            },
            buttonTitle: l10n.pay_for_name(ride.customerFullname ?? ""),
          ),
    ),
  );
}

class TimerTextWidget extends StatefulWidget {
  const TimerTextWidget({
    required this.onTimerComplete,
    super.key,
    this.totalSeconds = 300, // Default to 60 seconds
    this.prefixText = 'Declined',
  });
  final VoidCallback onTimerComplete;

  /// The total duration of the countdown in seconds.
  final int totalSeconds;

  /// The static text to display before the timer.
  final String prefixText;

  @override
  State<TimerTextWidget> createState() => _TimerTextWidgetState();
}

class _TimerTextWidgetState extends State<TimerTextWidget> {
  late Timer _timer;
  late int _remainingSeconds;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.totalSeconds;
    _startTimer();
  }

  @override
  void dispose() {
    // IMPORTANT: Cancel the timer to avoid memory leaks when the widget is removed.
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    // Create a periodic timer that fires every second.
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        // If the countdown is not finished, rebuild the widget with the new time.
        setState(() {
          _remainingSeconds--;
        });
      } else {
        widget.onTimerComplete();
        final String? rideReqId = ModalRoute.of(context)!.settings.arguments as String?;

        ReqPayment.reject(paymentRequestId: rideReqId!);

        Navigator.pop(context);
        // If the countdown is finished, cancel the timer.
        _timer.cancel();
      }
    });
  }

  String _formatTimer() {
    if (_remainingSeconds <= 0) {
      return '0 secs';
    }

    final int minutes = _remainingSeconds ~/ 60; // Integer division for minutes
    final int seconds = _remainingSeconds % 60; // Remainder for seconds

    if (minutes > 0) {
      return '$minutes mins $seconds secs';
    } else {
      return '$seconds secs';
    }
  }

  @override
  Widget build(BuildContext context) => RichText(
    text: TextSpan(
      // Use the default text style from the context for a consistent look.
      style: Cyan.headingl,
      children: <TextSpan>[TextSpan(text: widget.prefixText), TextSpan(text: " ( ${_formatTimer()})")],
    ),
  );
}
