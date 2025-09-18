import 'package:fpdart/fpdart.dart';
import '../../../../core/failure/failure.dart';
import '../../../../util/api/api_routes.dart';
import '../../../../util/api/call.dart';

// Removed the interface since static methods can't implement it

// ignore: avoid_classes_with_only_static_members
class ReqPayment {
  static Future<Either<ErrorDetails, dynamic>> accept({required String paymentRequestId}) => Request.post(path: Api.requestPaymentaccept(paymentRequestId), payload: const <String, dynamic>{}, onSuccess: (json) => json);

  static Future<Either<ErrorDetails, dynamic>> reject({required String paymentRequestId}) => Request.post(path: Api.requestPaymentReject(paymentRequestId), payload: const <String, dynamic>{}, onSuccess: (json) => json);

  static Future<Either<ErrorDetails, dynamic>> cancel({required String paymentRequestId}) => Request.post(path: Api.requestPaymentCancel(paymentRequestId), payload: const <String, dynamic>{}, onSuccess: (json) => json);
}
// abstract class ReqPayment {
//   Future<Either<ErrorDetails, dynamic>> accept({required String paymentRequestId});
//   Future<Either<ErrorDetails, dynamic>> reject({required String paymentRequestId});
//   Future<Either<ErrorDetails, dynamic>> cancel({required String paymentRequestId});
// }

// class ReqPaymentImpl implements ReqPayment {
//   @override
//   Future<Either<ErrorDetails, dynamic>> accept({required String paymentRequestId}) {
//     return Request.post(path: Api.requestPaymentaccept(paymentRequestId), payload: const <String, dynamic>{}, onSuccess: (json) => json);
//   }

//   @override
//   Future<Either<ErrorDetails, dynamic>> reject({required String paymentRequestId}) {
//     return Request.post(path: Api.requestPaymentReject(paymentRequestId), payload: const <String, dynamic>{}, onSuccess: (json) => json);
//   }

//   @override
//   Future<Either<ErrorDetails, dynamic>> cancel({required String paymentRequestId}) {
//     return Request.post(path: Api.requestPaymentCancel(paymentRequestId), payload: const <String, dynamic>{}, onSuccess: (json) => json);
//   }
// }
