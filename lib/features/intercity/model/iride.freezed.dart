// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iride.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IRide {
  @JsonKey(name: 'pickup_location')
  Coordinate? get pickupLocation;
  @JsonKey(name: 'dropoff_location')
  Coordinate? get dropoffLocation;
  @JsonKey(name: '_id')
  String? get id;
  @DriverIDConverter()
  @JsonKey(name: 'driver')
  Driver? get driver;
  @JsonKey(name: 'pickup_city')
  City? get pickupCity;
  @JsonKey(name: 'dropoff_city')
  City? get dropoffCity;
  @JsonKey(name: 'pickup_address')
  String? get pickupAddress;
  @JsonKey(name: 'dropoff_address')
  String? get dropoffAddress;
  @JsonKey(name: 'charge_per_seat')
  int? get chargePerSeat;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'total_seats')
  int? get totalSeats;
  @JsonKey(name: 'expected_duration')
  int? get expectedDuration;
  @JsonKey(name: 'distance_in_kms')
  double? get distanceInKms;
  @CityIDConverter()
  @JsonKey(name: 'vehicle_type')
  City? get vehicleType;
  @JsonKey(name: 'dated')
  DateTime? get pickupat;
  @JsonKey(name: '__v')
  int? get v;
  @JsonKey(name: 'completed')
  bool? get completed;
  @JsonKey(name: 'totalPassengers')
  int? get totalPassengers;

  /// Create a copy of IRide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IRideCopyWith<IRide> get copyWith =>
      _$IRideCopyWithImpl<IRide>(this as IRide, _$identity);

  /// Serializes this IRide to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IRide &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.dropoffLocation, dropoffLocation) ||
                other.dropoffLocation == dropoffLocation) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.pickupCity, pickupCity) ||
                other.pickupCity == pickupCity) &&
            (identical(other.dropoffCity, dropoffCity) ||
                other.dropoffCity == dropoffCity) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.dropoffAddress, dropoffAddress) ||
                other.dropoffAddress == dropoffAddress) &&
            (identical(other.chargePerSeat, chargePerSeat) ||
                other.chargePerSeat == chargePerSeat) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.totalSeats, totalSeats) ||
                other.totalSeats == totalSeats) &&
            (identical(other.expectedDuration, expectedDuration) ||
                other.expectedDuration == expectedDuration) &&
            (identical(other.distanceInKms, distanceInKms) ||
                other.distanceInKms == distanceInKms) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.pickupat, pickupat) ||
                other.pickupat == pickupat) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.totalPassengers, totalPassengers) ||
                other.totalPassengers == totalPassengers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pickupLocation,
      dropoffLocation,
      id,
      driver,
      pickupCity,
      dropoffCity,
      pickupAddress,
      dropoffAddress,
      chargePerSeat,
      description,
      totalSeats,
      expectedDuration,
      distanceInKms,
      vehicleType,
      pickupat,
      v,
      completed,
      totalPassengers);

  @override
  String toString() {
    return 'IRide(pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, id: $id, driver: $driver, pickupCity: $pickupCity, dropoffCity: $dropoffCity, pickupAddress: $pickupAddress, dropoffAddress: $dropoffAddress, chargePerSeat: $chargePerSeat, description: $description, totalSeats: $totalSeats, expectedDuration: $expectedDuration, distanceInKms: $distanceInKms, vehicleType: $vehicleType, pickupat: $pickupat, v: $v, completed: $completed, totalPassengers: $totalPassengers)';
  }
}

/// @nodoc
abstract mixin class $IRideCopyWith<$Res> {
  factory $IRideCopyWith(IRide value, $Res Function(IRide) _then) =
      _$IRideCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'pickup_location') Coordinate? pickupLocation,
      @JsonKey(name: 'dropoff_location') Coordinate? dropoffLocation,
      @JsonKey(name: '_id') String? id,
      @DriverIDConverter() @JsonKey(name: 'driver') Driver? driver,
      @JsonKey(name: 'pickup_city') City? pickupCity,
      @JsonKey(name: 'dropoff_city') City? dropoffCity,
      @JsonKey(name: 'pickup_address') String? pickupAddress,
      @JsonKey(name: 'dropoff_address') String? dropoffAddress,
      @JsonKey(name: 'charge_per_seat') int? chargePerSeat,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'total_seats') int? totalSeats,
      @JsonKey(name: 'expected_duration') int? expectedDuration,
      @JsonKey(name: 'distance_in_kms') double? distanceInKms,
      @CityIDConverter() @JsonKey(name: 'vehicle_type') City? vehicleType,
      @JsonKey(name: 'dated') DateTime? pickupat,
      @JsonKey(name: '__v') int? v,
      @JsonKey(name: 'completed') bool? completed,
      @JsonKey(name: 'totalPassengers') int? totalPassengers});

  $CoordinateCopyWith<$Res>? get pickupLocation;
  $CoordinateCopyWith<$Res>? get dropoffLocation;
  $DriverCopyWith<$Res>? get driver;
  $CityCopyWith<$Res>? get pickupCity;
  $CityCopyWith<$Res>? get dropoffCity;
  $CityCopyWith<$Res>? get vehicleType;
}

/// @nodoc
class _$IRideCopyWithImpl<$Res> implements $IRideCopyWith<$Res> {
  _$IRideCopyWithImpl(this._self, this._then);

  final IRide _self;
  final $Res Function(IRide) _then;

  /// Create a copy of IRide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = freezed,
    Object? dropoffLocation = freezed,
    Object? id = freezed,
    Object? driver = freezed,
    Object? pickupCity = freezed,
    Object? dropoffCity = freezed,
    Object? pickupAddress = freezed,
    Object? dropoffAddress = freezed,
    Object? chargePerSeat = freezed,
    Object? description = freezed,
    Object? totalSeats = freezed,
    Object? expectedDuration = freezed,
    Object? distanceInKms = freezed,
    Object? vehicleType = freezed,
    Object? pickupat = freezed,
    Object? v = freezed,
    Object? completed = freezed,
    Object? totalPassengers = freezed,
  }) {
    return _then(_self.copyWith(
      pickupLocation: freezed == pickupLocation
          ? _self.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      dropoffLocation: freezed == dropoffLocation
          ? _self.dropoffLocation
          : dropoffLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      driver: freezed == driver
          ? _self.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
      pickupCity: freezed == pickupCity
          ? _self.pickupCity
          : pickupCity // ignore: cast_nullable_to_non_nullable
              as City?,
      dropoffCity: freezed == dropoffCity
          ? _self.dropoffCity
          : dropoffCity // ignore: cast_nullable_to_non_nullable
              as City?,
      pickupAddress: freezed == pickupAddress
          ? _self.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropoffAddress: freezed == dropoffAddress
          ? _self.dropoffAddress
          : dropoffAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      chargePerSeat: freezed == chargePerSeat
          ? _self.chargePerSeat
          : chargePerSeat // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSeats: freezed == totalSeats
          ? _self.totalSeats
          : totalSeats // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedDuration: freezed == expectedDuration
          ? _self.expectedDuration
          : expectedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceInKms: freezed == distanceInKms
          ? _self.distanceInKms
          : distanceInKms // ignore: cast_nullable_to_non_nullable
              as double?,
      vehicleType: freezed == vehicleType
          ? _self.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as City?,
      pickupat: freezed == pickupat
          ? _self.pickupat
          : pickupat // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _self.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      completed: freezed == completed
          ? _self.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPassengers: freezed == totalPassengers
          ? _self.totalPassengers
          : totalPassengers // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of IRide
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

  /// Create a copy of IRide
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

  /// Create a copy of IRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverCopyWith<$Res>? get driver {
    if (_self.driver == null) {
      return null;
    }

    return $DriverCopyWith<$Res>(_self.driver!, (value) {
      return _then(_self.copyWith(driver: value));
    });
  }

  /// Create a copy of IRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get pickupCity {
    if (_self.pickupCity == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_self.pickupCity!, (value) {
      return _then(_self.copyWith(pickupCity: value));
    });
  }

  /// Create a copy of IRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get dropoffCity {
    if (_self.dropoffCity == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_self.dropoffCity!, (value) {
      return _then(_self.copyWith(dropoffCity: value));
    });
  }

  /// Create a copy of IRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get vehicleType {
    if (_self.vehicleType == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_self.vehicleType!, (value) {
      return _then(_self.copyWith(vehicleType: value));
    });
  }
}

/// Adds pattern-matching-related methods to [IRide].
extension IRidePatterns on IRide {
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
    TResult Function(_IRide value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IRide() when $default != null:
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
    TResult Function(_IRide value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IRide():
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
    TResult? Function(_IRide value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IRide() when $default != null:
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
            @JsonKey(name: 'dropoff_location') Coordinate? dropoffLocation,
            @JsonKey(name: '_id') String? id,
            @DriverIDConverter() @JsonKey(name: 'driver') Driver? driver,
            @JsonKey(name: 'pickup_city') City? pickupCity,
            @JsonKey(name: 'dropoff_city') City? dropoffCity,
            @JsonKey(name: 'pickup_address') String? pickupAddress,
            @JsonKey(name: 'dropoff_address') String? dropoffAddress,
            @JsonKey(name: 'charge_per_seat') int? chargePerSeat,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'total_seats') int? totalSeats,
            @JsonKey(name: 'expected_duration') int? expectedDuration,
            @JsonKey(name: 'distance_in_kms') double? distanceInKms,
            @CityIDConverter() @JsonKey(name: 'vehicle_type') City? vehicleType,
            @JsonKey(name: 'dated') DateTime? pickupat,
            @JsonKey(name: '__v') int? v,
            @JsonKey(name: 'completed') bool? completed,
            @JsonKey(name: 'totalPassengers') int? totalPassengers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IRide() when $default != null:
        return $default(
            _that.pickupLocation,
            _that.dropoffLocation,
            _that.id,
            _that.driver,
            _that.pickupCity,
            _that.dropoffCity,
            _that.pickupAddress,
            _that.dropoffAddress,
            _that.chargePerSeat,
            _that.description,
            _that.totalSeats,
            _that.expectedDuration,
            _that.distanceInKms,
            _that.vehicleType,
            _that.pickupat,
            _that.v,
            _that.completed,
            _that.totalPassengers);
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
            @JsonKey(name: 'dropoff_location') Coordinate? dropoffLocation,
            @JsonKey(name: '_id') String? id,
            @DriverIDConverter() @JsonKey(name: 'driver') Driver? driver,
            @JsonKey(name: 'pickup_city') City? pickupCity,
            @JsonKey(name: 'dropoff_city') City? dropoffCity,
            @JsonKey(name: 'pickup_address') String? pickupAddress,
            @JsonKey(name: 'dropoff_address') String? dropoffAddress,
            @JsonKey(name: 'charge_per_seat') int? chargePerSeat,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'total_seats') int? totalSeats,
            @JsonKey(name: 'expected_duration') int? expectedDuration,
            @JsonKey(name: 'distance_in_kms') double? distanceInKms,
            @CityIDConverter() @JsonKey(name: 'vehicle_type') City? vehicleType,
            @JsonKey(name: 'dated') DateTime? pickupat,
            @JsonKey(name: '__v') int? v,
            @JsonKey(name: 'completed') bool? completed,
            @JsonKey(name: 'totalPassengers') int? totalPassengers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IRide():
        return $default(
            _that.pickupLocation,
            _that.dropoffLocation,
            _that.id,
            _that.driver,
            _that.pickupCity,
            _that.dropoffCity,
            _that.pickupAddress,
            _that.dropoffAddress,
            _that.chargePerSeat,
            _that.description,
            _that.totalSeats,
            _that.expectedDuration,
            _that.distanceInKms,
            _that.vehicleType,
            _that.pickupat,
            _that.v,
            _that.completed,
            _that.totalPassengers);
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
            @JsonKey(name: 'dropoff_location') Coordinate? dropoffLocation,
            @JsonKey(name: '_id') String? id,
            @DriverIDConverter() @JsonKey(name: 'driver') Driver? driver,
            @JsonKey(name: 'pickup_city') City? pickupCity,
            @JsonKey(name: 'dropoff_city') City? dropoffCity,
            @JsonKey(name: 'pickup_address') String? pickupAddress,
            @JsonKey(name: 'dropoff_address') String? dropoffAddress,
            @JsonKey(name: 'charge_per_seat') int? chargePerSeat,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'total_seats') int? totalSeats,
            @JsonKey(name: 'expected_duration') int? expectedDuration,
            @JsonKey(name: 'distance_in_kms') double? distanceInKms,
            @CityIDConverter() @JsonKey(name: 'vehicle_type') City? vehicleType,
            @JsonKey(name: 'dated') DateTime? pickupat,
            @JsonKey(name: '__v') int? v,
            @JsonKey(name: 'completed') bool? completed,
            @JsonKey(name: 'totalPassengers') int? totalPassengers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IRide() when $default != null:
        return $default(
            _that.pickupLocation,
            _that.dropoffLocation,
            _that.id,
            _that.driver,
            _that.pickupCity,
            _that.dropoffCity,
            _that.pickupAddress,
            _that.dropoffAddress,
            _that.chargePerSeat,
            _that.description,
            _that.totalSeats,
            _that.expectedDuration,
            _that.distanceInKms,
            _that.vehicleType,
            _that.pickupat,
            _that.v,
            _that.completed,
            _that.totalPassengers);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _IRide implements IRide {
  const _IRide(
      {@JsonKey(name: 'pickup_location') this.pickupLocation,
      @JsonKey(name: 'dropoff_location') this.dropoffLocation,
      @JsonKey(name: '_id') this.id,
      @DriverIDConverter() @JsonKey(name: 'driver') this.driver,
      @JsonKey(name: 'pickup_city') this.pickupCity,
      @JsonKey(name: 'dropoff_city') this.dropoffCity,
      @JsonKey(name: 'pickup_address') this.pickupAddress,
      @JsonKey(name: 'dropoff_address') this.dropoffAddress,
      @JsonKey(name: 'charge_per_seat') this.chargePerSeat,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'total_seats') this.totalSeats,
      @JsonKey(name: 'expected_duration') this.expectedDuration,
      @JsonKey(name: 'distance_in_kms') this.distanceInKms,
      @CityIDConverter() @JsonKey(name: 'vehicle_type') this.vehicleType,
      @JsonKey(name: 'dated') this.pickupat,
      @JsonKey(name: '__v') this.v,
      @JsonKey(name: 'completed') this.completed,
      @JsonKey(name: 'totalPassengers') this.totalPassengers});
  factory _IRide.fromJson(Map<String, dynamic> json) => _$IRideFromJson(json);

  @override
  @JsonKey(name: 'pickup_location')
  final Coordinate? pickupLocation;
  @override
  @JsonKey(name: 'dropoff_location')
  final Coordinate? dropoffLocation;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @DriverIDConverter()
  @JsonKey(name: 'driver')
  final Driver? driver;
  @override
  @JsonKey(name: 'pickup_city')
  final City? pickupCity;
  @override
  @JsonKey(name: 'dropoff_city')
  final City? dropoffCity;
  @override
  @JsonKey(name: 'pickup_address')
  final String? pickupAddress;
  @override
  @JsonKey(name: 'dropoff_address')
  final String? dropoffAddress;
  @override
  @JsonKey(name: 'charge_per_seat')
  final int? chargePerSeat;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'total_seats')
  final int? totalSeats;
  @override
  @JsonKey(name: 'expected_duration')
  final int? expectedDuration;
  @override
  @JsonKey(name: 'distance_in_kms')
  final double? distanceInKms;
  @override
  @CityIDConverter()
  @JsonKey(name: 'vehicle_type')
  final City? vehicleType;
  @override
  @JsonKey(name: 'dated')
  final DateTime? pickupat;
  @override
  @JsonKey(name: '__v')
  final int? v;
  @override
  @JsonKey(name: 'completed')
  final bool? completed;
  @override
  @JsonKey(name: 'totalPassengers')
  final int? totalPassengers;

  /// Create a copy of IRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IRideCopyWith<_IRide> get copyWith =>
      __$IRideCopyWithImpl<_IRide>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IRideToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IRide &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.dropoffLocation, dropoffLocation) ||
                other.dropoffLocation == dropoffLocation) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.pickupCity, pickupCity) ||
                other.pickupCity == pickupCity) &&
            (identical(other.dropoffCity, dropoffCity) ||
                other.dropoffCity == dropoffCity) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.dropoffAddress, dropoffAddress) ||
                other.dropoffAddress == dropoffAddress) &&
            (identical(other.chargePerSeat, chargePerSeat) ||
                other.chargePerSeat == chargePerSeat) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.totalSeats, totalSeats) ||
                other.totalSeats == totalSeats) &&
            (identical(other.expectedDuration, expectedDuration) ||
                other.expectedDuration == expectedDuration) &&
            (identical(other.distanceInKms, distanceInKms) ||
                other.distanceInKms == distanceInKms) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.pickupat, pickupat) ||
                other.pickupat == pickupat) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.totalPassengers, totalPassengers) ||
                other.totalPassengers == totalPassengers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pickupLocation,
      dropoffLocation,
      id,
      driver,
      pickupCity,
      dropoffCity,
      pickupAddress,
      dropoffAddress,
      chargePerSeat,
      description,
      totalSeats,
      expectedDuration,
      distanceInKms,
      vehicleType,
      pickupat,
      v,
      completed,
      totalPassengers);

  @override
  String toString() {
    return 'IRide(pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, id: $id, driver: $driver, pickupCity: $pickupCity, dropoffCity: $dropoffCity, pickupAddress: $pickupAddress, dropoffAddress: $dropoffAddress, chargePerSeat: $chargePerSeat, description: $description, totalSeats: $totalSeats, expectedDuration: $expectedDuration, distanceInKms: $distanceInKms, vehicleType: $vehicleType, pickupat: $pickupat, v: $v, completed: $completed, totalPassengers: $totalPassengers)';
  }
}

/// @nodoc
abstract mixin class _$IRideCopyWith<$Res> implements $IRideCopyWith<$Res> {
  factory _$IRideCopyWith(_IRide value, $Res Function(_IRide) _then) =
      __$IRideCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pickup_location') Coordinate? pickupLocation,
      @JsonKey(name: 'dropoff_location') Coordinate? dropoffLocation,
      @JsonKey(name: '_id') String? id,
      @DriverIDConverter() @JsonKey(name: 'driver') Driver? driver,
      @JsonKey(name: 'pickup_city') City? pickupCity,
      @JsonKey(name: 'dropoff_city') City? dropoffCity,
      @JsonKey(name: 'pickup_address') String? pickupAddress,
      @JsonKey(name: 'dropoff_address') String? dropoffAddress,
      @JsonKey(name: 'charge_per_seat') int? chargePerSeat,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'total_seats') int? totalSeats,
      @JsonKey(name: 'expected_duration') int? expectedDuration,
      @JsonKey(name: 'distance_in_kms') double? distanceInKms,
      @CityIDConverter() @JsonKey(name: 'vehicle_type') City? vehicleType,
      @JsonKey(name: 'dated') DateTime? pickupat,
      @JsonKey(name: '__v') int? v,
      @JsonKey(name: 'completed') bool? completed,
      @JsonKey(name: 'totalPassengers') int? totalPassengers});

  @override
  $CoordinateCopyWith<$Res>? get pickupLocation;
  @override
  $CoordinateCopyWith<$Res>? get dropoffLocation;
  @override
  $DriverCopyWith<$Res>? get driver;
  @override
  $CityCopyWith<$Res>? get pickupCity;
  @override
  $CityCopyWith<$Res>? get dropoffCity;
  @override
  $CityCopyWith<$Res>? get vehicleType;
}

/// @nodoc
class __$IRideCopyWithImpl<$Res> implements _$IRideCopyWith<$Res> {
  __$IRideCopyWithImpl(this._self, this._then);

  final _IRide _self;
  final $Res Function(_IRide) _then;

  /// Create a copy of IRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pickupLocation = freezed,
    Object? dropoffLocation = freezed,
    Object? id = freezed,
    Object? driver = freezed,
    Object? pickupCity = freezed,
    Object? dropoffCity = freezed,
    Object? pickupAddress = freezed,
    Object? dropoffAddress = freezed,
    Object? chargePerSeat = freezed,
    Object? description = freezed,
    Object? totalSeats = freezed,
    Object? expectedDuration = freezed,
    Object? distanceInKms = freezed,
    Object? vehicleType = freezed,
    Object? pickupat = freezed,
    Object? v = freezed,
    Object? completed = freezed,
    Object? totalPassengers = freezed,
  }) {
    return _then(_IRide(
      pickupLocation: freezed == pickupLocation
          ? _self.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      dropoffLocation: freezed == dropoffLocation
          ? _self.dropoffLocation
          : dropoffLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      driver: freezed == driver
          ? _self.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
      pickupCity: freezed == pickupCity
          ? _self.pickupCity
          : pickupCity // ignore: cast_nullable_to_non_nullable
              as City?,
      dropoffCity: freezed == dropoffCity
          ? _self.dropoffCity
          : dropoffCity // ignore: cast_nullable_to_non_nullable
              as City?,
      pickupAddress: freezed == pickupAddress
          ? _self.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropoffAddress: freezed == dropoffAddress
          ? _self.dropoffAddress
          : dropoffAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      chargePerSeat: freezed == chargePerSeat
          ? _self.chargePerSeat
          : chargePerSeat // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSeats: freezed == totalSeats
          ? _self.totalSeats
          : totalSeats // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedDuration: freezed == expectedDuration
          ? _self.expectedDuration
          : expectedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceInKms: freezed == distanceInKms
          ? _self.distanceInKms
          : distanceInKms // ignore: cast_nullable_to_non_nullable
              as double?,
      vehicleType: freezed == vehicleType
          ? _self.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as City?,
      pickupat: freezed == pickupat
          ? _self.pickupat
          : pickupat // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _self.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      completed: freezed == completed
          ? _self.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPassengers: freezed == totalPassengers
          ? _self.totalPassengers
          : totalPassengers // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of IRide
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

  /// Create a copy of IRide
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

  /// Create a copy of IRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverCopyWith<$Res>? get driver {
    if (_self.driver == null) {
      return null;
    }

    return $DriverCopyWith<$Res>(_self.driver!, (value) {
      return _then(_self.copyWith(driver: value));
    });
  }

  /// Create a copy of IRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get pickupCity {
    if (_self.pickupCity == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_self.pickupCity!, (value) {
      return _then(_self.copyWith(pickupCity: value));
    });
  }

  /// Create a copy of IRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get dropoffCity {
    if (_self.dropoffCity == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_self.dropoffCity!, (value) {
      return _then(_self.copyWith(dropoffCity: value));
    });
  }

  /// Create a copy of IRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get vehicleType {
    if (_self.vehicleType == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_self.vehicleType!, (value) {
      return _then(_self.copyWith(vehicleType: value));
    });
  }
}

// dart format on
