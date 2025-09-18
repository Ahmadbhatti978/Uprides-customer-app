import 'dart:async';
import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/decode_poly.dart';
import '../../../../util/api/api_routes.dart';
import '../../../../util/api/call.dart';
import '../../model/payment_req.dart';
import '../../provider/request_provider.dart';
part 'request_payment_data.g.dart';

@riverpod
Future<PaymentRequest> requestPaymentData(final Ref ref, final String id) async => (await Request.post(
  path: Api.requestPaymentData(id),
  payload: {},
  onSuccess: (final json) {
    log(json.toString());

    return PaymentRequest.fromJson(json);
  },
)).fold(Future.error, (dta) async {
 
  final String poly = await getPolylineMarkers(dta.data?.data?.rideRequest?.getPointsByPickupandDropoff() ?? []);
  return dta.copyWith.data!.data!.rideRequest!.call(polyline: poly, route: decodePoly(poly));
});
