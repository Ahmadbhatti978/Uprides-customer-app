import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class DepthEffect extends StatelessWidget {
  const DepthEffect({super.key, this.width = 390});
  final double width;

  @override
  Widget build(BuildContext context) => Center(
    child: Transform.rotate(
      angle: pi / 18, // Convert degrees to radians
      child: ImageFiltered(imageFilter: ImageFilter.blur(sigmaX: 40, sigmaY: 40), child: CustomPaint(size: Size.square(width), painter: EllipseBlurPainter())),
    ),
  );
}

class EllipseBlurPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.black45
          ..style = PaintingStyle.fill;

    // Use percentage-based sizes
    final double centerX = size.width * 0.5;
    final double centerY = size.width * 0.5;
    final double rx = size.width; // like 301.538/390
    final double ry = size.width * 0.2; // like 99.4862/390

    canvas.drawOval(Rect.fromCenter(center: Offset(centerX, centerY), width: rx * 2, height: ry * 2), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
