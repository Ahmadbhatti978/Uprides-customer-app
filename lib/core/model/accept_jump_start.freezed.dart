// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accept_jump_start.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AcceptedJumpStart {
  @JsonKey(name: 'mapData')
  MapData? get mapData;
  @JsonKey(name: 'distance_fare')
  int? get distanceFare;
  @JsonKey(name: 'driver_id')
  String? get driverId;
  @JsonKey(name: 'ride_id')
  String? get rideId;
  @JsonKey(name: 'jumpstart_data')
  JumpstartData? get jumpstartData;
  @JsonKey(name: 'driver')
  Driver? get driver;

  /// Create a copy of AcceptedJumpStart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcceptedJumpStartCopyWith<AcceptedJumpStart> get copyWith =>
      _$AcceptedJumpStartCopyWithImpl<AcceptedJumpStart>(
          this as AcceptedJumpStart, _$identity);

  /// Serializes this AcceptedJumpStart to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AcceptedJumpStart &&
            (identical(other.mapData, mapData) || other.mapData == mapData) &&
            (identical(other.distanceFare, distanceFare) ||
                other.distanceFare == distanceFare) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            (identical(other.jumpstartData, jumpstartData) ||
                other.jumpstartData == jumpstartData) &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mapData, distanceFare, driverId,
      rideId, jumpstartData, driver);

  @override
  String toString() {
    return 'AcceptedJumpStart(mapData: $mapData, distanceFare: $distanceFare, driverId: $driverId, rideId: $rideId, jumpstartData: $jumpstartData, driver: $driver)';
  }
}

/// @nodoc
abstract mixin class $AcceptedJumpStartCopyWith<$Res> {
  factory $AcceptedJumpStartCopyWith(
          AcceptedJumpStart value, $Res Function(AcceptedJumpStart) _then) =
      _$AcceptedJumpStartCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'mapData') MapData? mapData,
      @JsonKey(name: 'distance_fare') int? distanceFare,
      @JsonKey(name: 'driver_id') String? driverId,
      @JsonKey(name: 'ride_id') String? rideId,
      @JsonKey(name: 'jumpstart_data') JumpstartData? jumpstartData,
      @JsonKey(name: 'driver') Driver? driver});

  $MapDataCopyWith<$Res>? get mapData;
  $JumpstartDataCopyWith<$Res>? get jumpstartData;
  $DriverCopyWith<$Res>? get driver;
}

/// @nodoc
class _$AcceptedJumpStartCopyWithImpl<$Res>
    implements $AcceptedJumpStartCopyWith<$Res> {
  _$AcceptedJumpStartCopyWithImpl(this._self, this._then);

  final AcceptedJumpStart _self;
  final $Res Function(AcceptedJumpStart) _then;

  /// Create a copy of AcceptedJumpStart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapData = freezed,
    Object? distanceFare = freezed,
    Object? driverId = freezed,
    Object? rideId = freezed,
    Object? jumpstartData = freezed,
    Object? driver = freezed,
  }) {
    return _then(_self.copyWith(
      mapData: freezed == mapData
          ? _self.mapData
          : mapData // ignore: cast_nullable_to_non_nullable
              as MapData?,
      distanceFare: freezed == distanceFare
          ? _self.distanceFare
          : distanceFare // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: freezed == driverId
          ? _self.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      jumpstartData: freezed == jumpstartData
          ? _self.jumpstartData
          : jumpstartData // ignore: cast_nullable_to_non_nullable
              as JumpstartData?,
      driver: freezed == driver
          ? _self.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
    ));
  }

  /// Create a copy of AcceptedJumpStart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapDataCopyWith<$Res>? get mapData {
    if (_self.mapData == null) {
      return null;
    }

    return $MapDataCopyWith<$Res>(_self.mapData!, (value) {
      return _then(_self.copyWith(mapData: value));
    });
  }

  /// Create a copy of AcceptedJumpStart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JumpstartDataCopyWith<$Res>? get jumpstartData {
    if (_self.jumpstartData == null) {
      return null;
    }

    return $JumpstartDataCopyWith<$Res>(_self.jumpstartData!, (value) {
      return _then(_self.copyWith(jumpstartData: value));
    });
  }

  /// Create a copy of AcceptedJumpStart
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
}

/// Adds pattern-matching-related methods to [AcceptedJumpStart].
extension AcceptedJumpStartPatterns on AcceptedJumpStart {
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
    TResult Function(_AcceptedJumpStart value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcceptedJumpStart() when $default != null:
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
    TResult Function(_AcceptedJumpStart value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcceptedJumpStart():
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
    TResult? Function(_AcceptedJumpStart value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcceptedJumpStart() when $default != null:
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
            @JsonKey(name: 'mapData') MapData? mapData,
            @JsonKey(name: 'distance_fare') int? distanceFare,
            @JsonKey(name: 'driver_id') String? driverId,
            @JsonKey(name: 'ride_id') String? rideId,
            @JsonKey(name: 'jumpstart_data') JumpstartData? jumpstartData,
            @JsonKey(name: 'driver') Driver? driver)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcceptedJumpStart() when $default != null:
        return $default(_that.mapData, _that.distanceFare, _that.driverId,
            _that.rideId, _that.jumpstartData, _that.driver);
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
            @JsonKey(name: 'mapData') MapData? mapData,
            @JsonKey(name: 'distance_fare') int? distanceFare,
            @JsonKey(name: 'driver_id') String? driverId,
            @JsonKey(name: 'ride_id') String? rideId,
            @JsonKey(name: 'jumpstart_data') JumpstartData? jumpstartData,
            @JsonKey(name: 'driver') Driver? driver)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcceptedJumpStart():
        return $default(_that.mapData, _that.distanceFare, _that.driverId,
            _that.rideId, _that.jumpstartData, _that.driver);
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
            @JsonKey(name: 'mapData') MapData? mapData,
            @JsonKey(name: 'distance_fare') int? distanceFare,
            @JsonKey(name: 'driver_id') String? driverId,
            @JsonKey(name: 'ride_id') String? rideId,
            @JsonKey(name: 'jumpstart_data') JumpstartData? jumpstartData,
            @JsonKey(name: 'driver') Driver? driver)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcceptedJumpStart() when $default != null:
        return $default(_that.mapData, _that.distanceFare, _that.driverId,
            _that.rideId, _that.jumpstartData, _that.driver);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _AcceptedJumpStart implements AcceptedJumpStart {
  const _AcceptedJumpStart(
      {@JsonKey(name: 'mapData') this.mapData,
      @JsonKey(name: 'distance_fare') this.distanceFare,
      @JsonKey(name: 'driver_id') this.driverId,
      @JsonKey(name: 'ride_id') this.rideId,
      @JsonKey(name: 'jumpstart_data') this.jumpstartData,
      @JsonKey(name: 'driver') this.driver});
  factory _AcceptedJumpStart.fromJson(Map<String, dynamic> json) =>
      _$AcceptedJumpStartFromJson(json);

  @override
  @JsonKey(name: 'mapData')
  final MapData? mapData;
  @override
  @JsonKey(name: 'distance_fare')
  final int? distanceFare;
  @override
  @JsonKey(name: 'driver_id')
  final String? driverId;
  @override
  @JsonKey(name: 'ride_id')
  final String? rideId;
  @override
  @JsonKey(name: 'jumpstart_data')
  final JumpstartData? jumpstartData;
  @override
  @JsonKey(name: 'driver')
  final Driver? driver;

  /// Create a copy of AcceptedJumpStart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AcceptedJumpStartCopyWith<_AcceptedJumpStart> get copyWith =>
      __$AcceptedJumpStartCopyWithImpl<_AcceptedJumpStart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AcceptedJumpStartToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcceptedJumpStart &&
            (identical(other.mapData, mapData) || other.mapData == mapData) &&
            (identical(other.distanceFare, distanceFare) ||
                other.distanceFare == distanceFare) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            (identical(other.jumpstartData, jumpstartData) ||
                other.jumpstartData == jumpstartData) &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mapData, distanceFare, driverId,
      rideId, jumpstartData, driver);

  @override
  String toString() {
    return 'AcceptedJumpStart(mapData: $mapData, distanceFare: $distanceFare, driverId: $driverId, rideId: $rideId, jumpstartData: $jumpstartData, driver: $driver)';
  }
}

/// @nodoc
abstract mixin class _$AcceptedJumpStartCopyWith<$Res>
    implements $AcceptedJumpStartCopyWith<$Res> {
  factory _$AcceptedJumpStartCopyWith(
          _AcceptedJumpStart value, $Res Function(_AcceptedJumpStart) _then) =
      __$AcceptedJumpStartCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mapData') MapData? mapData,
      @JsonKey(name: 'distance_fare') int? distanceFare,
      @JsonKey(name: 'driver_id') String? driverId,
      @JsonKey(name: 'ride_id') String? rideId,
      @JsonKey(name: 'jumpstart_data') JumpstartData? jumpstartData,
      @JsonKey(name: 'driver') Driver? driver});

  @override
  $MapDataCopyWith<$Res>? get mapData;
  @override
  $JumpstartDataCopyWith<$Res>? get jumpstartData;
  @override
  $DriverCopyWith<$Res>? get driver;
}

/// @nodoc
class __$AcceptedJumpStartCopyWithImpl<$Res>
    implements _$AcceptedJumpStartCopyWith<$Res> {
  __$AcceptedJumpStartCopyWithImpl(this._self, this._then);

  final _AcceptedJumpStart _self;
  final $Res Function(_AcceptedJumpStart) _then;

  /// Create a copy of AcceptedJumpStart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mapData = freezed,
    Object? distanceFare = freezed,
    Object? driverId = freezed,
    Object? rideId = freezed,
    Object? jumpstartData = freezed,
    Object? driver = freezed,
  }) {
    return _then(_AcceptedJumpStart(
      mapData: freezed == mapData
          ? _self.mapData
          : mapData // ignore: cast_nullable_to_non_nullable
              as MapData?,
      distanceFare: freezed == distanceFare
          ? _self.distanceFare
          : distanceFare // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: freezed == driverId
          ? _self.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      jumpstartData: freezed == jumpstartData
          ? _self.jumpstartData
          : jumpstartData // ignore: cast_nullable_to_non_nullable
              as JumpstartData?,
      driver: freezed == driver
          ? _self.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
    ));
  }

  /// Create a copy of AcceptedJumpStart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapDataCopyWith<$Res>? get mapData {
    if (_self.mapData == null) {
      return null;
    }

    return $MapDataCopyWith<$Res>(_self.mapData!, (value) {
      return _then(_self.copyWith(mapData: value));
    });
  }

  /// Create a copy of AcceptedJumpStart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JumpstartDataCopyWith<$Res>? get jumpstartData {
    if (_self.jumpstartData == null) {
      return null;
    }

    return $JumpstartDataCopyWith<$Res>(_self.jumpstartData!, (value) {
      return _then(_self.copyWith(jumpstartData: value));
    });
  }

  /// Create a copy of AcceptedJumpStart
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
}

/// @nodoc
mixin _$JumpstartData {
  User? get user;
  Body? get body;

  /// Create a copy of JumpstartData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JumpstartDataCopyWith<JumpstartData> get copyWith =>
      _$JumpstartDataCopyWithImpl<JumpstartData>(
          this as JumpstartData, _$identity);

  /// Serializes this JumpstartData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JumpstartData &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, body);

  @override
  String toString() {
    return 'JumpstartData(user: $user, body: $body)';
  }
}

/// @nodoc
abstract mixin class $JumpstartDataCopyWith<$Res> {
  factory $JumpstartDataCopyWith(
          JumpstartData value, $Res Function(JumpstartData) _then) =
      _$JumpstartDataCopyWithImpl;
  @useResult
  $Res call({User? user, Body? body});

  $UserCopyWith<$Res>? get user;
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$JumpstartDataCopyWithImpl<$Res>
    implements $JumpstartDataCopyWith<$Res> {
  _$JumpstartDataCopyWithImpl(this._self, this._then);

  final JumpstartData _self;
  final $Res Function(JumpstartData) _then;

  /// Create a copy of JumpstartData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? body = freezed,
  }) {
    return _then(_self.copyWith(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body?,
    ));
  }

  /// Create a copy of JumpstartData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of JumpstartData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodyCopyWith<$Res>? get body {
    if (_self.body == null) {
      return null;
    }

    return $BodyCopyWith<$Res>(_self.body!, (value) {
      return _then(_self.copyWith(body: value));
    });
  }
}

/// Adds pattern-matching-related methods to [JumpstartData].
extension JumpstartDataPatterns on JumpstartData {
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
    TResult Function(_JumpstartData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JumpstartData() when $default != null:
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
    TResult Function(_JumpstartData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JumpstartData():
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
    TResult? Function(_JumpstartData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JumpstartData() when $default != null:
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
    TResult Function(User? user, Body? body)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JumpstartData() when $default != null:
        return $default(_that.user, _that.body);
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
    TResult Function(User? user, Body? body) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JumpstartData():
        return $default(_that.user, _that.body);
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
    TResult? Function(User? user, Body? body)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JumpstartData() when $default != null:
        return $default(_that.user, _that.body);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _JumpstartData implements JumpstartData {
  const _JumpstartData({this.user, this.body});
  factory _JumpstartData.fromJson(Map<String, dynamic> json) =>
      _$JumpstartDataFromJson(json);

  @override
  final User? user;
  @override
  final Body? body;

  /// Create a copy of JumpstartData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JumpstartDataCopyWith<_JumpstartData> get copyWith =>
      __$JumpstartDataCopyWithImpl<_JumpstartData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JumpstartDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JumpstartData &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, body);

  @override
  String toString() {
    return 'JumpstartData(user: $user, body: $body)';
  }
}

/// @nodoc
abstract mixin class _$JumpstartDataCopyWith<$Res>
    implements $JumpstartDataCopyWith<$Res> {
  factory _$JumpstartDataCopyWith(
          _JumpstartData value, $Res Function(_JumpstartData) _then) =
      __$JumpstartDataCopyWithImpl;
  @override
  @useResult
  $Res call({User? user, Body? body});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$JumpstartDataCopyWithImpl<$Res>
    implements _$JumpstartDataCopyWith<$Res> {
  __$JumpstartDataCopyWithImpl(this._self, this._then);

  final _JumpstartData _self;
  final $Res Function(_JumpstartData) _then;

  /// Create a copy of JumpstartData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
    Object? body = freezed,
  }) {
    return _then(_JumpstartData(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body?,
    ));
  }

  /// Create a copy of JumpstartData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of JumpstartData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodyCopyWith<$Res>? get body {
    if (_self.body == null) {
      return null;
    }

    return $BodyCopyWith<$Res>(_self.body!, (value) {
      return _then(_self.copyWith(body: value));
    });
  }
}

/// @nodoc
mixin _$Body {
  @JsonKey(name: 'current_location')
  Coordinate? get currentLocation;
  @JsonKey(name: 'model')
  String? get model;
  @JsonKey(name: 'vin')
  String? get vin;

  /// Create a copy of Body
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BodyCopyWith<Body> get copyWith =>
      _$BodyCopyWithImpl<Body>(this as Body, _$identity);

  /// Serializes this Body to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Body &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.vin, vin) || other.vin == vin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentLocation, model, vin);

  @override
  String toString() {
    return 'Body(currentLocation: $currentLocation, model: $model, vin: $vin)';
  }
}

/// @nodoc
abstract mixin class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) _then) =
      _$BodyCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_location') Coordinate? currentLocation,
      @JsonKey(name: 'model') String? model,
      @JsonKey(name: 'vin') String? vin});

  $CoordinateCopyWith<$Res>? get currentLocation;
}

/// @nodoc
class _$BodyCopyWithImpl<$Res> implements $BodyCopyWith<$Res> {
  _$BodyCopyWithImpl(this._self, this._then);

  final Body _self;
  final $Res Function(Body) _then;

  /// Create a copy of Body
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = freezed,
    Object? model = freezed,
    Object? vin = freezed,
  }) {
    return _then(_self.copyWith(
      currentLocation: freezed == currentLocation
          ? _self.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      model: freezed == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Body
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get currentLocation {
    if (_self.currentLocation == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.currentLocation!, (value) {
      return _then(_self.copyWith(currentLocation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Body].
extension BodyPatterns on Body {
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
    TResult Function(_Body value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Body() when $default != null:
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
    TResult Function(_Body value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Body():
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
    TResult? Function(_Body value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Body() when $default != null:
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
            @JsonKey(name: 'current_location') Coordinate? currentLocation,
            @JsonKey(name: 'model') String? model,
            @JsonKey(name: 'vin') String? vin)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Body() when $default != null:
        return $default(_that.currentLocation, _that.model, _that.vin);
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
            @JsonKey(name: 'current_location') Coordinate? currentLocation,
            @JsonKey(name: 'model') String? model,
            @JsonKey(name: 'vin') String? vin)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Body():
        return $default(_that.currentLocation, _that.model, _that.vin);
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
            @JsonKey(name: 'current_location') Coordinate? currentLocation,
            @JsonKey(name: 'model') String? model,
            @JsonKey(name: 'vin') String? vin)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Body() when $default != null:
        return $default(_that.currentLocation, _that.model, _that.vin);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Body implements Body {
  const _Body(
      {@JsonKey(name: 'current_location') this.currentLocation,
      @JsonKey(name: 'model') this.model,
      @JsonKey(name: 'vin') this.vin});
  factory _Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);

  @override
  @JsonKey(name: 'current_location')
  final Coordinate? currentLocation;
  @override
  @JsonKey(name: 'model')
  final String? model;
  @override
  @JsonKey(name: 'vin')
  final String? vin;

  /// Create a copy of Body
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BodyCopyWith<_Body> get copyWith =>
      __$BodyCopyWithImpl<_Body>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Body &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.vin, vin) || other.vin == vin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentLocation, model, vin);

  @override
  String toString() {
    return 'Body(currentLocation: $currentLocation, model: $model, vin: $vin)';
  }
}

/// @nodoc
abstract mixin class _$BodyCopyWith<$Res> implements $BodyCopyWith<$Res> {
  factory _$BodyCopyWith(_Body value, $Res Function(_Body) _then) =
      __$BodyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_location') Coordinate? currentLocation,
      @JsonKey(name: 'model') String? model,
      @JsonKey(name: 'vin') String? vin});

  @override
  $CoordinateCopyWith<$Res>? get currentLocation;
}

/// @nodoc
class __$BodyCopyWithImpl<$Res> implements _$BodyCopyWith<$Res> {
  __$BodyCopyWithImpl(this._self, this._then);

  final _Body _self;
  final $Res Function(_Body) _then;

  /// Create a copy of Body
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentLocation = freezed,
    Object? model = freezed,
    Object? vin = freezed,
  }) {
    return _then(_Body(
      currentLocation: freezed == currentLocation
          ? _self.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      model: freezed == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Body
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get currentLocation {
    if (_self.currentLocation == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.currentLocation!, (value) {
      return _then(_self.copyWith(currentLocation: value));
    });
  }
}

/// @nodoc
mixin _$MapData {
  @JsonKey(name: 'distance')
  int? get distance;
  @JsonKey(name: 'distanceInKm')
  String? get distanceInKm;
  @JsonKey(name: 'duration')
  int? get duration;
  @JsonKey(name: 'dropoff_address')
  String? get dropoffAddress;
  @JsonKey(name: 'pickup_address')
  String? get pickupAddress;
  @JsonKey(name: 'polyline')
  String? get polyline;

  /// Create a copy of MapData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MapDataCopyWith<MapData> get copyWith =>
      _$MapDataCopyWithImpl<MapData>(this as MapData, _$identity);

  /// Serializes this MapData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MapData &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.distanceInKm, distanceInKm) ||
                other.distanceInKm == distanceInKm) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.dropoffAddress, dropoffAddress) ||
                other.dropoffAddress == dropoffAddress) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, distance, distanceInKm, duration,
      dropoffAddress, pickupAddress, polyline);

  @override
  String toString() {
    return 'MapData(distance: $distance, distanceInKm: $distanceInKm, duration: $duration, dropoffAddress: $dropoffAddress, pickupAddress: $pickupAddress, polyline: $polyline)';
  }
}

/// @nodoc
abstract mixin class $MapDataCopyWith<$Res> {
  factory $MapDataCopyWith(MapData value, $Res Function(MapData) _then) =
      _$MapDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'distance') int? distance,
      @JsonKey(name: 'distanceInKm') String? distanceInKm,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'dropoff_address') String? dropoffAddress,
      @JsonKey(name: 'pickup_address') String? pickupAddress,
      @JsonKey(name: 'polyline') String? polyline});
}

/// @nodoc
class _$MapDataCopyWithImpl<$Res> implements $MapDataCopyWith<$Res> {
  _$MapDataCopyWithImpl(this._self, this._then);

  final MapData _self;
  final $Res Function(MapData) _then;

  /// Create a copy of MapData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? distanceInKm = freezed,
    Object? duration = freezed,
    Object? dropoffAddress = freezed,
    Object? pickupAddress = freezed,
    Object? polyline = freezed,
  }) {
    return _then(_self.copyWith(
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceInKm: freezed == distanceInKm
          ? _self.distanceInKm
          : distanceInKm // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      dropoffAddress: freezed == dropoffAddress
          ? _self.dropoffAddress
          : dropoffAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: freezed == pickupAddress
          ? _self.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      polyline: freezed == polyline
          ? _self.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MapData].
extension MapDataPatterns on MapData {
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
    TResult Function(_MapData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MapData() when $default != null:
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
    TResult Function(_MapData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapData():
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
    TResult? Function(_MapData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapData() when $default != null:
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
            @JsonKey(name: 'distance') int? distance,
            @JsonKey(name: 'distanceInKm') String? distanceInKm,
            @JsonKey(name: 'duration') int? duration,
            @JsonKey(name: 'dropoff_address') String? dropoffAddress,
            @JsonKey(name: 'pickup_address') String? pickupAddress,
            @JsonKey(name: 'polyline') String? polyline)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MapData() when $default != null:
        return $default(_that.distance, _that.distanceInKm, _that.duration,
            _that.dropoffAddress, _that.pickupAddress, _that.polyline);
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
            @JsonKey(name: 'distance') int? distance,
            @JsonKey(name: 'distanceInKm') String? distanceInKm,
            @JsonKey(name: 'duration') int? duration,
            @JsonKey(name: 'dropoff_address') String? dropoffAddress,
            @JsonKey(name: 'pickup_address') String? pickupAddress,
            @JsonKey(name: 'polyline') String? polyline)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapData():
        return $default(_that.distance, _that.distanceInKm, _that.duration,
            _that.dropoffAddress, _that.pickupAddress, _that.polyline);
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
            @JsonKey(name: 'distance') int? distance,
            @JsonKey(name: 'distanceInKm') String? distanceInKm,
            @JsonKey(name: 'duration') int? duration,
            @JsonKey(name: 'dropoff_address') String? dropoffAddress,
            @JsonKey(name: 'pickup_address') String? pickupAddress,
            @JsonKey(name: 'polyline') String? polyline)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapData() when $default != null:
        return $default(_that.distance, _that.distanceInKm, _that.duration,
            _that.dropoffAddress, _that.pickupAddress, _that.polyline);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MapData implements MapData {
  const _MapData(
      {@JsonKey(name: 'distance') this.distance,
      @JsonKey(name: 'distanceInKm') this.distanceInKm,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'dropoff_address') this.dropoffAddress,
      @JsonKey(name: 'pickup_address') this.pickupAddress,
      @JsonKey(name: 'polyline') this.polyline});
  factory _MapData.fromJson(Map<String, dynamic> json) =>
      _$MapDataFromJson(json);

  @override
  @JsonKey(name: 'distance')
  final int? distance;
  @override
  @JsonKey(name: 'distanceInKm')
  final String? distanceInKm;
  @override
  @JsonKey(name: 'duration')
  final int? duration;
  @override
  @JsonKey(name: 'dropoff_address')
  final String? dropoffAddress;
  @override
  @JsonKey(name: 'pickup_address')
  final String? pickupAddress;
  @override
  @JsonKey(name: 'polyline')
  final String? polyline;

  /// Create a copy of MapData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MapDataCopyWith<_MapData> get copyWith =>
      __$MapDataCopyWithImpl<_MapData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MapDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapData &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.distanceInKm, distanceInKm) ||
                other.distanceInKm == distanceInKm) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.dropoffAddress, dropoffAddress) ||
                other.dropoffAddress == dropoffAddress) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, distance, distanceInKm, duration,
      dropoffAddress, pickupAddress, polyline);

  @override
  String toString() {
    return 'MapData(distance: $distance, distanceInKm: $distanceInKm, duration: $duration, dropoffAddress: $dropoffAddress, pickupAddress: $pickupAddress, polyline: $polyline)';
  }
}

/// @nodoc
abstract mixin class _$MapDataCopyWith<$Res> implements $MapDataCopyWith<$Res> {
  factory _$MapDataCopyWith(_MapData value, $Res Function(_MapData) _then) =
      __$MapDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'distance') int? distance,
      @JsonKey(name: 'distanceInKm') String? distanceInKm,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'dropoff_address') String? dropoffAddress,
      @JsonKey(name: 'pickup_address') String? pickupAddress,
      @JsonKey(name: 'polyline') String? polyline});
}

/// @nodoc
class __$MapDataCopyWithImpl<$Res> implements _$MapDataCopyWith<$Res> {
  __$MapDataCopyWithImpl(this._self, this._then);

  final _MapData _self;
  final $Res Function(_MapData) _then;

  /// Create a copy of MapData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? distance = freezed,
    Object? distanceInKm = freezed,
    Object? duration = freezed,
    Object? dropoffAddress = freezed,
    Object? pickupAddress = freezed,
    Object? polyline = freezed,
  }) {
    return _then(_MapData(
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceInKm: freezed == distanceInKm
          ? _self.distanceInKm
          : distanceInKm // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      dropoffAddress: freezed == dropoffAddress
          ? _self.dropoffAddress
          : dropoffAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: freezed == pickupAddress
          ? _self.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      polyline: freezed == polyline
          ? _self.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
