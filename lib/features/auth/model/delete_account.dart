import 'package:freezed_annotation/freezed_annotation.dart';

import '../../account/profile/component/delete_reason_dialog.dart';

part 'delete_account.freezed.dart';
part 'delete_account.g.dart';

@freezed
abstract class DeleteAccount with _$DeleteAccount {
  const factory DeleteAccount({@JsonKey(includeToJson: false) String? reason, String? token, String? phone, String? otp}) = _DeleteAccount;
  factory DeleteAccount.fromJson(Map<String, dynamic> json) => _$DeleteAccountFromJson(json);
}

// Add this extension for your custom method
extension DeleteAccountReasonJson on DeleteAccount {
  Map<String, String> toReasonJson() => {'reason': reason ?? DeleteAccountReasonType.other.reason};
}
