// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Place {
  String? get placeId;
  String? get text;
  String? get mainText;
  String? get secondaryText;
  Coordinate? get location;
  int? get distanceMeters;
  String? get country;
  String? get type;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<Place> get copyWith =>
      _$PlaceCopyWithImpl<Place>(this as Place, _$identity);

  /// Serializes this Place to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Place &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.mainText, mainText) ||
                other.mainText == mainText) &&
            (identical(other.secondaryText, secondaryText) ||
                other.secondaryText == secondaryText) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, placeId, text, mainText,
      secondaryText, location, distanceMeters, country, type);

  @override
  String toString() {
    return 'Place(placeId: $placeId, text: $text, mainText: $mainText, secondaryText: $secondaryText, location: $location, distanceMeters: $distanceMeters, country: $country, type: $type)';
  }
}

/// @nodoc
abstract mixin class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) _then) =
      _$PlaceCopyWithImpl;
  @useResult
  $Res call(
      {String? placeId,
      String? text,
      String? mainText,
      String? secondaryText,
      Coordinate? location,
      int? distanceMeters,
      String? country,
      String? type});

  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res> implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._self, this._then);

  final Place _self;
  final $Res Function(Place) _then;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = freezed,
    Object? text = freezed,
    Object? mainText = freezed,
    Object? secondaryText = freezed,
    Object? location = freezed,
    Object? distanceMeters = freezed,
    Object? country = freezed,
    Object? type = freezed,
  }) {
    return _then(_self.copyWith(
      placeId: freezed == placeId
          ? _self.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      mainText: freezed == mainText
          ? _self.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryText: freezed == secondaryText
          ? _self.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      distanceMeters: freezed == distanceMeters
          ? _self.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Place].
extension PlacePatterns on Place {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Place value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Place() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Place value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Place():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Place value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Place() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? placeId,
            String? text,
            String? mainText,
            String? secondaryText,
            Coordinate? location,
            int? distanceMeters,
            String? country,
            String? type)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Place() when $default != null:
        return $default(
            _that.placeId,
            _that.text,
            _that.mainText,
            _that.secondaryText,
            _that.location,
            _that.distanceMeters,
            _that.country,
            _that.type);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? placeId,
            String? text,
            String? mainText,
            String? secondaryText,
            Coordinate? location,
            int? distanceMeters,
            String? country,
            String? type)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Place():
        return $default(
            _that.placeId,
            _that.text,
            _that.mainText,
            _that.secondaryText,
            _that.location,
            _that.distanceMeters,
            _that.country,
            _that.type);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? placeId,
            String? text,
            String? mainText,
            String? secondaryText,
            Coordinate? location,
            int? distanceMeters,
            String? country,
            String? type)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Place() when $default != null:
        return $default(
            _that.placeId,
            _that.text,
            _that.mainText,
            _that.secondaryText,
            _that.location,
            _that.distanceMeters,
            _that.country,
            _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Place implements Place {
  const _Place(
      {this.placeId,
      this.text,
      this.mainText,
      this.secondaryText,
      this.location,
      this.distanceMeters,
      this.country,
      this.type = 'None'});
  factory _Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  @override
  final String? placeId;
  @override
  final String? text;
  @override
  final String? mainText;
  @override
  final String? secondaryText;
  @override
  final Coordinate? location;
  @override
  final int? distanceMeters;
  @override
  final String? country;
  @override
  @JsonKey()
  final String? type;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceCopyWith<_Place> get copyWith =>
      __$PlaceCopyWithImpl<_Place>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Place &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.mainText, mainText) ||
                other.mainText == mainText) &&
            (identical(other.secondaryText, secondaryText) ||
                other.secondaryText == secondaryText) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, placeId, text, mainText,
      secondaryText, location, distanceMeters, country, type);

  @override
  String toString() {
    return 'Place(placeId: $placeId, text: $text, mainText: $mainText, secondaryText: $secondaryText, location: $location, distanceMeters: $distanceMeters, country: $country, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$PlaceCopyWith(_Place value, $Res Function(_Place) _then) =
      __$PlaceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? placeId,
      String? text,
      String? mainText,
      String? secondaryText,
      Coordinate? location,
      int? distanceMeters,
      String? country,
      String? type});

  @override
  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class __$PlaceCopyWithImpl<$Res> implements _$PlaceCopyWith<$Res> {
  __$PlaceCopyWithImpl(this._self, this._then);

  final _Place _self;
  final $Res Function(_Place) _then;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? placeId = freezed,
    Object? text = freezed,
    Object? mainText = freezed,
    Object? secondaryText = freezed,
    Object? location = freezed,
    Object? distanceMeters = freezed,
    Object? country = freezed,
    Object? type = freezed,
  }) {
    return _then(_Place(
      placeId: freezed == placeId
          ? _self.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      mainText: freezed == mainText
          ? _self.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryText: freezed == secondaryText
          ? _self.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      distanceMeters: freezed == distanceMeters
          ? _self.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

// dart format on
