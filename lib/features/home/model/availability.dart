import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability.freezed.dart';
part 'availability.g.dart';

@freezed
abstract class Availability with _$Availability {
  const factory Availability({
    @JsonKey(name: 'title_en') String? titleEn,
    @JsonKey(name: 'description_en') String? descriptionEn,
    @JsonKey(name: 'title_pt') String? titlePt,
    @JsonKey(name: 'description_pt') String? descriptionPt,
    @JsonKey(name: 'enable_ride') @Default(true) bool enableRide,
    @JsonKey(name: 'enable_ride_uat') bool? enableRideUat,
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) => _$AvailabilityFromJson(json);
}

// Extension for easy access to localized content
extension AvailabilityExtension on Availability {
  String? getTitle(String languageCode) {
    switch (languageCode.toLowerCase()) {
      case 'pt':
        return titlePt ?? titleEn;
      case 'en':
      default:
        return titleEn ?? titlePt;
    }
  }

  String? getDescription(String languageCode) {
    switch (languageCode.toLowerCase()) {
      case 'pt':
        return descriptionPt ?? descriptionEn;
      case 'en':
      default:
        return descriptionEn ?? descriptionPt;
    }
  }
}
