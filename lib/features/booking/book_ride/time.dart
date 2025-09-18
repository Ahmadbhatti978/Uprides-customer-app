import 'dart:async';

import 'package:flutter/material.dart';

import '../../../util/style/typo.dart';

class Time extends StatefulWidget {
  const Time({required this.second, super.key});
  final int second;

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  int duration = 200;
  late Timer timer;
  @override
  void initState() {
    duration = widget.second;
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (final Timer timer) {
      setState(() {
        duration = duration - 1;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => Text( duration < 1 ? '0': formatDuration(  duration), style: Primary.body.copyWith(decoration: TextDecoration.underline));

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
}
