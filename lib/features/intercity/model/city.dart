import 'package:freezed_annotation/freezed_annotation.dart';
part 'city.g.dart';
part 'city.freezed.dart';

@freezed
abstract class City with _$City {
  const factory City({
    @JsonKey(name: '_id') final String? id,
    @JsonKey(name: 'name') final String? name,
  }) = _City;

  factory City.fromJson(final Map<String, dynamic> json) => _$CityFromJson(json);
}

class CityIDConverter implements JsonConverter<City?, dynamic> {
  const CityIDConverter();

  @override
  City? fromJson(final dynamic json) {
    if (json == null) return null;
    if (json is String) return City(id: json);
    if (json is Map<String, dynamic>) return City.fromJson(json);
    throw ArgumentError('Unexpected type for UserID');
  }

  @override
  dynamic toJson(final City? userID) => userID?.toJson();
}
