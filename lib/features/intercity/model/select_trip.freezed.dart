// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SelectTrip {
  @JsonKey(name: 'pickup_location')
  Coordinate? get pickupLocation;
  @JsonKey(includeToJson: false)
  String? get pickName;
  @JsonKey(name: 'dropoff_location')
  Coordinate? get dropoffLocation;
  @JsonKey(includeToJson: false)
  String? get dropoffName;
  @JsonKey(name: 'seats')
  int? get seats;
  @JsonKey(name: 'car_type')
  String get carType;
  @JsonKey(name: 'on', toJson: _dateTimeToIso8601String)
  DateTime? get on;

  /// Create a copy of SelectTrip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectTripCopyWith<SelectTrip> get copyWith =>
      _$SelectTripCopyWithImpl<SelectTrip>(this as SelectTrip, _$identity);

  /// Serializes this SelectTrip to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectTrip &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.pickName, pickName) ||
                other.pickName == pickName) &&
            (identical(other.dropoffLocation, dropoffLocation) ||
                other.dropoffLocation == dropoffLocation) &&
            (identical(other.dropoffName, dropoffName) ||
                other.dropoffName == dropoffName) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.carType, carType) || other.carType == carType) &&
            (identical(other.on, on) || other.on == on));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pickupLocation, pickName,
      dropoffLocation, dropoffName, seats, carType, on);

  @override
  String toString() {
    return 'SelectTrip(pickupLocation: $pickupLocation, pickName: $pickName, dropoffLocation: $dropoffLocation, dropoffName: $dropoffName, seats: $seats, carType: $carType, on: $on)';
  }
}

/// @nodoc
abstract mixin class $SelectTripCopyWith<$Res> {
  factory $SelectTripCopyWith(
          SelectTrip value, $Res Function(SelectTrip) _then) =
      _$SelectTripCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'pickup_location') Coordinate? pickupLocation,
      @JsonKey(includeToJson: false) String? pickName,
      @JsonKey(name: 'dropoff_location') Coordinate? dropoffLocation,
      @JsonKey(includeToJson: false) String? dropoffName,
      @JsonKey(name: 'seats') int? seats,
      @JsonKey(name: 'car_type') String carType,
      @JsonKey(name: 'on', toJson: _dateTimeToIso8601String) DateTime? on});

  $CoordinateCopyWith<$Res>? get pickupLocation;
  $CoordinateCopyWith<$Res>? get dropoffLocation;
}

/// @nodoc
class _$SelectTripCopyWithImpl<$Res> implements $SelectTripCopyWith<$Res> {
  _$SelectTripCopyWithImpl(this._self, this._then);

  final SelectTrip _self;
  final $Res Function(SelectTrip) _then;

  /// Create a copy of SelectTrip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = freezed,
    Object? pickName = freezed,
    Object? dropoffLocation = freezed,
    Object? dropoffName = freezed,
    Object? seats = freezed,
    Object? carType = null,
    Object? on = freezed,
  }) {
    return _then(_self.copyWith(
      pickupLocation: freezed == pickupLocation
          ? _self.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      pickName: freezed == pickName
          ? _self.pickName
          : pickName // ignore: cast_nullable_to_non_nullable
              as String?,
      dropoffLocation: freezed == dropoffLocation
          ? _self.dropoffLocation
          : dropoffLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      dropoffName: freezed == dropoffName
          ? _self.dropoffName
          : dropoffName // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _self.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int?,
      carType: null == carType
          ? _self.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as String,
      on: freezed == on
          ? _self.on
          : on // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of SelectTrip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get pickupLocation {
    if (_self.pickupLocation == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.pickupLocation!, (value) {
      return _then(_self.copyWith(pickupLocation: value));
    });
  }

  /// Create a copy of SelectTrip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get dropoffLocation {
    if (_self.dropoffLocation == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.dropoffLocation!, (value) {
      return _then(_self.copyWith(dropoffLocation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SelectTrip].
extension SelectTripPatterns on SelectTrip {
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
    TResult Function(_SelectTrip value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectTrip() when $default != null:
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
    TResult Function(_SelectTrip value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectTrip():
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
    TResult? Function(_SelectTrip value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectTrip() when $default != null:
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
            @JsonKey(name: 'pickup_location') Coordinate? pickupLocation,
            @JsonKey(includeToJson: false) String? pickName,
            @JsonKey(name: 'dropoff_location') Coordinate? dropoffLocation,
            @JsonKey(includeToJson: false) String? dropoffName,
            @JsonKey(name: 'seats') int? seats,
            @JsonKey(name: 'car_type') String carType,
            @JsonKey(name: 'on', toJson: _dateTimeToIso8601String)
            DateTime? on)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectTrip() when $default != null:
        return $default(
            _that.pickupLocation,
            _that.pickName,
            _that.dropoffLocation,
            _that.dropoffName,
            _that.seats,
            _that.carType,
            _that.on);
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
            @JsonKey(name: 'pickup_location') Coordinate? pickupLocation,
            @JsonKey(includeToJson: false) String? pickName,
            @JsonKey(name: 'dropoff_location') Coordinate? dropoffLocation,
            @JsonKey(includeToJson: false) String? dropoffName,
            @JsonKey(name: 'seats') int? seats,
            @JsonKey(name: 'car_type') String carType,
            @JsonKey(name: 'on', toJson: _dateTimeToIso8601String) DateTime? on)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectTrip():
        return $default(
            _that.pickupLocation,
            _that.pickName,
            _that.dropoffLocation,
            _that.dropoffName,
            _that.seats,
            _that.carType,
            _that.on);
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
            @JsonKey(name: 'pickup_location') Coordinate? pickupLocation,
            @JsonKey(includeToJson: false) String? pickName,
            @JsonKey(name: 'dropoff_location') Coordinate? dropoffLocation,
            @JsonKey(includeToJson: false) String? dropoffName,
            @JsonKey(name: 'seats') int? seats,
            @JsonKey(name: 'car_type') String carType,
            @JsonKey(name: 'on', toJson: _dateTimeToIso8601String)
            DateTime? on)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectTrip() when $default != null:
        return $default(
            _that.pickupLocation,
            _that.pickName,
            _that.dropoffLocation,
            _that.dropoffName,
            _that.seats,
            _that.carType,
            _that.on);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SelectTrip implements SelectTrip {
  const _SelectTrip(
      {@JsonKey(name: 'pickup_location') this.pickupLocation,
      @JsonKey(includeToJson: false) this.pickName,
      @JsonKey(name: 'dropoff_location') this.dropoffLocation,
      @JsonKey(includeToJson: false) this.dropoffName,
      @JsonKey(name: 'seats') this.seats,
      @JsonKey(name: 'car_type') this.carType = 'all',
      @JsonKey(name: 'on', toJson: _dateTimeToIso8601String) this.on});
  factory _SelectTrip.fromJson(Map<String, dynamic> json) =>
      _$SelectTripFromJson(json);

  @override
  @JsonKey(name: 'pickup_location')
  final Coordinate? pickupLocation;
  @override
  @JsonKey(includeToJson: false)
  final String? pickName;
  @override
  @JsonKey(name: 'dropoff_location')
  final Coordinate? dropoffLocation;
  @override
  @JsonKey(includeToJson: false)
  final String? dropoffName;
  @override
  @JsonKey(name: 'seats')
  final int? seats;
  @override
  @JsonKey(name: 'car_type')
  final String carType;
  @override
  @JsonKey(name: 'on', toJson: _dateTimeToIso8601String)
  final DateTime? on;

  /// Create a copy of SelectTrip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SelectTripCopyWith<_SelectTrip> get copyWith =>
      __$SelectTripCopyWithImpl<_SelectTrip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SelectTripToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectTrip &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.pickName, pickName) ||
                other.pickName == pickName) &&
            (identical(other.dropoffLocation, dropoffLocation) ||
                other.dropoffLocation == dropoffLocation) &&
            (identical(other.dropoffName, dropoffName) ||
                other.dropoffName == dropoffName) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.carType, carType) || other.carType == carType) &&
            (identical(other.on, on) || other.on == on));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pickupLocation, pickName,
      dropoffLocation, dropoffName, seats, carType, on);

  @override
  String toString() {
    return 'SelectTrip(pickupLocation: $pickupLocation, pickName: $pickName, dropoffLocation: $dropoffLocation, dropoffName: $dropoffName, seats: $seats, carType: $carType, on: $on)';
  }
}

/// @nodoc
abstract mixin class _$SelectTripCopyWith<$Res>
    implements $SelectTripCopyWith<$Res> {
  factory _$SelectTripCopyWith(
          _SelectTrip value, $Res Function(_SelectTrip) _then) =
      __$SelectTripCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pickup_location') Coordinate? pickupLocation,
      @JsonKey(includeToJson: false) String? pickName,
      @JsonKey(name: 'dropoff_location') Coordinate? dropoffLocation,
      @JsonKey(includeToJson: false) String? dropoffName,
      @JsonKey(name: 'seats') int? seats,
      @JsonKey(name: 'car_type') String carType,
      @JsonKey(name: 'on', toJson: _dateTimeToIso8601String) DateTime? on});

  @override
  $CoordinateCopyWith<$Res>? get pickupLocation;
  @override
  $CoordinateCopyWith<$Res>? get dropoffLocation;
}

/// @nodoc
class __$SelectTripCopyWithImpl<$Res> implements _$SelectTripCopyWith<$Res> {
  __$SelectTripCopyWithImpl(this._self, this._then);

  final _SelectTrip _self;
  final $Res Function(_SelectTrip) _then;

  /// Create a copy of SelectTrip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pickupLocation = freezed,
    Object? pickName = freezed,
    Object? dropoffLocation = freezed,
    Object? dropoffName = freezed,
    Object? seats = freezed,
    Object? carType = null,
    Object? on = freezed,
  }) {
    return _then(_SelectTrip(
      pickupLocation: freezed == pickupLocation
          ? _self.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      pickName: freezed == pickName
          ? _self.pickName
          : pickName // ignore: cast_nullable_to_non_nullable
              as String?,
      dropoffLocation: freezed == dropoffLocation
          ? _self.dropoffLocation
          : dropoffLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      dropoffName: freezed == dropoffName
          ? _self.dropoffName
          : dropoffName // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _self.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int?,
      carType: null == carType
          ? _self.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as String,
      on: freezed == on
          ? _self.on
          : on // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of SelectTrip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get pickupLocation {
    if (_self.pickupLocation == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.pickupLocation!, (value) {
      return _then(_self.copyWith(pickupLocation: value));
    });
  }

  /// Create a copy of SelectTrip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get dropoffLocation {
    if (_self.dropoffLocation == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.dropoffLocation!, (value) {
      return _then(_self.copyWith(dropoffLocation: value));
    });
  }
}

// dart format on
