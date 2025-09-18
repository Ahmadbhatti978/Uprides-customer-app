import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment.g.dart';
part 'payment.freezed.dart';

@freezed
abstract class Payment with _$Payment {
  const factory Payment({
    @JsonKey(name: 'amount') final double? amount,
    @JsonKey(name: 'currency') final String? currency,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: '_id') final String? id,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    @JsonKey(name: '__v') final int? v,
  }) = _Payment;

  factory Payment.fromJson(final Map<String, dynamic> json) => _$PaymentFromJson(json);
}
