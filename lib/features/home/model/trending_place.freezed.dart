// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrendingPlace {
  @JsonKey(name: "location")
  Coordinate? get location;
  @JsonKey(name: "displayName")
  DisplayName? get displayName;
  @JsonKey(name: "primaryTypeDisplayName")
  DisplayName? get primaryTypeDisplayName;
  @JsonKey(name: "currentOpeningHours")
  CurrentOpeningHours? get currentOpeningHours;
  @JsonKey(name: "shortFormattedAddress")
  String? get shortFormattedAddress;
  @JsonKey(name: "photos")
  List<Photo>? get photos;
  @JsonKey(name: "reviewSummary")
  ReviewSummary? get reviewSummary;
  @JsonKey(name: "editorialSummary")
  DisplayName? get editorialSummary;

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TrendingPlaceCopyWith<TrendingPlace> get copyWith =>
      _$TrendingPlaceCopyWithImpl<TrendingPlace>(
          this as TrendingPlace, _$identity);

  /// Serializes this TrendingPlace to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TrendingPlace &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.primaryTypeDisplayName, primaryTypeDisplayName) ||
                other.primaryTypeDisplayName == primaryTypeDisplayName) &&
            (identical(other.currentOpeningHours, currentOpeningHours) ||
                other.currentOpeningHours == currentOpeningHours) &&
            (identical(other.shortFormattedAddress, shortFormattedAddress) ||
                other.shortFormattedAddress == shortFormattedAddress) &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            (identical(other.reviewSummary, reviewSummary) ||
                other.reviewSummary == reviewSummary) &&
            (identical(other.editorialSummary, editorialSummary) ||
                other.editorialSummary == editorialSummary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      location,
      displayName,
      primaryTypeDisplayName,
      currentOpeningHours,
      shortFormattedAddress,
      const DeepCollectionEquality().hash(photos),
      reviewSummary,
      editorialSummary);

  @override
  String toString() {
    return 'TrendingPlace(location: $location, displayName: $displayName, primaryTypeDisplayName: $primaryTypeDisplayName, currentOpeningHours: $currentOpeningHours, shortFormattedAddress: $shortFormattedAddress, photos: $photos, reviewSummary: $reviewSummary, editorialSummary: $editorialSummary)';
  }
}

/// @nodoc
abstract mixin class $TrendingPlaceCopyWith<$Res> {
  factory $TrendingPlaceCopyWith(
          TrendingPlace value, $Res Function(TrendingPlace) _then) =
      _$TrendingPlaceCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "location") Coordinate? location,
      @JsonKey(name: "displayName") DisplayName? displayName,
      @JsonKey(name: "primaryTypeDisplayName")
      DisplayName? primaryTypeDisplayName,
      @JsonKey(name: "currentOpeningHours")
      CurrentOpeningHours? currentOpeningHours,
      @JsonKey(name: "shortFormattedAddress") String? shortFormattedAddress,
      @JsonKey(name: "photos") List<Photo>? photos,
      @JsonKey(name: "reviewSummary") ReviewSummary? reviewSummary,
      @JsonKey(name: "editorialSummary") DisplayName? editorialSummary});

  $CoordinateCopyWith<$Res>? get location;
  $DisplayNameCopyWith<$Res>? get displayName;
  $DisplayNameCopyWith<$Res>? get primaryTypeDisplayName;
  $CurrentOpeningHoursCopyWith<$Res>? get currentOpeningHours;
  $ReviewSummaryCopyWith<$Res>? get reviewSummary;
  $DisplayNameCopyWith<$Res>? get editorialSummary;
}

/// @nodoc
class _$TrendingPlaceCopyWithImpl<$Res>
    implements $TrendingPlaceCopyWith<$Res> {
  _$TrendingPlaceCopyWithImpl(this._self, this._then);

  final TrendingPlace _self;
  final $Res Function(TrendingPlace) _then;

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? displayName = freezed,
    Object? primaryTypeDisplayName = freezed,
    Object? currentOpeningHours = freezed,
    Object? shortFormattedAddress = freezed,
    Object? photos = freezed,
    Object? reviewSummary = freezed,
    Object? editorialSummary = freezed,
  }) {
    return _then(_self.copyWith(
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      displayName: freezed == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      primaryTypeDisplayName: freezed == primaryTypeDisplayName
          ? _self.primaryTypeDisplayName
          : primaryTypeDisplayName // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      currentOpeningHours: freezed == currentOpeningHours
          ? _self.currentOpeningHours
          : currentOpeningHours // ignore: cast_nullable_to_non_nullable
              as CurrentOpeningHours?,
      shortFormattedAddress: freezed == shortFormattedAddress
          ? _self.shortFormattedAddress
          : shortFormattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _self.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      reviewSummary: freezed == reviewSummary
          ? _self.reviewSummary
          : reviewSummary // ignore: cast_nullable_to_non_nullable
              as ReviewSummary?,
      editorialSummary: freezed == editorialSummary
          ? _self.editorialSummary
          : editorialSummary // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
    ));
  }

  /// Create a copy of TrendingPlace
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

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplayNameCopyWith<$Res>? get displayName {
    if (_self.displayName == null) {
      return null;
    }

    return $DisplayNameCopyWith<$Res>(_self.displayName!, (value) {
      return _then(_self.copyWith(displayName: value));
    });
  }

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplayNameCopyWith<$Res>? get primaryTypeDisplayName {
    if (_self.primaryTypeDisplayName == null) {
      return null;
    }

    return $DisplayNameCopyWith<$Res>(_self.primaryTypeDisplayName!, (value) {
      return _then(_self.copyWith(primaryTypeDisplayName: value));
    });
  }

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentOpeningHoursCopyWith<$Res>? get currentOpeningHours {
    if (_self.currentOpeningHours == null) {
      return null;
    }

    return $CurrentOpeningHoursCopyWith<$Res>(_self.currentOpeningHours!,
        (value) {
      return _then(_self.copyWith(currentOpeningHours: value));
    });
  }

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewSummaryCopyWith<$Res>? get reviewSummary {
    if (_self.reviewSummary == null) {
      return null;
    }

    return $ReviewSummaryCopyWith<$Res>(_self.reviewSummary!, (value) {
      return _then(_self.copyWith(reviewSummary: value));
    });
  }

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplayNameCopyWith<$Res>? get editorialSummary {
    if (_self.editorialSummary == null) {
      return null;
    }

    return $DisplayNameCopyWith<$Res>(_self.editorialSummary!, (value) {
      return _then(_self.copyWith(editorialSummary: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TrendingPlace].
extension TrendingPlacePatterns on TrendingPlace {
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
    TResult Function(_TrendingPlace value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrendingPlace() when $default != null:
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
    TResult Function(_TrendingPlace value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrendingPlace():
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
    TResult? Function(_TrendingPlace value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrendingPlace() when $default != null:
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
            @JsonKey(name: "location") Coordinate? location,
            @JsonKey(name: "displayName") DisplayName? displayName,
            @JsonKey(name: "primaryTypeDisplayName")
            DisplayName? primaryTypeDisplayName,
            @JsonKey(name: "currentOpeningHours")
            CurrentOpeningHours? currentOpeningHours,
            @JsonKey(name: "shortFormattedAddress")
            String? shortFormattedAddress,
            @JsonKey(name: "photos") List<Photo>? photos,
            @JsonKey(name: "reviewSummary") ReviewSummary? reviewSummary,
            @JsonKey(name: "editorialSummary") DisplayName? editorialSummary)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrendingPlace() when $default != null:
        return $default(
            _that.location,
            _that.displayName,
            _that.primaryTypeDisplayName,
            _that.currentOpeningHours,
            _that.shortFormattedAddress,
            _that.photos,
            _that.reviewSummary,
            _that.editorialSummary);
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
            @JsonKey(name: "location") Coordinate? location,
            @JsonKey(name: "displayName") DisplayName? displayName,
            @JsonKey(name: "primaryTypeDisplayName")
            DisplayName? primaryTypeDisplayName,
            @JsonKey(name: "currentOpeningHours")
            CurrentOpeningHours? currentOpeningHours,
            @JsonKey(name: "shortFormattedAddress")
            String? shortFormattedAddress,
            @JsonKey(name: "photos") List<Photo>? photos,
            @JsonKey(name: "reviewSummary") ReviewSummary? reviewSummary,
            @JsonKey(name: "editorialSummary") DisplayName? editorialSummary)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrendingPlace():
        return $default(
            _that.location,
            _that.displayName,
            _that.primaryTypeDisplayName,
            _that.currentOpeningHours,
            _that.shortFormattedAddress,
            _that.photos,
            _that.reviewSummary,
            _that.editorialSummary);
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
            @JsonKey(name: "location") Coordinate? location,
            @JsonKey(name: "displayName") DisplayName? displayName,
            @JsonKey(name: "primaryTypeDisplayName")
            DisplayName? primaryTypeDisplayName,
            @JsonKey(name: "currentOpeningHours")
            CurrentOpeningHours? currentOpeningHours,
            @JsonKey(name: "shortFormattedAddress")
            String? shortFormattedAddress,
            @JsonKey(name: "photos") List<Photo>? photos,
            @JsonKey(name: "reviewSummary") ReviewSummary? reviewSummary,
            @JsonKey(name: "editorialSummary") DisplayName? editorialSummary)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrendingPlace() when $default != null:
        return $default(
            _that.location,
            _that.displayName,
            _that.primaryTypeDisplayName,
            _that.currentOpeningHours,
            _that.shortFormattedAddress,
            _that.photos,
            _that.reviewSummary,
            _that.editorialSummary);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TrendingPlace implements TrendingPlace {
  const _TrendingPlace(
      {@JsonKey(name: "location") this.location,
      @JsonKey(name: "displayName") this.displayName,
      @JsonKey(name: "primaryTypeDisplayName") this.primaryTypeDisplayName,
      @JsonKey(name: "currentOpeningHours") this.currentOpeningHours,
      @JsonKey(name: "shortFormattedAddress") this.shortFormattedAddress,
      @JsonKey(name: "photos") final List<Photo>? photos,
      @JsonKey(name: "reviewSummary") this.reviewSummary,
      @JsonKey(name: "editorialSummary") this.editorialSummary})
      : _photos = photos;
  factory _TrendingPlace.fromJson(Map<String, dynamic> json) =>
      _$TrendingPlaceFromJson(json);

  @override
  @JsonKey(name: "location")
  final Coordinate? location;
  @override
  @JsonKey(name: "displayName")
  final DisplayName? displayName;
  @override
  @JsonKey(name: "primaryTypeDisplayName")
  final DisplayName? primaryTypeDisplayName;
  @override
  @JsonKey(name: "currentOpeningHours")
  final CurrentOpeningHours? currentOpeningHours;
  @override
  @JsonKey(name: "shortFormattedAddress")
  final String? shortFormattedAddress;
  final List<Photo>? _photos;
  @override
  @JsonKey(name: "photos")
  List<Photo>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "reviewSummary")
  final ReviewSummary? reviewSummary;
  @override
  @JsonKey(name: "editorialSummary")
  final DisplayName? editorialSummary;

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TrendingPlaceCopyWith<_TrendingPlace> get copyWith =>
      __$TrendingPlaceCopyWithImpl<_TrendingPlace>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TrendingPlaceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrendingPlace &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.primaryTypeDisplayName, primaryTypeDisplayName) ||
                other.primaryTypeDisplayName == primaryTypeDisplayName) &&
            (identical(other.currentOpeningHours, currentOpeningHours) ||
                other.currentOpeningHours == currentOpeningHours) &&
            (identical(other.shortFormattedAddress, shortFormattedAddress) ||
                other.shortFormattedAddress == shortFormattedAddress) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.reviewSummary, reviewSummary) ||
                other.reviewSummary == reviewSummary) &&
            (identical(other.editorialSummary, editorialSummary) ||
                other.editorialSummary == editorialSummary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      location,
      displayName,
      primaryTypeDisplayName,
      currentOpeningHours,
      shortFormattedAddress,
      const DeepCollectionEquality().hash(_photos),
      reviewSummary,
      editorialSummary);

  @override
  String toString() {
    return 'TrendingPlace(location: $location, displayName: $displayName, primaryTypeDisplayName: $primaryTypeDisplayName, currentOpeningHours: $currentOpeningHours, shortFormattedAddress: $shortFormattedAddress, photos: $photos, reviewSummary: $reviewSummary, editorialSummary: $editorialSummary)';
  }
}

/// @nodoc
abstract mixin class _$TrendingPlaceCopyWith<$Res>
    implements $TrendingPlaceCopyWith<$Res> {
  factory _$TrendingPlaceCopyWith(
          _TrendingPlace value, $Res Function(_TrendingPlace) _then) =
      __$TrendingPlaceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "location") Coordinate? location,
      @JsonKey(name: "displayName") DisplayName? displayName,
      @JsonKey(name: "primaryTypeDisplayName")
      DisplayName? primaryTypeDisplayName,
      @JsonKey(name: "currentOpeningHours")
      CurrentOpeningHours? currentOpeningHours,
      @JsonKey(name: "shortFormattedAddress") String? shortFormattedAddress,
      @JsonKey(name: "photos") List<Photo>? photos,
      @JsonKey(name: "reviewSummary") ReviewSummary? reviewSummary,
      @JsonKey(name: "editorialSummary") DisplayName? editorialSummary});

  @override
  $CoordinateCopyWith<$Res>? get location;
  @override
  $DisplayNameCopyWith<$Res>? get displayName;
  @override
  $DisplayNameCopyWith<$Res>? get primaryTypeDisplayName;
  @override
  $CurrentOpeningHoursCopyWith<$Res>? get currentOpeningHours;
  @override
  $ReviewSummaryCopyWith<$Res>? get reviewSummary;
  @override
  $DisplayNameCopyWith<$Res>? get editorialSummary;
}

/// @nodoc
class __$TrendingPlaceCopyWithImpl<$Res>
    implements _$TrendingPlaceCopyWith<$Res> {
  __$TrendingPlaceCopyWithImpl(this._self, this._then);

  final _TrendingPlace _self;
  final $Res Function(_TrendingPlace) _then;

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? location = freezed,
    Object? displayName = freezed,
    Object? primaryTypeDisplayName = freezed,
    Object? currentOpeningHours = freezed,
    Object? shortFormattedAddress = freezed,
    Object? photos = freezed,
    Object? reviewSummary = freezed,
    Object? editorialSummary = freezed,
  }) {
    return _then(_TrendingPlace(
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      displayName: freezed == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      primaryTypeDisplayName: freezed == primaryTypeDisplayName
          ? _self.primaryTypeDisplayName
          : primaryTypeDisplayName // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      currentOpeningHours: freezed == currentOpeningHours
          ? _self.currentOpeningHours
          : currentOpeningHours // ignore: cast_nullable_to_non_nullable
              as CurrentOpeningHours?,
      shortFormattedAddress: freezed == shortFormattedAddress
          ? _self.shortFormattedAddress
          : shortFormattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _self._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      reviewSummary: freezed == reviewSummary
          ? _self.reviewSummary
          : reviewSummary // ignore: cast_nullable_to_non_nullable
              as ReviewSummary?,
      editorialSummary: freezed == editorialSummary
          ? _self.editorialSummary
          : editorialSummary // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
    ));
  }

  /// Create a copy of TrendingPlace
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

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplayNameCopyWith<$Res>? get displayName {
    if (_self.displayName == null) {
      return null;
    }

    return $DisplayNameCopyWith<$Res>(_self.displayName!, (value) {
      return _then(_self.copyWith(displayName: value));
    });
  }

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplayNameCopyWith<$Res>? get primaryTypeDisplayName {
    if (_self.primaryTypeDisplayName == null) {
      return null;
    }

    return $DisplayNameCopyWith<$Res>(_self.primaryTypeDisplayName!, (value) {
      return _then(_self.copyWith(primaryTypeDisplayName: value));
    });
  }

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentOpeningHoursCopyWith<$Res>? get currentOpeningHours {
    if (_self.currentOpeningHours == null) {
      return null;
    }

    return $CurrentOpeningHoursCopyWith<$Res>(_self.currentOpeningHours!,
        (value) {
      return _then(_self.copyWith(currentOpeningHours: value));
    });
  }

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewSummaryCopyWith<$Res>? get reviewSummary {
    if (_self.reviewSummary == null) {
      return null;
    }

    return $ReviewSummaryCopyWith<$Res>(_self.reviewSummary!, (value) {
      return _then(_self.copyWith(reviewSummary: value));
    });
  }

  /// Create a copy of TrendingPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplayNameCopyWith<$Res>? get editorialSummary {
    if (_self.editorialSummary == null) {
      return null;
    }

    return $DisplayNameCopyWith<$Res>(_self.editorialSummary!, (value) {
      return _then(_self.copyWith(editorialSummary: value));
    });
  }
}

/// @nodoc
mixin _$ReviewSummary {
  @JsonKey(name: "text")
  DisplayName? get text;
  @JsonKey(name: "flagContentUri")
  String? get flagContentUri;
  @JsonKey(name: "disclosureText")
  DisplayName? get disclosureText;
  @JsonKey(name: "reviewsUri")
  String? get reviewsUri;

  /// Create a copy of ReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReviewSummaryCopyWith<ReviewSummary> get copyWith =>
      _$ReviewSummaryCopyWithImpl<ReviewSummary>(
          this as ReviewSummary, _$identity);

  /// Serializes this ReviewSummary to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReviewSummary &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.flagContentUri, flagContentUri) ||
                other.flagContentUri == flagContentUri) &&
            (identical(other.disclosureText, disclosureText) ||
                other.disclosureText == disclosureText) &&
            (identical(other.reviewsUri, reviewsUri) ||
                other.reviewsUri == reviewsUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, text, flagContentUri, disclosureText, reviewsUri);

  @override
  String toString() {
    return 'ReviewSummary(text: $text, flagContentUri: $flagContentUri, disclosureText: $disclosureText, reviewsUri: $reviewsUri)';
  }
}

/// @nodoc
abstract mixin class $ReviewSummaryCopyWith<$Res> {
  factory $ReviewSummaryCopyWith(
          ReviewSummary value, $Res Function(ReviewSummary) _then) =
      _$ReviewSummaryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "text") DisplayName? text,
      @JsonKey(name: "flagContentUri") String? flagContentUri,
      @JsonKey(name: "disclosureText") DisplayName? disclosureText,
      @JsonKey(name: "reviewsUri") String? reviewsUri});

  $DisplayNameCopyWith<$Res>? get text;
  $DisplayNameCopyWith<$Res>? get disclosureText;
}

/// @nodoc
class _$ReviewSummaryCopyWithImpl<$Res>
    implements $ReviewSummaryCopyWith<$Res> {
  _$ReviewSummaryCopyWithImpl(this._self, this._then);

  final ReviewSummary _self;
  final $Res Function(ReviewSummary) _then;

  /// Create a copy of ReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? flagContentUri = freezed,
    Object? disclosureText = freezed,
    Object? reviewsUri = freezed,
  }) {
    return _then(_self.copyWith(
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      flagContentUri: freezed == flagContentUri
          ? _self.flagContentUri
          : flagContentUri // ignore: cast_nullable_to_non_nullable
              as String?,
      disclosureText: freezed == disclosureText
          ? _self.disclosureText
          : disclosureText // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      reviewsUri: freezed == reviewsUri
          ? _self.reviewsUri
          : reviewsUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplayNameCopyWith<$Res>? get text {
    if (_self.text == null) {
      return null;
    }

    return $DisplayNameCopyWith<$Res>(_self.text!, (value) {
      return _then(_self.copyWith(text: value));
    });
  }

  /// Create a copy of ReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplayNameCopyWith<$Res>? get disclosureText {
    if (_self.disclosureText == null) {
      return null;
    }

    return $DisplayNameCopyWith<$Res>(_self.disclosureText!, (value) {
      return _then(_self.copyWith(disclosureText: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReviewSummary].
extension ReviewSummaryPatterns on ReviewSummary {
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
    TResult Function(_ReviewSummary value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReviewSummary() when $default != null:
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
    TResult Function(_ReviewSummary value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReviewSummary():
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
    TResult? Function(_ReviewSummary value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReviewSummary() when $default != null:
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
            @JsonKey(name: "text") DisplayName? text,
            @JsonKey(name: "flagContentUri") String? flagContentUri,
            @JsonKey(name: "disclosureText") DisplayName? disclosureText,
            @JsonKey(name: "reviewsUri") String? reviewsUri)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReviewSummary() when $default != null:
        return $default(_that.text, _that.flagContentUri, _that.disclosureText,
            _that.reviewsUri);
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
            @JsonKey(name: "text") DisplayName? text,
            @JsonKey(name: "flagContentUri") String? flagContentUri,
            @JsonKey(name: "disclosureText") DisplayName? disclosureText,
            @JsonKey(name: "reviewsUri") String? reviewsUri)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReviewSummary():
        return $default(_that.text, _that.flagContentUri, _that.disclosureText,
            _that.reviewsUri);
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
            @JsonKey(name: "text") DisplayName? text,
            @JsonKey(name: "flagContentUri") String? flagContentUri,
            @JsonKey(name: "disclosureText") DisplayName? disclosureText,
            @JsonKey(name: "reviewsUri") String? reviewsUri)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReviewSummary() when $default != null:
        return $default(_that.text, _that.flagContentUri, _that.disclosureText,
            _that.reviewsUri);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReviewSummary implements ReviewSummary {
  const _ReviewSummary(
      {@JsonKey(name: "text") this.text,
      @JsonKey(name: "flagContentUri") this.flagContentUri,
      @JsonKey(name: "disclosureText") this.disclosureText,
      @JsonKey(name: "reviewsUri") this.reviewsUri});
  factory _ReviewSummary.fromJson(Map<String, dynamic> json) =>
      _$ReviewSummaryFromJson(json);

  @override
  @JsonKey(name: "text")
  final DisplayName? text;
  @override
  @JsonKey(name: "flagContentUri")
  final String? flagContentUri;
  @override
  @JsonKey(name: "disclosureText")
  final DisplayName? disclosureText;
  @override
  @JsonKey(name: "reviewsUri")
  final String? reviewsUri;

  /// Create a copy of ReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReviewSummaryCopyWith<_ReviewSummary> get copyWith =>
      __$ReviewSummaryCopyWithImpl<_ReviewSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReviewSummaryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReviewSummary &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.flagContentUri, flagContentUri) ||
                other.flagContentUri == flagContentUri) &&
            (identical(other.disclosureText, disclosureText) ||
                other.disclosureText == disclosureText) &&
            (identical(other.reviewsUri, reviewsUri) ||
                other.reviewsUri == reviewsUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, text, flagContentUri, disclosureText, reviewsUri);

  @override
  String toString() {
    return 'ReviewSummary(text: $text, flagContentUri: $flagContentUri, disclosureText: $disclosureText, reviewsUri: $reviewsUri)';
  }
}

/// @nodoc
abstract mixin class _$ReviewSummaryCopyWith<$Res>
    implements $ReviewSummaryCopyWith<$Res> {
  factory _$ReviewSummaryCopyWith(
          _ReviewSummary value, $Res Function(_ReviewSummary) _then) =
      __$ReviewSummaryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "text") DisplayName? text,
      @JsonKey(name: "flagContentUri") String? flagContentUri,
      @JsonKey(name: "disclosureText") DisplayName? disclosureText,
      @JsonKey(name: "reviewsUri") String? reviewsUri});

  @override
  $DisplayNameCopyWith<$Res>? get text;
  @override
  $DisplayNameCopyWith<$Res>? get disclosureText;
}

/// @nodoc
class __$ReviewSummaryCopyWithImpl<$Res>
    implements _$ReviewSummaryCopyWith<$Res> {
  __$ReviewSummaryCopyWithImpl(this._self, this._then);

  final _ReviewSummary _self;
  final $Res Function(_ReviewSummary) _then;

  /// Create a copy of ReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = freezed,
    Object? flagContentUri = freezed,
    Object? disclosureText = freezed,
    Object? reviewsUri = freezed,
  }) {
    return _then(_ReviewSummary(
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      flagContentUri: freezed == flagContentUri
          ? _self.flagContentUri
          : flagContentUri // ignore: cast_nullable_to_non_nullable
              as String?,
      disclosureText: freezed == disclosureText
          ? _self.disclosureText
          : disclosureText // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      reviewsUri: freezed == reviewsUri
          ? _self.reviewsUri
          : reviewsUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplayNameCopyWith<$Res>? get text {
    if (_self.text == null) {
      return null;
    }

    return $DisplayNameCopyWith<$Res>(_self.text!, (value) {
      return _then(_self.copyWith(text: value));
    });
  }

  /// Create a copy of ReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplayNameCopyWith<$Res>? get disclosureText {
    if (_self.disclosureText == null) {
      return null;
    }

    return $DisplayNameCopyWith<$Res>(_self.disclosureText!, (value) {
      return _then(_self.copyWith(disclosureText: value));
    });
  }
}

/// @nodoc
mixin _$CurrentOpeningHours {
  @JsonKey(name: "openNow")
  bool? get openNow;
  @JsonKey(name: "periods")
  List<Period>? get periods;
  @JsonKey(name: "weekdayDescriptions")
  List<String>? get weekdayDescriptions;
  @JsonKey(name: "nextCloseTime")
  DateTime? get nextCloseTime;
  @JsonKey(name: "nextOpenTime")
  DateTime? get nextOpenTime;

  /// Create a copy of CurrentOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrentOpeningHoursCopyWith<CurrentOpeningHours> get copyWith =>
      _$CurrentOpeningHoursCopyWithImpl<CurrentOpeningHours>(
          this as CurrentOpeningHours, _$identity);

  /// Serializes this CurrentOpeningHours to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrentOpeningHours &&
            (identical(other.openNow, openNow) || other.openNow == openNow) &&
            const DeepCollectionEquality().equals(other.periods, periods) &&
            const DeepCollectionEquality()
                .equals(other.weekdayDescriptions, weekdayDescriptions) &&
            (identical(other.nextCloseTime, nextCloseTime) ||
                other.nextCloseTime == nextCloseTime) &&
            (identical(other.nextOpenTime, nextOpenTime) ||
                other.nextOpenTime == nextOpenTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      openNow,
      const DeepCollectionEquality().hash(periods),
      const DeepCollectionEquality().hash(weekdayDescriptions),
      nextCloseTime,
      nextOpenTime);

  @override
  String toString() {
    return 'CurrentOpeningHours(openNow: $openNow, periods: $periods, weekdayDescriptions: $weekdayDescriptions, nextCloseTime: $nextCloseTime, nextOpenTime: $nextOpenTime)';
  }
}

/// @nodoc
abstract mixin class $CurrentOpeningHoursCopyWith<$Res> {
  factory $CurrentOpeningHoursCopyWith(
          CurrentOpeningHours value, $Res Function(CurrentOpeningHours) _then) =
      _$CurrentOpeningHoursCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "openNow") bool? openNow,
      @JsonKey(name: "periods") List<Period>? periods,
      @JsonKey(name: "weekdayDescriptions") List<String>? weekdayDescriptions,
      @JsonKey(name: "nextCloseTime") DateTime? nextCloseTime,
      @JsonKey(name: "nextOpenTime") DateTime? nextOpenTime});
}

/// @nodoc
class _$CurrentOpeningHoursCopyWithImpl<$Res>
    implements $CurrentOpeningHoursCopyWith<$Res> {
  _$CurrentOpeningHoursCopyWithImpl(this._self, this._then);

  final CurrentOpeningHours _self;
  final $Res Function(CurrentOpeningHours) _then;

  /// Create a copy of CurrentOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openNow = freezed,
    Object? periods = freezed,
    Object? weekdayDescriptions = freezed,
    Object? nextCloseTime = freezed,
    Object? nextOpenTime = freezed,
  }) {
    return _then(_self.copyWith(
      openNow: freezed == openNow
          ? _self.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      periods: freezed == periods
          ? _self.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<Period>?,
      weekdayDescriptions: freezed == weekdayDescriptions
          ? _self.weekdayDescriptions
          : weekdayDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      nextCloseTime: freezed == nextCloseTime
          ? _self.nextCloseTime
          : nextCloseTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextOpenTime: freezed == nextOpenTime
          ? _self.nextOpenTime
          : nextOpenTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CurrentOpeningHours].
extension CurrentOpeningHoursPatterns on CurrentOpeningHours {
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
    TResult Function(_CurrentOpeningHours value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CurrentOpeningHours() when $default != null:
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
    TResult Function(_CurrentOpeningHours value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrentOpeningHours():
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
    TResult? Function(_CurrentOpeningHours value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrentOpeningHours() when $default != null:
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
            @JsonKey(name: "openNow") bool? openNow,
            @JsonKey(name: "periods") List<Period>? periods,
            @JsonKey(name: "weekdayDescriptions")
            List<String>? weekdayDescriptions,
            @JsonKey(name: "nextCloseTime") DateTime? nextCloseTime,
            @JsonKey(name: "nextOpenTime") DateTime? nextOpenTime)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CurrentOpeningHours() when $default != null:
        return $default(_that.openNow, _that.periods, _that.weekdayDescriptions,
            _that.nextCloseTime, _that.nextOpenTime);
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
            @JsonKey(name: "openNow") bool? openNow,
            @JsonKey(name: "periods") List<Period>? periods,
            @JsonKey(name: "weekdayDescriptions")
            List<String>? weekdayDescriptions,
            @JsonKey(name: "nextCloseTime") DateTime? nextCloseTime,
            @JsonKey(name: "nextOpenTime") DateTime? nextOpenTime)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrentOpeningHours():
        return $default(_that.openNow, _that.periods, _that.weekdayDescriptions,
            _that.nextCloseTime, _that.nextOpenTime);
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
            @JsonKey(name: "openNow") bool? openNow,
            @JsonKey(name: "periods") List<Period>? periods,
            @JsonKey(name: "weekdayDescriptions")
            List<String>? weekdayDescriptions,
            @JsonKey(name: "nextCloseTime") DateTime? nextCloseTime,
            @JsonKey(name: "nextOpenTime") DateTime? nextOpenTime)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrentOpeningHours() when $default != null:
        return $default(_that.openNow, _that.periods, _that.weekdayDescriptions,
            _that.nextCloseTime, _that.nextOpenTime);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CurrentOpeningHours implements CurrentOpeningHours {
  const _CurrentOpeningHours(
      {@JsonKey(name: "openNow") this.openNow,
      @JsonKey(name: "periods") final List<Period>? periods,
      @JsonKey(name: "weekdayDescriptions")
      final List<String>? weekdayDescriptions,
      @JsonKey(name: "nextCloseTime") this.nextCloseTime,
      @JsonKey(name: "nextOpenTime") this.nextOpenTime})
      : _periods = periods,
        _weekdayDescriptions = weekdayDescriptions;
  factory _CurrentOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$CurrentOpeningHoursFromJson(json);

  @override
  @JsonKey(name: "openNow")
  final bool? openNow;
  final List<Period>? _periods;
  @override
  @JsonKey(name: "periods")
  List<Period>? get periods {
    final value = _periods;
    if (value == null) return null;
    if (_periods is EqualUnmodifiableListView) return _periods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _weekdayDescriptions;
  @override
  @JsonKey(name: "weekdayDescriptions")
  List<String>? get weekdayDescriptions {
    final value = _weekdayDescriptions;
    if (value == null) return null;
    if (_weekdayDescriptions is EqualUnmodifiableListView)
      return _weekdayDescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "nextCloseTime")
  final DateTime? nextCloseTime;
  @override
  @JsonKey(name: "nextOpenTime")
  final DateTime? nextOpenTime;

  /// Create a copy of CurrentOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrentOpeningHoursCopyWith<_CurrentOpeningHours> get copyWith =>
      __$CurrentOpeningHoursCopyWithImpl<_CurrentOpeningHours>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CurrentOpeningHoursToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentOpeningHours &&
            (identical(other.openNow, openNow) || other.openNow == openNow) &&
            const DeepCollectionEquality().equals(other._periods, _periods) &&
            const DeepCollectionEquality()
                .equals(other._weekdayDescriptions, _weekdayDescriptions) &&
            (identical(other.nextCloseTime, nextCloseTime) ||
                other.nextCloseTime == nextCloseTime) &&
            (identical(other.nextOpenTime, nextOpenTime) ||
                other.nextOpenTime == nextOpenTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      openNow,
      const DeepCollectionEquality().hash(_periods),
      const DeepCollectionEquality().hash(_weekdayDescriptions),
      nextCloseTime,
      nextOpenTime);

  @override
  String toString() {
    return 'CurrentOpeningHours(openNow: $openNow, periods: $periods, weekdayDescriptions: $weekdayDescriptions, nextCloseTime: $nextCloseTime, nextOpenTime: $nextOpenTime)';
  }
}

/// @nodoc
abstract mixin class _$CurrentOpeningHoursCopyWith<$Res>
    implements $CurrentOpeningHoursCopyWith<$Res> {
  factory _$CurrentOpeningHoursCopyWith(_CurrentOpeningHours value,
          $Res Function(_CurrentOpeningHours) _then) =
      __$CurrentOpeningHoursCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "openNow") bool? openNow,
      @JsonKey(name: "periods") List<Period>? periods,
      @JsonKey(name: "weekdayDescriptions") List<String>? weekdayDescriptions,
      @JsonKey(name: "nextCloseTime") DateTime? nextCloseTime,
      @JsonKey(name: "nextOpenTime") DateTime? nextOpenTime});
}

/// @nodoc
class __$CurrentOpeningHoursCopyWithImpl<$Res>
    implements _$CurrentOpeningHoursCopyWith<$Res> {
  __$CurrentOpeningHoursCopyWithImpl(this._self, this._then);

  final _CurrentOpeningHours _self;
  final $Res Function(_CurrentOpeningHours) _then;

  /// Create a copy of CurrentOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? openNow = freezed,
    Object? periods = freezed,
    Object? weekdayDescriptions = freezed,
    Object? nextCloseTime = freezed,
    Object? nextOpenTime = freezed,
  }) {
    return _then(_CurrentOpeningHours(
      openNow: freezed == openNow
          ? _self.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      periods: freezed == periods
          ? _self._periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<Period>?,
      weekdayDescriptions: freezed == weekdayDescriptions
          ? _self._weekdayDescriptions
          : weekdayDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      nextCloseTime: freezed == nextCloseTime
          ? _self.nextCloseTime
          : nextCloseTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextOpenTime: freezed == nextOpenTime
          ? _self.nextOpenTime
          : nextOpenTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$Period {
  @JsonKey(name: "open")
  Close? get open;
  @JsonKey(name: "close")
  Close? get close;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<Period> get copyWith =>
      _$PeriodCopyWithImpl<Period>(this as Period, _$identity);

  /// Serializes this Period to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Period &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, open, close);

  @override
  String toString() {
    return 'Period(open: $open, close: $close)';
  }
}

/// @nodoc
abstract mixin class $PeriodCopyWith<$Res> {
  factory $PeriodCopyWith(Period value, $Res Function(Period) _then) =
      _$PeriodCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "open") Close? open,
      @JsonKey(name: "close") Close? close});

  $CloseCopyWith<$Res>? get open;
  $CloseCopyWith<$Res>? get close;
}

/// @nodoc
class _$PeriodCopyWithImpl<$Res> implements $PeriodCopyWith<$Res> {
  _$PeriodCopyWithImpl(this._self, this._then);

  final Period _self;
  final $Res Function(Period) _then;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = freezed,
    Object? close = freezed,
  }) {
    return _then(_self.copyWith(
      open: freezed == open
          ? _self.open
          : open // ignore: cast_nullable_to_non_nullable
              as Close?,
      close: freezed == close
          ? _self.close
          : close // ignore: cast_nullable_to_non_nullable
              as Close?,
    ));
  }

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CloseCopyWith<$Res>? get open {
    if (_self.open == null) {
      return null;
    }

    return $CloseCopyWith<$Res>(_self.open!, (value) {
      return _then(_self.copyWith(open: value));
    });
  }

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CloseCopyWith<$Res>? get close {
    if (_self.close == null) {
      return null;
    }

    return $CloseCopyWith<$Res>(_self.close!, (value) {
      return _then(_self.copyWith(close: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Period].
extension PeriodPatterns on Period {
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
    TResult Function(_Period value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Period() when $default != null:
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
    TResult Function(_Period value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Period():
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
    TResult? Function(_Period value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Period() when $default != null:
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
    TResult Function(@JsonKey(name: "open") Close? open,
            @JsonKey(name: "close") Close? close)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Period() when $default != null:
        return $default(_that.open, _that.close);
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
    TResult Function(@JsonKey(name: "open") Close? open,
            @JsonKey(name: "close") Close? close)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Period():
        return $default(_that.open, _that.close);
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
    TResult? Function(@JsonKey(name: "open") Close? open,
            @JsonKey(name: "close") Close? close)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Period() when $default != null:
        return $default(_that.open, _that.close);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Period implements Period {
  const _Period(
      {@JsonKey(name: "open") this.open, @JsonKey(name: "close") this.close});
  factory _Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);

  @override
  @JsonKey(name: "open")
  final Close? open;
  @override
  @JsonKey(name: "close")
  final Close? close;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PeriodCopyWith<_Period> get copyWith =>
      __$PeriodCopyWithImpl<_Period>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PeriodToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Period &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, open, close);

  @override
  String toString() {
    return 'Period(open: $open, close: $close)';
  }
}

/// @nodoc
abstract mixin class _$PeriodCopyWith<$Res> implements $PeriodCopyWith<$Res> {
  factory _$PeriodCopyWith(_Period value, $Res Function(_Period) _then) =
      __$PeriodCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "open") Close? open,
      @JsonKey(name: "close") Close? close});

  @override
  $CloseCopyWith<$Res>? get open;
  @override
  $CloseCopyWith<$Res>? get close;
}

/// @nodoc
class __$PeriodCopyWithImpl<$Res> implements _$PeriodCopyWith<$Res> {
  __$PeriodCopyWithImpl(this._self, this._then);

  final _Period _self;
  final $Res Function(_Period) _then;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? open = freezed,
    Object? close = freezed,
  }) {
    return _then(_Period(
      open: freezed == open
          ? _self.open
          : open // ignore: cast_nullable_to_non_nullable
              as Close?,
      close: freezed == close
          ? _self.close
          : close // ignore: cast_nullable_to_non_nullable
              as Close?,
    ));
  }

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CloseCopyWith<$Res>? get open {
    if (_self.open == null) {
      return null;
    }

    return $CloseCopyWith<$Res>(_self.open!, (value) {
      return _then(_self.copyWith(open: value));
    });
  }

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CloseCopyWith<$Res>? get close {
    if (_self.close == null) {
      return null;
    }

    return $CloseCopyWith<$Res>(_self.close!, (value) {
      return _then(_self.copyWith(close: value));
    });
  }
}

/// @nodoc
mixin _$Close {
  @JsonKey(name: "day")
  int? get day;
  @JsonKey(name: "hour")
  int? get hour;
  @JsonKey(name: "minute")
  int? get minute;
  @JsonKey(name: "date")
  Date? get date;
  @JsonKey(name: "truncated")
  bool? get truncated;

  /// Create a copy of Close
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CloseCopyWith<Close> get copyWith =>
      _$CloseCopyWithImpl<Close>(this as Close, _$identity);

  /// Serializes this Close to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Close &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.truncated, truncated) ||
                other.truncated == truncated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, day, hour, minute, date, truncated);

  @override
  String toString() {
    return 'Close(day: $day, hour: $hour, minute: $minute, date: $date, truncated: $truncated)';
  }
}

/// @nodoc
abstract mixin class $CloseCopyWith<$Res> {
  factory $CloseCopyWith(Close value, $Res Function(Close) _then) =
      _$CloseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "day") int? day,
      @JsonKey(name: "hour") int? hour,
      @JsonKey(name: "minute") int? minute,
      @JsonKey(name: "date") Date? date,
      @JsonKey(name: "truncated") bool? truncated});

  $DateCopyWith<$Res>? get date;
}

/// @nodoc
class _$CloseCopyWithImpl<$Res> implements $CloseCopyWith<$Res> {
  _$CloseCopyWithImpl(this._self, this._then);

  final Close _self;
  final $Res Function(Close) _then;

  /// Create a copy of Close
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? hour = freezed,
    Object? minute = freezed,
    Object? date = freezed,
    Object? truncated = freezed,
  }) {
    return _then(_self.copyWith(
      day: freezed == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      hour: freezed == hour
          ? _self.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int?,
      minute: freezed == minute
          ? _self.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date?,
      truncated: freezed == truncated
          ? _self.truncated
          : truncated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of Close
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get date {
    if (_self.date == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.date!, (value) {
      return _then(_self.copyWith(date: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Close].
extension ClosePatterns on Close {
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
    TResult Function(_Close value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Close() when $default != null:
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
    TResult Function(_Close value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Close():
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
    TResult? Function(_Close value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Close() when $default != null:
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
            @JsonKey(name: "day") int? day,
            @JsonKey(name: "hour") int? hour,
            @JsonKey(name: "minute") int? minute,
            @JsonKey(name: "date") Date? date,
            @JsonKey(name: "truncated") bool? truncated)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Close() when $default != null:
        return $default(
            _that.day, _that.hour, _that.minute, _that.date, _that.truncated);
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
            @JsonKey(name: "day") int? day,
            @JsonKey(name: "hour") int? hour,
            @JsonKey(name: "minute") int? minute,
            @JsonKey(name: "date") Date? date,
            @JsonKey(name: "truncated") bool? truncated)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Close():
        return $default(
            _that.day, _that.hour, _that.minute, _that.date, _that.truncated);
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
            @JsonKey(name: "day") int? day,
            @JsonKey(name: "hour") int? hour,
            @JsonKey(name: "minute") int? minute,
            @JsonKey(name: "date") Date? date,
            @JsonKey(name: "truncated") bool? truncated)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Close() when $default != null:
        return $default(
            _that.day, _that.hour, _that.minute, _that.date, _that.truncated);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Close implements Close {
  const _Close(
      {@JsonKey(name: "day") this.day,
      @JsonKey(name: "hour") this.hour,
      @JsonKey(name: "minute") this.minute,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "truncated") this.truncated});
  factory _Close.fromJson(Map<String, dynamic> json) => _$CloseFromJson(json);

  @override
  @JsonKey(name: "day")
  final int? day;
  @override
  @JsonKey(name: "hour")
  final int? hour;
  @override
  @JsonKey(name: "minute")
  final int? minute;
  @override
  @JsonKey(name: "date")
  final Date? date;
  @override
  @JsonKey(name: "truncated")
  final bool? truncated;

  /// Create a copy of Close
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CloseCopyWith<_Close> get copyWith =>
      __$CloseCopyWithImpl<_Close>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CloseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Close &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.truncated, truncated) ||
                other.truncated == truncated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, day, hour, minute, date, truncated);

  @override
  String toString() {
    return 'Close(day: $day, hour: $hour, minute: $minute, date: $date, truncated: $truncated)';
  }
}

/// @nodoc
abstract mixin class _$CloseCopyWith<$Res> implements $CloseCopyWith<$Res> {
  factory _$CloseCopyWith(_Close value, $Res Function(_Close) _then) =
      __$CloseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "day") int? day,
      @JsonKey(name: "hour") int? hour,
      @JsonKey(name: "minute") int? minute,
      @JsonKey(name: "date") Date? date,
      @JsonKey(name: "truncated") bool? truncated});

  @override
  $DateCopyWith<$Res>? get date;
}

/// @nodoc
class __$CloseCopyWithImpl<$Res> implements _$CloseCopyWith<$Res> {
  __$CloseCopyWithImpl(this._self, this._then);

  final _Close _self;
  final $Res Function(_Close) _then;

  /// Create a copy of Close
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? day = freezed,
    Object? hour = freezed,
    Object? minute = freezed,
    Object? date = freezed,
    Object? truncated = freezed,
  }) {
    return _then(_Close(
      day: freezed == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      hour: freezed == hour
          ? _self.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int?,
      minute: freezed == minute
          ? _self.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date?,
      truncated: freezed == truncated
          ? _self.truncated
          : truncated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of Close
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get date {
    if (_self.date == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_self.date!, (value) {
      return _then(_self.copyWith(date: value));
    });
  }
}

/// @nodoc
mixin _$Date {
  @JsonKey(name: "year")
  int? get year;
  @JsonKey(name: "month")
  int? get month;
  @JsonKey(name: "day")
  int? get day;

  /// Create a copy of Date
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DateCopyWith<Date> get copyWith =>
      _$DateCopyWithImpl<Date>(this as Date, _$identity);

  /// Serializes this Date to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Date &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, year, month, day);

  @override
  String toString() {
    return 'Date(year: $year, month: $month, day: $day)';
  }
}

/// @nodoc
abstract mixin class $DateCopyWith<$Res> {
  factory $DateCopyWith(Date value, $Res Function(Date) _then) =
      _$DateCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "year") int? year,
      @JsonKey(name: "month") int? month,
      @JsonKey(name: "day") int? day});
}

/// @nodoc
class _$DateCopyWithImpl<$Res> implements $DateCopyWith<$Res> {
  _$DateCopyWithImpl(this._self, this._then);

  final Date _self;
  final $Res Function(Date) _then;

  /// Create a copy of Date
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? day = freezed,
  }) {
    return _then(_self.copyWith(
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Date].
extension DatePatterns on Date {
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
    TResult Function(_Date value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Date() when $default != null:
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
    TResult Function(_Date value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Date():
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
    TResult? Function(_Date value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Date() when $default != null:
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
    TResult Function(@JsonKey(name: "year") int? year,
            @JsonKey(name: "month") int? month, @JsonKey(name: "day") int? day)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Date() when $default != null:
        return $default(_that.year, _that.month, _that.day);
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
    TResult Function(@JsonKey(name: "year") int? year,
            @JsonKey(name: "month") int? month, @JsonKey(name: "day") int? day)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Date():
        return $default(_that.year, _that.month, _that.day);
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
    TResult? Function(@JsonKey(name: "year") int? year,
            @JsonKey(name: "month") int? month, @JsonKey(name: "day") int? day)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Date() when $default != null:
        return $default(_that.year, _that.month, _that.day);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Date implements Date {
  const _Date(
      {@JsonKey(name: "year") this.year,
      @JsonKey(name: "month") this.month,
      @JsonKey(name: "day") this.day});
  factory _Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);

  @override
  @JsonKey(name: "year")
  final int? year;
  @override
  @JsonKey(name: "month")
  final int? month;
  @override
  @JsonKey(name: "day")
  final int? day;

  /// Create a copy of Date
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DateCopyWith<_Date> get copyWith =>
      __$DateCopyWithImpl<_Date>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Date &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, year, month, day);

  @override
  String toString() {
    return 'Date(year: $year, month: $month, day: $day)';
  }
}

/// @nodoc
abstract mixin class _$DateCopyWith<$Res> implements $DateCopyWith<$Res> {
  factory _$DateCopyWith(_Date value, $Res Function(_Date) _then) =
      __$DateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "year") int? year,
      @JsonKey(name: "month") int? month,
      @JsonKey(name: "day") int? day});
}

/// @nodoc
class __$DateCopyWithImpl<$Res> implements _$DateCopyWith<$Res> {
  __$DateCopyWithImpl(this._self, this._then);

  final _Date _self;
  final $Res Function(_Date) _then;

  /// Create a copy of Date
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? day = freezed,
  }) {
    return _then(_Date(
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$DisplayName {
  @JsonKey(name: "text")
  String? get text;
  @JsonKey(name: "languageCode")
  String? get languageCode;

  /// Create a copy of DisplayName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DisplayNameCopyWith<DisplayName> get copyWith =>
      _$DisplayNameCopyWithImpl<DisplayName>(this as DisplayName, _$identity);

  /// Serializes this DisplayName to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DisplayName &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, languageCode);

  @override
  String toString() {
    return 'DisplayName(text: $text, languageCode: $languageCode)';
  }
}

/// @nodoc
abstract mixin class $DisplayNameCopyWith<$Res> {
  factory $DisplayNameCopyWith(
          DisplayName value, $Res Function(DisplayName) _then) =
      _$DisplayNameCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "text") String? text,
      @JsonKey(name: "languageCode") String? languageCode});
}

/// @nodoc
class _$DisplayNameCopyWithImpl<$Res> implements $DisplayNameCopyWith<$Res> {
  _$DisplayNameCopyWithImpl(this._self, this._then);

  final DisplayName _self;
  final $Res Function(DisplayName) _then;

  /// Create a copy of DisplayName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_self.copyWith(
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DisplayName].
extension DisplayNamePatterns on DisplayName {
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
    TResult Function(_DisplayName value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DisplayName() when $default != null:
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
    TResult Function(_DisplayName value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DisplayName():
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
    TResult? Function(_DisplayName value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DisplayName() when $default != null:
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
    TResult Function(@JsonKey(name: "text") String? text,
            @JsonKey(name: "languageCode") String? languageCode)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DisplayName() when $default != null:
        return $default(_that.text, _that.languageCode);
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
    TResult Function(@JsonKey(name: "text") String? text,
            @JsonKey(name: "languageCode") String? languageCode)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DisplayName():
        return $default(_that.text, _that.languageCode);
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
    TResult? Function(@JsonKey(name: "text") String? text,
            @JsonKey(name: "languageCode") String? languageCode)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DisplayName() when $default != null:
        return $default(_that.text, _that.languageCode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DisplayName implements DisplayName {
  const _DisplayName(
      {@JsonKey(name: "text") this.text,
      @JsonKey(name: "languageCode") this.languageCode});
  factory _DisplayName.fromJson(Map<String, dynamic> json) =>
      _$DisplayNameFromJson(json);

  @override
  @JsonKey(name: "text")
  final String? text;
  @override
  @JsonKey(name: "languageCode")
  final String? languageCode;

  /// Create a copy of DisplayName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DisplayNameCopyWith<_DisplayName> get copyWith =>
      __$DisplayNameCopyWithImpl<_DisplayName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DisplayNameToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DisplayName &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, languageCode);

  @override
  String toString() {
    return 'DisplayName(text: $text, languageCode: $languageCode)';
  }
}

/// @nodoc
abstract mixin class _$DisplayNameCopyWith<$Res>
    implements $DisplayNameCopyWith<$Res> {
  factory _$DisplayNameCopyWith(
          _DisplayName value, $Res Function(_DisplayName) _then) =
      __$DisplayNameCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "text") String? text,
      @JsonKey(name: "languageCode") String? languageCode});
}

/// @nodoc
class __$DisplayNameCopyWithImpl<$Res> implements _$DisplayNameCopyWith<$Res> {
  __$DisplayNameCopyWithImpl(this._self, this._then);

  final _DisplayName _self;
  final $Res Function(_DisplayName) _then;

  /// Create a copy of DisplayName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_DisplayName(
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Photo {
  @JsonKey(name: "name")
  String? get name;
  @JsonKey(name: "widthPx")
  int? get widthPx;
  @JsonKey(name: "heightPx")
  int? get heightPx;
  @JsonKey(name: "authorAttributions")
  List<AuthorAttribution>? get authorAttributions;
  @JsonKey(name: "flagContentUri")
  String? get flagContentUri;
  @JsonKey(name: "googleMapsUri")
  String? get googleMapsUri;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<Photo> get copyWith =>
      _$PhotoCopyWithImpl<Photo>(this as Photo, _$identity);

  /// Serializes this Photo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Photo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.widthPx, widthPx) || other.widthPx == widthPx) &&
            (identical(other.heightPx, heightPx) ||
                other.heightPx == heightPx) &&
            const DeepCollectionEquality()
                .equals(other.authorAttributions, authorAttributions) &&
            (identical(other.flagContentUri, flagContentUri) ||
                other.flagContentUri == flagContentUri) &&
            (identical(other.googleMapsUri, googleMapsUri) ||
                other.googleMapsUri == googleMapsUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      widthPx,
      heightPx,
      const DeepCollectionEquality().hash(authorAttributions),
      flagContentUri,
      googleMapsUri);

  @override
  String toString() {
    return 'Photo(name: $name, widthPx: $widthPx, heightPx: $heightPx, authorAttributions: $authorAttributions, flagContentUri: $flagContentUri, googleMapsUri: $googleMapsUri)';
  }
}

/// @nodoc
abstract mixin class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) _then) =
      _$PhotoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "widthPx") int? widthPx,
      @JsonKey(name: "heightPx") int? heightPx,
      @JsonKey(name: "authorAttributions")
      List<AuthorAttribution>? authorAttributions,
      @JsonKey(name: "flagContentUri") String? flagContentUri,
      @JsonKey(name: "googleMapsUri") String? googleMapsUri});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._self, this._then);

  final Photo _self;
  final $Res Function(Photo) _then;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? widthPx = freezed,
    Object? heightPx = freezed,
    Object? authorAttributions = freezed,
    Object? flagContentUri = freezed,
    Object? googleMapsUri = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      widthPx: freezed == widthPx
          ? _self.widthPx
          : widthPx // ignore: cast_nullable_to_non_nullable
              as int?,
      heightPx: freezed == heightPx
          ? _self.heightPx
          : heightPx // ignore: cast_nullable_to_non_nullable
              as int?,
      authorAttributions: freezed == authorAttributions
          ? _self.authorAttributions
          : authorAttributions // ignore: cast_nullable_to_non_nullable
              as List<AuthorAttribution>?,
      flagContentUri: freezed == flagContentUri
          ? _self.flagContentUri
          : flagContentUri // ignore: cast_nullable_to_non_nullable
              as String?,
      googleMapsUri: freezed == googleMapsUri
          ? _self.googleMapsUri
          : googleMapsUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Photo].
extension PhotoPatterns on Photo {
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
    TResult Function(_Photo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Photo() when $default != null:
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
    TResult Function(_Photo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Photo():
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
    TResult? Function(_Photo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Photo() when $default != null:
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
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "widthPx") int? widthPx,
            @JsonKey(name: "heightPx") int? heightPx,
            @JsonKey(name: "authorAttributions")
            List<AuthorAttribution>? authorAttributions,
            @JsonKey(name: "flagContentUri") String? flagContentUri,
            @JsonKey(name: "googleMapsUri") String? googleMapsUri)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Photo() when $default != null:
        return $default(
            _that.name,
            _that.widthPx,
            _that.heightPx,
            _that.authorAttributions,
            _that.flagContentUri,
            _that.googleMapsUri);
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
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "widthPx") int? widthPx,
            @JsonKey(name: "heightPx") int? heightPx,
            @JsonKey(name: "authorAttributions")
            List<AuthorAttribution>? authorAttributions,
            @JsonKey(name: "flagContentUri") String? flagContentUri,
            @JsonKey(name: "googleMapsUri") String? googleMapsUri)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Photo():
        return $default(
            _that.name,
            _that.widthPx,
            _that.heightPx,
            _that.authorAttributions,
            _that.flagContentUri,
            _that.googleMapsUri);
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
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "widthPx") int? widthPx,
            @JsonKey(name: "heightPx") int? heightPx,
            @JsonKey(name: "authorAttributions")
            List<AuthorAttribution>? authorAttributions,
            @JsonKey(name: "flagContentUri") String? flagContentUri,
            @JsonKey(name: "googleMapsUri") String? googleMapsUri)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Photo() when $default != null:
        return $default(
            _that.name,
            _that.widthPx,
            _that.heightPx,
            _that.authorAttributions,
            _that.flagContentUri,
            _that.googleMapsUri);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Photo implements Photo {
  const _Photo(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "widthPx") this.widthPx,
      @JsonKey(name: "heightPx") this.heightPx,
      @JsonKey(name: "authorAttributions")
      final List<AuthorAttribution>? authorAttributions,
      @JsonKey(name: "flagContentUri") this.flagContentUri,
      @JsonKey(name: "googleMapsUri") this.googleMapsUri})
      : _authorAttributions = authorAttributions;
  factory _Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "widthPx")
  final int? widthPx;
  @override
  @JsonKey(name: "heightPx")
  final int? heightPx;
  final List<AuthorAttribution>? _authorAttributions;
  @override
  @JsonKey(name: "authorAttributions")
  List<AuthorAttribution>? get authorAttributions {
    final value = _authorAttributions;
    if (value == null) return null;
    if (_authorAttributions is EqualUnmodifiableListView)
      return _authorAttributions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "flagContentUri")
  final String? flagContentUri;
  @override
  @JsonKey(name: "googleMapsUri")
  final String? googleMapsUri;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PhotoCopyWith<_Photo> get copyWith =>
      __$PhotoCopyWithImpl<_Photo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PhotoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Photo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.widthPx, widthPx) || other.widthPx == widthPx) &&
            (identical(other.heightPx, heightPx) ||
                other.heightPx == heightPx) &&
            const DeepCollectionEquality()
                .equals(other._authorAttributions, _authorAttributions) &&
            (identical(other.flagContentUri, flagContentUri) ||
                other.flagContentUri == flagContentUri) &&
            (identical(other.googleMapsUri, googleMapsUri) ||
                other.googleMapsUri == googleMapsUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      widthPx,
      heightPx,
      const DeepCollectionEquality().hash(_authorAttributions),
      flagContentUri,
      googleMapsUri);

  @override
  String toString() {
    return 'Photo(name: $name, widthPx: $widthPx, heightPx: $heightPx, authorAttributions: $authorAttributions, flagContentUri: $flagContentUri, googleMapsUri: $googleMapsUri)';
  }
}

/// @nodoc
abstract mixin class _$PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$PhotoCopyWith(_Photo value, $Res Function(_Photo) _then) =
      __$PhotoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "widthPx") int? widthPx,
      @JsonKey(name: "heightPx") int? heightPx,
      @JsonKey(name: "authorAttributions")
      List<AuthorAttribution>? authorAttributions,
      @JsonKey(name: "flagContentUri") String? flagContentUri,
      @JsonKey(name: "googleMapsUri") String? googleMapsUri});
}

/// @nodoc
class __$PhotoCopyWithImpl<$Res> implements _$PhotoCopyWith<$Res> {
  __$PhotoCopyWithImpl(this._self, this._then);

  final _Photo _self;
  final $Res Function(_Photo) _then;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? widthPx = freezed,
    Object? heightPx = freezed,
    Object? authorAttributions = freezed,
    Object? flagContentUri = freezed,
    Object? googleMapsUri = freezed,
  }) {
    return _then(_Photo(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      widthPx: freezed == widthPx
          ? _self.widthPx
          : widthPx // ignore: cast_nullable_to_non_nullable
              as int?,
      heightPx: freezed == heightPx
          ? _self.heightPx
          : heightPx // ignore: cast_nullable_to_non_nullable
              as int?,
      authorAttributions: freezed == authorAttributions
          ? _self._authorAttributions
          : authorAttributions // ignore: cast_nullable_to_non_nullable
              as List<AuthorAttribution>?,
      flagContentUri: freezed == flagContentUri
          ? _self.flagContentUri
          : flagContentUri // ignore: cast_nullable_to_non_nullable
              as String?,
      googleMapsUri: freezed == googleMapsUri
          ? _self.googleMapsUri
          : googleMapsUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$AuthorAttribution {
  @JsonKey(name: "displayName")
  String? get displayName;
  @JsonKey(name: "uri")
  String? get uri;
  @JsonKey(name: "photoUri")
  String? get photoUri;

  /// Create a copy of AuthorAttribution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthorAttributionCopyWith<AuthorAttribution> get copyWith =>
      _$AuthorAttributionCopyWithImpl<AuthorAttribution>(
          this as AuthorAttribution, _$identity);

  /// Serializes this AuthorAttribution to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthorAttribution &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.photoUri, photoUri) ||
                other.photoUri == photoUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, displayName, uri, photoUri);

  @override
  String toString() {
    return 'AuthorAttribution(displayName: $displayName, uri: $uri, photoUri: $photoUri)';
  }
}

/// @nodoc
abstract mixin class $AuthorAttributionCopyWith<$Res> {
  factory $AuthorAttributionCopyWith(
          AuthorAttribution value, $Res Function(AuthorAttribution) _then) =
      _$AuthorAttributionCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "displayName") String? displayName,
      @JsonKey(name: "uri") String? uri,
      @JsonKey(name: "photoUri") String? photoUri});
}

/// @nodoc
class _$AuthorAttributionCopyWithImpl<$Res>
    implements $AuthorAttributionCopyWith<$Res> {
  _$AuthorAttributionCopyWithImpl(this._self, this._then);

  final AuthorAttribution _self;
  final $Res Function(AuthorAttribution) _then;

  /// Create a copy of AuthorAttribution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? uri = freezed,
    Object? photoUri = freezed,
  }) {
    return _then(_self.copyWith(
      displayName: freezed == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUri: freezed == photoUri
          ? _self.photoUri
          : photoUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthorAttribution].
extension AuthorAttributionPatterns on AuthorAttribution {
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
    TResult Function(_AuthorAttribution value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthorAttribution() when $default != null:
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
    TResult Function(_AuthorAttribution value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthorAttribution():
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
    TResult? Function(_AuthorAttribution value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthorAttribution() when $default != null:
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
            @JsonKey(name: "displayName") String? displayName,
            @JsonKey(name: "uri") String? uri,
            @JsonKey(name: "photoUri") String? photoUri)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthorAttribution() when $default != null:
        return $default(_that.displayName, _that.uri, _that.photoUri);
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
            @JsonKey(name: "displayName") String? displayName,
            @JsonKey(name: "uri") String? uri,
            @JsonKey(name: "photoUri") String? photoUri)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthorAttribution():
        return $default(_that.displayName, _that.uri, _that.photoUri);
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
            @JsonKey(name: "displayName") String? displayName,
            @JsonKey(name: "uri") String? uri,
            @JsonKey(name: "photoUri") String? photoUri)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthorAttribution() when $default != null:
        return $default(_that.displayName, _that.uri, _that.photoUri);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AuthorAttribution implements AuthorAttribution {
  const _AuthorAttribution(
      {@JsonKey(name: "displayName") this.displayName,
      @JsonKey(name: "uri") this.uri,
      @JsonKey(name: "photoUri") this.photoUri});
  factory _AuthorAttribution.fromJson(Map<String, dynamic> json) =>
      _$AuthorAttributionFromJson(json);

  @override
  @JsonKey(name: "displayName")
  final String? displayName;
  @override
  @JsonKey(name: "uri")
  final String? uri;
  @override
  @JsonKey(name: "photoUri")
  final String? photoUri;

  /// Create a copy of AuthorAttribution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthorAttributionCopyWith<_AuthorAttribution> get copyWith =>
      __$AuthorAttributionCopyWithImpl<_AuthorAttribution>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthorAttributionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthorAttribution &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.photoUri, photoUri) ||
                other.photoUri == photoUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, displayName, uri, photoUri);

  @override
  String toString() {
    return 'AuthorAttribution(displayName: $displayName, uri: $uri, photoUri: $photoUri)';
  }
}

/// @nodoc
abstract mixin class _$AuthorAttributionCopyWith<$Res>
    implements $AuthorAttributionCopyWith<$Res> {
  factory _$AuthorAttributionCopyWith(
          _AuthorAttribution value, $Res Function(_AuthorAttribution) _then) =
      __$AuthorAttributionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "displayName") String? displayName,
      @JsonKey(name: "uri") String? uri,
      @JsonKey(name: "photoUri") String? photoUri});
}

/// @nodoc
class __$AuthorAttributionCopyWithImpl<$Res>
    implements _$AuthorAttributionCopyWith<$Res> {
  __$AuthorAttributionCopyWithImpl(this._self, this._then);

  final _AuthorAttribution _self;
  final $Res Function(_AuthorAttribution) _then;

  /// Create a copy of AuthorAttribution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? displayName = freezed,
    Object? uri = freezed,
    Object? photoUri = freezed,
  }) {
    return _then(_AuthorAttribution(
      displayName: freezed == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUri: freezed == photoUri
          ? _self.photoUri
          : photoUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
