import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/model/coordinate.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
abstract class Place with _$Place {
  const factory Place({
    String? placeId,
    String? text,
    String? mainText,
    String? secondaryText,
    Coordinate? location,
    int? distanceMeters,
    String? country,
    @Default('None') String? type,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(<String, dynamic>{
    ...json,
    'text': json['text']['text'],
    'mainText': json['structuredFormat']['mainText']['text'],
    'secondaryText': json['structuredFormat']['secondaryText'] != null ? json['structuredFormat']['secondaryText']['text'] : '',
  });
}
