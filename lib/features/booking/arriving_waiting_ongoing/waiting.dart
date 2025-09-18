import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart';
import '../../../core/failure/failure.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/loading_error/error.dart';
import '../../../core/widgets/loading_error/loading.dart';
import '../../../util/colors.dart';
import '../../../util/variable.dart';
import '../book_ride/provider/ride_data.dart';
import 'component/map_for_driver_user.dart';
import 'component/ride_info.dart';

class Waiting extends ConsumerWidget {
  const Waiting({super.key});

  @override
  Widget build(final BuildContext context, WidgetRef ref) {
    if (currentRoute != AppRoutes.cancelledRide) currentRoute = AppRoutes.arrivingIN;

    final String? id = ModalRoute.settingsOf(context)?.arguments as String?;

    return ref
        .watch(RideDataProvider((id ?? rideId)!))
        .when(
          data:
              (data) => Scaffold(
                body: Stack(
                  children: <Widget>[
                    const MapForDriverUser(),
                    DraggableScrollableSheet(
                      initialChildSize: 0.4,
                      maxChildSize: 0.93,
                      minChildSize: 0.1,
                      builder:
                          (final BuildContext context, final ScrollController scrollController) => RideInfo(scrollController: scrollController, ride: data),
                    ),
                  ],
                ),
              ),
          error: (Object error, StackTrace stackTrace) => Err(error: error as ErrorDetails),
          loading: () => const Loading(),
        );
  }

  Future<BitmapDescriptor> getMarkerIcon(String imageUrl, double size) async {
    // 1) Compute dimensions
    final double diameter = size;
    final double pointerHeight = diameter * 0.4; // pointer = 40% of circle
    final double totalHeight = diameter + pointerHeight;
    final double radius = diameter / 2;
    const double borderWidth = 4; // white stroke thickness

    // 2) Start drawing
    final ui.PictureRecorder recorder = ui.PictureRecorder();
    final Canvas canvas = Canvas(recorder);

    // Build the pin path (circle + triangular pointer)
    final Path pinPath =
        Path()
          ..addOval(Rect.fromCircle(center: Offset(radius, radius), radius: radius))
          ..moveTo(radius - pointerHeight / 2, diameter)
          ..lineTo(radius, diameter + pointerHeight)
          ..lineTo(radius + pointerHeight / 2, diameter)
          ..close();

    // 3) (Optional) subtle shadow under pin
    canvas
      ..drawShadow(pinPath, Colors.black26, 4, true)
      // 4) Fill pin
      ..drawPath(pinPath, Paint()..color = Colorx.primary)
      // 5) Stroke pin with white border
      ..drawPath(
        pinPath,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = borderWidth
          ..color = Colors.white,
      );

    // 6) Clip to the **inner** circle (so we don’t draw the image into the pointer)
    final Path circleClip =
        Path()..addOval(
          Rect.fromCircle(
            center: Offset(radius, radius),
            radius: radius - borderWidth, // leave room for the white stroke
          ),
        );
    canvas.clipPath(circleClip);

    // 7) Load and draw the image inside that circle
    final ui.Image image = await _loadImage(imageUrl);
    final Rect imageRect = Rect.fromCircle(center: Offset(radius, radius), radius: radius - borderWidth);
    paintImage(canvas: canvas, image: image, rect: imageRect, fit: BoxFit.cover);

    // 8) End recording & convert to BitmapDescriptor
    final ui.Image finalImage = await recorder.endRecording().toImage(diameter.toInt(), totalHeight.toInt());
    final ByteData? pngBytes = await finalImage.toByteData(format: ui.ImageByteFormat.png);
    if (pngBytes == null) return BitmapDescriptor.defaultMarker;
    return BitmapDescriptor.bytes(pngBytes.buffer.asUint8List());
  }

  Future<ui.Image> _loadImage(String url) async {
    final Response response = await get(Uri.parse(url));
    if (response.statusCode != 200) {
      throw Exception('Failed to load image: ${response.statusCode}');
    }
    final Completer<ui.Image> completer = Completer();
    ui.decodeImageFromList(response.bodyBytes, completer.complete);
    return completer.future;
  }
}
