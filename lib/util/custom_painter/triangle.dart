import 'package:flutter/material.dart';

import '../colors.dart';

class TrianglePainter extends CustomPainter {
  const TrianglePainter({this.color = Colorx.primary});
  final Color color;

  @override
  void paint(final Canvas canvas, final Size size) {
    final Paint paint = Paint()..color = color;

    final Path path =
        Path()
          ..moveTo(0, 0) // Top-left corner
          ..lineTo(size.width, 0) // Top-right corner
          ..lineTo(size.width / 2, size.height) // Bottom-center (point of triangle)
          ..close(); // Connects back to the start point

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant final CustomPainter oldDelegate) => false;
}
