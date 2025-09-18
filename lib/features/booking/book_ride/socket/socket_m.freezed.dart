// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketM {
  @JsonKey(name: "ride_id")
  String? get rideId;
  @JsonKey(name: "is_ride_updated")
  bool? get isRideUpdated;
  @JsonKey(name: "is_bidding")
  bool? get isBidding;
  @JsonKey(name: "location")
  Coordinate? get location;
  @JsonKey(name: "duration")
  double? get duration;
  @JsonKey(name: "distance")
  double? get distance;

  /// Create a copy of SocketM
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocketMCopyWith<SocketM> get copyWith =>
      _$SocketMCopyWithImpl<SocketM>(this as SocketM, _$identity);

  /// Serializes this SocketM to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocketM &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            (identical(other.isRideUpdated, isRideUpdated) ||
                other.isRideUpdated == isRideUpdated) &&
            (identical(other.isBidding, isBidding) ||
                other.isBidding == isBidding) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideId, isRideUpdated, isBidding,
      location, duration, distance);

  @override
  String toString() {
    return 'SocketM(rideId: $rideId, isRideUpdated: $isRideUpdated, isBidding: $isBidding, location: $location, duration: $duration, distance: $distance)';
  }
}

/// @nodoc
abstract mixin class $SocketMCopyWith<$Res> {
  factory $SocketMCopyWith(SocketM value, $Res Function(SocketM) _then) =
      _$SocketMCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "ride_id") String? rideId,
      @JsonKey(name: "is_ride_updated") bool? isRideUpdated,
      @JsonKey(name: "is_bidding") bool? isBidding,
      @JsonKey(name: "location") Coordinate? location,
      @JsonKey(name: "duration") double? duration,
      @JsonKey(name: "distance") double? distance});

  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class _$SocketMCopyWithImpl<$Res> implements $SocketMCopyWith<$Res> {
  _$SocketMCopyWithImpl(this._self, this._then);

  final SocketM _self;
  final $Res Function(SocketM) _then;

  /// Create a copy of SocketM
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = freezed,
    Object? isRideUpdated = freezed,
    Object? isBidding = freezed,
    Object? location = freezed,
    Object? duration = freezed,
    Object? distance = freezed,
  }) {
    return _then(_self.copyWith(
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      isRideUpdated: freezed == isRideUpdated
          ? _self.isRideUpdated
          : isRideUpdated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBidding: freezed == isBidding
          ? _self.isBidding
          : isBidding // ignore: cast_nullable_to_non_nullable
              as bool?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of SocketM
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

/// Adds pattern-matching-related methods to [SocketM].
extension SocketMPatterns on SocketM {
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
    TResult Function(_SocketM value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocketM() when $default != null:
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
    TResult Function(_SocketM value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocketM():
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
    TResult? Function(_SocketM value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocketM() when $default != null:
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
            @JsonKey(name: "ride_id") String? rideId,
            @JsonKey(name: "is_ride_updated") bool? isRideUpdated,
            @JsonKey(name: "is_bidding") bool? isBidding,
            @JsonKey(name: "location") Coordinate? location,
            @JsonKey(name: "duration") double? duration,
            @JsonKey(name: "distance") double? distance)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocketM() when $default != null:
        return $default(_that.rideId, _that.isRideUpdated, _that.isBidding,
            _that.location, _that.duration, _that.distance);
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
            @JsonKey(name: "ride_id") String? rideId,
            @JsonKey(name: "is_ride_updated") bool? isRideUpdated,
            @JsonKey(name: "is_bidding") bool? isBidding,
            @JsonKey(name: "location") Coordinate? location,
            @JsonKey(name: "duration") double? duration,
            @JsonKey(name: "distance") double? distance)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocketM():
        return $default(_that.rideId, _that.isRideUpdated, _that.isBidding,
            _that.location, _that.duration, _that.distance);
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
            @JsonKey(name: "ride_id") String? rideId,
            @JsonKey(name: "is_ride_updated") bool? isRideUpdated,
            @JsonKey(name: "is_bidding") bool? isBidding,
            @JsonKey(name: "location") Coordinate? location,
            @JsonKey(name: "duration") double? duration,
            @JsonKey(name: "distance") double? distance)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocketM() when $default != null:
        return $default(_that.rideId, _that.isRideUpdated, _that.isBidding,
            _that.location, _that.duration, _that.distance);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SocketM implements SocketM {
  const _SocketM(
      {@JsonKey(name: "ride_id") this.rideId,
      @JsonKey(name: "is_ride_updated") this.isRideUpdated,
      @JsonKey(name: "is_bidding") this.isBidding,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "distance") this.distance});
  factory _SocketM.fromJson(Map<String, dynamic> json) =>
      _$SocketMFromJson(json);

  @override
  @JsonKey(name: "ride_id")
  final String? rideId;
  @override
  @JsonKey(name: "is_ride_updated")
  final bool? isRideUpdated;
  @override
  @JsonKey(name: "is_bidding")
  final bool? isBidding;
  @override
  @JsonKey(name: "location")
  final Coordinate? location;
  @override
  @JsonKey(name: "duration")
  final double? duration;
  @override
  @JsonKey(name: "distance")
  final double? distance;

  /// Create a copy of SocketM
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocketMCopyWith<_SocketM> get copyWith =>
      __$SocketMCopyWithImpl<_SocketM>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SocketMToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocketM &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            (identical(other.isRideUpdated, isRideUpdated) ||
                other.isRideUpdated == isRideUpdated) &&
            (identical(other.isBidding, isBidding) ||
                other.isBidding == isBidding) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideId, isRideUpdated, isBidding,
      location, duration, distance);

  @override
  String toString() {
    return 'SocketM(rideId: $rideId, isRideUpdated: $isRideUpdated, isBidding: $isBidding, location: $location, duration: $duration, distance: $distance)';
  }
}

/// @nodoc
abstract mixin class _$SocketMCopyWith<$Res> implements $SocketMCopyWith<$Res> {
  factory _$SocketMCopyWith(_SocketM value, $Res Function(_SocketM) _then) =
      __$SocketMCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ride_id") String? rideId,
      @JsonKey(name: "is_ride_updated") bool? isRideUpdated,
      @JsonKey(name: "is_bidding") bool? isBidding,
      @JsonKey(name: "location") Coordinate? location,
      @JsonKey(name: "duration") double? duration,
      @JsonKey(name: "distance") double? distance});

  @override
  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class __$SocketMCopyWithImpl<$Res> implements _$SocketMCopyWith<$Res> {
  __$SocketMCopyWithImpl(this._self, this._then);

  final _SocketM _self;
  final $Res Function(_SocketM) _then;

  /// Create a copy of SocketM
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rideId = freezed,
    Object? isRideUpdated = freezed,
    Object? isBidding = freezed,
    Object? location = freezed,
    Object? duration = freezed,
    Object? distance = freezed,
  }) {
    return _then(_SocketM(
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      isRideUpdated: freezed == isRideUpdated
          ? _self.isRideUpdated
          : isRideUpdated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBidding: freezed == isBidding
          ? _self.isBidding
          : isBidding // ignore: cast_nullable_to_non_nullable
              as bool?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of SocketM
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
