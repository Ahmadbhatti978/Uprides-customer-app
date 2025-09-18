import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

// Provider for the rider's name
final AutoDisposeStateProvider<String> riderNameProvider = StateProvider.autoDispose<String>((ref) => '');

// Provider for the rider's phone number
final AutoDisposeStateProvider<String> riderPhoneProvider = StateProvider.autoDispose<String>((ref) => '');

// Provider for the 'agree to share' checkbox
final AutoDisposeStateProvider<bool> agreeConditionProvider = StateProvider.autoDispose<bool>((ref) => false);

// ✨ DERIVED PROVIDER for form validation ✨
// This provider automatically re-evaluates whenever one of its dependencies changes.
final AutoDisposeProvider<bool> isFormValidProvider = Provider.autoDispose<bool>((ref) {
  final String name = ref.watch(riderNameProvider);
  final String phone = ref.watch(riderPhoneProvider);
  final bool hasAgreed = ref.watch(agreeConditionProvider);
  // Add your phone number valiion logic here.
  // For this example, let's assume a valid phone number has more than 5 digits.
  final bool isPhoneValid = phone.length > 8 ? PhoneNumber.parse(phone).isValid(type: PhoneNumberType.mobile) : false; // Example validation

  return name.trim().isNotEmpty && isPhoneValid && hasAgreed;
});
