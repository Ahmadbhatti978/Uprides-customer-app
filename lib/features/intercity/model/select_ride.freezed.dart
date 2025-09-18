// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_ride.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SelectRide {
  @JsonKey(name: 'ride')
  IRide? get ride;
  @JsonKey(name: 'vehicle')
  Vehicle? get vehicle;
  @JsonKey(includeFromJson: false)
  int? get plPcDistance;
  @JsonKey(includeFromJson: false)
  int? get dlDcDistance;

  /// Create a copy of SelectRide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectRideCopyWith<SelectRide> get copyWith =>
      _$SelectRideCopyWithImpl<SelectRide>(this as SelectRide, _$identity);

  /// Serializes this SelectRide to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectRide &&
            (identical(other.ride, ride) || other.ride == ride) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.plPcDistance, plPcDistance) ||
                other.plPcDistance == plPcDistance) &&
            (identical(other.dlDcDistance, dlDcDistance) ||
                other.dlDcDistance == dlDcDistance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ride, vehicle, plPcDistance, dlDcDistance);

  @override
  String toString() {
    return 'SelectRide(ride: $ride, vehicle: $vehicle, plPcDistance: $plPcDistance, dlDcDistance: $dlDcDistance)';
  }
}

/// @nodoc
abstract mixin class $SelectRideCopyWith<$Res> {
  factory $SelectRideCopyWith(
          SelectRide value, $Res Function(SelectRide) _then) =
      _$SelectRideCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'ride') IRide? ride,
      @JsonKey(name: 'vehicle') Vehicle? vehicle,
      @JsonKey(includeFromJson: false) int? plPcDistance,
      @JsonKey(includeFromJson: false) int? dlDcDistance});

  $IRideCopyWith<$Res>? get ride;
  $VehicleCopyWith<$Res>? get vehicle;
}

/// @nodoc
class _$SelectRideCopyWithImpl<$Res> implements $SelectRideCopyWith<$Res> {
  _$SelectRideCopyWithImpl(this._self, this._then);

  final SelectRide _self;
  final $Res Function(SelectRide) _then;

  /// Create a copy of SelectRide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ride = freezed,
    Object? vehicle = freezed,
    Object? plPcDistance = freezed,
    Object? dlDcDistance = freezed,
  }) {
    return _then(_self.copyWith(
      ride: freezed == ride
          ? _self.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as IRide?,
      vehicle: freezed == vehicle
          ? _self.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
      plPcDistance: freezed == plPcDistance
          ? _self.plPcDistance
          : plPcDistance // ignore: cast_nullable_to_non_nullable
              as int?,
      dlDcDistance: freezed == dlDcDistance
          ? _self.dlDcDistance
          : dlDcDistance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of SelectRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IRideCopyWith<$Res>? get ride {
    if (_self.ride == null) {
      return null;
    }

    return $IRideCopyWith<$Res>(_self.ride!, (value) {
      return _then(_self.copyWith(ride: value));
    });
  }

  /// Create a copy of SelectRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res>? get vehicle {
    if (_self.vehicle == null) {
      return null;
    }

    return $VehicleCopyWith<$Res>(_self.vehicle!, (value) {
      return _then(_self.copyWith(vehicle: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SelectRide].
extension SelectRidePatterns on SelectRide {
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
    TResult Function(_SelectRide value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectRide() when $default != null:
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
    TResult Function(_SelectRide value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectRide():
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
    TResult? Function(_SelectRide value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectRide() when $default != null:
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
            @JsonKey(name: 'ride') IRide? ride,
            @JsonKey(name: 'vehicle') Vehicle? vehicle,
            @JsonKey(includeFromJson: false) int? plPcDistance,
            @JsonKey(includeFromJson: false) int? dlDcDistance)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectRide() when $default != null:
        return $default(
            _that.ride, _that.vehicle, _that.plPcDistance, _that.dlDcDistance);
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
            @JsonKey(name: 'ride') IRide? ride,
            @JsonKey(name: 'vehicle') Vehicle? vehicle,
            @JsonKey(includeFromJson: false) int? plPcDistance,
            @JsonKey(includeFromJson: false) int? dlDcDistance)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectRide():
        return $default(
            _that.ride, _that.vehicle, _that.plPcDistance, _that.dlDcDistance);
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
            @JsonKey(name: 'ride') IRide? ride,
            @JsonKey(name: 'vehicle') Vehicle? vehicle,
            @JsonKey(includeFromJson: false) int? plPcDistance,
            @JsonKey(includeFromJson: false) int? dlDcDistance)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectRide() when $default != null:
        return $default(
            _that.ride, _that.vehicle, _that.plPcDistance, _that.dlDcDistance);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SelectRide implements SelectRide {
  const _SelectRide(
      {@JsonKey(name: 'ride') this.ride,
      @JsonKey(name: 'vehicle') this.vehicle,
      @JsonKey(includeFromJson: false) this.plPcDistance,
      @JsonKey(includeFromJson: false) this.dlDcDistance});
  factory _SelectRide.fromJson(Map<String, dynamic> json) =>
      _$SelectRideFromJson(json);

  @override
  @JsonKey(name: 'ride')
  final IRide? ride;
  @override
  @JsonKey(name: 'vehicle')
  final Vehicle? vehicle;
  @override
  @JsonKey(includeFromJson: false)
  final int? plPcDistance;
  @override
  @JsonKey(includeFromJson: false)
  final int? dlDcDistance;

  /// Create a copy of SelectRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SelectRideCopyWith<_SelectRide> get copyWith =>
      __$SelectRideCopyWithImpl<_SelectRide>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SelectRideToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectRide &&
            (identical(other.ride, ride) || other.ride == ride) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.plPcDistance, plPcDistance) ||
                other.plPcDistance == plPcDistance) &&
            (identical(other.dlDcDistance, dlDcDistance) ||
                other.dlDcDistance == dlDcDistance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ride, vehicle, plPcDistance, dlDcDistance);

  @override
  String toString() {
    return 'SelectRide(ride: $ride, vehicle: $vehicle, plPcDistance: $plPcDistance, dlDcDistance: $dlDcDistance)';
  }
}

/// @nodoc
abstract mixin class _$SelectRideCopyWith<$Res>
    implements $SelectRideCopyWith<$Res> {
  factory _$SelectRideCopyWith(
          _SelectRide value, $Res Function(_SelectRide) _then) =
      __$SelectRideCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ride') IRide? ride,
      @JsonKey(name: 'vehicle') Vehicle? vehicle,
      @JsonKey(includeFromJson: false) int? plPcDistance,
      @JsonKey(includeFromJson: false) int? dlDcDistance});

  @override
  $IRideCopyWith<$Res>? get ride;
  @override
  $VehicleCopyWith<$Res>? get vehicle;
}

/// @nodoc
class __$SelectRideCopyWithImpl<$Res> implements _$SelectRideCopyWith<$Res> {
  __$SelectRideCopyWithImpl(this._self, this._then);

  final _SelectRide _self;
  final $Res Function(_SelectRide) _then;

  /// Create a copy of SelectRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ride = freezed,
    Object? vehicle = freezed,
    Object? plPcDistance = freezed,
    Object? dlDcDistance = freezed,
  }) {
    return _then(_SelectRide(
      ride: freezed == ride
          ? _self.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as IRide?,
      vehicle: freezed == vehicle
          ? _self.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
      plPcDistance: freezed == plPcDistance
          ? _self.plPcDistance
          : plPcDistance // ignore: cast_nullable_to_non_nullable
              as int?,
      dlDcDistance: freezed == dlDcDistance
          ? _self.dlDcDistance
          : dlDcDistance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of SelectRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IRideCopyWith<$Res>? get ride {
    if (_self.ride == null) {
      return null;
    }

    return $IRideCopyWith<$Res>(_self.ride!, (value) {
      return _then(_self.copyWith(ride: value));
    });
  }

  /// Create a copy of SelectRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res>? get vehicle {
    if (_self.vehicle == null) {
      return null;
    }

    return $VehicleCopyWith<$Res>(_self.vehicle!, (value) {
      return _then(_self.copyWith(vehicle: value));
    });
  }
}

/// @nodoc
mixin _$Vehicle {
  @JsonKey(name: '_id')
  String? get id;
  @JsonKey(name: 'pet_friendly')
  bool? get petFriendly;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<Vehicle> get copyWith =>
      _$VehicleCopyWithImpl<Vehicle>(this as Vehicle, _$identity);

  /// Serializes this Vehicle to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Vehicle &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.petFriendly, petFriendly) ||
                other.petFriendly == petFriendly));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, petFriendly);

  @override
  String toString() {
    return 'Vehicle(id: $id, petFriendly: $petFriendly)';
  }
}

/// @nodoc
abstract mixin class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) _then) =
      _$VehicleCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'pet_friendly') bool? petFriendly});
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res> implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._self, this._then);

  final Vehicle _self;
  final $Res Function(Vehicle) _then;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? petFriendly = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      petFriendly: freezed == petFriendly
          ? _self.petFriendly
          : petFriendly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Vehicle].
extension VehiclePatterns on Vehicle {
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
    TResult Function(_Vehicle value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Vehicle() when $default != null:
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
    TResult Function(_Vehicle value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Vehicle():
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
    TResult? Function(_Vehicle value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Vehicle() when $default != null:
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
    TResult Function(@JsonKey(name: '_id') String? id,
            @JsonKey(name: 'pet_friendly') bool? petFriendly)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Vehicle() when $default != null:
        return $default(_that.id, _that.petFriendly);
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
    TResult Function(@JsonKey(name: '_id') String? id,
            @JsonKey(name: 'pet_friendly') bool? petFriendly)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Vehicle():
        return $default(_that.id, _that.petFriendly);
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
    TResult? Function(@JsonKey(name: '_id') String? id,
            @JsonKey(name: 'pet_friendly') bool? petFriendly)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Vehicle() when $default != null:
        return $default(_that.id, _that.petFriendly);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Vehicle implements Vehicle {
  const _Vehicle(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'pet_friendly') this.petFriendly});
  factory _Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'pet_friendly')
  final bool? petFriendly;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VehicleCopyWith<_Vehicle> get copyWith =>
      __$VehicleCopyWithImpl<_Vehicle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VehicleToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Vehicle &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.petFriendly, petFriendly) ||
                other.petFriendly == petFriendly));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, petFriendly);

  @override
  String toString() {
    return 'Vehicle(id: $id, petFriendly: $petFriendly)';
  }
}

/// @nodoc
abstract mixin class _$VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$VehicleCopyWith(_Vehicle value, $Res Function(_Vehicle) _then) =
      __$VehicleCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'pet_friendly') bool? petFriendly});
}

/// @nodoc
class __$VehicleCopyWithImpl<$Res> implements _$VehicleCopyWith<$Res> {
  __$VehicleCopyWithImpl(this._self, this._then);

  final _Vehicle _self;
  final $Res Function(_Vehicle) _then;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? petFriendly = freezed,
  }) {
    return _then(_Vehicle(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      petFriendly: freezed == petFriendly
          ? _self.petFriendly
          : petFriendly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
