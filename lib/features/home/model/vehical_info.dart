import 'package:freezed_annotation/freezed_annotation.dart';
part 'vehical_info.freezed.dart';
part 'vehical_info.g.dart';

@freezed
abstract class VehicleInfo with _$VehicleInfo {
  const factory VehicleInfo({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "vin") String? vin,
    @JsonKey(name: "registration_number") String? registrationNumber,
  }) = _VehicleInfo;
  factory VehicleInfo.fromJson(Map<String, dynamic> json) => _$VehicleInfoFromJson(json);
}
