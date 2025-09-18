import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/failure/failure.dart';
import '../../../../util/api/api_routes.dart';
import '../../../../util/api/call.dart';
import '../../../../util/variable.dart';
import '../model/payment_methods.dart';

part 'payment_remote.g.dart';

abstract interface class PaymentRemote {
  Future<Either<ErrorDetails, MapEntry<String, String>>> createAccount({final String? name, final String? email});
  Future<Either<ErrorDetails, String>> addMethod(final String token, {final String? name, final String? email});
  Future<Either<ErrorDetails, List<String>>> attachMethod({required final String paymentMethodId, required final String customerStripeId});
  Future<Either<ErrorDetails, String>> makeDefault(final String paymentMethodId, {final String? customerStripeId});
  Future<Either<ErrorDetails, String>> removeMethod(final String paymentMethodId, {final String? customerStripeId});
  Future<Either<ErrorDetails, List<PaymentMethods>>> getAllMethods();

  Future<Either<ErrorDetails, List<String>>> getMethod();
  Future<Either<ErrorDetails, dynamic>> requestPaymentConfirm({
    required final String rideReqId,
    required final String customerStripeId,
    required final String customerPaymentMethod,
    required final String rideTypeId,
    required final String polyline,
  });
}

@riverpod
PaymentRemoteImpl paymentRemoteRepository(final Ref ref) => PaymentRemoteImpl();

class PaymentRemoteImpl implements PaymentRemote {
  @override
  Future<Either<ErrorDetails, String>> addMethod(final String token, {final String? name, final String? email}) {
    final Map<String, String?> payload = <String, String?>{'name': name, 'email': email};
    return Request.post<String>(path: Api.addPaymentMethods, payload: payload, onSuccess: (final json) => 'success');
  }

  @override
  Future<Either<ErrorDetails, MapEntry<String, String>>> createAccount({final String? name, final String? email}) {
    final Map<String, String?> payload = <String, String?>{'name': name ?? guser?.fullName, 'email': email ?? guser?.email};
    return Request.post<MapEntry<String, String>>(
      path: Api.createPaymentMethods,
      payload: payload,
      onSuccess: (final json) {
        customerID = json['data']['customerId'];

        return MapEntry(customerID!, json['data']['setupIntentClientSecret']);
      },
    );
  }

  @override
  Future<Either<ErrorDetails, List<String>>> attachMethod({required final String paymentMethodId, required final String customerStripeId}) async =>
      right(<String>['success']);

  @override
  Future<Either<ErrorDetails, String>> makeDefault(final String paymentMethodId, {final String? customerStripeId}) {
    final Map<String, String?> payload = <String, String?>{'payment_method_id': paymentMethodId, 'customer_stripe_id': customerStripeId ?? customerID};
    return Request.post<String>(path: Api.makeDefaultPaymentMethod, payload: payload, onSuccess: (final json) => 'success');
  }

  @override
  Future<Either<ErrorDetails, List<PaymentMethods>>> getAllMethods() =>
      Request.get(path: Api.getAllMethod, onSuccess: (final json) => paymentMethodsFromJson(json['data']));

  @override
  Future<Either<ErrorDetails, List<String>>> getMethod() async => right(<String>['success']);

  @override
  Future<Either<ErrorDetails, String>> removeMethod(final String paymentMethodId, {final String? customerStripeId}) => Request.delete(
    path: Api.removePaymentMethod(paymentMethodId),
    payload: <String, String>{'payment_method_id': paymentMethodId, 'customer_stripe_id': customerStripeId ?? customerID!},
    onSuccess: (final json) => 'Sucess',
  );

  @override
  Future<Either<ErrorDetails, dynamic>> requestPaymentConfirm({
    required final String rideReqId,
    required final String customerStripeId,
    required final String customerPaymentMethod,
    required final String rideTypeId,
    required final String polyline,
    final String? bookingType,
  })   {
    final Map<String, String?> payload = <String, String?>{
      "customer_stripe_id": customerStripeId,
      "customer_payment_method": customerPaymentMethod,
      "ride_type_id": rideTypeId,
      "polyline": polyline,
      //  "booking_type": bookingType ?? BookingType.MANUAL.name,
    };

    return Request.post(
      path: Api.requestPaymentConfirm(rideReqId),
      payload: payload,
      onSuccess: (final json) => json['data'] as dynamic,
    ); //.fold(Future.error, (r) => Future.value(r));
  }
}
