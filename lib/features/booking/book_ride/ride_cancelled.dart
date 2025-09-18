import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/constants.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/appbar/name_bar.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import 'socket/ride_socket.dart';

class RideCancelled extends StatefulWidget {
  const RideCancelled({super.key});

  @override
  State<RideCancelled> createState() => _RideCancelledState();
}

class _RideCancelledState extends State<RideCancelled> {
  Timer? _timer;

  int _secondsRemaining = 10;

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
        if (mounted) {
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

  @override
  Widget build(final BuildContext context) {
    currentRoute = AppRoutes.cancelledRide;
    final String id = ModalRoute.settingsOf(context)?.arguments as String? ?? rideId!;
    return Scaffold(
      appBar: const NameBar(title: 'Cancel'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          const Row(),
          Icon(Icons.block, size: mediaQuery.size.width * 0.28, color: Colors.red),
          Text(l10n.oops, style: Default.displayLarge),
          Text(l10n.ride_cancelled, style: Primary.displaySmall),
          Text(l10n.your_ride_has_been_cancelled, style: Secondary.title),
          Text.rich(
            TextSpan(
              children: <InlineSpan>[
                TextSpan(text: l10n.redirecting_in, style: Secondary.title),
                TextSpan(text: _formatTime(_secondsRemaining), style: Cyan.underline),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        maintainBottomViewPadding: true,
        minimum: const EdgeInsets.only(bottom: p12),
        child: Padding(
          padding: const EdgeInsets.all(padding),
          child: Consumer(
            builder: (context, ref, child) {
              if (ref.exists(ridSocketProvider(id))) {
                ref.invalidate(ridSocketProvider(id));
                rideRequest = null;
                rideId = null;
              }

              return BlackButton(
                text: 'Go to Home',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, AppRoutes.bottomNavigationScreen, (final Route<dynamic> route) => false);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
