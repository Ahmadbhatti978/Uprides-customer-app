import 'package:freezed_annotation/freezed_annotation.dart';
part 'car_type.freezed.dart';
part 'car_type.g.dart';

@freezed
abstract class CarType with _$CarType {
  const factory CarType({
    @JsonKey(name: '_id') final String? id,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'created_by') final String? createdBy,
    @JsonKey(name: 'createdAt') final DateTime? createdAt,
    @JsonKey(name: 'updatedAt') final DateTime? updatedAt,
  }) = _CarType;

  factory CarType.fromJson(final Map<String, dynamic> json) => _$CarTypeFromJson(json);
}
