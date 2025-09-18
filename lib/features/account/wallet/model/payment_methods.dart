import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_methods.freezed.dart';
part 'payment_methods.g.dart';

List<PaymentMethods> paymentMethodsFromJson(dynamic json) => List<PaymentMethods>.from(json.map((x) => PaymentMethods.fromJson(x)));

String paymentMethodsToJson(List<PaymentMethods> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class PaymentMethods with _$PaymentMethods {
  const factory PaymentMethods({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "object") String? object,
    @JsonKey(name: "allow_redisplay") String? allowRedisplay,
    @JsonKey(name: "billing_details") BillingDetails? billingDetails,
    @JsonKey(name: "card") Card? card,
    @JsonKey(name: "created") int? created,
    @JsonKey(name: "customer") String? customer,
    @JsonKey(name: "livemode") bool? livemode,
    //  @JsonKey(name: "metadata") Metadata? metadata,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "isDefault") bool? isDefault,
  }) = _PaymentMethods;

  factory PaymentMethods.fromJson(Map<String, dynamic> json) => _$PaymentMethodsFromJson(json);
}

@freezed
abstract class BillingDetails with _$BillingDetails {
  const factory BillingDetails({
    @JsonKey(name: "address") Address? address,
    @JsonKey(name: "email") dynamic email,
    @JsonKey(name: "name") dynamic name,
    @JsonKey(name: "phone") dynamic phone,
  }) = _BillingDetails;

  factory BillingDetails.fromJson(Map<String, dynamic> json) => _$BillingDetailsFromJson(json);
}

@freezed
abstract class Address with _$Address {
  const factory Address({
    @JsonKey(name: "city") dynamic city,
    @JsonKey(name: "country") String? country,
    @JsonKey(name: "line1") dynamic line1,
    @JsonKey(name: "line2") dynamic line2,
    @JsonKey(name: "postal_code") dynamic postalCode,
    @JsonKey(name: "state") dynamic state,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
abstract class Card with _$Card {
  const factory Card({
    @JsonKey(name: "brand") String? brand,
    @JsonKey(name: "checks") Checks? checks,
    @JsonKey(name: "country") String? country,
    @JsonKey(name: "display_brand") String? displayBrand,
    @JsonKey(name: "exp_month") int? expMonth,
    @JsonKey(name: "exp_year") int? expYear,
    @JsonKey(name: "fingerprint") String? fingerprint,
    @JsonKey(name: "funding") String? funding,
    @JsonKey(name: "generated_from") dynamic generatedFrom,
    @JsonKey(name: "last4") String? last4,
    @JsonKey(name: "networks") Networks? networks,
    @JsonKey(name: "regulated_status") String? regulatedStatus,
    @JsonKey(name: "three_d_secure_usage") ThreeDSecureUsage? threeDSecureUsage,
    @JsonKey(name: "wallet") dynamic wallet,
  }) = _Card;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}

@freezed
abstract class Checks with _$Checks {
  const factory Checks({
    @JsonKey(name: "address_line1_check") dynamic addressLine1Check,
    @JsonKey(name: "address_postal_code_check") dynamic addressPostalCodeCheck,
    @JsonKey(name: "cvc_check") String? cvcCheck,
  }) = _Checks;

  factory Checks.fromJson(Map<String, dynamic> json) => _$ChecksFromJson(json);
}

@freezed
abstract class Networks with _$Networks {
  const factory Networks({@JsonKey(name: "available") List<String>? available, @JsonKey(name: "preferred") dynamic preferred}) = _Networks;

  factory Networks.fromJson(Map<String, dynamic> json) => _$NetworksFromJson(json);
}

@freezed
abstract class ThreeDSecureUsage with _$ThreeDSecureUsage {
  const factory ThreeDSecureUsage({@JsonKey(name: "supported") bool? supported}) = _ThreeDSecureUsage;

  factory ThreeDSecureUsage.fromJson(Map<String, dynamic> json) => _$ThreeDSecureUsageFromJson(json);
}

// @freezed
// class Metadata with _$Metadata {
//   const factory Metadata() = _Metadata;

//   factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);
// }
