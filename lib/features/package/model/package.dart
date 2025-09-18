import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/model/coordinate.dart';

part 'package.freezed.dart';
part 'package.g.dart';

@freezed
abstract class Package with _$Package {
  const factory Package({
    @JsonKey(name: 'pickup_location') Coordinate? pickupLocation,
    @JsonKey(name: 'pickup_time', toJson: _dateTimeToIso8601String) DateTime? pickupTime,
    @JsonKey(name: 'packages') List<PackageElement>? packages,
  }) = _Package;

  factory Package.fromJson(Map<String, dynamic> json) => _$PackageFromJson(json);
}

@freezed
abstract class PackageElement with _$PackageElement {
  const factory PackageElement({
    @JsonKey(name: 'receiver_details') ReceiverDetails? receiverDetails,
    @JsonKey(name: 'package_type', defaultValue: 'other') String? packageType,
    @JsonKey(name: 'delivery_location') Coordinate? deliveryLocation,
    @JsonKey(name: 'dimensions') Dimensions? dimensions,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'media', defaultValue: <String>[]) List<String>? media,
  }) = _PackageElement;

  factory PackageElement.fromJson(Map<String, dynamic> json) => _$PackageElementFromJson(json);
}

@freezed
abstract class Dimensions with _$Dimensions {
  const factory Dimensions({
    @JsonKey(name: 'width') int? width,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'length') int? length,
    @JsonKey(name: 'weight') int? weight,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);
}

@freezed
abstract class ReceiverDetails with _$ReceiverDetails {
  const factory ReceiverDetails({@JsonKey(name: 'full_name') String? fullName, @JsonKey(name: 'phone', toJson: removeSpaces) String? phone}) = _ReceiverDetails;

  factory ReceiverDetails.fromJson(Map<String, dynamic> json) => _$ReceiverDetailsFromJson(json);
}

@freezed
abstract class PackagesDetail with _$PackagesDetail {
  const factory PackagesDetail({
    int? type,
    Dimensions? dimensions,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'media') List<String>? media,
  }) = _PackagesDetail;
}

// Custom function to format DateTime as ISO 8601
String? _dateTimeToIso8601String(DateTime? dateTime) => dateTime?.toUtc().toIso8601String();

String removeSpaces(String? inputString) => (inputString ?? '').replaceAll(RegExp(r'\s+'), '');
