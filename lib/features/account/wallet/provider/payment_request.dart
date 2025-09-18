import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/failure/failure.dart';
import '../../../../util/api/api_routes.dart';
import '../../../../util/api/call.dart';
import '../../../../util/variable.dart';
import '../../../booking/provider/selected_ride.dart';
import '../model/req_data.dart';
part 'payment_request.g.dart';

@riverpod
Future<ReqData> requestMoney(final Ref ref, final String id, final String message) async {
  final String? rideTypeId = ref.watch(selectedRideProvider)?.rideTypeId;

  if (rideTypeId == null) {
    return Future.error(ErrorDetails(message: 'Ride type ID is null', stackTrace: StackTrace.current));
  }
  final Map<String, String> payload = <String, String>{'paid_by_id': id, 'ride_type_id': rideTypeId, "note": message};

  return (await Request.post(
    path: Api.requestPayment(rideRequest!.rideId!),
    payload: payload,
    onSuccess: (final json) => ReqData.fromJson(json),
  )).fold(Future.error, Future.value);
}
