import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'placemark_notifier.g.dart';

//used in add location on map
@Riverpod(keepAlive: true)
Future<Placemark> fetchPlacemarkFromCoordinates(final Ref ref, {required final double latitude, required final double longitude}) async =>
    (await placemarkFromCoordinates(latitude, longitude)).first;
