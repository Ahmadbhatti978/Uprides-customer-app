// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Package _$PackageFromJson(Map<String, dynamic> json) => _Package(
      pickupLocation: json['pickup_location'] == null
          ? null
          : Coordinate.fromJson(
              json['pickup_location'] as Map<String, dynamic>),
      pickupTime: json['pickup_time'] == null
          ? null
          : DateTime.parse(json['pickup_time'] as String),
      packages: (json['packages'] as List<dynamic>?)
          ?.map((e) => PackageElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PackageToJson(_Package instance) => <String, dynamic>{
      'pickup_location': instance.pickupLocation,
      'pickup_time': _dateTimeToIso8601String(instance.pickupTime),
      'packages': instance.packages,
    };

_PackageElement _$PackageElementFromJson(Map<String, dynamic> json) =>
    _PackageElement(
      receiverDetails: json['receiver_details'] == null
          ? null
          : ReceiverDetails.fromJson(
              json['receiver_details'] as Map<String, dynamic>),
      packageType: json['package_type'] as String? ?? 'other',
      deliveryLocation: json['delivery_location'] == null
          ? null
          : Coordinate.fromJson(
              json['delivery_location'] as Map<String, dynamic>),
      dimensions: json['dimensions'] == null
          ? null
          : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
      description: json['description'] as String?,
      media:
          (json['media'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$PackageElementToJson(_PackageElement instance) =>
    <String, dynamic>{
      'receiver_details': instance.receiverDetails,
      'package_type': instance.packageType,
      'delivery_location': instance.deliveryLocation,
      'dimensions': instance.dimensions,
      'description': instance.description,
      'media': instance.media,
    };

_Dimensions _$DimensionsFromJson(Map<String, dynamic> json) => _Dimensions(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      length: (json['length'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DimensionsToJson(_Dimensions instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'length': instance.length,
      'weight': instance.weight,
    };

_ReceiverDetails _$ReceiverDetailsFromJson(Map<String, dynamic> json) =>
    _ReceiverDetails(
      fullName: json['full_name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$ReceiverDetailsToJson(_ReceiverDetails instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'phone': removeSpaces(instance.phone),
    };
