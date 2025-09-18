// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceDetail {
  @JsonKey(name: "formattedAddress")
  String? get formattedAddress;
  @JsonKey(name: "addressComponents")
  List<AddressComponent>? get addressComponents;
  @JsonKey(name: "location")
  Coordinate? get location;
  @JsonKey(name: "shortFormattedAddress")
  String? get shortFormattedAddress;

  /// Create a copy of PlaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceDetailCopyWith<PlaceDetail> get copyWith =>
      _$PlaceDetailCopyWithImpl<PlaceDetail>(this as PlaceDetail, _$identity);

  /// Serializes this PlaceDetail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceDetail &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            const DeepCollectionEquality()
                .equals(other.addressComponents, addressComponents) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.shortFormattedAddress, shortFormattedAddress) ||
                other.shortFormattedAddress == shortFormattedAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      formattedAddress,
      const DeepCollectionEquality().hash(addressComponents),
      location,
      shortFormattedAddress);

  @override
  String toString() {
    return 'PlaceDetail(formattedAddress: $formattedAddress, addressComponents: $addressComponents, location: $location, shortFormattedAddress: $shortFormattedAddress)';
  }
}

/// @nodoc
abstract mixin class $PlaceDetailCopyWith<$Res> {
  factory $PlaceDetailCopyWith(
          PlaceDetail value, $Res Function(PlaceDetail) _then) =
      _$PlaceDetailCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "formattedAddress") String? formattedAddress,
      @JsonKey(name: "addressComponents")
      List<AddressComponent>? addressComponents,
      @JsonKey(name: "location") Coordinate? location,
      @JsonKey(name: "shortFormattedAddress") String? shortFormattedAddress});

  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class _$PlaceDetailCopyWithImpl<$Res> implements $PlaceDetailCopyWith<$Res> {
  _$PlaceDetailCopyWithImpl(this._self, this._then);

  final PlaceDetail _self;
  final $Res Function(PlaceDetail) _then;

  /// Create a copy of PlaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formattedAddress = freezed,
    Object? addressComponents = freezed,
    Object? location = freezed,
    Object? shortFormattedAddress = freezed,
  }) {
    return _then(_self.copyWith(
      formattedAddress: freezed == formattedAddress
          ? _self.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      addressComponents: freezed == addressComponents
          ? _self.addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      shortFormattedAddress: freezed == shortFormattedAddress
          ? _self.shortFormattedAddress
          : shortFormattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of PlaceDetail
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

/// Adds pattern-matching-related methods to [PlaceDetail].
extension PlaceDetailPatterns on PlaceDetail {
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
    TResult Function(_PlaceDetail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PlaceDetail() when $default != null:
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
    TResult Function(_PlaceDetail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaceDetail():
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
    TResult? Function(_PlaceDetail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaceDetail() when $default != null:
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
            @JsonKey(name: "formattedAddress") String? formattedAddress,
            @JsonKey(name: "addressComponents")
            List<AddressComponent>? addressComponents,
            @JsonKey(name: "location") Coordinate? location,
            @JsonKey(name: "shortFormattedAddress")
            String? shortFormattedAddress)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PlaceDetail() when $default != null:
        return $default(_that.formattedAddress, _that.addressComponents,
            _that.location, _that.shortFormattedAddress);
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
            @JsonKey(name: "formattedAddress") String? formattedAddress,
            @JsonKey(name: "addressComponents")
            List<AddressComponent>? addressComponents,
            @JsonKey(name: "location") Coordinate? location,
            @JsonKey(name: "shortFormattedAddress")
            String? shortFormattedAddress)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaceDetail():
        return $default(_that.formattedAddress, _that.addressComponents,
            _that.location, _that.shortFormattedAddress);
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
            @JsonKey(name: "formattedAddress") String? formattedAddress,
            @JsonKey(name: "addressComponents")
            List<AddressComponent>? addressComponents,
            @JsonKey(name: "location") Coordinate? location,
            @JsonKey(name: "shortFormattedAddress")
            String? shortFormattedAddress)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaceDetail() when $default != null:
        return $default(_that.formattedAddress, _that.addressComponents,
            _that.location, _that.shortFormattedAddress);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceDetail implements PlaceDetail {
  const _PlaceDetail(
      {@JsonKey(name: "formattedAddress") this.formattedAddress,
      @JsonKey(name: "addressComponents")
      final List<AddressComponent>? addressComponents,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "shortFormattedAddress") this.shortFormattedAddress})
      : _addressComponents = addressComponents;
  factory _PlaceDetail.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailFromJson(json);

  @override
  @JsonKey(name: "formattedAddress")
  final String? formattedAddress;
  final List<AddressComponent>? _addressComponents;
  @override
  @JsonKey(name: "addressComponents")
  List<AddressComponent>? get addressComponents {
    final value = _addressComponents;
    if (value == null) return null;
    if (_addressComponents is EqualUnmodifiableListView)
      return _addressComponents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "location")
  final Coordinate? location;
  @override
  @JsonKey(name: "shortFormattedAddress")
  final String? shortFormattedAddress;

  /// Create a copy of PlaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceDetailCopyWith<_PlaceDetail> get copyWith =>
      __$PlaceDetailCopyWithImpl<_PlaceDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceDetailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceDetail &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            const DeepCollectionEquality()
                .equals(other._addressComponents, _addressComponents) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.shortFormattedAddress, shortFormattedAddress) ||
                other.shortFormattedAddress == shortFormattedAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      formattedAddress,
      const DeepCollectionEquality().hash(_addressComponents),
      location,
      shortFormattedAddress);

  @override
  String toString() {
    return 'PlaceDetail(formattedAddress: $formattedAddress, addressComponents: $addressComponents, location: $location, shortFormattedAddress: $shortFormattedAddress)';
  }
}

/// @nodoc
abstract mixin class _$PlaceDetailCopyWith<$Res>
    implements $PlaceDetailCopyWith<$Res> {
  factory _$PlaceDetailCopyWith(
          _PlaceDetail value, $Res Function(_PlaceDetail) _then) =
      __$PlaceDetailCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "formattedAddress") String? formattedAddress,
      @JsonKey(name: "addressComponents")
      List<AddressComponent>? addressComponents,
      @JsonKey(name: "location") Coordinate? location,
      @JsonKey(name: "shortFormattedAddress") String? shortFormattedAddress});

  @override
  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class __$PlaceDetailCopyWithImpl<$Res> implements _$PlaceDetailCopyWith<$Res> {
  __$PlaceDetailCopyWithImpl(this._self, this._then);

  final _PlaceDetail _self;
  final $Res Function(_PlaceDetail) _then;

  /// Create a copy of PlaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? formattedAddress = freezed,
    Object? addressComponents = freezed,
    Object? location = freezed,
    Object? shortFormattedAddress = freezed,
  }) {
    return _then(_PlaceDetail(
      formattedAddress: freezed == formattedAddress
          ? _self.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      addressComponents: freezed == addressComponents
          ? _self._addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      shortFormattedAddress: freezed == shortFormattedAddress
          ? _self.shortFormattedAddress
          : shortFormattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of PlaceDetail
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

/// @nodoc
mixin _$AddressComponent {
  @JsonKey(name: "longText")
  String? get longText;
  @JsonKey(name: "shortText")
  String? get shortText;
  @JsonKey(name: "types")
  List<String>? get types;
  @JsonKey(name: "languageCode")
  String? get languageCode;

  /// Create a copy of AddressComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressComponentCopyWith<AddressComponent> get copyWith =>
      _$AddressComponentCopyWithImpl<AddressComponent>(
          this as AddressComponent, _$identity);

  /// Serializes this AddressComponent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddressComponent &&
            (identical(other.longText, longText) ||
                other.longText == longText) &&
            (identical(other.shortText, shortText) ||
                other.shortText == shortText) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, longText, shortText,
      const DeepCollectionEquality().hash(types), languageCode);

  @override
  String toString() {
    return 'AddressComponent(longText: $longText, shortText: $shortText, types: $types, languageCode: $languageCode)';
  }
}

/// @nodoc
abstract mixin class $AddressComponentCopyWith<$Res> {
  factory $AddressComponentCopyWith(
          AddressComponent value, $Res Function(AddressComponent) _then) =
      _$AddressComponentCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "longText") String? longText,
      @JsonKey(name: "shortText") String? shortText,
      @JsonKey(name: "types") List<String>? types,
      @JsonKey(name: "languageCode") String? languageCode});
}

/// @nodoc
class _$AddressComponentCopyWithImpl<$Res>
    implements $AddressComponentCopyWith<$Res> {
  _$AddressComponentCopyWithImpl(this._self, this._then);

  final AddressComponent _self;
  final $Res Function(AddressComponent) _then;

  /// Create a copy of AddressComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longText = freezed,
    Object? shortText = freezed,
    Object? types = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_self.copyWith(
      longText: freezed == longText
          ? _self.longText
          : longText // ignore: cast_nullable_to_non_nullable
              as String?,
      shortText: freezed == shortText
          ? _self.shortText
          : shortText // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _self.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      languageCode: freezed == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AddressComponent].
extension AddressComponentPatterns on AddressComponent {
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
    TResult Function(_AddressComponent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddressComponent() when $default != null:
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
    TResult Function(_AddressComponent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddressComponent():
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
    TResult? Function(_AddressComponent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddressComponent() when $default != null:
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
            @JsonKey(name: "longText") String? longText,
            @JsonKey(name: "shortText") String? shortText,
            @JsonKey(name: "types") List<String>? types,
            @JsonKey(name: "languageCode") String? languageCode)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddressComponent() when $default != null:
        return $default(
            _that.longText, _that.shortText, _that.types, _that.languageCode);
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
            @JsonKey(name: "longText") String? longText,
            @JsonKey(name: "shortText") String? shortText,
            @JsonKey(name: "types") List<String>? types,
            @JsonKey(name: "languageCode") String? languageCode)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddressComponent():
        return $default(
            _that.longText, _that.shortText, _that.types, _that.languageCode);
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
            @JsonKey(name: "longText") String? longText,
            @JsonKey(name: "shortText") String? shortText,
            @JsonKey(name: "types") List<String>? types,
            @JsonKey(name: "languageCode") String? languageCode)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddressComponent() when $default != null:
        return $default(
            _that.longText, _that.shortText, _that.types, _that.languageCode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AddressComponent implements AddressComponent {
  const _AddressComponent(
      {@JsonKey(name: "longText") this.longText,
      @JsonKey(name: "shortText") this.shortText,
      @JsonKey(name: "types") final List<String>? types,
      @JsonKey(name: "languageCode") this.languageCode})
      : _types = types;
  factory _AddressComponent.fromJson(Map<String, dynamic> json) =>
      _$AddressComponentFromJson(json);

  @override
  @JsonKey(name: "longText")
  final String? longText;
  @override
  @JsonKey(name: "shortText")
  final String? shortText;
  final List<String>? _types;
  @override
  @JsonKey(name: "types")
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "languageCode")
  final String? languageCode;

  /// Create a copy of AddressComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddressComponentCopyWith<_AddressComponent> get copyWith =>
      __$AddressComponentCopyWithImpl<_AddressComponent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddressComponentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressComponent &&
            (identical(other.longText, longText) ||
                other.longText == longText) &&
            (identical(other.shortText, shortText) ||
                other.shortText == shortText) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, longText, shortText,
      const DeepCollectionEquality().hash(_types), languageCode);

  @override
  String toString() {
    return 'AddressComponent(longText: $longText, shortText: $shortText, types: $types, languageCode: $languageCode)';
  }
}

/// @nodoc
abstract mixin class _$AddressComponentCopyWith<$Res>
    implements $AddressComponentCopyWith<$Res> {
  factory _$AddressComponentCopyWith(
          _AddressComponent value, $Res Function(_AddressComponent) _then) =
      __$AddressComponentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "longText") String? longText,
      @JsonKey(name: "shortText") String? shortText,
      @JsonKey(name: "types") List<String>? types,
      @JsonKey(name: "languageCode") String? languageCode});
}

/// @nodoc
class __$AddressComponentCopyWithImpl<$Res>
    implements _$AddressComponentCopyWith<$Res> {
  __$AddressComponentCopyWithImpl(this._self, this._then);

  final _AddressComponent _self;
  final $Res Function(_AddressComponent) _then;

  /// Create a copy of AddressComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? longText = freezed,
    Object? shortText = freezed,
    Object? types = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_AddressComponent(
      longText: freezed == longText
          ? _self.longText
          : longText // ignore: cast_nullable_to_non_nullable
              as String?,
      shortText: freezed == shortText
          ? _self.shortText
          : shortText // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _self._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      languageCode: freezed == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
