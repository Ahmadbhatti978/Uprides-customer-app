import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart';
part 'create_package.g.dart';

@riverpod
Future<void> createPackage(final Ref ref) async {
  await Request.post(
    path: Api.package,
    payload:{}, //ref.read(packageProvider).toJson(),
    onSuccess: (final json) {
      //  final x = GooglePlaceRepo.computeRoutes(destination: data.ride!.pickupLocation!);
      //  final dlDcRoute = await GooglePlaceRepo.computeRoutes(destination: data.ride!.dropoffLocation!, origin: data.ride!.pickupLocation!);
      // dlDcRoute.fold((c) {
  
      //   return data.copyWith(dlDcDistance: 0);
      // }, (ComputeRoutes computeRoutes) => data.copyWith(dlDcDistance: computeRoutes.routes!.first.distanceMeters));

      //  return Future.value(data);
    },
  );
}
