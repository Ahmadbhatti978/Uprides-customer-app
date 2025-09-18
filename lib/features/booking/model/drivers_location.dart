import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/model/coordinate.dart';
part 'drivers_location.freezed.dart';
part 'drivers_location.g.dart';

@freezed
abstract class DriversLocation with _$DriversLocation {
  const factory DriversLocation({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "coordinates") Coordinate? coordinates,
    @JsonKey(name: "brand_name") String? brandName,
    @JsonKey(name: "vehicle_id") String? vehicleId,
    @JsonKey(name: "vehicle_type") String? vehicleType,
    @JsonKey(name: "organization_id") String? organizationId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "pic") String? pic,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "ride_type_id") String? rideTypeId,
    @JsonKey(name: "model") String? model,
  }) = _DriversLocation;

  factory DriversLocation.fromJson(final Map<String, dynamic> json) => _$DriversLocationFromJson(json);
}
