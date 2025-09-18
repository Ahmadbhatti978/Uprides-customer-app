import 'package:flutter/material.dart';

import '../../../../core/router/route.dart';
import '../../../../util/variable.dart';

class TweenLoading extends StatefulWidget {
  const TweenLoading({super.key});

  @override
  State<TweenLoading> createState() => _TweenLoadingState();
}

class _TweenLoadingState extends State<TweenLoading> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    currentRoute = AppRoutes.loadingRide;
    _controller = AnimationController(duration: const Duration(milliseconds: 10000), vsync: this)..repeat(); // Automatically repeats when completes

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
    animation: _animation,
    builder:
        (context, _) => Stack(
          alignment: Alignment.center,
          children: <Widget>[
            LinearProgressIndicator(color: const Color(0xFF18C4B8), value: _animation.value),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[Container(width: 30, height: 10, color: Colors.white), Container(width: 30, height: 10, color: Colors.white)],
            ),
          ],
        ),
  );
}
