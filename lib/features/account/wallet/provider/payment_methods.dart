import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/stripe/stripe_service.dart';
import '../../../../util/utils.dart';
import '../model/payment_methods.dart';
import '../repo/payment_remote.dart';
import '../wallet.dart';
part 'payment_methods.g.dart';

@Riverpod(keepAlive: true) // keepAlive might be useful for payment methods
class PaymentMethodsNotifier extends _$PaymentMethodsNotifier {
  // Helper to easily access the repository
  PaymentRemoteImpl get _repository => ref.read(paymentRemoteRepositoryProvider);

  @override
  Future<List<PaymentMethods>> build() => getAllPaymentMethods();
  Future<List<PaymentMethods>> getAllPaymentMethods() async =>
      (await _repository.getAllMethods()).fold(Future.error, (data) => Future.value(autoMakeDefault(data)));

  // A helper to auto-make the only non-default payment method default.
  Future<List<PaymentMethods>> autoMakeDefault(List<PaymentMethods> paymentMethods) async {
    if (paymentMethods.length == 1 && paymentMethods.first.isDefault == false && paymentMethods.first.id != null) {
      return (await _repository.makeDefault(paymentMethods.first.id!, customerStripeId: paymentMethods.first.customer)).fold((error) {
        showSnackBar(error.message);
        return Future.error(error);
      }, (data) => getAllPaymentMethods());
    }
    return paymentMethods;
  }

  Future<bool> createAccountSetup() async => (await _repository.createAccount()).fold(
    (final ErrorDetails l) {
      ref.read(loadingProvider.notifier).state = false;
      showSnackBar(l.message);
      return false;
    },
    (final MapEntry<String, String> r) async {
      ref.read(loadingProvider.notifier).state = false;
      await StripeService.instance.presentSheet(r.key, r.value);
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(getAllPaymentMethods);

      return true;
    },
  );

  Future<void> removePaymentMethod(String paymentMethodId, {String? customerStripeId}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async => (await _repository.removeMethod(paymentMethodId, customerStripeId: customerStripeId)).fold((l) {
        showSnackBar(l.message);
        return Future.error(l);
      }, (data) => getAllPaymentMethods()),
    );
  }

  // ACTION: Make a Payment Method Default
  // Called explicitly from the UI. Updates the state to loading, then success/error.
  Future<void> makeDefault(String paymentMethodId, {String? customerStripeId}) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(
      () async => (await _repository.makeDefault(paymentMethodId, customerStripeId: customerStripeId)).fold((l) {
        showSnackBar(l.message);
        return Future.error(l);
      }, (data) => getAllPaymentMethods()),
    );
  }
}
