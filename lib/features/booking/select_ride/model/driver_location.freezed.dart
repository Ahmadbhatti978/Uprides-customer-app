// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DriverLocation {
  @JsonKey(name: 'driver_id')
  String? get driverId;
  @JsonKey(name: 'location')
  Coordinate? get location;
  @JsonKey(name: 'ride_id')
  String? get rideId;

  /// Create a copy of DriverLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DriverLocationCopyWith<DriverLocation> get copyWith =>
      _$DriverLocationCopyWithImpl<DriverLocation>(
          this as DriverLocation, _$identity);

  /// Serializes this DriverLocation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DriverLocation &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.rideId, rideId) || other.rideId == rideId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, driverId, location, rideId);

  @override
  String toString() {
    return 'DriverLocation(driverId: $driverId, location: $location, rideId: $rideId)';
  }
}

/// @nodoc
abstract mixin class $DriverLocationCopyWith<$Res> {
  factory $DriverLocationCopyWith(
          DriverLocation value, $Res Function(DriverLocation) _then) =
      _$DriverLocationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'driver_id') String? driverId,
      @JsonKey(name: 'location') Coordinate? location,
      @JsonKey(name: 'ride_id') String? rideId});

  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class _$DriverLocationCopyWithImpl<$Res>
    implements $DriverLocationCopyWith<$Res> {
  _$DriverLocationCopyWithImpl(this._self, this._then);

  final DriverLocation _self;
  final $Res Function(DriverLocation) _then;

  /// Create a copy of DriverLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = freezed,
    Object? location = freezed,
    Object? rideId = freezed,
  }) {
    return _then(_self.copyWith(
      driverId: freezed == driverId
          ? _self.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of DriverLocation
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

/// Adds pattern-matching-related methods to [DriverLocation].
extension DriverLocationPatterns on DriverLocation {
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
    TResult Function(_DriverLocation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriverLocation() when $default != null:
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
    TResult Function(_DriverLocation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverLocation():
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
    TResult? Function(_DriverLocation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverLocation() when $default != null:
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
            @JsonKey(name: 'driver_id') String? driverId,
            @JsonKey(name: 'location') Coordinate? location,
            @JsonKey(name: 'ride_id') String? rideId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriverLocation() when $default != null:
        return $default(_that.driverId, _that.location, _that.rideId);
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
            @JsonKey(name: 'driver_id') String? driverId,
            @JsonKey(name: 'location') Coordinate? location,
            @JsonKey(name: 'ride_id') String? rideId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverLocation():
        return $default(_that.driverId, _that.location, _that.rideId);
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
            @JsonKey(name: 'driver_id') String? driverId,
            @JsonKey(name: 'location') Coordinate? location,
            @JsonKey(name: 'ride_id') String? rideId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverLocation() when $default != null:
        return $default(_that.driverId, _that.location, _that.rideId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DriverLocation implements DriverLocation {
  const _DriverLocation(
      {@JsonKey(name: 'driver_id') this.driverId,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'ride_id') this.rideId});
  factory _DriverLocation.fromJson(Map<String, dynamic> json) =>
      _$DriverLocationFromJson(json);

  @override
  @JsonKey(name: 'driver_id')
  final String? driverId;
  @override
  @JsonKey(name: 'location')
  final Coordinate? location;
  @override
  @JsonKey(name: 'ride_id')
  final String? rideId;

  /// Create a copy of DriverLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DriverLocationCopyWith<_DriverLocation> get copyWith =>
      __$DriverLocationCopyWithImpl<_DriverLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DriverLocationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriverLocation &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.rideId, rideId) || other.rideId == rideId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, driverId, location, rideId);

  @override
  String toString() {
    return 'DriverLocation(driverId: $driverId, location: $location, rideId: $rideId)';
  }
}

/// @nodoc
abstract mixin class _$DriverLocationCopyWith<$Res>
    implements $DriverLocationCopyWith<$Res> {
  factory _$DriverLocationCopyWith(
          _DriverLocation value, $Res Function(_DriverLocation) _then) =
      __$DriverLocationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'driver_id') String? driverId,
      @JsonKey(name: 'location') Coordinate? location,
      @JsonKey(name: 'ride_id') String? rideId});

  @override
  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class __$DriverLocationCopyWithImpl<$Res>
    implements _$DriverLocationCopyWith<$Res> {
  __$DriverLocationCopyWithImpl(this._self, this._then);

  final _DriverLocation _self;
  final $Res Function(_DriverLocation) _then;

  /// Create a copy of DriverLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? driverId = freezed,
    Object? location = freezed,
    Object? rideId = freezed,
  }) {
    return _then(_DriverLocation(
      driverId: freezed == driverId
          ? _self.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of DriverLocation
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
