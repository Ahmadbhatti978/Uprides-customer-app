import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/model/coordinate.dart';

part 'place_detail.freezed.dart';
part 'place_detail.g.dart';

@freezed
abstract class PlaceDetail with _$PlaceDetail {
  const factory PlaceDetail({
    @JsonKey(name: "formattedAddress") String? formattedAddress,
    @JsonKey(name: "addressComponents") List<AddressComponent>? addressComponents,
    @JsonKey(name: "location") Coordinate? location,
    @JsonKey(name: "shortFormattedAddress") String? shortFormattedAddress,
  }) = _PlaceDetail;

  factory PlaceDetail.fromJson(Map<String, dynamic> json) => _$PlaceDetailFromJson(json);
}

@freezed
abstract class AddressComponent with _$AddressComponent {
  const factory AddressComponent({
    @JsonKey(name: "longText") String? longText,
    @JsonKey(name: "shortText") String? shortText,
    @JsonKey(name: "types") List<String>? types,
    @JsonKey(name: "languageCode") String? languageCode,
  }) = _AddressComponent;

  factory AddressComponent.fromJson(Map<String, dynamic> json) => _$AddressComponentFromJson(json);
}
