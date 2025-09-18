import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/constants.dart';
import '../../../core/failure/failure.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/buttons/bottom_navigation_button.dart';
import '../../../core/widgets/loading_error/loading.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../auth/model/user.dart';
import 'model/req_data.dart';
import 'provider/payment_request.dart';
import 'repo/req_payment.dart';

class PaymentRequest extends StatefulWidget {
  const PaymentRequest({super.key});

  @override
  State<PaymentRequest> createState() => _PaymentRequestState();
}

class _PaymentRequestState extends State<PaymentRequest> {
  Timer? _timer;

  int _secondsRemaining = 300;

  @override
  void initState() {
    super.initState();
    currentRoute = AppRoutes.cancelledRide;
    timer();
  }

  void timer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (final Timer timer) {
      if (_secondsRemaining <= 1) {
        timer.cancel();

        if (id != null) {
          ReqPayment.cancel(paymentRequestId: id!);
        }
        if (mounted) {
          Navigator.pop(context);
          Navigator.pop(context);
        }
      } else {
        setState(() {
          _secondsRemaining--;
        });
      }
    });
  }

  String _formatTime(final int seconds) {
    final String minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final String remainingSeconds = (seconds % 60).toString().padLeft(2, '0');
    return '$minutes:$remainingSeconds';
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String? id;
  @override
  Widget build(final BuildContext context) {
    final (User args, String message) = ModalRoute.of(context)!.settings.arguments! as (User, String);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: spacing * 3),
        child: Column(
          spacing: padding,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(paymentRequest, width: 200, height: 200),
            const Gap(padding),
            Text(l10n.payment_request_sent, style: Default.headingBig, textAlign: TextAlign.center),
            Text(l10n.paymentRequestSentInfo(args.fullName ?? ""), style: Secondary.titleBig, textAlign: TextAlign.center),

            Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(text: l10n.cancelling_in, style: Secondary.title),
                  TextSpan(text: _formatTime(_secondsRemaining), style: Cyan.underline),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: SizedBox(
          child: Consumer(
            builder:
                (final BuildContext context, final WidgetRef ref, final Widget? child) => ref
                    .watch(RequestMoneyProvider(args.id!, message))
                    .when(
                      data: (final ReqData data) {
                        id = data.data?.id;
                        return BottomNavigationButton(
                          text: l10n.cancel_request,
                          onPressed: () {
                            ReqPayment.cancel(paymentRequestId: data.data!.id!);
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                        );
                      },
                      error:
                          (final Object error, final StackTrace stackTrace) =>
                              Align(alignment: AlignmentGeometry.bottomCenter, child: Text((error as ErrorDetails).message)),
                      loading: () => loading,
                    ),
          ),
        ),
      ),
    );
  }
}
