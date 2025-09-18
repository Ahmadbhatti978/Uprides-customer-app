import 'package:freezed_annotation/freezed_annotation.dart';
part 'driver.freezed.dart';
part 'driver.g.dart';

@freezed
abstract class Driver with _$Driver {
  const factory Driver({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'profile_photo') String? profilePhoto,
    @JsonKey(name: 'organization_id') String? organizationId,
    @JsonKey(name: 'vehicle_id') @VehicalIDConverter() VehicleId? vehicleId,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}

class VehicalIDConverter implements JsonConverter<VehicleId?, dynamic> {
  const VehicalIDConverter();

  @override
  VehicleId? fromJson(dynamic json) {
    if (json == null) return null;
    if (json is String) return VehicleId(id: json);
    if (json is Map<String, dynamic>) return VehicleId.fromJson(json);
    throw ArgumentError('Unexpected type for UserID');
  }

  @override
  Map<String, dynamic>? toJson(VehicleId? object) => object?.toJson();
}

@freezed
abstract class VehicleId with _$VehicleId {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory VehicleId({
    // Documents? documents,
    String? id,
    String? vehicleModel,
    String? color,
    String? brand,
    String? vin,
    String? registrationNumber,
    String? createdBy,
    String? category,
    vehicleId,
    bool? isActive,
    bool? babySitterAvailable,
    bool? jumpStart,
    bool? rental,
    bool? intercity,
    int? seats,
    int? rentHourlyCharges,
    int? securityDeposit,
    bool? petFriendly,
    bool? assist,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    String? assignedDriver,
  }) = _VehicleId;

  factory VehicleId.fromJson(Map<String, dynamic> json) => _$VehicleIdFromJson(json);
}

// @freezed
// class Documents with _$Documents {
//   const factory Documents({
//     CarInsurancePolicyGreenCard? carInsurancePolicyGreenCard,
//     CarInsurancePolicyGreenCard? carInsuranceSpecialConditions,
//     CarInsurancePolicyGreenCard? periodicTechnicalInspection,
//     CarInsurancePolicyGreenCard? duaSingleCarDocument,
//   }) = _Documents;

//   factory Documents.fromJson(Map<String, dynamic> json) => _$DocumentsFromJson(json);
// }

// @freezed
// class CarInsurancePolicyGreenCard with _$CarInsurancePolicyGreenCard {
//   const factory CarInsurancePolicyGreenCard({
//     String? name,
//     String? url,
//     String? status,
//     dynamic remarks,
//     String? id,
//   }) = _CarInsurancePolicyGreenCard;

//   factory CarInsurancePolicyGreenCard.fromJson(Map<String, dynamic> json) =>
//       _$CarInsurancePolicyGreenCardFromJson(json);
// }
