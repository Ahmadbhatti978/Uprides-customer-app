import 'package:flutter/material.dart';

class DottedLinePainter extends CustomPainter {

  DottedLinePainter({
    this.color = Colors.grey,
    this.dashWidth = 5.0,
    this.gapWidth = 5.0,
    this.thickness = 1.0,
  });
  final Color color;
  final double dashWidth;
  final double gapWidth;
  final double thickness;

  @override
  void paint(final Canvas canvas, final Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..strokeWidth = thickness
      ..style = PaintingStyle.stroke;

    double currentPosition = 0;
    while (currentPosition < size.width) {
      final double endPosition = currentPosition + dashWidth;
      canvas.drawLine(
        Offset(currentPosition, size.height / 2),
        Offset(endPosition > size.width ? size.width : endPosition, size.height / 2),
        paint,
      );
      currentPosition += dashWidth + gapWidth;
    }
  }

  @override
  bool shouldRepaint(final DottedLinePainter oldDelegate) => oldDelegate.color != color || oldDelegate.dashWidth != dashWidth || oldDelegate.gapWidth != gapWidth;
}

class DottedVerticalLinePainter extends CustomPainter {

  DottedVerticalLinePainter({
    this.color = Colors.grey,
    this.dashWidth = 5.0,
    this.gapWidth = 5.0,
    this.thickness = 1.0,
  });
  final Color color;
  final double dashWidth;
  final double gapWidth;
  final double thickness;

  @override
  void paint(final Canvas canvas, final Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..strokeWidth = thickness
      ..style = PaintingStyle.stroke;

    double currentPosition = 0;
    while (currentPosition < size.height) {
      final double endPosition = currentPosition + dashWidth;
      canvas.drawLine(
        Offset(size.width / 2, currentPosition),
        Offset(size.width / 2, endPosition > size.height ? size.height : endPosition),
        paint,
      );
      currentPosition += dashWidth + gapWidth;
    }
  }

  @override
  bool shouldRepaint(final DottedVerticalLinePainter oldDelegate) => oldDelegate.color != color || oldDelegate.dashWidth != dashWidth || oldDelegate.gapWidth != gapWidth;
}
