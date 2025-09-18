// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drivers_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DriversLocation {
  @JsonKey(name: "id")
  String? get id;
  @JsonKey(name: "coordinates")
  Coordinate? get coordinates;
  @JsonKey(name: "brand_name")
  String? get brandName;
  @JsonKey(name: "vehicle_id")
  String? get vehicleId;
  @JsonKey(name: "vehicle_type")
  String? get vehicleType;
  @JsonKey(name: "organization_id")
  String? get organizationId;
  @JsonKey(name: "name")
  String? get name;
  @JsonKey(name: "phone")
  String? get phone;
  @JsonKey(name: "pic")
  String? get pic;
  @JsonKey(name: "email")
  String? get email;
  @JsonKey(name: "ride_type_id")
  String? get rideTypeId;
  @JsonKey(name: "model")
  String? get model;

  /// Create a copy of DriversLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DriversLocationCopyWith<DriversLocation> get copyWith =>
      _$DriversLocationCopyWithImpl<DriversLocation>(
          this as DriversLocation, _$identity);

  /// Serializes this DriversLocation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DriversLocation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.rideTypeId, rideTypeId) ||
                other.rideTypeId == rideTypeId) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      coordinates,
      brandName,
      vehicleId,
      vehicleType,
      organizationId,
      name,
      phone,
      pic,
      email,
      rideTypeId,
      model);

  @override
  String toString() {
    return 'DriversLocation(id: $id, coordinates: $coordinates, brandName: $brandName, vehicleId: $vehicleId, vehicleType: $vehicleType, organizationId: $organizationId, name: $name, phone: $phone, pic: $pic, email: $email, rideTypeId: $rideTypeId, model: $model)';
  }
}

/// @nodoc
abstract mixin class $DriversLocationCopyWith<$Res> {
  factory $DriversLocationCopyWith(
          DriversLocation value, $Res Function(DriversLocation) _then) =
      _$DriversLocationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "coordinates") Coordinate? coordinates,
      @JsonKey(name: "brand_name") String? brandName,
      @JsonKey(name: "vehicle_id") String? vehicleId,
      @JsonKey(name: "vehicle_type") String? vehicleType,
      @JsonKey(name: "organization_id") String? organizationId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "pic") String? pic,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "ride_type_id") String? rideTypeId,
      @JsonKey(name: "model") String? model});

  $CoordinateCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$DriversLocationCopyWithImpl<$Res>
    implements $DriversLocationCopyWith<$Res> {
  _$DriversLocationCopyWithImpl(this._self, this._then);

  final DriversLocation _self;
  final $Res Function(DriversLocation) _then;

  /// Create a copy of DriversLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? coordinates = freezed,
    Object? brandName = freezed,
    Object? vehicleId = freezed,
    Object? vehicleType = freezed,
    Object? organizationId = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? pic = freezed,
    Object? email = freezed,
    Object? rideTypeId = freezed,
    Object? model = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _self.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      brandName: freezed == brandName
          ? _self.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleId: freezed == vehicleId
          ? _self.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _self.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _self.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      rideTypeId: freezed == rideTypeId
          ? _self.rideTypeId
          : rideTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of DriversLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get coordinates {
    if (_self.coordinates == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.coordinates!, (value) {
      return _then(_self.copyWith(coordinates: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DriversLocation].
extension DriversLocationPatterns on DriversLocation {
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
    TResult Function(_DriversLocation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriversLocation() when $default != null:
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
    TResult Function(_DriversLocation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriversLocation():
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
    TResult? Function(_DriversLocation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriversLocation() when $default != null:
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
            @JsonKey(name: "id") String? id,
            @JsonKey(name: "coordinates") Coordinate? coordinates,
            @JsonKey(name: "brand_name") String? brandName,
            @JsonKey(name: "vehicle_id") String? vehicleId,
            @JsonKey(name: "vehicle_type") String? vehicleType,
            @JsonKey(name: "organization_id") String? organizationId,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "phone") String? phone,
            @JsonKey(name: "pic") String? pic,
            @JsonKey(name: "email") String? email,
            @JsonKey(name: "ride_type_id") String? rideTypeId,
            @JsonKey(name: "model") String? model)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriversLocation() when $default != null:
        return $default(
            _that.id,
            _that.coordinates,
            _that.brandName,
            _that.vehicleId,
            _that.vehicleType,
            _that.organizationId,
            _that.name,
            _that.phone,
            _that.pic,
            _that.email,
            _that.rideTypeId,
            _that.model);
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
            @JsonKey(name: "id") String? id,
            @JsonKey(name: "coordinates") Coordinate? coordinates,
            @JsonKey(name: "brand_name") String? brandName,
            @JsonKey(name: "vehicle_id") String? vehicleId,
            @JsonKey(name: "vehicle_type") String? vehicleType,
            @JsonKey(name: "organization_id") String? organizationId,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "phone") String? phone,
            @JsonKey(name: "pic") String? pic,
            @JsonKey(name: "email") String? email,
            @JsonKey(name: "ride_type_id") String? rideTypeId,
            @JsonKey(name: "model") String? model)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriversLocation():
        return $default(
            _that.id,
            _that.coordinates,
            _that.brandName,
            _that.vehicleId,
            _that.vehicleType,
            _that.organizationId,
            _that.name,
            _that.phone,
            _that.pic,
            _that.email,
            _that.rideTypeId,
            _that.model);
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
            @JsonKey(name: "id") String? id,
            @JsonKey(name: "coordinates") Coordinate? coordinates,
            @JsonKey(name: "brand_name") String? brandName,
            @JsonKey(name: "vehicle_id") String? vehicleId,
            @JsonKey(name: "vehicle_type") String? vehicleType,
            @JsonKey(name: "organization_id") String? organizationId,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "phone") String? phone,
            @JsonKey(name: "pic") String? pic,
            @JsonKey(name: "email") String? email,
            @JsonKey(name: "ride_type_id") String? rideTypeId,
            @JsonKey(name: "model") String? model)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriversLocation() when $default != null:
        return $default(
            _that.id,
            _that.coordinates,
            _that.brandName,
            _that.vehicleId,
            _that.vehicleType,
            _that.organizationId,
            _that.name,
            _that.phone,
            _that.pic,
            _that.email,
            _that.rideTypeId,
            _that.model);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DriversLocation implements DriversLocation {
  const _DriversLocation(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "coordinates") this.coordinates,
      @JsonKey(name: "brand_name") this.brandName,
      @JsonKey(name: "vehicle_id") this.vehicleId,
      @JsonKey(name: "vehicle_type") this.vehicleType,
      @JsonKey(name: "organization_id") this.organizationId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "pic") this.pic,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "ride_type_id") this.rideTypeId,
      @JsonKey(name: "model") this.model});
  factory _DriversLocation.fromJson(Map<String, dynamic> json) =>
      _$DriversLocationFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "coordinates")
  final Coordinate? coordinates;
  @override
  @JsonKey(name: "brand_name")
  final String? brandName;
  @override
  @JsonKey(name: "vehicle_id")
  final String? vehicleId;
  @override
  @JsonKey(name: "vehicle_type")
  final String? vehicleType;
  @override
  @JsonKey(name: "organization_id")
  final String? organizationId;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "pic")
  final String? pic;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "ride_type_id")
  final String? rideTypeId;
  @override
  @JsonKey(name: "model")
  final String? model;

  /// Create a copy of DriversLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DriversLocationCopyWith<_DriversLocation> get copyWith =>
      __$DriversLocationCopyWithImpl<_DriversLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DriversLocationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriversLocation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.rideTypeId, rideTypeId) ||
                other.rideTypeId == rideTypeId) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      coordinates,
      brandName,
      vehicleId,
      vehicleType,
      organizationId,
      name,
      phone,
      pic,
      email,
      rideTypeId,
      model);

  @override
  String toString() {
    return 'DriversLocation(id: $id, coordinates: $coordinates, brandName: $brandName, vehicleId: $vehicleId, vehicleType: $vehicleType, organizationId: $organizationId, name: $name, phone: $phone, pic: $pic, email: $email, rideTypeId: $rideTypeId, model: $model)';
  }
}

/// @nodoc
abstract mixin class _$DriversLocationCopyWith<$Res>
    implements $DriversLocationCopyWith<$Res> {
  factory _$DriversLocationCopyWith(
          _DriversLocation value, $Res Function(_DriversLocation) _then) =
      __$DriversLocationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "coordinates") Coordinate? coordinates,
      @JsonKey(name: "brand_name") String? brandName,
      @JsonKey(name: "vehicle_id") String? vehicleId,
      @JsonKey(name: "vehicle_type") String? vehicleType,
      @JsonKey(name: "organization_id") String? organizationId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "pic") String? pic,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "ride_type_id") String? rideTypeId,
      @JsonKey(name: "model") String? model});

  @override
  $CoordinateCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$DriversLocationCopyWithImpl<$Res>
    implements _$DriversLocationCopyWith<$Res> {
  __$DriversLocationCopyWithImpl(this._self, this._then);

  final _DriversLocation _self;
  final $Res Function(_DriversLocation) _then;

  /// Create a copy of DriversLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? coordinates = freezed,
    Object? brandName = freezed,
    Object? vehicleId = freezed,
    Object? vehicleType = freezed,
    Object? organizationId = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? pic = freezed,
    Object? email = freezed,
    Object? rideTypeId = freezed,
    Object? model = freezed,
  }) {
    return _then(_DriversLocation(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _self.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      brandName: freezed == brandName
          ? _self.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleId: freezed == vehicleId
          ? _self.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _self.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _self.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      rideTypeId: freezed == rideTypeId
          ? _self.rideTypeId
          : rideTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of DriversLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get coordinates {
    if (_self.coordinates == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.coordinates!, (value) {
      return _then(_self.copyWith(coordinates: value));
    });
  }
}

// dart format on
