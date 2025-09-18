// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Availability {
  @JsonKey(name: 'title_en')
  String? get titleEn;
  @JsonKey(name: 'description_en')
  String? get descriptionEn;
  @JsonKey(name: 'title_pt')
  String? get titlePt;
  @JsonKey(name: 'description_pt')
  String? get descriptionPt;
  @JsonKey(name: 'enable_ride')
  bool get enableRide;
  @JsonKey(name: 'enable_ride_uat')
  bool? get enableRideUat;

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AvailabilityCopyWith<Availability> get copyWith =>
      _$AvailabilityCopyWithImpl<Availability>(
          this as Availability, _$identity);

  /// Serializes this Availability to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Availability &&
            (identical(other.titleEn, titleEn) || other.titleEn == titleEn) &&
            (identical(other.descriptionEn, descriptionEn) ||
                other.descriptionEn == descriptionEn) &&
            (identical(other.titlePt, titlePt) || other.titlePt == titlePt) &&
            (identical(other.descriptionPt, descriptionPt) ||
                other.descriptionPt == descriptionPt) &&
            (identical(other.enableRide, enableRide) ||
                other.enableRide == enableRide) &&
            (identical(other.enableRideUat, enableRideUat) ||
                other.enableRideUat == enableRideUat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, titleEn, descriptionEn, titlePt,
      descriptionPt, enableRide, enableRideUat);

  @override
  String toString() {
    return 'Availability(titleEn: $titleEn, descriptionEn: $descriptionEn, titlePt: $titlePt, descriptionPt: $descriptionPt, enableRide: $enableRide, enableRideUat: $enableRideUat)';
  }
}

/// @nodoc
abstract mixin class $AvailabilityCopyWith<$Res> {
  factory $AvailabilityCopyWith(
          Availability value, $Res Function(Availability) _then) =
      _$AvailabilityCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'title_en') String? titleEn,
      @JsonKey(name: 'description_en') String? descriptionEn,
      @JsonKey(name: 'title_pt') String? titlePt,
      @JsonKey(name: 'description_pt') String? descriptionPt,
      @JsonKey(name: 'enable_ride') bool enableRide,
      @JsonKey(name: 'enable_ride_uat') bool? enableRideUat});
}

/// @nodoc
class _$AvailabilityCopyWithImpl<$Res> implements $AvailabilityCopyWith<$Res> {
  _$AvailabilityCopyWithImpl(this._self, this._then);

  final Availability _self;
  final $Res Function(Availability) _then;

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleEn = freezed,
    Object? descriptionEn = freezed,
    Object? titlePt = freezed,
    Object? descriptionPt = freezed,
    Object? enableRide = null,
    Object? enableRideUat = freezed,
  }) {
    return _then(_self.copyWith(
      titleEn: freezed == titleEn
          ? _self.titleEn
          : titleEn // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionEn: freezed == descriptionEn
          ? _self.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String?,
      titlePt: freezed == titlePt
          ? _self.titlePt
          : titlePt // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionPt: freezed == descriptionPt
          ? _self.descriptionPt
          : descriptionPt // ignore: cast_nullable_to_non_nullable
              as String?,
      enableRide: null == enableRide
          ? _self.enableRide
          : enableRide // ignore: cast_nullable_to_non_nullable
              as bool,
      enableRideUat: freezed == enableRideUat
          ? _self.enableRideUat
          : enableRideUat // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Availability].
extension AvailabilityPatterns on Availability {
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
    TResult Function(_Availability value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Availability() when $default != null:
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
    TResult Function(_Availability value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Availability():
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
    TResult? Function(_Availability value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Availability() when $default != null:
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
            @JsonKey(name: 'title_en') String? titleEn,
            @JsonKey(name: 'description_en') String? descriptionEn,
            @JsonKey(name: 'title_pt') String? titlePt,
            @JsonKey(name: 'description_pt') String? descriptionPt,
            @JsonKey(name: 'enable_ride') bool enableRide,
            @JsonKey(name: 'enable_ride_uat') bool? enableRideUat)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Availability() when $default != null:
        return $default(_that.titleEn, _that.descriptionEn, _that.titlePt,
            _that.descriptionPt, _that.enableRide, _that.enableRideUat);
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
            @JsonKey(name: 'title_en') String? titleEn,
            @JsonKey(name: 'description_en') String? descriptionEn,
            @JsonKey(name: 'title_pt') String? titlePt,
            @JsonKey(name: 'description_pt') String? descriptionPt,
            @JsonKey(name: 'enable_ride') bool enableRide,
            @JsonKey(name: 'enable_ride_uat') bool? enableRideUat)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Availability():
        return $default(_that.titleEn, _that.descriptionEn, _that.titlePt,
            _that.descriptionPt, _that.enableRide, _that.enableRideUat);
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
            @JsonKey(name: 'title_en') String? titleEn,
            @JsonKey(name: 'description_en') String? descriptionEn,
            @JsonKey(name: 'title_pt') String? titlePt,
            @JsonKey(name: 'description_pt') String? descriptionPt,
            @JsonKey(name: 'enable_ride') bool enableRide,
            @JsonKey(name: 'enable_ride_uat') bool? enableRideUat)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Availability() when $default != null:
        return $default(_that.titleEn, _that.descriptionEn, _that.titlePt,
            _that.descriptionPt, _that.enableRide, _that.enableRideUat);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Availability implements Availability {
  const _Availability(
      {@JsonKey(name: 'title_en') this.titleEn,
      @JsonKey(name: 'description_en') this.descriptionEn,
      @JsonKey(name: 'title_pt') this.titlePt,
      @JsonKey(name: 'description_pt') this.descriptionPt,
      @JsonKey(name: 'enable_ride') this.enableRide = true,
      @JsonKey(name: 'enable_ride_uat') this.enableRideUat});
  factory _Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);

  @override
  @JsonKey(name: 'title_en')
  final String? titleEn;
  @override
  @JsonKey(name: 'description_en')
  final String? descriptionEn;
  @override
  @JsonKey(name: 'title_pt')
  final String? titlePt;
  @override
  @JsonKey(name: 'description_pt')
  final String? descriptionPt;
  @override
  @JsonKey(name: 'enable_ride')
  final bool enableRide;
  @override
  @JsonKey(name: 'enable_ride_uat')
  final bool? enableRideUat;

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AvailabilityCopyWith<_Availability> get copyWith =>
      __$AvailabilityCopyWithImpl<_Availability>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AvailabilityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Availability &&
            (identical(other.titleEn, titleEn) || other.titleEn == titleEn) &&
            (identical(other.descriptionEn, descriptionEn) ||
                other.descriptionEn == descriptionEn) &&
            (identical(other.titlePt, titlePt) || other.titlePt == titlePt) &&
            (identical(other.descriptionPt, descriptionPt) ||
                other.descriptionPt == descriptionPt) &&
            (identical(other.enableRide, enableRide) ||
                other.enableRide == enableRide) &&
            (identical(other.enableRideUat, enableRideUat) ||
                other.enableRideUat == enableRideUat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, titleEn, descriptionEn, titlePt,
      descriptionPt, enableRide, enableRideUat);

  @override
  String toString() {
    return 'Availability(titleEn: $titleEn, descriptionEn: $descriptionEn, titlePt: $titlePt, descriptionPt: $descriptionPt, enableRide: $enableRide, enableRideUat: $enableRideUat)';
  }
}

/// @nodoc
abstract mixin class _$AvailabilityCopyWith<$Res>
    implements $AvailabilityCopyWith<$Res> {
  factory _$AvailabilityCopyWith(
          _Availability value, $Res Function(_Availability) _then) =
      __$AvailabilityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title_en') String? titleEn,
      @JsonKey(name: 'description_en') String? descriptionEn,
      @JsonKey(name: 'title_pt') String? titlePt,
      @JsonKey(name: 'description_pt') String? descriptionPt,
      @JsonKey(name: 'enable_ride') bool enableRide,
      @JsonKey(name: 'enable_ride_uat') bool? enableRideUat});
}

/// @nodoc
class __$AvailabilityCopyWithImpl<$Res>
    implements _$AvailabilityCopyWith<$Res> {
  __$AvailabilityCopyWithImpl(this._self, this._then);

  final _Availability _self;
  final $Res Function(_Availability) _then;

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? titleEn = freezed,
    Object? descriptionEn = freezed,
    Object? titlePt = freezed,
    Object? descriptionPt = freezed,
    Object? enableRide = null,
    Object? enableRideUat = freezed,
  }) {
    return _then(_Availability(
      titleEn: freezed == titleEn
          ? _self.titleEn
          : titleEn // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionEn: freezed == descriptionEn
          ? _self.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String?,
      titlePt: freezed == titlePt
          ? _self.titlePt
          : titlePt // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionPt: freezed == descriptionPt
          ? _self.descriptionPt
          : descriptionPt // ignore: cast_nullable_to_non_nullable
              as String?,
      enableRide: null == enableRide
          ? _self.enableRide
          : enableRide // ignore: cast_nullable_to_non_nullable
              as bool,
      enableRideUat: freezed == enableRideUat
          ? _self.enableRideUat
          : enableRideUat // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
