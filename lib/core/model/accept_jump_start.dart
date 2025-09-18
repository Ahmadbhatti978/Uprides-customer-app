import 'package:freezed_annotation/freezed_annotation.dart';

import '../../features/auth/model/user.dart';
import 'coordinate.dart';
import 'driver.dart';

part 'accept_jump_start.freezed.dart';
part 'accept_jump_start.g.dart';

@freezed
abstract class AcceptedJumpStart with _$AcceptedJumpStart {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory AcceptedJumpStart({
    @JsonKey(name: 'mapData') MapData? mapData,
    @JsonKey(name: 'distance_fare') int? distanceFare,
    @JsonKey(name: 'driver_id') String? driverId,
    @JsonKey(name: 'ride_id') String? rideId,
    @JsonKey(name: 'jumpstart_data') JumpstartData? jumpstartData,
    @JsonKey(name: 'driver') Driver? driver,
  }) = _AcceptedJumpStart;

  factory AcceptedJumpStart.fromJson(Map<String, dynamic> json) => _$AcceptedJumpStartFromJson(json);
}

@freezed
abstract class JumpstartData with _$JumpstartData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory JumpstartData({User? user, Body? body}) = _JumpstartData;

  factory JumpstartData.fromJson(Map<String, dynamic> json) => _$JumpstartDataFromJson(json);
}

@freezed
abstract class Body with _$Body {
  const factory Body({
    @JsonKey(name: 'current_location') Coordinate? currentLocation,
    @JsonKey(name: 'model') String? model,
    @JsonKey(name: 'vin') String? vin,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
abstract class MapData with _$MapData {
  const factory MapData({
    @JsonKey(name: 'distance') int? distance,
    @JsonKey(name: 'distanceInKm') String? distanceInKm,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(name: 'dropoff_address') String? dropoffAddress,
    @JsonKey(name: 'pickup_address') String? pickupAddress,
    @JsonKey(name: 'polyline') String? polyline,
  }) = _MapData;

  factory MapData.fromJson(Map<String, dynamic> json) => _$MapDataFromJson(json);
}
