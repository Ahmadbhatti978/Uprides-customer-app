// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrendingPlace _$TrendingPlaceFromJson(Map<String, dynamic> json) =>
    _TrendingPlace(
      location: json['location'] == null
          ? null
          : Coordinate.fromJson(json['location'] as Map<String, dynamic>),
      displayName: json['displayName'] == null
          ? null
          : DisplayName.fromJson(json['displayName'] as Map<String, dynamic>),
      primaryTypeDisplayName: json['primaryTypeDisplayName'] == null
          ? null
          : DisplayName.fromJson(
              json['primaryTypeDisplayName'] as Map<String, dynamic>),
      currentOpeningHours: json['currentOpeningHours'] == null
          ? null
          : CurrentOpeningHours.fromJson(
              json['currentOpeningHours'] as Map<String, dynamic>),
      shortFormattedAddress: json['shortFormattedAddress'] as String?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewSummary: json['reviewSummary'] == null
          ? null
          : ReviewSummary.fromJson(
              json['reviewSummary'] as Map<String, dynamic>),
      editorialSummary: json['editorialSummary'] == null
          ? null
          : DisplayName.fromJson(
              json['editorialSummary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TrendingPlaceToJson(_TrendingPlace instance) =>
    <String, dynamic>{
      'location': instance.location,
      'displayName': instance.displayName,
      'primaryTypeDisplayName': instance.primaryTypeDisplayName,
      'currentOpeningHours': instance.currentOpeningHours,
      'shortFormattedAddress': instance.shortFormattedAddress,
      'photos': instance.photos,
      'reviewSummary': instance.reviewSummary,
      'editorialSummary': instance.editorialSummary,
    };

_ReviewSummary _$ReviewSummaryFromJson(Map<String, dynamic> json) =>
    _ReviewSummary(
      text: json['text'] == null
          ? null
          : DisplayName.fromJson(json['text'] as Map<String, dynamic>),
      flagContentUri: json['flagContentUri'] as String?,
      disclosureText: json['disclosureText'] == null
          ? null
          : DisplayName.fromJson(
              json['disclosureText'] as Map<String, dynamic>),
      reviewsUri: json['reviewsUri'] as String?,
    );

Map<String, dynamic> _$ReviewSummaryToJson(_ReviewSummary instance) =>
    <String, dynamic>{
      'text': instance.text,
      'flagContentUri': instance.flagContentUri,
      'disclosureText': instance.disclosureText,
      'reviewsUri': instance.reviewsUri,
    };

_CurrentOpeningHours _$CurrentOpeningHoursFromJson(Map<String, dynamic> json) =>
    _CurrentOpeningHours(
      openNow: json['openNow'] as bool?,
      periods: (json['periods'] as List<dynamic>?)
          ?.map((e) => Period.fromJson(e as Map<String, dynamic>))
          .toList(),
      weekdayDescriptions: (json['weekdayDescriptions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nextCloseTime: json['nextCloseTime'] == null
          ? null
          : DateTime.parse(json['nextCloseTime'] as String),
      nextOpenTime: json['nextOpenTime'] == null
          ? null
          : DateTime.parse(json['nextOpenTime'] as String),
    );

Map<String, dynamic> _$CurrentOpeningHoursToJson(
        _CurrentOpeningHours instance) =>
    <String, dynamic>{
      'openNow': instance.openNow,
      'periods': instance.periods,
      'weekdayDescriptions': instance.weekdayDescriptions,
      'nextCloseTime': instance.nextCloseTime?.toIso8601String(),
      'nextOpenTime': instance.nextOpenTime?.toIso8601String(),
    };

_Period _$PeriodFromJson(Map<String, dynamic> json) => _Period(
      open: json['open'] == null
          ? null
          : Close.fromJson(json['open'] as Map<String, dynamic>),
      close: json['close'] == null
          ? null
          : Close.fromJson(json['close'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PeriodToJson(_Period instance) => <String, dynamic>{
      'open': instance.open,
      'close': instance.close,
    };

_Close _$CloseFromJson(Map<String, dynamic> json) => _Close(
      day: (json['day'] as num?)?.toInt(),
      hour: (json['hour'] as num?)?.toInt(),
      minute: (json['minute'] as num?)?.toInt(),
      date: json['date'] == null
          ? null
          : Date.fromJson(json['date'] as Map<String, dynamic>),
      truncated: json['truncated'] as bool?,
    );

Map<String, dynamic> _$CloseToJson(_Close instance) => <String, dynamic>{
      'day': instance.day,
      'hour': instance.hour,
      'minute': instance.minute,
      'date': instance.date,
      'truncated': instance.truncated,
    };

_Date _$DateFromJson(Map<String, dynamic> json) => _Date(
      year: (json['year'] as num?)?.toInt(),
      month: (json['month'] as num?)?.toInt(),
      day: (json['day'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DateToJson(_Date instance) => <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
    };

_DisplayName _$DisplayNameFromJson(Map<String, dynamic> json) => _DisplayName(
      text: json['text'] as String?,
      languageCode: json['languageCode'] as String?,
    );

Map<String, dynamic> _$DisplayNameToJson(_DisplayName instance) =>
    <String, dynamic>{
      'text': instance.text,
      'languageCode': instance.languageCode,
    };

_Photo _$PhotoFromJson(Map<String, dynamic> json) => _Photo(
      name: json['name'] as String?,
      widthPx: (json['widthPx'] as num?)?.toInt(),
      heightPx: (json['heightPx'] as num?)?.toInt(),
      authorAttributions: (json['authorAttributions'] as List<dynamic>?)
          ?.map((e) => AuthorAttribution.fromJson(e as Map<String, dynamic>))
          .toList(),
      flagContentUri: json['flagContentUri'] as String?,
      googleMapsUri: json['googleMapsUri'] as String?,
    );

Map<String, dynamic> _$PhotoToJson(_Photo instance) => <String, dynamic>{
      'name': instance.name,
      'widthPx': instance.widthPx,
      'heightPx': instance.heightPx,
      'authorAttributions': instance.authorAttributions,
      'flagContentUri': instance.flagContentUri,
      'googleMapsUri': instance.googleMapsUri,
    };

_AuthorAttribution _$AuthorAttributionFromJson(Map<String, dynamic> json) =>
    _AuthorAttribution(
      displayName: json['displayName'] as String?,
      uri: json['uri'] as String?,
      photoUri: json['photoUri'] as String?,
    );

Map<String, dynamic> _$AuthorAttributionToJson(_AuthorAttribution instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'uri': instance.uri,
      'photoUri': instance.photoUri,
    };
