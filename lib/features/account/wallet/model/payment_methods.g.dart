// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_methods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentMethods _$PaymentMethodsFromJson(Map<String, dynamic> json) =>
    _PaymentMethods(
      id: json['id'] as String?,
      object: json['object'] as String?,
      allowRedisplay: json['allow_redisplay'] as String?,
      billingDetails: json['billing_details'] == null
          ? null
          : BillingDetails.fromJson(
              json['billing_details'] as Map<String, dynamic>),
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      created: (json['created'] as num?)?.toInt(),
      customer: json['customer'] as String?,
      livemode: json['livemode'] as bool?,
      type: json['type'] as String?,
      isDefault: json['isDefault'] as bool?,
    );

Map<String, dynamic> _$PaymentMethodsToJson(_PaymentMethods instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'allow_redisplay': instance.allowRedisplay,
      'billing_details': instance.billingDetails,
      'card': instance.card,
      'created': instance.created,
      'customer': instance.customer,
      'livemode': instance.livemode,
      'type': instance.type,
      'isDefault': instance.isDefault,
    };

_BillingDetails _$BillingDetailsFromJson(Map<String, dynamic> json) =>
    _BillingDetails(
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      email: json['email'],
      name: json['name'],
      phone: json['phone'],
    );

Map<String, dynamic> _$BillingDetailsToJson(_BillingDetails instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
    };

_Address _$AddressFromJson(Map<String, dynamic> json) => _Address(
      city: json['city'],
      country: json['country'] as String?,
      line1: json['line1'],
      line2: json['line2'],
      postalCode: json['postal_code'],
      state: json['state'],
    );

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'line1': instance.line1,
      'line2': instance.line2,
      'postal_code': instance.postalCode,
      'state': instance.state,
    };

_Card _$CardFromJson(Map<String, dynamic> json) => _Card(
      brand: json['brand'] as String?,
      checks: json['checks'] == null
          ? null
          : Checks.fromJson(json['checks'] as Map<String, dynamic>),
      country: json['country'] as String?,
      displayBrand: json['display_brand'] as String?,
      expMonth: (json['exp_month'] as num?)?.toInt(),
      expYear: (json['exp_year'] as num?)?.toInt(),
      fingerprint: json['fingerprint'] as String?,
      funding: json['funding'] as String?,
      generatedFrom: json['generated_from'],
      last4: json['last4'] as String?,
      networks: json['networks'] == null
          ? null
          : Networks.fromJson(json['networks'] as Map<String, dynamic>),
      regulatedStatus: json['regulated_status'] as String?,
      threeDSecureUsage: json['three_d_secure_usage'] == null
          ? null
          : ThreeDSecureUsage.fromJson(
              json['three_d_secure_usage'] as Map<String, dynamic>),
      wallet: json['wallet'],
    );

Map<String, dynamic> _$CardToJson(_Card instance) => <String, dynamic>{
      'brand': instance.brand,
      'checks': instance.checks,
      'country': instance.country,
      'display_brand': instance.displayBrand,
      'exp_month': instance.expMonth,
      'exp_year': instance.expYear,
      'fingerprint': instance.fingerprint,
      'funding': instance.funding,
      'generated_from': instance.generatedFrom,
      'last4': instance.last4,
      'networks': instance.networks,
      'regulated_status': instance.regulatedStatus,
      'three_d_secure_usage': instance.threeDSecureUsage,
      'wallet': instance.wallet,
    };

_Checks _$ChecksFromJson(Map<String, dynamic> json) => _Checks(
      addressLine1Check: json['address_line1_check'],
      addressPostalCodeCheck: json['address_postal_code_check'],
      cvcCheck: json['cvc_check'] as String?,
    );

Map<String, dynamic> _$ChecksToJson(_Checks instance) => <String, dynamic>{
      'address_line1_check': instance.addressLine1Check,
      'address_postal_code_check': instance.addressPostalCodeCheck,
      'cvc_check': instance.cvcCheck,
    };

_Networks _$NetworksFromJson(Map<String, dynamic> json) => _Networks(
      available: (json['available'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      preferred: json['preferred'],
    );

Map<String, dynamic> _$NetworksToJson(_Networks instance) => <String, dynamic>{
      'available': instance.available,
      'preferred': instance.preferred,
    };

_ThreeDSecureUsage _$ThreeDSecureUsageFromJson(Map<String, dynamic> json) =>
    _ThreeDSecureUsage(
      supported: json['supported'] as bool?,
    );

Map<String, dynamic> _$ThreeDSecureUsageToJson(_ThreeDSecureUsage instance) =>
    <String, dynamic>{
      'supported': instance.supported,
    };
