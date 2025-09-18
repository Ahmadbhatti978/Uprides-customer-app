// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RideData {
  @JsonKey(name: "success")
  bool? get success;
  @JsonKey(name: "message")
  String? get message;
  @JsonKey(name: "data")
  Data? get data;

  /// Create a copy of RideData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideDataCopyWith<RideData> get copyWith =>
      _$RideDataCopyWithImpl<RideData>(this as RideData, _$identity);

  /// Serializes this RideData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideData &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @override
  String toString() {
    return 'RideData(success: $success, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $RideDataCopyWith<$Res> {
  factory $RideDataCopyWith(RideData value, $Res Function(RideData) _then) =
      _$RideDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$RideDataCopyWithImpl<$Res> implements $RideDataCopyWith<$Res> {
  _$RideDataCopyWithImpl(this._self, this._then);

  final RideData _self;
  final $Res Function(RideData) _then;

  /// Create a copy of RideData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  /// Create a copy of RideData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RideData].
extension RideDataPatterns on RideData {
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
    TResult Function(_RideData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideData() when $default != null:
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
    TResult Function(_RideData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideData():
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
    TResult? Function(_RideData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideData() when $default != null:
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
            @JsonKey(name: "success") bool? success,
            @JsonKey(name: "message") String? message,
            @JsonKey(name: "data") Data? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideData() when $default != null:
        return $default(_that.success, _that.message, _that.data);
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
            @JsonKey(name: "success") bool? success,
            @JsonKey(name: "message") String? message,
            @JsonKey(name: "data") Data? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideData():
        return $default(_that.success, _that.message, _that.data);
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
            @JsonKey(name: "success") bool? success,
            @JsonKey(name: "message") String? message,
            @JsonKey(name: "data") Data? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideData() when $default != null:
        return $default(_that.success, _that.message, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RideData implements RideData {
  const _RideData(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});
  factory _RideData.fromJson(Map<String, dynamic> json) =>
      _$RideDataFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final Data? data;

  /// Create a copy of RideData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideDataCopyWith<_RideData> get copyWith =>
      __$RideDataCopyWithImpl<_RideData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideData &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @override
  String toString() {
    return 'RideData(success: $success, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$RideDataCopyWith<$Res>
    implements $RideDataCopyWith<$Res> {
  factory _$RideDataCopyWith(_RideData value, $Res Function(_RideData) _then) =
      __$RideDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$RideDataCopyWithImpl<$Res> implements _$RideDataCopyWith<$Res> {
  __$RideDataCopyWithImpl(this._self, this._then);

  final _RideData _self;
  final $Res Function(_RideData) _then;

  /// Create a copy of RideData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_RideData(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  /// Create a copy of RideData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "ride")
  Ride? get ride;
  @JsonKey(name: "pin")
  int? get pin;
  @JsonKey(name: "driver_info")
  DriverInfo? get driverInfo;
  @JsonKey(name: "_id")
  String? get id;
  @JsonKey(name: "driver_to_pick_up_polyline")
  String? get driverToPickUpPolyline;
  @JsonKey(name: "pick_up_to_drop_off_polyline")
  String? get pickUpToDropOffPolyline;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data &&
            (identical(other.ride, ride) || other.ride == ride) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.driverInfo, driverInfo) ||
                other.driverInfo == driverInfo) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driverToPickUpPolyline, driverToPickUpPolyline) ||
                other.driverToPickUpPolyline == driverToPickUpPolyline) &&
            (identical(
                    other.pickUpToDropOffPolyline, pickUpToDropOffPolyline) ||
                other.pickUpToDropOffPolyline == pickUpToDropOffPolyline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ride, pin, driverInfo, id,
      driverToPickUpPolyline, pickUpToDropOffPolyline);

  @override
  String toString() {
    return 'Data(ride: $ride, pin: $pin, driverInfo: $driverInfo, id: $id, driverToPickUpPolyline: $driverToPickUpPolyline, pickUpToDropOffPolyline: $pickUpToDropOffPolyline)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "ride") Ride? ride,
      @JsonKey(name: "pin") int? pin,
      @JsonKey(name: "driver_info") DriverInfo? driverInfo,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "driver_to_pick_up_polyline")
      String? driverToPickUpPolyline,
      @JsonKey(name: "pick_up_to_drop_off_polyline")
      String? pickUpToDropOffPolyline});

  $RideCopyWith<$Res>? get ride;
  $DriverInfoCopyWith<$Res>? get driverInfo;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ride = freezed,
    Object? pin = freezed,
    Object? driverInfo = freezed,
    Object? id = freezed,
    Object? driverToPickUpPolyline = freezed,
    Object? pickUpToDropOffPolyline = freezed,
  }) {
    return _then(_self.copyWith(
      ride: freezed == ride
          ? _self.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as Ride?,
      pin: freezed == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int?,
      driverInfo: freezed == driverInfo
          ? _self.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as DriverInfo?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      driverToPickUpPolyline: freezed == driverToPickUpPolyline
          ? _self.driverToPickUpPolyline
          : driverToPickUpPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
      pickUpToDropOffPolyline: freezed == pickUpToDropOffPolyline
          ? _self.pickUpToDropOffPolyline
          : pickUpToDropOffPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideCopyWith<$Res>? get ride {
    if (_self.ride == null) {
      return null;
    }

    return $RideCopyWith<$Res>(_self.ride!, (value) {
      return _then(_self.copyWith(ride: value));
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverInfoCopyWith<$Res>? get driverInfo {
    if (_self.driverInfo == null) {
      return null;
    }

    return $DriverInfoCopyWith<$Res>(_self.driverInfo!, (value) {
      return _then(_self.copyWith(driverInfo: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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
    TResult Function(_Data value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
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
    TResult Function(_Data value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
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
    TResult? Function(_Data value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
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
            @JsonKey(name: "ride") Ride? ride,
            @JsonKey(name: "pin") int? pin,
            @JsonKey(name: "driver_info") DriverInfo? driverInfo,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "driver_to_pick_up_polyline")
            String? driverToPickUpPolyline,
            @JsonKey(name: "pick_up_to_drop_off_polyline")
            String? pickUpToDropOffPolyline)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.ride, _that.pin, _that.driverInfo, _that.id,
            _that.driverToPickUpPolyline, _that.pickUpToDropOffPolyline);
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
            @JsonKey(name: "ride") Ride? ride,
            @JsonKey(name: "pin") int? pin,
            @JsonKey(name: "driver_info") DriverInfo? driverInfo,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "driver_to_pick_up_polyline")
            String? driverToPickUpPolyline,
            @JsonKey(name: "pick_up_to_drop_off_polyline")
            String? pickUpToDropOffPolyline)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
        return $default(_that.ride, _that.pin, _that.driverInfo, _that.id,
            _that.driverToPickUpPolyline, _that.pickUpToDropOffPolyline);
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
            @JsonKey(name: "ride") Ride? ride,
            @JsonKey(name: "pin") int? pin,
            @JsonKey(name: "driver_info") DriverInfo? driverInfo,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "driver_to_pick_up_polyline")
            String? driverToPickUpPolyline,
            @JsonKey(name: "pick_up_to_drop_off_polyline")
            String? pickUpToDropOffPolyline)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.ride, _that.pin, _that.driverInfo, _that.id,
            _that.driverToPickUpPolyline, _that.pickUpToDropOffPolyline);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Data implements Data {
  const _Data(
      {@JsonKey(name: "ride") this.ride,
      @JsonKey(name: "pin") this.pin,
      @JsonKey(name: "driver_info") this.driverInfo,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "driver_to_pick_up_polyline") this.driverToPickUpPolyline,
      @JsonKey(name: "pick_up_to_drop_off_polyline")
      this.pickUpToDropOffPolyline});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  @JsonKey(name: "ride")
  final Ride? ride;
  @override
  @JsonKey(name: "pin")
  final int? pin;
  @override
  @JsonKey(name: "driver_info")
  final DriverInfo? driverInfo;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "driver_to_pick_up_polyline")
  final String? driverToPickUpPolyline;
  @override
  @JsonKey(name: "pick_up_to_drop_off_polyline")
  final String? pickUpToDropOffPolyline;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            (identical(other.ride, ride) || other.ride == ride) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.driverInfo, driverInfo) ||
                other.driverInfo == driverInfo) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driverToPickUpPolyline, driverToPickUpPolyline) ||
                other.driverToPickUpPolyline == driverToPickUpPolyline) &&
            (identical(
                    other.pickUpToDropOffPolyline, pickUpToDropOffPolyline) ||
                other.pickUpToDropOffPolyline == pickUpToDropOffPolyline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ride, pin, driverInfo, id,
      driverToPickUpPolyline, pickUpToDropOffPolyline);

  @override
  String toString() {
    return 'Data(ride: $ride, pin: $pin, driverInfo: $driverInfo, id: $id, driverToPickUpPolyline: $driverToPickUpPolyline, pickUpToDropOffPolyline: $pickUpToDropOffPolyline)';
  }
}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) =
      __$DataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ride") Ride? ride,
      @JsonKey(name: "pin") int? pin,
      @JsonKey(name: "driver_info") DriverInfo? driverInfo,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "driver_to_pick_up_polyline")
      String? driverToPickUpPolyline,
      @JsonKey(name: "pick_up_to_drop_off_polyline")
      String? pickUpToDropOffPolyline});

  @override
  $RideCopyWith<$Res>? get ride;
  @override
  $DriverInfoCopyWith<$Res>? get driverInfo;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ride = freezed,
    Object? pin = freezed,
    Object? driverInfo = freezed,
    Object? id = freezed,
    Object? driverToPickUpPolyline = freezed,
    Object? pickUpToDropOffPolyline = freezed,
  }) {
    return _then(_Data(
      ride: freezed == ride
          ? _self.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as Ride?,
      pin: freezed == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int?,
      driverInfo: freezed == driverInfo
          ? _self.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as DriverInfo?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      driverToPickUpPolyline: freezed == driverToPickUpPolyline
          ? _self.driverToPickUpPolyline
          : driverToPickUpPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
      pickUpToDropOffPolyline: freezed == pickUpToDropOffPolyline
          ? _self.pickUpToDropOffPolyline
          : pickUpToDropOffPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideCopyWith<$Res>? get ride {
    if (_self.ride == null) {
      return null;
    }

    return $RideCopyWith<$Res>(_self.ride!, (value) {
      return _then(_self.copyWith(ride: value));
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverInfoCopyWith<$Res>? get driverInfo {
    if (_self.driverInfo == null) {
      return null;
    }

    return $DriverInfoCopyWith<$Res>(_self.driverInfo!, (value) {
      return _then(_self.copyWith(driverInfo: value));
    });
  }
}

/// @nodoc
mixin _$DriverInfo {
  @JsonKey(name: "id")
  String? get id;
  @JsonKey(name: "full_name")
  String? get fullName;
  @JsonKey(name: "profile_pic")
  String? get profilePic;
  @JsonKey(name: "current_location")
  CurrentLocation? get currentLocation;
  @JsonKey(name: "ratings")
  double? get ratings;
  @JsonKey(name: "name")
  String? get name;
  @JsonKey(name: "vin")
  String? get vin;
  @JsonKey(name: "color")
  String? get color;
  @JsonKey(name: "image")
  String? get image;
  @JsonKey(name: "vehicle_type")
  String? get vehicleType;
  @JsonKey(name: "model")
  String? get model;
  @JsonKey(name: "driver_eta")
  List<DriverEta>? get driverEta;

  /// Create a copy of DriverInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DriverInfoCopyWith<DriverInfo> get copyWith =>
      _$DriverInfoCopyWithImpl<DriverInfo>(this as DriverInfo, _$identity);

  /// Serializes this DriverInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DriverInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other.driverEta, driverEta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      profilePic,
      currentLocation,
      ratings,
      name,
      vin,
      color,
      image,
      vehicleType,
      model,
      const DeepCollectionEquality().hash(driverEta));

  @override
  String toString() {
    return 'DriverInfo(id: $id, fullName: $fullName, profilePic: $profilePic, currentLocation: $currentLocation, ratings: $ratings, name: $name, vin: $vin, color: $color, image: $image, vehicleType: $vehicleType, model: $model, driverEta: $driverEta)';
  }
}

/// @nodoc
abstract mixin class $DriverInfoCopyWith<$Res> {
  factory $DriverInfoCopyWith(
          DriverInfo value, $Res Function(DriverInfo) _then) =
      _$DriverInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "profile_pic") String? profilePic,
      @JsonKey(name: "current_location") CurrentLocation? currentLocation,
      @JsonKey(name: "ratings") double? ratings,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "vin") String? vin,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "vehicle_type") String? vehicleType,
      @JsonKey(name: "model") String? model,
      @JsonKey(name: "driver_eta") List<DriverEta>? driverEta});

  $CurrentLocationCopyWith<$Res>? get currentLocation;
}

/// @nodoc
class _$DriverInfoCopyWithImpl<$Res> implements $DriverInfoCopyWith<$Res> {
  _$DriverInfoCopyWithImpl(this._self, this._then);

  final DriverInfo _self;
  final $Res Function(DriverInfo) _then;

  /// Create a copy of DriverInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? profilePic = freezed,
    Object? currentLocation = freezed,
    Object? ratings = freezed,
    Object? name = freezed,
    Object? vin = freezed,
    Object? color = freezed,
    Object? image = freezed,
    Object? vehicleType = freezed,
    Object? model = freezed,
    Object? driverEta = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _self.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      currentLocation: freezed == currentLocation
          ? _self.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as CurrentLocation?,
      ratings: freezed == ratings
          ? _self.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _self.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      driverEta: freezed == driverEta
          ? _self.driverEta
          : driverEta // ignore: cast_nullable_to_non_nullable
              as List<DriverEta>?,
    ));
  }

  /// Create a copy of DriverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentLocationCopyWith<$Res>? get currentLocation {
    if (_self.currentLocation == null) {
      return null;
    }

    return $CurrentLocationCopyWith<$Res>(_self.currentLocation!, (value) {
      return _then(_self.copyWith(currentLocation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DriverInfo].
extension DriverInfoPatterns on DriverInfo {
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
    TResult Function(_DriverInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriverInfo() when $default != null:
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
    TResult Function(_DriverInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverInfo():
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
    TResult? Function(_DriverInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverInfo() when $default != null:
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
            @JsonKey(name: "full_name") String? fullName,
            @JsonKey(name: "profile_pic") String? profilePic,
            @JsonKey(name: "current_location") CurrentLocation? currentLocation,
            @JsonKey(name: "ratings") double? ratings,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "vin") String? vin,
            @JsonKey(name: "color") String? color,
            @JsonKey(name: "image") String? image,
            @JsonKey(name: "vehicle_type") String? vehicleType,
            @JsonKey(name: "model") String? model,
            @JsonKey(name: "driver_eta") List<DriverEta>? driverEta)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriverInfo() when $default != null:
        return $default(
            _that.id,
            _that.fullName,
            _that.profilePic,
            _that.currentLocation,
            _that.ratings,
            _that.name,
            _that.vin,
            _that.color,
            _that.image,
            _that.vehicleType,
            _that.model,
            _that.driverEta);
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
            @JsonKey(name: "full_name") String? fullName,
            @JsonKey(name: "profile_pic") String? profilePic,
            @JsonKey(name: "current_location") CurrentLocation? currentLocation,
            @JsonKey(name: "ratings") double? ratings,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "vin") String? vin,
            @JsonKey(name: "color") String? color,
            @JsonKey(name: "image") String? image,
            @JsonKey(name: "vehicle_type") String? vehicleType,
            @JsonKey(name: "model") String? model,
            @JsonKey(name: "driver_eta") List<DriverEta>? driverEta)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverInfo():
        return $default(
            _that.id,
            _that.fullName,
            _that.profilePic,
            _that.currentLocation,
            _that.ratings,
            _that.name,
            _that.vin,
            _that.color,
            _that.image,
            _that.vehicleType,
            _that.model,
            _that.driverEta);
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
            @JsonKey(name: "full_name") String? fullName,
            @JsonKey(name: "profile_pic") String? profilePic,
            @JsonKey(name: "current_location") CurrentLocation? currentLocation,
            @JsonKey(name: "ratings") double? ratings,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "vin") String? vin,
            @JsonKey(name: "color") String? color,
            @JsonKey(name: "image") String? image,
            @JsonKey(name: "vehicle_type") String? vehicleType,
            @JsonKey(name: "model") String? model,
            @JsonKey(name: "driver_eta") List<DriverEta>? driverEta)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverInfo() when $default != null:
        return $default(
            _that.id,
            _that.fullName,
            _that.profilePic,
            _that.currentLocation,
            _that.ratings,
            _that.name,
            _that.vin,
            _that.color,
            _that.image,
            _that.vehicleType,
            _that.model,
            _that.driverEta);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DriverInfo implements DriverInfo {
  const _DriverInfo(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "full_name") this.fullName,
      @JsonKey(name: "profile_pic") this.profilePic,
      @JsonKey(name: "current_location") this.currentLocation,
      @JsonKey(name: "ratings") this.ratings,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "vin") this.vin,
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "vehicle_type") this.vehicleType,
      @JsonKey(name: "model") this.model,
      @JsonKey(name: "driver_eta") final List<DriverEta>? driverEta})
      : _driverEta = driverEta;
  factory _DriverInfo.fromJson(Map<String, dynamic> json) =>
      _$DriverInfoFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "full_name")
  final String? fullName;
  @override
  @JsonKey(name: "profile_pic")
  final String? profilePic;
  @override
  @JsonKey(name: "current_location")
  final CurrentLocation? currentLocation;
  @override
  @JsonKey(name: "ratings")
  final double? ratings;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "vin")
  final String? vin;
  @override
  @JsonKey(name: "color")
  final String? color;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "vehicle_type")
  final String? vehicleType;
  @override
  @JsonKey(name: "model")
  final String? model;
  final List<DriverEta>? _driverEta;
  @override
  @JsonKey(name: "driver_eta")
  List<DriverEta>? get driverEta {
    final value = _driverEta;
    if (value == null) return null;
    if (_driverEta is EqualUnmodifiableListView) return _driverEta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of DriverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DriverInfoCopyWith<_DriverInfo> get copyWith =>
      __$DriverInfoCopyWithImpl<_DriverInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DriverInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriverInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality()
                .equals(other._driverEta, _driverEta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      profilePic,
      currentLocation,
      ratings,
      name,
      vin,
      color,
      image,
      vehicleType,
      model,
      const DeepCollectionEquality().hash(_driverEta));

  @override
  String toString() {
    return 'DriverInfo(id: $id, fullName: $fullName, profilePic: $profilePic, currentLocation: $currentLocation, ratings: $ratings, name: $name, vin: $vin, color: $color, image: $image, vehicleType: $vehicleType, model: $model, driverEta: $driverEta)';
  }
}

/// @nodoc
abstract mixin class _$DriverInfoCopyWith<$Res>
    implements $DriverInfoCopyWith<$Res> {
  factory _$DriverInfoCopyWith(
          _DriverInfo value, $Res Function(_DriverInfo) _then) =
      __$DriverInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "profile_pic") String? profilePic,
      @JsonKey(name: "current_location") CurrentLocation? currentLocation,
      @JsonKey(name: "ratings") double? ratings,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "vin") String? vin,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "vehicle_type") String? vehicleType,
      @JsonKey(name: "model") String? model,
      @JsonKey(name: "driver_eta") List<DriverEta>? driverEta});

  @override
  $CurrentLocationCopyWith<$Res>? get currentLocation;
}

/// @nodoc
class __$DriverInfoCopyWithImpl<$Res> implements _$DriverInfoCopyWith<$Res> {
  __$DriverInfoCopyWithImpl(this._self, this._then);

  final _DriverInfo _self;
  final $Res Function(_DriverInfo) _then;

  /// Create a copy of DriverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? profilePic = freezed,
    Object? currentLocation = freezed,
    Object? ratings = freezed,
    Object? name = freezed,
    Object? vin = freezed,
    Object? color = freezed,
    Object? image = freezed,
    Object? vehicleType = freezed,
    Object? model = freezed,
    Object? driverEta = freezed,
  }) {
    return _then(_DriverInfo(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _self.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      currentLocation: freezed == currentLocation
          ? _self.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as CurrentLocation?,
      ratings: freezed == ratings
          ? _self.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _self.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      driverEta: freezed == driverEta
          ? _self._driverEta
          : driverEta // ignore: cast_nullable_to_non_nullable
              as List<DriverEta>?,
    ));
  }

  /// Create a copy of DriverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentLocationCopyWith<$Res>? get currentLocation {
    if (_self.currentLocation == null) {
      return null;
    }

    return $CurrentLocationCopyWith<$Res>(_self.currentLocation!, (value) {
      return _then(_self.copyWith(currentLocation: value));
    });
  }
}

/// @nodoc
mixin _$CurrentLocation {
  @JsonKey(name: "longitude")
  double? get longitude;
  @JsonKey(name: "latitude")
  double? get latitude;

  /// Create a copy of CurrentLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrentLocationCopyWith<CurrentLocation> get copyWith =>
      _$CurrentLocationCopyWithImpl<CurrentLocation>(
          this as CurrentLocation, _$identity);

  /// Serializes this CurrentLocation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrentLocation &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, longitude, latitude);

  @override
  String toString() {
    return 'CurrentLocation(longitude: $longitude, latitude: $latitude)';
  }
}

/// @nodoc
abstract mixin class $CurrentLocationCopyWith<$Res> {
  factory $CurrentLocationCopyWith(
          CurrentLocation value, $Res Function(CurrentLocation) _then) =
      _$CurrentLocationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude});
}

/// @nodoc
class _$CurrentLocationCopyWithImpl<$Res>
    implements $CurrentLocationCopyWith<$Res> {
  _$CurrentLocationCopyWithImpl(this._self, this._then);

  final CurrentLocation _self;
  final $Res Function(CurrentLocation) _then;

  /// Create a copy of CurrentLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_self.copyWith(
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CurrentLocation].
extension CurrentLocationPatterns on CurrentLocation {
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
    TResult Function(_CurrentLocation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CurrentLocation() when $default != null:
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
    TResult Function(_CurrentLocation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrentLocation():
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
    TResult? Function(_CurrentLocation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrentLocation() when $default != null:
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
    TResult Function(@JsonKey(name: "longitude") double? longitude,
            @JsonKey(name: "latitude") double? latitude)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CurrentLocation() when $default != null:
        return $default(_that.longitude, _that.latitude);
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
    TResult Function(@JsonKey(name: "longitude") double? longitude,
            @JsonKey(name: "latitude") double? latitude)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrentLocation():
        return $default(_that.longitude, _that.latitude);
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
    TResult? Function(@JsonKey(name: "longitude") double? longitude,
            @JsonKey(name: "latitude") double? latitude)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrentLocation() when $default != null:
        return $default(_that.longitude, _that.latitude);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CurrentLocation implements CurrentLocation {
  const _CurrentLocation(
      {@JsonKey(name: "longitude") this.longitude,
      @JsonKey(name: "latitude") this.latitude});
  factory _CurrentLocation.fromJson(Map<String, dynamic> json) =>
      _$CurrentLocationFromJson(json);

  @override
  @JsonKey(name: "longitude")
  final double? longitude;
  @override
  @JsonKey(name: "latitude")
  final double? latitude;

  /// Create a copy of CurrentLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrentLocationCopyWith<_CurrentLocation> get copyWith =>
      __$CurrentLocationCopyWithImpl<_CurrentLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CurrentLocationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentLocation &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, longitude, latitude);

  @override
  String toString() {
    return 'CurrentLocation(longitude: $longitude, latitude: $latitude)';
  }
}

/// @nodoc
abstract mixin class _$CurrentLocationCopyWith<$Res>
    implements $CurrentLocationCopyWith<$Res> {
  factory _$CurrentLocationCopyWith(
          _CurrentLocation value, $Res Function(_CurrentLocation) _then) =
      __$CurrentLocationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude});
}

/// @nodoc
class __$CurrentLocationCopyWithImpl<$Res>
    implements _$CurrentLocationCopyWith<$Res> {
  __$CurrentLocationCopyWithImpl(this._self, this._then);

  final _CurrentLocation _self;
  final $Res Function(_CurrentLocation) _then;

  /// Create a copy of CurrentLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_CurrentLocation(
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
mixin _$DriverEta {
  @JsonKey(name: "eta")
  int? get eta;
  @JsonKey(name: "distance")
  int? get distance;
  @JsonKey(name: "_id")
  String? get id;

  /// Create a copy of DriverEta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DriverEtaCopyWith<DriverEta> get copyWith =>
      _$DriverEtaCopyWithImpl<DriverEta>(this as DriverEta, _$identity);

  /// Serializes this DriverEta to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DriverEta &&
            (identical(other.eta, eta) || other.eta == eta) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eta, distance, id);

  @override
  String toString() {
    return 'DriverEta(eta: $eta, distance: $distance, id: $id)';
  }
}

/// @nodoc
abstract mixin class $DriverEtaCopyWith<$Res> {
  factory $DriverEtaCopyWith(DriverEta value, $Res Function(DriverEta) _then) =
      _$DriverEtaCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "eta") int? eta,
      @JsonKey(name: "distance") int? distance,
      @JsonKey(name: "_id") String? id});
}

/// @nodoc
class _$DriverEtaCopyWithImpl<$Res> implements $DriverEtaCopyWith<$Res> {
  _$DriverEtaCopyWithImpl(this._self, this._then);

  final DriverEta _self;
  final $Res Function(DriverEta) _then;

  /// Create a copy of DriverEta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eta = freezed,
    Object? distance = freezed,
    Object? id = freezed,
  }) {
    return _then(_self.copyWith(
      eta: freezed == eta
          ? _self.eta
          : eta // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DriverEta].
extension DriverEtaPatterns on DriverEta {
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
    TResult Function(_DriverEta value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriverEta() when $default != null:
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
    TResult Function(_DriverEta value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverEta():
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
    TResult? Function(_DriverEta value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverEta() when $default != null:
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
            @JsonKey(name: "eta") int? eta,
            @JsonKey(name: "distance") int? distance,
            @JsonKey(name: "_id") String? id)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriverEta() when $default != null:
        return $default(_that.eta, _that.distance, _that.id);
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
            @JsonKey(name: "eta") int? eta,
            @JsonKey(name: "distance") int? distance,
            @JsonKey(name: "_id") String? id)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverEta():
        return $default(_that.eta, _that.distance, _that.id);
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
            @JsonKey(name: "eta") int? eta,
            @JsonKey(name: "distance") int? distance,
            @JsonKey(name: "_id") String? id)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverEta() when $default != null:
        return $default(_that.eta, _that.distance, _that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DriverEta implements DriverEta {
  const _DriverEta(
      {@JsonKey(name: "eta") this.eta,
      @JsonKey(name: "distance") this.distance,
      @JsonKey(name: "_id") this.id});
  factory _DriverEta.fromJson(Map<String, dynamic> json) =>
      _$DriverEtaFromJson(json);

  @override
  @JsonKey(name: "eta")
  final int? eta;
  @override
  @JsonKey(name: "distance")
  final int? distance;
  @override
  @JsonKey(name: "_id")
  final String? id;

  /// Create a copy of DriverEta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DriverEtaCopyWith<_DriverEta> get copyWith =>
      __$DriverEtaCopyWithImpl<_DriverEta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DriverEtaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriverEta &&
            (identical(other.eta, eta) || other.eta == eta) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eta, distance, id);

  @override
  String toString() {
    return 'DriverEta(eta: $eta, distance: $distance, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$DriverEtaCopyWith<$Res>
    implements $DriverEtaCopyWith<$Res> {
  factory _$DriverEtaCopyWith(
          _DriverEta value, $Res Function(_DriverEta) _then) =
      __$DriverEtaCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "eta") int? eta,
      @JsonKey(name: "distance") int? distance,
      @JsonKey(name: "_id") String? id});
}

/// @nodoc
class __$DriverEtaCopyWithImpl<$Res> implements _$DriverEtaCopyWith<$Res> {
  __$DriverEtaCopyWithImpl(this._self, this._then);

  final _DriverEta _self;
  final $Res Function(_DriverEta) _then;

  /// Create a copy of DriverEta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? eta = freezed,
    Object? distance = freezed,
    Object? id = freezed,
  }) {
    return _then(_DriverEta(
      eta: freezed == eta
          ? _self.eta
          : eta // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Ride {
  @JsonKey(name: "customer_info")
  ErInfo? get customerInfo;
  @JsonKey(name: "driver_info")
  ErInfo? get driverInfo;
  @JsonKey(name: "vehicle_info")
  VehicleInfo? get vehicleInfo;
  @JsonKey(name: "_id")
  String? get id;
  @JsonKey(name: "country_id")
  String? get countryId;
  @JsonKey(name: "city_id")
  String? get cityId;
  @JsonKey(name: "zone_id")
  String? get zoneId;
  @JsonKey(name: "customer_id")
  String? get customerId;
  @JsonKey(name: "driver_id")
  String? get driverId;
  @JsonKey(name: "ride_type_id")
  String? get rideTypeId;
  @JsonKey(name: "ride_request")
  RideRequest? get rideRequest;
  @JsonKey(name: "payment_intent_id")
  String? get paymentIntentId;
  @JsonKey(name: "payment_method_id")
  String? get paymentMethodId;
  @JsonKey(name: "customer_stripe_id")
  String? get customerStripeId;
  @JsonKey(name: "charge_amount")
  int? get chargeAmount;
  @JsonKey(name: "captured_amount")
  double? get capturedAmount;
  @JsonKey(name: "fare_price")
  double? get farePrice;
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @JsonKey(name: "vat")
  double? get vat;
  @JsonKey(name: "pay_to_driver")
  double? get payToDriver;
  @JsonKey(name: "platform_charges")
  double? get platformCharges;
  @JsonKey(name: "to_currency")
  String? get toCurrency;
  @JsonKey(name: "from_currency")
  String? get fromCurrency;
  @JsonKey(name: "cancellation_charges")
  int? get cancellationCharges;
  @JsonKey(name: "bid_count")
  int? get bidCount;
  @JsonKey(name: "retry_drivers_count")
  int? get retryDriversCount;
  @JsonKey(name: "max_retry_drivers_count")
  int? get maxRetryDriversCount;
  @JsonKey(name: "is_bidding")
  bool? get isBidding;
  @JsonKey(name: "quoted_fare")
  String? get quotedFare;
  @JsonKey(name: "scheduled_at")
  DateTime? get scheduledAt;
  @JsonKey(name: "requested_at")
  DateTime? get requestedAt;
  @JsonKey(name: "status")
  String? get status;
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @JsonKey(name: "nano_id")
  int? get nanoId;
  @JsonKey(name: "ride_service")
  String? get rideService;
  @JsonKey(name: "started_at")
  DateTime? get startedAt;
  @JsonKey(name: "onroute_at")
  DateTime? get onrouteAt;
  @JsonKey(name: "arrived_at")
  DateTime? get arrivedAt;
  @JsonKey(name: "accepted_at")
  DateTime? get acceptedAt;
  @JsonKey(name: "rejected_at")
  DateTime? get rejectedAt;
  @JsonKey(name: "cancelled_at")
  DateTime? get cancelledAt;
  @JsonKey(name: "validate_at")
  DateTime? get validateAt;
  @JsonKey(name: "completed_at")
  DateTime? get completedAt;
  @JsonKey(name: "end_at")
  DateTime? get endAt;
  @JsonKey(name: "customer_invoice_seen_at")
  DateTime? get customerInvoiceSeenAt;
  @JsonKey(name: "driver_invoice_seen_at")
  DateTime? get driverInvoiceSeenAt;
  @JsonKey(name: "rejected_drivers")
  List<dynamic>? get rejectedDrivers;
  @JsonKey(name: "requested_drivers")
  List<String>? get requestedDrivers;
  @JsonKey(name: "is_driver_cancelled")
  bool? get isDriverCancelled;
  @JsonKey(name: "is_customer_cancelled")
  bool? get isCustomerCancelled;
  @JsonKey(name: "is_system_cancelled")
  bool? get isSystemCancelled;
  @JsonKey(name: "is_ride_end")
  bool? get isRideEnd;
  @JsonKey(name: "is_customer_invoice_seen")
  bool? get isCustomerInvoiceSeen;
  @JsonKey(name: "is_driver_invoice_seen")
  bool? get isDriverInvoiceSeen;
  @JsonKey(name: "is_deleted")
  bool? get isDeleted;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @JsonKey(name: "__v")
  int? get v;
  @JsonKey(name: "time_to_respond")
  int? get timeToRespond;
  @JsonKey(name: "conversation_id")
  String? get conversationId;
  @JsonKey(name: "organization_id")
  String? get organizationId;
  @JsonKey(name: "vehicle_id")
  String? get vehicleId;

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideCopyWith<Ride> get copyWith =>
      _$RideCopyWithImpl<Ride>(this as Ride, _$identity);

  /// Serializes this Ride to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Ride &&
            (identical(other.customerInfo, customerInfo) ||
                other.customerInfo == customerInfo) &&
            (identical(other.driverInfo, driverInfo) ||
                other.driverInfo == driverInfo) &&
            (identical(other.vehicleInfo, vehicleInfo) ||
                other.vehicleInfo == vehicleInfo) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.rideTypeId, rideTypeId) ||
                other.rideTypeId == rideTypeId) &&
            (identical(other.rideRequest, rideRequest) ||
                other.rideRequest == rideRequest) &&
            (identical(other.paymentIntentId, paymentIntentId) ||
                other.paymentIntentId == paymentIntentId) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.customerStripeId, customerStripeId) ||
                other.customerStripeId == customerStripeId) &&
            (identical(other.chargeAmount, chargeAmount) ||
                other.chargeAmount == chargeAmount) &&
            (identical(other.capturedAmount, capturedAmount) ||
                other.capturedAmount == capturedAmount) &&
            (identical(other.farePrice, farePrice) ||
                other.farePrice == farePrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.payToDriver, payToDriver) ||
                other.payToDriver == payToDriver) &&
            (identical(other.platformCharges, platformCharges) ||
                other.platformCharges == platformCharges) &&
            (identical(other.toCurrency, toCurrency) ||
                other.toCurrency == toCurrency) &&
            (identical(other.fromCurrency, fromCurrency) ||
                other.fromCurrency == fromCurrency) &&
            (identical(other.cancellationCharges, cancellationCharges) ||
                other.cancellationCharges == cancellationCharges) &&
            (identical(other.bidCount, bidCount) ||
                other.bidCount == bidCount) &&
            (identical(other.retryDriversCount, retryDriversCount) ||
                other.retryDriversCount == retryDriversCount) &&
            (identical(other.maxRetryDriversCount, maxRetryDriversCount) ||
                other.maxRetryDriversCount == maxRetryDriversCount) &&
            (identical(other.isBidding, isBidding) ||
                other.isBidding == isBidding) &&
            (identical(other.quotedFare, quotedFare) ||
                other.quotedFare == quotedFare) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.nanoId, nanoId) || other.nanoId == nanoId) &&
            (identical(other.rideService, rideService) ||
                other.rideService == rideService) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.onrouteAt, onrouteAt) ||
                other.onrouteAt == onrouteAt) &&
            (identical(other.arrivedAt, arrivedAt) ||
                other.arrivedAt == arrivedAt) &&
            (identical(other.acceptedAt, acceptedAt) ||
                other.acceptedAt == acceptedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.validateAt, validateAt) ||
                other.validateAt == validateAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.customerInvoiceSeenAt, customerInvoiceSeenAt) ||
                other.customerInvoiceSeenAt == customerInvoiceSeenAt) &&
            (identical(other.driverInvoiceSeenAt, driverInvoiceSeenAt) ||
                other.driverInvoiceSeenAt == driverInvoiceSeenAt) &&
            const DeepCollectionEquality()
                .equals(other.rejectedDrivers, rejectedDrivers) &&
            const DeepCollectionEquality()
                .equals(other.requestedDrivers, requestedDrivers) &&
            (identical(other.isDriverCancelled, isDriverCancelled) ||
                other.isDriverCancelled == isDriverCancelled) &&
            (identical(other.isCustomerCancelled, isCustomerCancelled) ||
                other.isCustomerCancelled == isCustomerCancelled) &&
            (identical(other.isSystemCancelled, isSystemCancelled) || other.isSystemCancelled == isSystemCancelled) &&
            (identical(other.isRideEnd, isRideEnd) || other.isRideEnd == isRideEnd) &&
            (identical(other.isCustomerInvoiceSeen, isCustomerInvoiceSeen) || other.isCustomerInvoiceSeen == isCustomerInvoiceSeen) &&
            (identical(other.isDriverInvoiceSeen, isDriverInvoiceSeen) || other.isDriverInvoiceSeen == isDriverInvoiceSeen) &&
            (identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.timeToRespond, timeToRespond) || other.timeToRespond == timeToRespond) &&
            (identical(other.conversationId, conversationId) || other.conversationId == conversationId) &&
            (identical(other.organizationId, organizationId) || other.organizationId == organizationId) &&
            (identical(other.vehicleId, vehicleId) || other.vehicleId == vehicleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        customerInfo,
        driverInfo,
        vehicleInfo,
        id,
        countryId,
        cityId,
        zoneId,
        customerId,
        driverId,
        rideTypeId,
        rideRequest,
        paymentIntentId,
        paymentMethodId,
        customerStripeId,
        chargeAmount,
        capturedAmount,
        farePrice,
        totalPrice,
        vat,
        payToDriver,
        platformCharges,
        toCurrency,
        fromCurrency,
        cancellationCharges,
        bidCount,
        retryDriversCount,
        maxRetryDriversCount,
        isBidding,
        quotedFare,
        scheduledAt,
        requestedAt,
        status,
        paymentStatus,
        nanoId,
        rideService,
        startedAt,
        onrouteAt,
        arrivedAt,
        acceptedAt,
        rejectedAt,
        cancelledAt,
        validateAt,
        completedAt,
        endAt,
        customerInvoiceSeenAt,
        driverInvoiceSeenAt,
        const DeepCollectionEquality().hash(rejectedDrivers),
        const DeepCollectionEquality().hash(requestedDrivers),
        isDriverCancelled,
        isCustomerCancelled,
        isSystemCancelled,
        isRideEnd,
        isCustomerInvoiceSeen,
        isDriverInvoiceSeen,
        isDeleted,
        createdAt,
        updatedAt,
        v,
        timeToRespond,
        conversationId,
        organizationId,
        vehicleId
      ]);

  @override
  String toString() {
    return 'Ride(customerInfo: $customerInfo, driverInfo: $driverInfo, vehicleInfo: $vehicleInfo, id: $id, countryId: $countryId, cityId: $cityId, zoneId: $zoneId, customerId: $customerId, driverId: $driverId, rideTypeId: $rideTypeId, rideRequest: $rideRequest, paymentIntentId: $paymentIntentId, paymentMethodId: $paymentMethodId, customerStripeId: $customerStripeId, chargeAmount: $chargeAmount, capturedAmount: $capturedAmount, farePrice: $farePrice, totalPrice: $totalPrice, vat: $vat, payToDriver: $payToDriver, platformCharges: $platformCharges, toCurrency: $toCurrency, fromCurrency: $fromCurrency, cancellationCharges: $cancellationCharges, bidCount: $bidCount, retryDriversCount: $retryDriversCount, maxRetryDriversCount: $maxRetryDriversCount, isBidding: $isBidding, quotedFare: $quotedFare, scheduledAt: $scheduledAt, requestedAt: $requestedAt, status: $status, paymentStatus: $paymentStatus, nanoId: $nanoId, rideService: $rideService, startedAt: $startedAt, onrouteAt: $onrouteAt, arrivedAt: $arrivedAt, acceptedAt: $acceptedAt, rejectedAt: $rejectedAt, cancelledAt: $cancelledAt, validateAt: $validateAt, completedAt: $completedAt, endAt: $endAt, customerInvoiceSeenAt: $customerInvoiceSeenAt, driverInvoiceSeenAt: $driverInvoiceSeenAt, rejectedDrivers: $rejectedDrivers, requestedDrivers: $requestedDrivers, isDriverCancelled: $isDriverCancelled, isCustomerCancelled: $isCustomerCancelled, isSystemCancelled: $isSystemCancelled, isRideEnd: $isRideEnd, isCustomerInvoiceSeen: $isCustomerInvoiceSeen, isDriverInvoiceSeen: $isDriverInvoiceSeen, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, timeToRespond: $timeToRespond, conversationId: $conversationId, organizationId: $organizationId, vehicleId: $vehicleId)';
  }
}

/// @nodoc
abstract mixin class $RideCopyWith<$Res> {
  factory $RideCopyWith(Ride value, $Res Function(Ride) _then) =
      _$RideCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "customer_info") ErInfo? customerInfo,
      @JsonKey(name: "driver_info") ErInfo? driverInfo,
      @JsonKey(name: "vehicle_info") VehicleInfo? vehicleInfo,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "country_id") String? countryId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "zone_id") String? zoneId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "driver_id") String? driverId,
      @JsonKey(name: "ride_type_id") String? rideTypeId,
      @JsonKey(name: "ride_request") RideRequest? rideRequest,
      @JsonKey(name: "payment_intent_id") String? paymentIntentId,
      @JsonKey(name: "payment_method_id") String? paymentMethodId,
      @JsonKey(name: "customer_stripe_id") String? customerStripeId,
      @JsonKey(name: "charge_amount") int? chargeAmount,
      @JsonKey(name: "captured_amount") double? capturedAmount,
      @JsonKey(name: "fare_price") double? farePrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "pay_to_driver") double? payToDriver,
      @JsonKey(name: "platform_charges") double? platformCharges,
      @JsonKey(name: "to_currency") String? toCurrency,
      @JsonKey(name: "from_currency") String? fromCurrency,
      @JsonKey(name: "cancellation_charges") int? cancellationCharges,
      @JsonKey(name: "bid_count") int? bidCount,
      @JsonKey(name: "retry_drivers_count") int? retryDriversCount,
      @JsonKey(name: "max_retry_drivers_count") int? maxRetryDriversCount,
      @JsonKey(name: "is_bidding") bool? isBidding,
      @JsonKey(name: "quoted_fare") String? quotedFare,
      @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
      @JsonKey(name: "requested_at") DateTime? requestedAt,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "nano_id") int? nanoId,
      @JsonKey(name: "ride_service") String? rideService,
      @JsonKey(name: "started_at") DateTime? startedAt,
      @JsonKey(name: "onroute_at") DateTime? onrouteAt,
      @JsonKey(name: "arrived_at") DateTime? arrivedAt,
      @JsonKey(name: "accepted_at") DateTime? acceptedAt,
      @JsonKey(name: "rejected_at") DateTime? rejectedAt,
      @JsonKey(name: "cancelled_at") DateTime? cancelledAt,
      @JsonKey(name: "validate_at") DateTime? validateAt,
      @JsonKey(name: "completed_at") DateTime? completedAt,
      @JsonKey(name: "end_at") DateTime? endAt,
      @JsonKey(name: "customer_invoice_seen_at")
      DateTime? customerInvoiceSeenAt,
      @JsonKey(name: "driver_invoice_seen_at") DateTime? driverInvoiceSeenAt,
      @JsonKey(name: "rejected_drivers") List<dynamic>? rejectedDrivers,
      @JsonKey(name: "requested_drivers") List<String>? requestedDrivers,
      @JsonKey(name: "is_driver_cancelled") bool? isDriverCancelled,
      @JsonKey(name: "is_customer_cancelled") bool? isCustomerCancelled,
      @JsonKey(name: "is_system_cancelled") bool? isSystemCancelled,
      @JsonKey(name: "is_ride_end") bool? isRideEnd,
      @JsonKey(name: "is_customer_invoice_seen") bool? isCustomerInvoiceSeen,
      @JsonKey(name: "is_driver_invoice_seen") bool? isDriverInvoiceSeen,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "time_to_respond") int? timeToRespond,
      @JsonKey(name: "conversation_id") String? conversationId,
      @JsonKey(name: "organization_id") String? organizationId,
      @JsonKey(name: "vehicle_id") String? vehicleId});

  $ErInfoCopyWith<$Res>? get customerInfo;
  $ErInfoCopyWith<$Res>? get driverInfo;
  $VehicleInfoCopyWith<$Res>? get vehicleInfo;
  $RideRequestCopyWith<$Res>? get rideRequest;
}

/// @nodoc
class _$RideCopyWithImpl<$Res> implements $RideCopyWith<$Res> {
  _$RideCopyWithImpl(this._self, this._then);

  final Ride _self;
  final $Res Function(Ride) _then;

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerInfo = freezed,
    Object? driverInfo = freezed,
    Object? vehicleInfo = freezed,
    Object? id = freezed,
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? zoneId = freezed,
    Object? customerId = freezed,
    Object? driverId = freezed,
    Object? rideTypeId = freezed,
    Object? rideRequest = freezed,
    Object? paymentIntentId = freezed,
    Object? paymentMethodId = freezed,
    Object? customerStripeId = freezed,
    Object? chargeAmount = freezed,
    Object? capturedAmount = freezed,
    Object? farePrice = freezed,
    Object? totalPrice = freezed,
    Object? vat = freezed,
    Object? payToDriver = freezed,
    Object? platformCharges = freezed,
    Object? toCurrency = freezed,
    Object? fromCurrency = freezed,
    Object? cancellationCharges = freezed,
    Object? bidCount = freezed,
    Object? retryDriversCount = freezed,
    Object? maxRetryDriversCount = freezed,
    Object? isBidding = freezed,
    Object? quotedFare = freezed,
    Object? scheduledAt = freezed,
    Object? requestedAt = freezed,
    Object? status = freezed,
    Object? paymentStatus = freezed,
    Object? nanoId = freezed,
    Object? rideService = freezed,
    Object? startedAt = freezed,
    Object? onrouteAt = freezed,
    Object? arrivedAt = freezed,
    Object? acceptedAt = freezed,
    Object? rejectedAt = freezed,
    Object? cancelledAt = freezed,
    Object? validateAt = freezed,
    Object? completedAt = freezed,
    Object? endAt = freezed,
    Object? customerInvoiceSeenAt = freezed,
    Object? driverInvoiceSeenAt = freezed,
    Object? rejectedDrivers = freezed,
    Object? requestedDrivers = freezed,
    Object? isDriverCancelled = freezed,
    Object? isCustomerCancelled = freezed,
    Object? isSystemCancelled = freezed,
    Object? isRideEnd = freezed,
    Object? isCustomerInvoiceSeen = freezed,
    Object? isDriverInvoiceSeen = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? timeToRespond = freezed,
    Object? conversationId = freezed,
    Object? organizationId = freezed,
    Object? vehicleId = freezed,
  }) {
    return _then(_self.copyWith(
      customerInfo: freezed == customerInfo
          ? _self.customerInfo
          : customerInfo // ignore: cast_nullable_to_non_nullable
              as ErInfo?,
      driverInfo: freezed == driverInfo
          ? _self.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as ErInfo?,
      vehicleInfo: freezed == vehicleInfo
          ? _self.vehicleInfo
          : vehicleInfo // ignore: cast_nullable_to_non_nullable
              as VehicleInfo?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _self.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId: freezed == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _self.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideTypeId: freezed == rideTypeId
          ? _self.rideTypeId
          : rideTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideRequest: freezed == rideRequest
          ? _self.rideRequest
          : rideRequest // ignore: cast_nullable_to_non_nullable
              as RideRequest?,
      paymentIntentId: freezed == paymentIntentId
          ? _self.paymentIntentId
          : paymentIntentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodId: freezed == paymentMethodId
          ? _self.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerStripeId: freezed == customerStripeId
          ? _self.customerStripeId
          : customerStripeId // ignore: cast_nullable_to_non_nullable
              as String?,
      chargeAmount: freezed == chargeAmount
          ? _self.chargeAmount
          : chargeAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      capturedAmount: freezed == capturedAmount
          ? _self.capturedAmount
          : capturedAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      farePrice: freezed == farePrice
          ? _self.farePrice
          : farePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _self.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      payToDriver: freezed == payToDriver
          ? _self.payToDriver
          : payToDriver // ignore: cast_nullable_to_non_nullable
              as double?,
      platformCharges: freezed == platformCharges
          ? _self.platformCharges
          : platformCharges // ignore: cast_nullable_to_non_nullable
              as double?,
      toCurrency: freezed == toCurrency
          ? _self.toCurrency
          : toCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      fromCurrency: freezed == fromCurrency
          ? _self.fromCurrency
          : fromCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationCharges: freezed == cancellationCharges
          ? _self.cancellationCharges
          : cancellationCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      bidCount: freezed == bidCount
          ? _self.bidCount
          : bidCount // ignore: cast_nullable_to_non_nullable
              as int?,
      retryDriversCount: freezed == retryDriversCount
          ? _self.retryDriversCount
          : retryDriversCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRetryDriversCount: freezed == maxRetryDriversCount
          ? _self.maxRetryDriversCount
          : maxRetryDriversCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isBidding: freezed == isBidding
          ? _self.isBidding
          : isBidding // ignore: cast_nullable_to_non_nullable
              as bool?,
      quotedFare: freezed == quotedFare
          ? _self.quotedFare
          : quotedFare // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledAt: freezed == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestedAt: freezed == requestedAt
          ? _self.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _self.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      nanoId: freezed == nanoId
          ? _self.nanoId
          : nanoId // ignore: cast_nullable_to_non_nullable
              as int?,
      rideService: freezed == rideService
          ? _self.rideService
          : rideService // ignore: cast_nullable_to_non_nullable
              as String?,
      startedAt: freezed == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      onrouteAt: freezed == onrouteAt
          ? _self.onrouteAt
          : onrouteAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      arrivedAt: freezed == arrivedAt
          ? _self.arrivedAt
          : arrivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      acceptedAt: freezed == acceptedAt
          ? _self.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validateAt: freezed == validateAt
          ? _self.validateAt
          : validateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerInvoiceSeenAt: freezed == customerInvoiceSeenAt
          ? _self.customerInvoiceSeenAt
          : customerInvoiceSeenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      driverInvoiceSeenAt: freezed == driverInvoiceSeenAt
          ? _self.driverInvoiceSeenAt
          : driverInvoiceSeenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedDrivers: freezed == rejectedDrivers
          ? _self.rejectedDrivers
          : rejectedDrivers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      requestedDrivers: freezed == requestedDrivers
          ? _self.requestedDrivers
          : requestedDrivers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isDriverCancelled: freezed == isDriverCancelled
          ? _self.isDriverCancelled
          : isDriverCancelled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCustomerCancelled: freezed == isCustomerCancelled
          ? _self.isCustomerCancelled
          : isCustomerCancelled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSystemCancelled: freezed == isSystemCancelled
          ? _self.isSystemCancelled
          : isSystemCancelled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRideEnd: freezed == isRideEnd
          ? _self.isRideEnd
          : isRideEnd // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCustomerInvoiceSeen: freezed == isCustomerInvoiceSeen
          ? _self.isCustomerInvoiceSeen
          : isCustomerInvoiceSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDriverInvoiceSeen: freezed == isDriverInvoiceSeen
          ? _self.isDriverInvoiceSeen
          : isDriverInvoiceSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _self.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      timeToRespond: freezed == timeToRespond
          ? _self.timeToRespond
          : timeToRespond // ignore: cast_nullable_to_non_nullable
              as int?,
      conversationId: freezed == conversationId
          ? _self.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleId: freezed == vehicleId
          ? _self.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErInfoCopyWith<$Res>? get customerInfo {
    if (_self.customerInfo == null) {
      return null;
    }

    return $ErInfoCopyWith<$Res>(_self.customerInfo!, (value) {
      return _then(_self.copyWith(customerInfo: value));
    });
  }

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErInfoCopyWith<$Res>? get driverInfo {
    if (_self.driverInfo == null) {
      return null;
    }

    return $ErInfoCopyWith<$Res>(_self.driverInfo!, (value) {
      return _then(_self.copyWith(driverInfo: value));
    });
  }

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleInfoCopyWith<$Res>? get vehicleInfo {
    if (_self.vehicleInfo == null) {
      return null;
    }

    return $VehicleInfoCopyWith<$Res>(_self.vehicleInfo!, (value) {
      return _then(_self.copyWith(vehicleInfo: value));
    });
  }

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideRequestCopyWith<$Res>? get rideRequest {
    if (_self.rideRequest == null) {
      return null;
    }

    return $RideRequestCopyWith<$Res>(_self.rideRequest!, (value) {
      return _then(_self.copyWith(rideRequest: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Ride].
extension RidePatterns on Ride {
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
    TResult Function(_Ride value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Ride() when $default != null:
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
    TResult Function(_Ride value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ride():
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
    TResult? Function(_Ride value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ride() when $default != null:
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
            @JsonKey(name: "customer_info") ErInfo? customerInfo,
            @JsonKey(name: "driver_info") ErInfo? driverInfo,
            @JsonKey(name: "vehicle_info") VehicleInfo? vehicleInfo,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "driver_id") String? driverId,
            @JsonKey(name: "ride_type_id") String? rideTypeId,
            @JsonKey(name: "ride_request") RideRequest? rideRequest,
            @JsonKey(name: "payment_intent_id") String? paymentIntentId,
            @JsonKey(name: "payment_method_id") String? paymentMethodId,
            @JsonKey(name: "customer_stripe_id") String? customerStripeId,
            @JsonKey(name: "charge_amount") int? chargeAmount,
            @JsonKey(name: "captured_amount") double? capturedAmount,
            @JsonKey(name: "fare_price") double? farePrice,
            @JsonKey(name: "total_price") double? totalPrice,
            @JsonKey(name: "vat") double? vat,
            @JsonKey(name: "pay_to_driver") double? payToDriver,
            @JsonKey(name: "platform_charges") double? platformCharges,
            @JsonKey(name: "to_currency") String? toCurrency,
            @JsonKey(name: "from_currency") String? fromCurrency,
            @JsonKey(name: "cancellation_charges") int? cancellationCharges,
            @JsonKey(name: "bid_count") int? bidCount,
            @JsonKey(name: "retry_drivers_count") int? retryDriversCount,
            @JsonKey(name: "max_retry_drivers_count") int? maxRetryDriversCount,
            @JsonKey(name: "is_bidding") bool? isBidding,
            @JsonKey(name: "quoted_fare") String? quotedFare,
            @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
            @JsonKey(name: "requested_at") DateTime? requestedAt,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "payment_status") String? paymentStatus,
            @JsonKey(name: "nano_id") int? nanoId,
            @JsonKey(name: "ride_service") String? rideService,
            @JsonKey(name: "started_at") DateTime? startedAt,
            @JsonKey(name: "onroute_at") DateTime? onrouteAt,
            @JsonKey(name: "arrived_at") DateTime? arrivedAt,
            @JsonKey(name: "accepted_at") DateTime? acceptedAt,
            @JsonKey(name: "rejected_at") DateTime? rejectedAt,
            @JsonKey(name: "cancelled_at") DateTime? cancelledAt,
            @JsonKey(name: "validate_at") DateTime? validateAt,
            @JsonKey(name: "completed_at") DateTime? completedAt,
            @JsonKey(name: "end_at") DateTime? endAt,
            @JsonKey(name: "customer_invoice_seen_at")
            DateTime? customerInvoiceSeenAt,
            @JsonKey(name: "driver_invoice_seen_at")
            DateTime? driverInvoiceSeenAt,
            @JsonKey(name: "rejected_drivers") List<dynamic>? rejectedDrivers,
            @JsonKey(name: "requested_drivers") List<String>? requestedDrivers,
            @JsonKey(name: "is_driver_cancelled") bool? isDriverCancelled,
            @JsonKey(name: "is_customer_cancelled") bool? isCustomerCancelled,
            @JsonKey(name: "is_system_cancelled") bool? isSystemCancelled,
            @JsonKey(name: "is_ride_end") bool? isRideEnd,
            @JsonKey(name: "is_customer_invoice_seen")
            bool? isCustomerInvoiceSeen,
            @JsonKey(name: "is_driver_invoice_seen") bool? isDriverInvoiceSeen,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "time_to_respond") int? timeToRespond,
            @JsonKey(name: "conversation_id") String? conversationId,
            @JsonKey(name: "organization_id") String? organizationId,
            @JsonKey(name: "vehicle_id") String? vehicleId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Ride() when $default != null:
        return $default(
            _that.customerInfo,
            _that.driverInfo,
            _that.vehicleInfo,
            _that.id,
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.customerId,
            _that.driverId,
            _that.rideTypeId,
            _that.rideRequest,
            _that.paymentIntentId,
            _that.paymentMethodId,
            _that.customerStripeId,
            _that.chargeAmount,
            _that.capturedAmount,
            _that.farePrice,
            _that.totalPrice,
            _that.vat,
            _that.payToDriver,
            _that.platformCharges,
            _that.toCurrency,
            _that.fromCurrency,
            _that.cancellationCharges,
            _that.bidCount,
            _that.retryDriversCount,
            _that.maxRetryDriversCount,
            _that.isBidding,
            _that.quotedFare,
            _that.scheduledAt,
            _that.requestedAt,
            _that.status,
            _that.paymentStatus,
            _that.nanoId,
            _that.rideService,
            _that.startedAt,
            _that.onrouteAt,
            _that.arrivedAt,
            _that.acceptedAt,
            _that.rejectedAt,
            _that.cancelledAt,
            _that.validateAt,
            _that.completedAt,
            _that.endAt,
            _that.customerInvoiceSeenAt,
            _that.driverInvoiceSeenAt,
            _that.rejectedDrivers,
            _that.requestedDrivers,
            _that.isDriverCancelled,
            _that.isCustomerCancelled,
            _that.isSystemCancelled,
            _that.isRideEnd,
            _that.isCustomerInvoiceSeen,
            _that.isDriverInvoiceSeen,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.timeToRespond,
            _that.conversationId,
            _that.organizationId,
            _that.vehicleId);
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
            @JsonKey(name: "customer_info") ErInfo? customerInfo,
            @JsonKey(name: "driver_info") ErInfo? driverInfo,
            @JsonKey(name: "vehicle_info") VehicleInfo? vehicleInfo,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "driver_id") String? driverId,
            @JsonKey(name: "ride_type_id") String? rideTypeId,
            @JsonKey(name: "ride_request") RideRequest? rideRequest,
            @JsonKey(name: "payment_intent_id") String? paymentIntentId,
            @JsonKey(name: "payment_method_id") String? paymentMethodId,
            @JsonKey(name: "customer_stripe_id") String? customerStripeId,
            @JsonKey(name: "charge_amount") int? chargeAmount,
            @JsonKey(name: "captured_amount") double? capturedAmount,
            @JsonKey(name: "fare_price") double? farePrice,
            @JsonKey(name: "total_price") double? totalPrice,
            @JsonKey(name: "vat") double? vat,
            @JsonKey(name: "pay_to_driver") double? payToDriver,
            @JsonKey(name: "platform_charges") double? platformCharges,
            @JsonKey(name: "to_currency") String? toCurrency,
            @JsonKey(name: "from_currency") String? fromCurrency,
            @JsonKey(name: "cancellation_charges") int? cancellationCharges,
            @JsonKey(name: "bid_count") int? bidCount,
            @JsonKey(name: "retry_drivers_count") int? retryDriversCount,
            @JsonKey(name: "max_retry_drivers_count") int? maxRetryDriversCount,
            @JsonKey(name: "is_bidding") bool? isBidding,
            @JsonKey(name: "quoted_fare") String? quotedFare,
            @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
            @JsonKey(name: "requested_at") DateTime? requestedAt,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "payment_status") String? paymentStatus,
            @JsonKey(name: "nano_id") int? nanoId,
            @JsonKey(name: "ride_service") String? rideService,
            @JsonKey(name: "started_at") DateTime? startedAt,
            @JsonKey(name: "onroute_at") DateTime? onrouteAt,
            @JsonKey(name: "arrived_at") DateTime? arrivedAt,
            @JsonKey(name: "accepted_at") DateTime? acceptedAt,
            @JsonKey(name: "rejected_at") DateTime? rejectedAt,
            @JsonKey(name: "cancelled_at") DateTime? cancelledAt,
            @JsonKey(name: "validate_at") DateTime? validateAt,
            @JsonKey(name: "completed_at") DateTime? completedAt,
            @JsonKey(name: "end_at") DateTime? endAt,
            @JsonKey(name: "customer_invoice_seen_at")
            DateTime? customerInvoiceSeenAt,
            @JsonKey(name: "driver_invoice_seen_at")
            DateTime? driverInvoiceSeenAt,
            @JsonKey(name: "rejected_drivers") List<dynamic>? rejectedDrivers,
            @JsonKey(name: "requested_drivers") List<String>? requestedDrivers,
            @JsonKey(name: "is_driver_cancelled") bool? isDriverCancelled,
            @JsonKey(name: "is_customer_cancelled") bool? isCustomerCancelled,
            @JsonKey(name: "is_system_cancelled") bool? isSystemCancelled,
            @JsonKey(name: "is_ride_end") bool? isRideEnd,
            @JsonKey(name: "is_customer_invoice_seen")
            bool? isCustomerInvoiceSeen,
            @JsonKey(name: "is_driver_invoice_seen") bool? isDriverInvoiceSeen,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "time_to_respond") int? timeToRespond,
            @JsonKey(name: "conversation_id") String? conversationId,
            @JsonKey(name: "organization_id") String? organizationId,
            @JsonKey(name: "vehicle_id") String? vehicleId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ride():
        return $default(
            _that.customerInfo,
            _that.driverInfo,
            _that.vehicleInfo,
            _that.id,
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.customerId,
            _that.driverId,
            _that.rideTypeId,
            _that.rideRequest,
            _that.paymentIntentId,
            _that.paymentMethodId,
            _that.customerStripeId,
            _that.chargeAmount,
            _that.capturedAmount,
            _that.farePrice,
            _that.totalPrice,
            _that.vat,
            _that.payToDriver,
            _that.platformCharges,
            _that.toCurrency,
            _that.fromCurrency,
            _that.cancellationCharges,
            _that.bidCount,
            _that.retryDriversCount,
            _that.maxRetryDriversCount,
            _that.isBidding,
            _that.quotedFare,
            _that.scheduledAt,
            _that.requestedAt,
            _that.status,
            _that.paymentStatus,
            _that.nanoId,
            _that.rideService,
            _that.startedAt,
            _that.onrouteAt,
            _that.arrivedAt,
            _that.acceptedAt,
            _that.rejectedAt,
            _that.cancelledAt,
            _that.validateAt,
            _that.completedAt,
            _that.endAt,
            _that.customerInvoiceSeenAt,
            _that.driverInvoiceSeenAt,
            _that.rejectedDrivers,
            _that.requestedDrivers,
            _that.isDriverCancelled,
            _that.isCustomerCancelled,
            _that.isSystemCancelled,
            _that.isRideEnd,
            _that.isCustomerInvoiceSeen,
            _that.isDriverInvoiceSeen,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.timeToRespond,
            _that.conversationId,
            _that.organizationId,
            _that.vehicleId);
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
            @JsonKey(name: "customer_info") ErInfo? customerInfo,
            @JsonKey(name: "driver_info") ErInfo? driverInfo,
            @JsonKey(name: "vehicle_info") VehicleInfo? vehicleInfo,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "driver_id") String? driverId,
            @JsonKey(name: "ride_type_id") String? rideTypeId,
            @JsonKey(name: "ride_request") RideRequest? rideRequest,
            @JsonKey(name: "payment_intent_id") String? paymentIntentId,
            @JsonKey(name: "payment_method_id") String? paymentMethodId,
            @JsonKey(name: "customer_stripe_id") String? customerStripeId,
            @JsonKey(name: "charge_amount") int? chargeAmount,
            @JsonKey(name: "captured_amount") double? capturedAmount,
            @JsonKey(name: "fare_price") double? farePrice,
            @JsonKey(name: "total_price") double? totalPrice,
            @JsonKey(name: "vat") double? vat,
            @JsonKey(name: "pay_to_driver") double? payToDriver,
            @JsonKey(name: "platform_charges") double? platformCharges,
            @JsonKey(name: "to_currency") String? toCurrency,
            @JsonKey(name: "from_currency") String? fromCurrency,
            @JsonKey(name: "cancellation_charges") int? cancellationCharges,
            @JsonKey(name: "bid_count") int? bidCount,
            @JsonKey(name: "retry_drivers_count") int? retryDriversCount,
            @JsonKey(name: "max_retry_drivers_count") int? maxRetryDriversCount,
            @JsonKey(name: "is_bidding") bool? isBidding,
            @JsonKey(name: "quoted_fare") String? quotedFare,
            @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
            @JsonKey(name: "requested_at") DateTime? requestedAt,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "payment_status") String? paymentStatus,
            @JsonKey(name: "nano_id") int? nanoId,
            @JsonKey(name: "ride_service") String? rideService,
            @JsonKey(name: "started_at") DateTime? startedAt,
            @JsonKey(name: "onroute_at") DateTime? onrouteAt,
            @JsonKey(name: "arrived_at") DateTime? arrivedAt,
            @JsonKey(name: "accepted_at") DateTime? acceptedAt,
            @JsonKey(name: "rejected_at") DateTime? rejectedAt,
            @JsonKey(name: "cancelled_at") DateTime? cancelledAt,
            @JsonKey(name: "validate_at") DateTime? validateAt,
            @JsonKey(name: "completed_at") DateTime? completedAt,
            @JsonKey(name: "end_at") DateTime? endAt,
            @JsonKey(name: "customer_invoice_seen_at")
            DateTime? customerInvoiceSeenAt,
            @JsonKey(name: "driver_invoice_seen_at")
            DateTime? driverInvoiceSeenAt,
            @JsonKey(name: "rejected_drivers") List<dynamic>? rejectedDrivers,
            @JsonKey(name: "requested_drivers") List<String>? requestedDrivers,
            @JsonKey(name: "is_driver_cancelled") bool? isDriverCancelled,
            @JsonKey(name: "is_customer_cancelled") bool? isCustomerCancelled,
            @JsonKey(name: "is_system_cancelled") bool? isSystemCancelled,
            @JsonKey(name: "is_ride_end") bool? isRideEnd,
            @JsonKey(name: "is_customer_invoice_seen")
            bool? isCustomerInvoiceSeen,
            @JsonKey(name: "is_driver_invoice_seen") bool? isDriverInvoiceSeen,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "time_to_respond") int? timeToRespond,
            @JsonKey(name: "conversation_id") String? conversationId,
            @JsonKey(name: "organization_id") String? organizationId,
            @JsonKey(name: "vehicle_id") String? vehicleId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ride() when $default != null:
        return $default(
            _that.customerInfo,
            _that.driverInfo,
            _that.vehicleInfo,
            _that.id,
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.customerId,
            _that.driverId,
            _that.rideTypeId,
            _that.rideRequest,
            _that.paymentIntentId,
            _that.paymentMethodId,
            _that.customerStripeId,
            _that.chargeAmount,
            _that.capturedAmount,
            _that.farePrice,
            _that.totalPrice,
            _that.vat,
            _that.payToDriver,
            _that.platformCharges,
            _that.toCurrency,
            _that.fromCurrency,
            _that.cancellationCharges,
            _that.bidCount,
            _that.retryDriversCount,
            _that.maxRetryDriversCount,
            _that.isBidding,
            _that.quotedFare,
            _that.scheduledAt,
            _that.requestedAt,
            _that.status,
            _that.paymentStatus,
            _that.nanoId,
            _that.rideService,
            _that.startedAt,
            _that.onrouteAt,
            _that.arrivedAt,
            _that.acceptedAt,
            _that.rejectedAt,
            _that.cancelledAt,
            _that.validateAt,
            _that.completedAt,
            _that.endAt,
            _that.customerInvoiceSeenAt,
            _that.driverInvoiceSeenAt,
            _that.rejectedDrivers,
            _that.requestedDrivers,
            _that.isDriverCancelled,
            _that.isCustomerCancelled,
            _that.isSystemCancelled,
            _that.isRideEnd,
            _that.isCustomerInvoiceSeen,
            _that.isDriverInvoiceSeen,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.timeToRespond,
            _that.conversationId,
            _that.organizationId,
            _that.vehicleId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Ride implements Ride {
  const _Ride(
      {@JsonKey(name: "customer_info") this.customerInfo,
      @JsonKey(name: "driver_info") this.driverInfo,
      @JsonKey(name: "vehicle_info") this.vehicleInfo,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "country_id") this.countryId,
      @JsonKey(name: "city_id") this.cityId,
      @JsonKey(name: "zone_id") this.zoneId,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "driver_id") this.driverId,
      @JsonKey(name: "ride_type_id") this.rideTypeId,
      @JsonKey(name: "ride_request") this.rideRequest,
      @JsonKey(name: "payment_intent_id") this.paymentIntentId,
      @JsonKey(name: "payment_method_id") this.paymentMethodId,
      @JsonKey(name: "customer_stripe_id") this.customerStripeId,
      @JsonKey(name: "charge_amount") this.chargeAmount,
      @JsonKey(name: "captured_amount") this.capturedAmount,
      @JsonKey(name: "fare_price") this.farePrice,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "pay_to_driver") this.payToDriver,
      @JsonKey(name: "platform_charges") this.platformCharges,
      @JsonKey(name: "to_currency") this.toCurrency,
      @JsonKey(name: "from_currency") this.fromCurrency,
      @JsonKey(name: "cancellation_charges") this.cancellationCharges,
      @JsonKey(name: "bid_count") this.bidCount,
      @JsonKey(name: "retry_drivers_count") this.retryDriversCount,
      @JsonKey(name: "max_retry_drivers_count") this.maxRetryDriversCount,
      @JsonKey(name: "is_bidding") this.isBidding,
      @JsonKey(name: "quoted_fare") this.quotedFare,
      @JsonKey(name: "scheduled_at") this.scheduledAt,
      @JsonKey(name: "requested_at") this.requestedAt,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "nano_id") this.nanoId,
      @JsonKey(name: "ride_service") this.rideService,
      @JsonKey(name: "started_at") this.startedAt,
      @JsonKey(name: "onroute_at") this.onrouteAt,
      @JsonKey(name: "arrived_at") this.arrivedAt,
      @JsonKey(name: "accepted_at") this.acceptedAt,
      @JsonKey(name: "rejected_at") this.rejectedAt,
      @JsonKey(name: "cancelled_at") this.cancelledAt,
      @JsonKey(name: "validate_at") this.validateAt,
      @JsonKey(name: "completed_at") this.completedAt,
      @JsonKey(name: "end_at") this.endAt,
      @JsonKey(name: "customer_invoice_seen_at") this.customerInvoiceSeenAt,
      @JsonKey(name: "driver_invoice_seen_at") this.driverInvoiceSeenAt,
      @JsonKey(name: "rejected_drivers") final List<dynamic>? rejectedDrivers,
      @JsonKey(name: "requested_drivers") final List<String>? requestedDrivers,
      @JsonKey(name: "is_driver_cancelled") this.isDriverCancelled,
      @JsonKey(name: "is_customer_cancelled") this.isCustomerCancelled,
      @JsonKey(name: "is_system_cancelled") this.isSystemCancelled,
      @JsonKey(name: "is_ride_end") this.isRideEnd,
      @JsonKey(name: "is_customer_invoice_seen") this.isCustomerInvoiceSeen,
      @JsonKey(name: "is_driver_invoice_seen") this.isDriverInvoiceSeen,
      @JsonKey(name: "is_deleted") this.isDeleted,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "time_to_respond") this.timeToRespond,
      @JsonKey(name: "conversation_id") this.conversationId,
      @JsonKey(name: "organization_id") this.organizationId,
      @JsonKey(name: "vehicle_id") this.vehicleId})
      : _rejectedDrivers = rejectedDrivers,
        _requestedDrivers = requestedDrivers;
  factory _Ride.fromJson(Map<String, dynamic> json) => _$RideFromJson(json);

  @override
  @JsonKey(name: "customer_info")
  final ErInfo? customerInfo;
  @override
  @JsonKey(name: "driver_info")
  final ErInfo? driverInfo;
  @override
  @JsonKey(name: "vehicle_info")
  final VehicleInfo? vehicleInfo;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "country_id")
  final String? countryId;
  @override
  @JsonKey(name: "city_id")
  final String? cityId;
  @override
  @JsonKey(name: "zone_id")
  final String? zoneId;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "driver_id")
  final String? driverId;
  @override
  @JsonKey(name: "ride_type_id")
  final String? rideTypeId;
  @override
  @JsonKey(name: "ride_request")
  final RideRequest? rideRequest;
  @override
  @JsonKey(name: "payment_intent_id")
  final String? paymentIntentId;
  @override
  @JsonKey(name: "payment_method_id")
  final String? paymentMethodId;
  @override
  @JsonKey(name: "customer_stripe_id")
  final String? customerStripeId;
  @override
  @JsonKey(name: "charge_amount")
  final int? chargeAmount;
  @override
  @JsonKey(name: "captured_amount")
  final double? capturedAmount;
  @override
  @JsonKey(name: "fare_price")
  final double? farePrice;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @override
  @JsonKey(name: "vat")
  final double? vat;
  @override
  @JsonKey(name: "pay_to_driver")
  final double? payToDriver;
  @override
  @JsonKey(name: "platform_charges")
  final double? platformCharges;
  @override
  @JsonKey(name: "to_currency")
  final String? toCurrency;
  @override
  @JsonKey(name: "from_currency")
  final String? fromCurrency;
  @override
  @JsonKey(name: "cancellation_charges")
  final int? cancellationCharges;
  @override
  @JsonKey(name: "bid_count")
  final int? bidCount;
  @override
  @JsonKey(name: "retry_drivers_count")
  final int? retryDriversCount;
  @override
  @JsonKey(name: "max_retry_drivers_count")
  final int? maxRetryDriversCount;
  @override
  @JsonKey(name: "is_bidding")
  final bool? isBidding;
  @override
  @JsonKey(name: "quoted_fare")
  final String? quotedFare;
  @override
  @JsonKey(name: "scheduled_at")
  final DateTime? scheduledAt;
  @override
  @JsonKey(name: "requested_at")
  final DateTime? requestedAt;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "nano_id")
  final int? nanoId;
  @override
  @JsonKey(name: "ride_service")
  final String? rideService;
  @override
  @JsonKey(name: "started_at")
  final DateTime? startedAt;
  @override
  @JsonKey(name: "onroute_at")
  final DateTime? onrouteAt;
  @override
  @JsonKey(name: "arrived_at")
  final DateTime? arrivedAt;
  @override
  @JsonKey(name: "accepted_at")
  final DateTime? acceptedAt;
  @override
  @JsonKey(name: "rejected_at")
  final DateTime? rejectedAt;
  @override
  @JsonKey(name: "cancelled_at")
  final DateTime? cancelledAt;
  @override
  @JsonKey(name: "validate_at")
  final DateTime? validateAt;
  @override
  @JsonKey(name: "completed_at")
  final DateTime? completedAt;
  @override
  @JsonKey(name: "end_at")
  final DateTime? endAt;
  @override
  @JsonKey(name: "customer_invoice_seen_at")
  final DateTime? customerInvoiceSeenAt;
  @override
  @JsonKey(name: "driver_invoice_seen_at")
  final DateTime? driverInvoiceSeenAt;
  final List<dynamic>? _rejectedDrivers;
  @override
  @JsonKey(name: "rejected_drivers")
  List<dynamic>? get rejectedDrivers {
    final value = _rejectedDrivers;
    if (value == null) return null;
    if (_rejectedDrivers is EqualUnmodifiableListView) return _rejectedDrivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _requestedDrivers;
  @override
  @JsonKey(name: "requested_drivers")
  List<String>? get requestedDrivers {
    final value = _requestedDrivers;
    if (value == null) return null;
    if (_requestedDrivers is EqualUnmodifiableListView)
      return _requestedDrivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "is_driver_cancelled")
  final bool? isDriverCancelled;
  @override
  @JsonKey(name: "is_customer_cancelled")
  final bool? isCustomerCancelled;
  @override
  @JsonKey(name: "is_system_cancelled")
  final bool? isSystemCancelled;
  @override
  @JsonKey(name: "is_ride_end")
  final bool? isRideEnd;
  @override
  @JsonKey(name: "is_customer_invoice_seen")
  final bool? isCustomerInvoiceSeen;
  @override
  @JsonKey(name: "is_driver_invoice_seen")
  final bool? isDriverInvoiceSeen;
  @override
  @JsonKey(name: "is_deleted")
  final bool? isDeleted;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  @JsonKey(name: "time_to_respond")
  final int? timeToRespond;
  @override
  @JsonKey(name: "conversation_id")
  final String? conversationId;
  @override
  @JsonKey(name: "organization_id")
  final String? organizationId;
  @override
  @JsonKey(name: "vehicle_id")
  final String? vehicleId;

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideCopyWith<_Ride> get copyWith =>
      __$RideCopyWithImpl<_Ride>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ride &&
            (identical(other.customerInfo, customerInfo) ||
                other.customerInfo == customerInfo) &&
            (identical(other.driverInfo, driverInfo) ||
                other.driverInfo == driverInfo) &&
            (identical(other.vehicleInfo, vehicleInfo) ||
                other.vehicleInfo == vehicleInfo) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.rideTypeId, rideTypeId) ||
                other.rideTypeId == rideTypeId) &&
            (identical(other.rideRequest, rideRequest) ||
                other.rideRequest == rideRequest) &&
            (identical(other.paymentIntentId, paymentIntentId) ||
                other.paymentIntentId == paymentIntentId) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.customerStripeId, customerStripeId) ||
                other.customerStripeId == customerStripeId) &&
            (identical(other.chargeAmount, chargeAmount) ||
                other.chargeAmount == chargeAmount) &&
            (identical(other.capturedAmount, capturedAmount) ||
                other.capturedAmount == capturedAmount) &&
            (identical(other.farePrice, farePrice) ||
                other.farePrice == farePrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.payToDriver, payToDriver) ||
                other.payToDriver == payToDriver) &&
            (identical(other.platformCharges, platformCharges) ||
                other.platformCharges == platformCharges) &&
            (identical(other.toCurrency, toCurrency) ||
                other.toCurrency == toCurrency) &&
            (identical(other.fromCurrency, fromCurrency) ||
                other.fromCurrency == fromCurrency) &&
            (identical(other.cancellationCharges, cancellationCharges) ||
                other.cancellationCharges == cancellationCharges) &&
            (identical(other.bidCount, bidCount) ||
                other.bidCount == bidCount) &&
            (identical(other.retryDriversCount, retryDriversCount) ||
                other.retryDriversCount == retryDriversCount) &&
            (identical(other.maxRetryDriversCount, maxRetryDriversCount) ||
                other.maxRetryDriversCount == maxRetryDriversCount) &&
            (identical(other.isBidding, isBidding) ||
                other.isBidding == isBidding) &&
            (identical(other.quotedFare, quotedFare) ||
                other.quotedFare == quotedFare) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.nanoId, nanoId) || other.nanoId == nanoId) &&
            (identical(other.rideService, rideService) ||
                other.rideService == rideService) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.onrouteAt, onrouteAt) ||
                other.onrouteAt == onrouteAt) &&
            (identical(other.arrivedAt, arrivedAt) ||
                other.arrivedAt == arrivedAt) &&
            (identical(other.acceptedAt, acceptedAt) ||
                other.acceptedAt == acceptedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.validateAt, validateAt) ||
                other.validateAt == validateAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.customerInvoiceSeenAt, customerInvoiceSeenAt) ||
                other.customerInvoiceSeenAt == customerInvoiceSeenAt) &&
            (identical(other.driverInvoiceSeenAt, driverInvoiceSeenAt) ||
                other.driverInvoiceSeenAt == driverInvoiceSeenAt) &&
            const DeepCollectionEquality()
                .equals(other._rejectedDrivers, _rejectedDrivers) &&
            const DeepCollectionEquality()
                .equals(other._requestedDrivers, _requestedDrivers) &&
            (identical(other.isDriverCancelled, isDriverCancelled) ||
                other.isDriverCancelled == isDriverCancelled) &&
            (identical(other.isCustomerCancelled, isCustomerCancelled) ||
                other.isCustomerCancelled == isCustomerCancelled) &&
            (identical(other.isSystemCancelled, isSystemCancelled) || other.isSystemCancelled == isSystemCancelled) &&
            (identical(other.isRideEnd, isRideEnd) || other.isRideEnd == isRideEnd) &&
            (identical(other.isCustomerInvoiceSeen, isCustomerInvoiceSeen) || other.isCustomerInvoiceSeen == isCustomerInvoiceSeen) &&
            (identical(other.isDriverInvoiceSeen, isDriverInvoiceSeen) || other.isDriverInvoiceSeen == isDriverInvoiceSeen) &&
            (identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.timeToRespond, timeToRespond) || other.timeToRespond == timeToRespond) &&
            (identical(other.conversationId, conversationId) || other.conversationId == conversationId) &&
            (identical(other.organizationId, organizationId) || other.organizationId == organizationId) &&
            (identical(other.vehicleId, vehicleId) || other.vehicleId == vehicleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        customerInfo,
        driverInfo,
        vehicleInfo,
        id,
        countryId,
        cityId,
        zoneId,
        customerId,
        driverId,
        rideTypeId,
        rideRequest,
        paymentIntentId,
        paymentMethodId,
        customerStripeId,
        chargeAmount,
        capturedAmount,
        farePrice,
        totalPrice,
        vat,
        payToDriver,
        platformCharges,
        toCurrency,
        fromCurrency,
        cancellationCharges,
        bidCount,
        retryDriversCount,
        maxRetryDriversCount,
        isBidding,
        quotedFare,
        scheduledAt,
        requestedAt,
        status,
        paymentStatus,
        nanoId,
        rideService,
        startedAt,
        onrouteAt,
        arrivedAt,
        acceptedAt,
        rejectedAt,
        cancelledAt,
        validateAt,
        completedAt,
        endAt,
        customerInvoiceSeenAt,
        driverInvoiceSeenAt,
        const DeepCollectionEquality().hash(_rejectedDrivers),
        const DeepCollectionEquality().hash(_requestedDrivers),
        isDriverCancelled,
        isCustomerCancelled,
        isSystemCancelled,
        isRideEnd,
        isCustomerInvoiceSeen,
        isDriverInvoiceSeen,
        isDeleted,
        createdAt,
        updatedAt,
        v,
        timeToRespond,
        conversationId,
        organizationId,
        vehicleId
      ]);

  @override
  String toString() {
    return 'Ride(customerInfo: $customerInfo, driverInfo: $driverInfo, vehicleInfo: $vehicleInfo, id: $id, countryId: $countryId, cityId: $cityId, zoneId: $zoneId, customerId: $customerId, driverId: $driverId, rideTypeId: $rideTypeId, rideRequest: $rideRequest, paymentIntentId: $paymentIntentId, paymentMethodId: $paymentMethodId, customerStripeId: $customerStripeId, chargeAmount: $chargeAmount, capturedAmount: $capturedAmount, farePrice: $farePrice, totalPrice: $totalPrice, vat: $vat, payToDriver: $payToDriver, platformCharges: $platformCharges, toCurrency: $toCurrency, fromCurrency: $fromCurrency, cancellationCharges: $cancellationCharges, bidCount: $bidCount, retryDriversCount: $retryDriversCount, maxRetryDriversCount: $maxRetryDriversCount, isBidding: $isBidding, quotedFare: $quotedFare, scheduledAt: $scheduledAt, requestedAt: $requestedAt, status: $status, paymentStatus: $paymentStatus, nanoId: $nanoId, rideService: $rideService, startedAt: $startedAt, onrouteAt: $onrouteAt, arrivedAt: $arrivedAt, acceptedAt: $acceptedAt, rejectedAt: $rejectedAt, cancelledAt: $cancelledAt, validateAt: $validateAt, completedAt: $completedAt, endAt: $endAt, customerInvoiceSeenAt: $customerInvoiceSeenAt, driverInvoiceSeenAt: $driverInvoiceSeenAt, rejectedDrivers: $rejectedDrivers, requestedDrivers: $requestedDrivers, isDriverCancelled: $isDriverCancelled, isCustomerCancelled: $isCustomerCancelled, isSystemCancelled: $isSystemCancelled, isRideEnd: $isRideEnd, isCustomerInvoiceSeen: $isCustomerInvoiceSeen, isDriverInvoiceSeen: $isDriverInvoiceSeen, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, timeToRespond: $timeToRespond, conversationId: $conversationId, organizationId: $organizationId, vehicleId: $vehicleId)';
  }
}

/// @nodoc
abstract mixin class _$RideCopyWith<$Res> implements $RideCopyWith<$Res> {
  factory _$RideCopyWith(_Ride value, $Res Function(_Ride) _then) =
      __$RideCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "customer_info") ErInfo? customerInfo,
      @JsonKey(name: "driver_info") ErInfo? driverInfo,
      @JsonKey(name: "vehicle_info") VehicleInfo? vehicleInfo,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "country_id") String? countryId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "zone_id") String? zoneId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "driver_id") String? driverId,
      @JsonKey(name: "ride_type_id") String? rideTypeId,
      @JsonKey(name: "ride_request") RideRequest? rideRequest,
      @JsonKey(name: "payment_intent_id") String? paymentIntentId,
      @JsonKey(name: "payment_method_id") String? paymentMethodId,
      @JsonKey(name: "customer_stripe_id") String? customerStripeId,
      @JsonKey(name: "charge_amount") int? chargeAmount,
      @JsonKey(name: "captured_amount") double? capturedAmount,
      @JsonKey(name: "fare_price") double? farePrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "pay_to_driver") double? payToDriver,
      @JsonKey(name: "platform_charges") double? platformCharges,
      @JsonKey(name: "to_currency") String? toCurrency,
      @JsonKey(name: "from_currency") String? fromCurrency,
      @JsonKey(name: "cancellation_charges") int? cancellationCharges,
      @JsonKey(name: "bid_count") int? bidCount,
      @JsonKey(name: "retry_drivers_count") int? retryDriversCount,
      @JsonKey(name: "max_retry_drivers_count") int? maxRetryDriversCount,
      @JsonKey(name: "is_bidding") bool? isBidding,
      @JsonKey(name: "quoted_fare") String? quotedFare,
      @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
      @JsonKey(name: "requested_at") DateTime? requestedAt,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "nano_id") int? nanoId,
      @JsonKey(name: "ride_service") String? rideService,
      @JsonKey(name: "started_at") DateTime? startedAt,
      @JsonKey(name: "onroute_at") DateTime? onrouteAt,
      @JsonKey(name: "arrived_at") DateTime? arrivedAt,
      @JsonKey(name: "accepted_at") DateTime? acceptedAt,
      @JsonKey(name: "rejected_at") DateTime? rejectedAt,
      @JsonKey(name: "cancelled_at") DateTime? cancelledAt,
      @JsonKey(name: "validate_at") DateTime? validateAt,
      @JsonKey(name: "completed_at") DateTime? completedAt,
      @JsonKey(name: "end_at") DateTime? endAt,
      @JsonKey(name: "customer_invoice_seen_at")
      DateTime? customerInvoiceSeenAt,
      @JsonKey(name: "driver_invoice_seen_at") DateTime? driverInvoiceSeenAt,
      @JsonKey(name: "rejected_drivers") List<dynamic>? rejectedDrivers,
      @JsonKey(name: "requested_drivers") List<String>? requestedDrivers,
      @JsonKey(name: "is_driver_cancelled") bool? isDriverCancelled,
      @JsonKey(name: "is_customer_cancelled") bool? isCustomerCancelled,
      @JsonKey(name: "is_system_cancelled") bool? isSystemCancelled,
      @JsonKey(name: "is_ride_end") bool? isRideEnd,
      @JsonKey(name: "is_customer_invoice_seen") bool? isCustomerInvoiceSeen,
      @JsonKey(name: "is_driver_invoice_seen") bool? isDriverInvoiceSeen,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "time_to_respond") int? timeToRespond,
      @JsonKey(name: "conversation_id") String? conversationId,
      @JsonKey(name: "organization_id") String? organizationId,
      @JsonKey(name: "vehicle_id") String? vehicleId});

  @override
  $ErInfoCopyWith<$Res>? get customerInfo;
  @override
  $ErInfoCopyWith<$Res>? get driverInfo;
  @override
  $VehicleInfoCopyWith<$Res>? get vehicleInfo;
  @override
  $RideRequestCopyWith<$Res>? get rideRequest;
}

/// @nodoc
class __$RideCopyWithImpl<$Res> implements _$RideCopyWith<$Res> {
  __$RideCopyWithImpl(this._self, this._then);

  final _Ride _self;
  final $Res Function(_Ride) _then;

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerInfo = freezed,
    Object? driverInfo = freezed,
    Object? vehicleInfo = freezed,
    Object? id = freezed,
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? zoneId = freezed,
    Object? customerId = freezed,
    Object? driverId = freezed,
    Object? rideTypeId = freezed,
    Object? rideRequest = freezed,
    Object? paymentIntentId = freezed,
    Object? paymentMethodId = freezed,
    Object? customerStripeId = freezed,
    Object? chargeAmount = freezed,
    Object? capturedAmount = freezed,
    Object? farePrice = freezed,
    Object? totalPrice = freezed,
    Object? vat = freezed,
    Object? payToDriver = freezed,
    Object? platformCharges = freezed,
    Object? toCurrency = freezed,
    Object? fromCurrency = freezed,
    Object? cancellationCharges = freezed,
    Object? bidCount = freezed,
    Object? retryDriversCount = freezed,
    Object? maxRetryDriversCount = freezed,
    Object? isBidding = freezed,
    Object? quotedFare = freezed,
    Object? scheduledAt = freezed,
    Object? requestedAt = freezed,
    Object? status = freezed,
    Object? paymentStatus = freezed,
    Object? nanoId = freezed,
    Object? rideService = freezed,
    Object? startedAt = freezed,
    Object? onrouteAt = freezed,
    Object? arrivedAt = freezed,
    Object? acceptedAt = freezed,
    Object? rejectedAt = freezed,
    Object? cancelledAt = freezed,
    Object? validateAt = freezed,
    Object? completedAt = freezed,
    Object? endAt = freezed,
    Object? customerInvoiceSeenAt = freezed,
    Object? driverInvoiceSeenAt = freezed,
    Object? rejectedDrivers = freezed,
    Object? requestedDrivers = freezed,
    Object? isDriverCancelled = freezed,
    Object? isCustomerCancelled = freezed,
    Object? isSystemCancelled = freezed,
    Object? isRideEnd = freezed,
    Object? isCustomerInvoiceSeen = freezed,
    Object? isDriverInvoiceSeen = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? timeToRespond = freezed,
    Object? conversationId = freezed,
    Object? organizationId = freezed,
    Object? vehicleId = freezed,
  }) {
    return _then(_Ride(
      customerInfo: freezed == customerInfo
          ? _self.customerInfo
          : customerInfo // ignore: cast_nullable_to_non_nullable
              as ErInfo?,
      driverInfo: freezed == driverInfo
          ? _self.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as ErInfo?,
      vehicleInfo: freezed == vehicleInfo
          ? _self.vehicleInfo
          : vehicleInfo // ignore: cast_nullable_to_non_nullable
              as VehicleInfo?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _self.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId: freezed == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _self.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideTypeId: freezed == rideTypeId
          ? _self.rideTypeId
          : rideTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideRequest: freezed == rideRequest
          ? _self.rideRequest
          : rideRequest // ignore: cast_nullable_to_non_nullable
              as RideRequest?,
      paymentIntentId: freezed == paymentIntentId
          ? _self.paymentIntentId
          : paymentIntentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodId: freezed == paymentMethodId
          ? _self.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerStripeId: freezed == customerStripeId
          ? _self.customerStripeId
          : customerStripeId // ignore: cast_nullable_to_non_nullable
              as String?,
      chargeAmount: freezed == chargeAmount
          ? _self.chargeAmount
          : chargeAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      capturedAmount: freezed == capturedAmount
          ? _self.capturedAmount
          : capturedAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      farePrice: freezed == farePrice
          ? _self.farePrice
          : farePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _self.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      payToDriver: freezed == payToDriver
          ? _self.payToDriver
          : payToDriver // ignore: cast_nullable_to_non_nullable
              as double?,
      platformCharges: freezed == platformCharges
          ? _self.platformCharges
          : platformCharges // ignore: cast_nullable_to_non_nullable
              as double?,
      toCurrency: freezed == toCurrency
          ? _self.toCurrency
          : toCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      fromCurrency: freezed == fromCurrency
          ? _self.fromCurrency
          : fromCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationCharges: freezed == cancellationCharges
          ? _self.cancellationCharges
          : cancellationCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      bidCount: freezed == bidCount
          ? _self.bidCount
          : bidCount // ignore: cast_nullable_to_non_nullable
              as int?,
      retryDriversCount: freezed == retryDriversCount
          ? _self.retryDriversCount
          : retryDriversCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRetryDriversCount: freezed == maxRetryDriversCount
          ? _self.maxRetryDriversCount
          : maxRetryDriversCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isBidding: freezed == isBidding
          ? _self.isBidding
          : isBidding // ignore: cast_nullable_to_non_nullable
              as bool?,
      quotedFare: freezed == quotedFare
          ? _self.quotedFare
          : quotedFare // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledAt: freezed == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestedAt: freezed == requestedAt
          ? _self.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _self.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      nanoId: freezed == nanoId
          ? _self.nanoId
          : nanoId // ignore: cast_nullable_to_non_nullable
              as int?,
      rideService: freezed == rideService
          ? _self.rideService
          : rideService // ignore: cast_nullable_to_non_nullable
              as String?,
      startedAt: freezed == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      onrouteAt: freezed == onrouteAt
          ? _self.onrouteAt
          : onrouteAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      arrivedAt: freezed == arrivedAt
          ? _self.arrivedAt
          : arrivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      acceptedAt: freezed == acceptedAt
          ? _self.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validateAt: freezed == validateAt
          ? _self.validateAt
          : validateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerInvoiceSeenAt: freezed == customerInvoiceSeenAt
          ? _self.customerInvoiceSeenAt
          : customerInvoiceSeenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      driverInvoiceSeenAt: freezed == driverInvoiceSeenAt
          ? _self.driverInvoiceSeenAt
          : driverInvoiceSeenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedDrivers: freezed == rejectedDrivers
          ? _self._rejectedDrivers
          : rejectedDrivers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      requestedDrivers: freezed == requestedDrivers
          ? _self._requestedDrivers
          : requestedDrivers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isDriverCancelled: freezed == isDriverCancelled
          ? _self.isDriverCancelled
          : isDriverCancelled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCustomerCancelled: freezed == isCustomerCancelled
          ? _self.isCustomerCancelled
          : isCustomerCancelled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSystemCancelled: freezed == isSystemCancelled
          ? _self.isSystemCancelled
          : isSystemCancelled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRideEnd: freezed == isRideEnd
          ? _self.isRideEnd
          : isRideEnd // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCustomerInvoiceSeen: freezed == isCustomerInvoiceSeen
          ? _self.isCustomerInvoiceSeen
          : isCustomerInvoiceSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDriverInvoiceSeen: freezed == isDriverInvoiceSeen
          ? _self.isDriverInvoiceSeen
          : isDriverInvoiceSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _self.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      timeToRespond: freezed == timeToRespond
          ? _self.timeToRespond
          : timeToRespond // ignore: cast_nullable_to_non_nullable
              as int?,
      conversationId: freezed == conversationId
          ? _self.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleId: freezed == vehicleId
          ? _self.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErInfoCopyWith<$Res>? get customerInfo {
    if (_self.customerInfo == null) {
      return null;
    }

    return $ErInfoCopyWith<$Res>(_self.customerInfo!, (value) {
      return _then(_self.copyWith(customerInfo: value));
    });
  }

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErInfoCopyWith<$Res>? get driverInfo {
    if (_self.driverInfo == null) {
      return null;
    }

    return $ErInfoCopyWith<$Res>(_self.driverInfo!, (value) {
      return _then(_self.copyWith(driverInfo: value));
    });
  }

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleInfoCopyWith<$Res>? get vehicleInfo {
    if (_self.vehicleInfo == null) {
      return null;
    }

    return $VehicleInfoCopyWith<$Res>(_self.vehicleInfo!, (value) {
      return _then(_self.copyWith(vehicleInfo: value));
    });
  }

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideRequestCopyWith<$Res>? get rideRequest {
    if (_self.rideRequest == null) {
      return null;
    }

    return $RideRequestCopyWith<$Res>(_self.rideRequest!, (value) {
      return _then(_self.copyWith(rideRequest: value));
    });
  }
}

/// @nodoc
mixin _$ErInfo {
  @JsonKey(name: "full_name")
  String? get fullName;
  @JsonKey(name: "email")
  String? get email;
  @JsonKey(name: "phone")
  String? get phone;
  @JsonKey(name: "username")
  String? get username;

  /// Create a copy of ErInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErInfoCopyWith<ErInfo> get copyWith =>
      _$ErInfoCopyWithImpl<ErInfo>(this as ErInfo, _$identity);

  /// Serializes this ErInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErInfo &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullName, email, phone, username);

  @override
  String toString() {
    return 'ErInfo(fullName: $fullName, email: $email, phone: $phone, username: $username)';
  }
}

/// @nodoc
abstract mixin class $ErInfoCopyWith<$Res> {
  factory $ErInfoCopyWith(ErInfo value, $Res Function(ErInfo) _then) =
      _$ErInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "username") String? username});
}

/// @nodoc
class _$ErInfoCopyWithImpl<$Res> implements $ErInfoCopyWith<$Res> {
  _$ErInfoCopyWithImpl(this._self, this._then);

  final ErInfo _self;
  final $Res Function(ErInfo) _then;

  /// Create a copy of ErInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? username = freezed,
  }) {
    return _then(_self.copyWith(
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ErInfo].
extension ErInfoPatterns on ErInfo {
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
    TResult Function(_ErInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ErInfo() when $default != null:
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
    TResult Function(_ErInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErInfo():
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
    TResult? Function(_ErInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErInfo() when $default != null:
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
            @JsonKey(name: "full_name") String? fullName,
            @JsonKey(name: "email") String? email,
            @JsonKey(name: "phone") String? phone,
            @JsonKey(name: "username") String? username)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ErInfo() when $default != null:
        return $default(
            _that.fullName, _that.email, _that.phone, _that.username);
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
            @JsonKey(name: "full_name") String? fullName,
            @JsonKey(name: "email") String? email,
            @JsonKey(name: "phone") String? phone,
            @JsonKey(name: "username") String? username)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErInfo():
        return $default(
            _that.fullName, _that.email, _that.phone, _that.username);
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
            @JsonKey(name: "full_name") String? fullName,
            @JsonKey(name: "email") String? email,
            @JsonKey(name: "phone") String? phone,
            @JsonKey(name: "username") String? username)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErInfo() when $default != null:
        return $default(
            _that.fullName, _that.email, _that.phone, _that.username);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ErInfo implements ErInfo {
  const _ErInfo(
      {@JsonKey(name: "full_name") this.fullName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "username") this.username});
  factory _ErInfo.fromJson(Map<String, dynamic> json) => _$ErInfoFromJson(json);

  @override
  @JsonKey(name: "full_name")
  final String? fullName;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "username")
  final String? username;

  /// Create a copy of ErInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErInfoCopyWith<_ErInfo> get copyWith =>
      __$ErInfoCopyWithImpl<_ErInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ErInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErInfo &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullName, email, phone, username);

  @override
  String toString() {
    return 'ErInfo(fullName: $fullName, email: $email, phone: $phone, username: $username)';
  }
}

/// @nodoc
abstract mixin class _$ErInfoCopyWith<$Res> implements $ErInfoCopyWith<$Res> {
  factory _$ErInfoCopyWith(_ErInfo value, $Res Function(_ErInfo) _then) =
      __$ErInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "username") String? username});
}

/// @nodoc
class __$ErInfoCopyWithImpl<$Res> implements _$ErInfoCopyWith<$Res> {
  __$ErInfoCopyWithImpl(this._self, this._then);

  final _ErInfo _self;
  final $Res Function(_ErInfo) _then;

  /// Create a copy of ErInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? username = freezed,
  }) {
    return _then(_ErInfo(
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$RideRequest {
  @JsonKey(name: "pickup_location")
  Location? get pickupLocation;
  @JsonKey(name: "dropoff_location")
  Location? get dropoffLocation;
  @JsonKey(name: "country_id")
  String? get countryId;
  @JsonKey(name: "city_id")
  String? get cityId;
  @JsonKey(name: "zone_id")
  String? get zoneId;
  @JsonKey(name: "customer_id")
  String? get customerId;
  @JsonKey(name: "pickup_address")
  String? get pickupAddress;
  @JsonKey(name: "dropoff_address")
  String? get dropoffAddress;
  @JsonKey(name: "stops")
  List<Stop>? get stops;
  @JsonKey(name: "optimized_stops")
  List<OptimizedStop>? get optimizedStops;
  @JsonKey(name: "booked_for")
  String? get bookedFor;
  @JsonKey(name: "accessiblity")
  String? get accessiblity;
  @JsonKey(name: "type")
  String? get type;
  @JsonKey(name: "distance_in_meters")
  int? get distanceInMeters;
  @JsonKey(name: "total_eta")
  int? get totalEta;
  @JsonKey(name: "stops_eta")
  List<StopsEta>? get stopsEta;
  @JsonKey(name: "scheduled_at")
  DateTime? get scheduledAt;
  @JsonKey(name: "server_scheduled_at")
  DateTime? get serverScheduledAt;
  @JsonKey(name: "is_deleted")
  bool? get isDeleted;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @JsonKey(name: "id")
  String? get id;

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideRequestCopyWith<RideRequest> get copyWith =>
      _$RideRequestCopyWithImpl<RideRequest>(this as RideRequest, _$identity);

  /// Serializes this RideRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideRequest &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.dropoffLocation, dropoffLocation) ||
                other.dropoffLocation == dropoffLocation) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.dropoffAddress, dropoffAddress) ||
                other.dropoffAddress == dropoffAddress) &&
            const DeepCollectionEquality().equals(other.stops, stops) &&
            const DeepCollectionEquality()
                .equals(other.optimizedStops, optimizedStops) &&
            (identical(other.bookedFor, bookedFor) ||
                other.bookedFor == bookedFor) &&
            (identical(other.accessiblity, accessiblity) ||
                other.accessiblity == accessiblity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.distanceInMeters, distanceInMeters) ||
                other.distanceInMeters == distanceInMeters) &&
            (identical(other.totalEta, totalEta) ||
                other.totalEta == totalEta) &&
            const DeepCollectionEquality().equals(other.stopsEta, stopsEta) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.serverScheduledAt, serverScheduledAt) ||
                other.serverScheduledAt == serverScheduledAt) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        pickupLocation,
        dropoffLocation,
        countryId,
        cityId,
        zoneId,
        customerId,
        pickupAddress,
        dropoffAddress,
        const DeepCollectionEquality().hash(stops),
        const DeepCollectionEquality().hash(optimizedStops),
        bookedFor,
        accessiblity,
        type,
        distanceInMeters,
        totalEta,
        const DeepCollectionEquality().hash(stopsEta),
        scheduledAt,
        serverScheduledAt,
        isDeleted,
        createdAt,
        updatedAt,
        id
      ]);

  @override
  String toString() {
    return 'RideRequest(pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, countryId: $countryId, cityId: $cityId, zoneId: $zoneId, customerId: $customerId, pickupAddress: $pickupAddress, dropoffAddress: $dropoffAddress, stops: $stops, optimizedStops: $optimizedStops, bookedFor: $bookedFor, accessiblity: $accessiblity, type: $type, distanceInMeters: $distanceInMeters, totalEta: $totalEta, stopsEta: $stopsEta, scheduledAt: $scheduledAt, serverScheduledAt: $serverScheduledAt, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class $RideRequestCopyWith<$Res> {
  factory $RideRequestCopyWith(
          RideRequest value, $Res Function(RideRequest) _then) =
      _$RideRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "pickup_location") Location? pickupLocation,
      @JsonKey(name: "dropoff_location") Location? dropoffLocation,
      @JsonKey(name: "country_id") String? countryId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "zone_id") String? zoneId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "pickup_address") String? pickupAddress,
      @JsonKey(name: "dropoff_address") String? dropoffAddress,
      @JsonKey(name: "stops") List<Stop>? stops,
      @JsonKey(name: "optimized_stops") List<OptimizedStop>? optimizedStops,
      @JsonKey(name: "booked_for") String? bookedFor,
      @JsonKey(name: "accessiblity") String? accessiblity,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "distance_in_meters") int? distanceInMeters,
      @JsonKey(name: "total_eta") int? totalEta,
      @JsonKey(name: "stops_eta") List<StopsEta>? stopsEta,
      @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
      @JsonKey(name: "server_scheduled_at") DateTime? serverScheduledAt,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "id") String? id});

  $LocationCopyWith<$Res>? get pickupLocation;
  $LocationCopyWith<$Res>? get dropoffLocation;
}

/// @nodoc
class _$RideRequestCopyWithImpl<$Res> implements $RideRequestCopyWith<$Res> {
  _$RideRequestCopyWithImpl(this._self, this._then);

  final RideRequest _self;
  final $Res Function(RideRequest) _then;

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = freezed,
    Object? dropoffLocation = freezed,
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? zoneId = freezed,
    Object? customerId = freezed,
    Object? pickupAddress = freezed,
    Object? dropoffAddress = freezed,
    Object? stops = freezed,
    Object? optimizedStops = freezed,
    Object? bookedFor = freezed,
    Object? accessiblity = freezed,
    Object? type = freezed,
    Object? distanceInMeters = freezed,
    Object? totalEta = freezed,
    Object? stopsEta = freezed,
    Object? scheduledAt = freezed,
    Object? serverScheduledAt = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_self.copyWith(
      pickupLocation: freezed == pickupLocation
          ? _self.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      dropoffLocation: freezed == dropoffLocation
          ? _self.dropoffLocation
          : dropoffLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      countryId: freezed == countryId
          ? _self.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId: freezed == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: freezed == pickupAddress
          ? _self.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropoffAddress: freezed == dropoffAddress
          ? _self.dropoffAddress
          : dropoffAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      stops: freezed == stops
          ? _self.stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<Stop>?,
      optimizedStops: freezed == optimizedStops
          ? _self.optimizedStops
          : optimizedStops // ignore: cast_nullable_to_non_nullable
              as List<OptimizedStop>?,
      bookedFor: freezed == bookedFor
          ? _self.bookedFor
          : bookedFor // ignore: cast_nullable_to_non_nullable
              as String?,
      accessiblity: freezed == accessiblity
          ? _self.accessiblity
          : accessiblity // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceInMeters: freezed == distanceInMeters
          ? _self.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      totalEta: freezed == totalEta
          ? _self.totalEta
          : totalEta // ignore: cast_nullable_to_non_nullable
              as int?,
      stopsEta: freezed == stopsEta
          ? _self.stopsEta
          : stopsEta // ignore: cast_nullable_to_non_nullable
              as List<StopsEta>?,
      scheduledAt: freezed == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      serverScheduledAt: freezed == serverScheduledAt
          ? _self.serverScheduledAt
          : serverScheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get pickupLocation {
    if (_self.pickupLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.pickupLocation!, (value) {
      return _then(_self.copyWith(pickupLocation: value));
    });
  }

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get dropoffLocation {
    if (_self.dropoffLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.dropoffLocation!, (value) {
      return _then(_self.copyWith(dropoffLocation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RideRequest].
extension RideRequestPatterns on RideRequest {
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
    TResult Function(_RideRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideRequest() when $default != null:
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
    TResult Function(_RideRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideRequest():
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
    TResult? Function(_RideRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideRequest() when $default != null:
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
            @JsonKey(name: "pickup_location") Location? pickupLocation,
            @JsonKey(name: "dropoff_location") Location? dropoffLocation,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "pickup_address") String? pickupAddress,
            @JsonKey(name: "dropoff_address") String? dropoffAddress,
            @JsonKey(name: "stops") List<Stop>? stops,
            @JsonKey(name: "optimized_stops")
            List<OptimizedStop>? optimizedStops,
            @JsonKey(name: "booked_for") String? bookedFor,
            @JsonKey(name: "accessiblity") String? accessiblity,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "distance_in_meters") int? distanceInMeters,
            @JsonKey(name: "total_eta") int? totalEta,
            @JsonKey(name: "stops_eta") List<StopsEta>? stopsEta,
            @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
            @JsonKey(name: "server_scheduled_at") DateTime? serverScheduledAt,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "id") String? id)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideRequest() when $default != null:
        return $default(
            _that.pickupLocation,
            _that.dropoffLocation,
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.customerId,
            _that.pickupAddress,
            _that.dropoffAddress,
            _that.stops,
            _that.optimizedStops,
            _that.bookedFor,
            _that.accessiblity,
            _that.type,
            _that.distanceInMeters,
            _that.totalEta,
            _that.stopsEta,
            _that.scheduledAt,
            _that.serverScheduledAt,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.id);
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
            @JsonKey(name: "pickup_location") Location? pickupLocation,
            @JsonKey(name: "dropoff_location") Location? dropoffLocation,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "pickup_address") String? pickupAddress,
            @JsonKey(name: "dropoff_address") String? dropoffAddress,
            @JsonKey(name: "stops") List<Stop>? stops,
            @JsonKey(name: "optimized_stops")
            List<OptimizedStop>? optimizedStops,
            @JsonKey(name: "booked_for") String? bookedFor,
            @JsonKey(name: "accessiblity") String? accessiblity,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "distance_in_meters") int? distanceInMeters,
            @JsonKey(name: "total_eta") int? totalEta,
            @JsonKey(name: "stops_eta") List<StopsEta>? stopsEta,
            @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
            @JsonKey(name: "server_scheduled_at") DateTime? serverScheduledAt,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "id") String? id)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideRequest():
        return $default(
            _that.pickupLocation,
            _that.dropoffLocation,
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.customerId,
            _that.pickupAddress,
            _that.dropoffAddress,
            _that.stops,
            _that.optimizedStops,
            _that.bookedFor,
            _that.accessiblity,
            _that.type,
            _that.distanceInMeters,
            _that.totalEta,
            _that.stopsEta,
            _that.scheduledAt,
            _that.serverScheduledAt,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.id);
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
            @JsonKey(name: "pickup_location") Location? pickupLocation,
            @JsonKey(name: "dropoff_location") Location? dropoffLocation,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "pickup_address") String? pickupAddress,
            @JsonKey(name: "dropoff_address") String? dropoffAddress,
            @JsonKey(name: "stops") List<Stop>? stops,
            @JsonKey(name: "optimized_stops")
            List<OptimizedStop>? optimizedStops,
            @JsonKey(name: "booked_for") String? bookedFor,
            @JsonKey(name: "accessiblity") String? accessiblity,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "distance_in_meters") int? distanceInMeters,
            @JsonKey(name: "total_eta") int? totalEta,
            @JsonKey(name: "stops_eta") List<StopsEta>? stopsEta,
            @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
            @JsonKey(name: "server_scheduled_at") DateTime? serverScheduledAt,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "id") String? id)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideRequest() when $default != null:
        return $default(
            _that.pickupLocation,
            _that.dropoffLocation,
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.customerId,
            _that.pickupAddress,
            _that.dropoffAddress,
            _that.stops,
            _that.optimizedStops,
            _that.bookedFor,
            _that.accessiblity,
            _that.type,
            _that.distanceInMeters,
            _that.totalEta,
            _that.stopsEta,
            _that.scheduledAt,
            _that.serverScheduledAt,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RideRequest implements RideRequest {
  const _RideRequest(
      {@JsonKey(name: "pickup_location") this.pickupLocation,
      @JsonKey(name: "dropoff_location") this.dropoffLocation,
      @JsonKey(name: "country_id") this.countryId,
      @JsonKey(name: "city_id") this.cityId,
      @JsonKey(name: "zone_id") this.zoneId,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "pickup_address") this.pickupAddress,
      @JsonKey(name: "dropoff_address") this.dropoffAddress,
      @JsonKey(name: "stops") final List<Stop>? stops,
      @JsonKey(name: "optimized_stops")
      final List<OptimizedStop>? optimizedStops,
      @JsonKey(name: "booked_for") this.bookedFor,
      @JsonKey(name: "accessiblity") this.accessiblity,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "distance_in_meters") this.distanceInMeters,
      @JsonKey(name: "total_eta") this.totalEta,
      @JsonKey(name: "stops_eta") final List<StopsEta>? stopsEta,
      @JsonKey(name: "scheduled_at") this.scheduledAt,
      @JsonKey(name: "server_scheduled_at") this.serverScheduledAt,
      @JsonKey(name: "is_deleted") this.isDeleted,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "id") this.id})
      : _stops = stops,
        _optimizedStops = optimizedStops,
        _stopsEta = stopsEta;
  factory _RideRequest.fromJson(Map<String, dynamic> json) =>
      _$RideRequestFromJson(json);

  @override
  @JsonKey(name: "pickup_location")
  final Location? pickupLocation;
  @override
  @JsonKey(name: "dropoff_location")
  final Location? dropoffLocation;
  @override
  @JsonKey(name: "country_id")
  final String? countryId;
  @override
  @JsonKey(name: "city_id")
  final String? cityId;
  @override
  @JsonKey(name: "zone_id")
  final String? zoneId;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "pickup_address")
  final String? pickupAddress;
  @override
  @JsonKey(name: "dropoff_address")
  final String? dropoffAddress;
  final List<Stop>? _stops;
  @override
  @JsonKey(name: "stops")
  List<Stop>? get stops {
    final value = _stops;
    if (value == null) return null;
    if (_stops is EqualUnmodifiableListView) return _stops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OptimizedStop>? _optimizedStops;
  @override
  @JsonKey(name: "optimized_stops")
  List<OptimizedStop>? get optimizedStops {
    final value = _optimizedStops;
    if (value == null) return null;
    if (_optimizedStops is EqualUnmodifiableListView) return _optimizedStops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "booked_for")
  final String? bookedFor;
  @override
  @JsonKey(name: "accessiblity")
  final String? accessiblity;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "distance_in_meters")
  final int? distanceInMeters;
  @override
  @JsonKey(name: "total_eta")
  final int? totalEta;
  final List<StopsEta>? _stopsEta;
  @override
  @JsonKey(name: "stops_eta")
  List<StopsEta>? get stopsEta {
    final value = _stopsEta;
    if (value == null) return null;
    if (_stopsEta is EqualUnmodifiableListView) return _stopsEta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "scheduled_at")
  final DateTime? scheduledAt;
  @override
  @JsonKey(name: "server_scheduled_at")
  final DateTime? serverScheduledAt;
  @override
  @JsonKey(name: "is_deleted")
  final bool? isDeleted;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "id")
  final String? id;

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideRequestCopyWith<_RideRequest> get copyWith =>
      __$RideRequestCopyWithImpl<_RideRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideRequest &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.dropoffLocation, dropoffLocation) ||
                other.dropoffLocation == dropoffLocation) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.dropoffAddress, dropoffAddress) ||
                other.dropoffAddress == dropoffAddress) &&
            const DeepCollectionEquality().equals(other._stops, _stops) &&
            const DeepCollectionEquality()
                .equals(other._optimizedStops, _optimizedStops) &&
            (identical(other.bookedFor, bookedFor) ||
                other.bookedFor == bookedFor) &&
            (identical(other.accessiblity, accessiblity) ||
                other.accessiblity == accessiblity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.distanceInMeters, distanceInMeters) ||
                other.distanceInMeters == distanceInMeters) &&
            (identical(other.totalEta, totalEta) ||
                other.totalEta == totalEta) &&
            const DeepCollectionEquality().equals(other._stopsEta, _stopsEta) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.serverScheduledAt, serverScheduledAt) ||
                other.serverScheduledAt == serverScheduledAt) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        pickupLocation,
        dropoffLocation,
        countryId,
        cityId,
        zoneId,
        customerId,
        pickupAddress,
        dropoffAddress,
        const DeepCollectionEquality().hash(_stops),
        const DeepCollectionEquality().hash(_optimizedStops),
        bookedFor,
        accessiblity,
        type,
        distanceInMeters,
        totalEta,
        const DeepCollectionEquality().hash(_stopsEta),
        scheduledAt,
        serverScheduledAt,
        isDeleted,
        createdAt,
        updatedAt,
        id
      ]);

  @override
  String toString() {
    return 'RideRequest(pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, countryId: $countryId, cityId: $cityId, zoneId: $zoneId, customerId: $customerId, pickupAddress: $pickupAddress, dropoffAddress: $dropoffAddress, stops: $stops, optimizedStops: $optimizedStops, bookedFor: $bookedFor, accessiblity: $accessiblity, type: $type, distanceInMeters: $distanceInMeters, totalEta: $totalEta, stopsEta: $stopsEta, scheduledAt: $scheduledAt, serverScheduledAt: $serverScheduledAt, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$RideRequestCopyWith<$Res>
    implements $RideRequestCopyWith<$Res> {
  factory _$RideRequestCopyWith(
          _RideRequest value, $Res Function(_RideRequest) _then) =
      __$RideRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "pickup_location") Location? pickupLocation,
      @JsonKey(name: "dropoff_location") Location? dropoffLocation,
      @JsonKey(name: "country_id") String? countryId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "zone_id") String? zoneId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "pickup_address") String? pickupAddress,
      @JsonKey(name: "dropoff_address") String? dropoffAddress,
      @JsonKey(name: "stops") List<Stop>? stops,
      @JsonKey(name: "optimized_stops") List<OptimizedStop>? optimizedStops,
      @JsonKey(name: "booked_for") String? bookedFor,
      @JsonKey(name: "accessiblity") String? accessiblity,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "distance_in_meters") int? distanceInMeters,
      @JsonKey(name: "total_eta") int? totalEta,
      @JsonKey(name: "stops_eta") List<StopsEta>? stopsEta,
      @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
      @JsonKey(name: "server_scheduled_at") DateTime? serverScheduledAt,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "id") String? id});

  @override
  $LocationCopyWith<$Res>? get pickupLocation;
  @override
  $LocationCopyWith<$Res>? get dropoffLocation;
}

/// @nodoc
class __$RideRequestCopyWithImpl<$Res> implements _$RideRequestCopyWith<$Res> {
  __$RideRequestCopyWithImpl(this._self, this._then);

  final _RideRequest _self;
  final $Res Function(_RideRequest) _then;

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pickupLocation = freezed,
    Object? dropoffLocation = freezed,
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? zoneId = freezed,
    Object? customerId = freezed,
    Object? pickupAddress = freezed,
    Object? dropoffAddress = freezed,
    Object? stops = freezed,
    Object? optimizedStops = freezed,
    Object? bookedFor = freezed,
    Object? accessiblity = freezed,
    Object? type = freezed,
    Object? distanceInMeters = freezed,
    Object? totalEta = freezed,
    Object? stopsEta = freezed,
    Object? scheduledAt = freezed,
    Object? serverScheduledAt = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_RideRequest(
      pickupLocation: freezed == pickupLocation
          ? _self.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      dropoffLocation: freezed == dropoffLocation
          ? _self.dropoffLocation
          : dropoffLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      countryId: freezed == countryId
          ? _self.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId: freezed == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: freezed == pickupAddress
          ? _self.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropoffAddress: freezed == dropoffAddress
          ? _self.dropoffAddress
          : dropoffAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      stops: freezed == stops
          ? _self._stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<Stop>?,
      optimizedStops: freezed == optimizedStops
          ? _self._optimizedStops
          : optimizedStops // ignore: cast_nullable_to_non_nullable
              as List<OptimizedStop>?,
      bookedFor: freezed == bookedFor
          ? _self.bookedFor
          : bookedFor // ignore: cast_nullable_to_non_nullable
              as String?,
      accessiblity: freezed == accessiblity
          ? _self.accessiblity
          : accessiblity // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceInMeters: freezed == distanceInMeters
          ? _self.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      totalEta: freezed == totalEta
          ? _self.totalEta
          : totalEta // ignore: cast_nullable_to_non_nullable
              as int?,
      stopsEta: freezed == stopsEta
          ? _self._stopsEta
          : stopsEta // ignore: cast_nullable_to_non_nullable
              as List<StopsEta>?,
      scheduledAt: freezed == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      serverScheduledAt: freezed == serverScheduledAt
          ? _self.serverScheduledAt
          : serverScheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get pickupLocation {
    if (_self.pickupLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.pickupLocation!, (value) {
      return _then(_self.copyWith(pickupLocation: value));
    });
  }

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get dropoffLocation {
    if (_self.dropoffLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.dropoffLocation!, (value) {
      return _then(_self.copyWith(dropoffLocation: value));
    });
  }
}

/// @nodoc
mixin _$VehicleInfo {
  @JsonKey(name: "vin")
  String? get vin;
  @JsonKey(name: "registration_number")
  String? get registrationNumber;

  /// Create a copy of VehicleInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VehicleInfoCopyWith<VehicleInfo> get copyWith =>
      _$VehicleInfoCopyWithImpl<VehicleInfo>(this as VehicleInfo, _$identity);

  /// Serializes this VehicleInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VehicleInfo &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vin, registrationNumber);

  @override
  String toString() {
    return 'VehicleInfo(vin: $vin, registrationNumber: $registrationNumber)';
  }
}

/// @nodoc
abstract mixin class $VehicleInfoCopyWith<$Res> {
  factory $VehicleInfoCopyWith(
          VehicleInfo value, $Res Function(VehicleInfo) _then) =
      _$VehicleInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "vin") String? vin,
      @JsonKey(name: "registration_number") String? registrationNumber});
}

/// @nodoc
class _$VehicleInfoCopyWithImpl<$Res> implements $VehicleInfoCopyWith<$Res> {
  _$VehicleInfoCopyWithImpl(this._self, this._then);

  final VehicleInfo _self;
  final $Res Function(VehicleInfo) _then;

  /// Create a copy of VehicleInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vin = freezed,
    Object? registrationNumber = freezed,
  }) {
    return _then(_self.copyWith(
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VehicleInfo].
extension VehicleInfoPatterns on VehicleInfo {
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
    TResult Function(_VehicleInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VehicleInfo() when $default != null:
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
    TResult Function(_VehicleInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleInfo():
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
    TResult? Function(_VehicleInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleInfo() when $default != null:
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
    TResult Function(@JsonKey(name: "vin") String? vin,
            @JsonKey(name: "registration_number") String? registrationNumber)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VehicleInfo() when $default != null:
        return $default(_that.vin, _that.registrationNumber);
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
    TResult Function(@JsonKey(name: "vin") String? vin,
            @JsonKey(name: "registration_number") String? registrationNumber)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleInfo():
        return $default(_that.vin, _that.registrationNumber);
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
    TResult? Function(@JsonKey(name: "vin") String? vin,
            @JsonKey(name: "registration_number") String? registrationNumber)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleInfo() when $default != null:
        return $default(_that.vin, _that.registrationNumber);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VehicleInfo implements VehicleInfo {
  const _VehicleInfo(
      {@JsonKey(name: "vin") this.vin,
      @JsonKey(name: "registration_number") this.registrationNumber});
  factory _VehicleInfo.fromJson(Map<String, dynamic> json) =>
      _$VehicleInfoFromJson(json);

  @override
  @JsonKey(name: "vin")
  final String? vin;
  @override
  @JsonKey(name: "registration_number")
  final String? registrationNumber;

  /// Create a copy of VehicleInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VehicleInfoCopyWith<_VehicleInfo> get copyWith =>
      __$VehicleInfoCopyWithImpl<_VehicleInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VehicleInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VehicleInfo &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vin, registrationNumber);

  @override
  String toString() {
    return 'VehicleInfo(vin: $vin, registrationNumber: $registrationNumber)';
  }
}

/// @nodoc
abstract mixin class _$VehicleInfoCopyWith<$Res>
    implements $VehicleInfoCopyWith<$Res> {
  factory _$VehicleInfoCopyWith(
          _VehicleInfo value, $Res Function(_VehicleInfo) _then) =
      __$VehicleInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "vin") String? vin,
      @JsonKey(name: "registration_number") String? registrationNumber});
}

/// @nodoc
class __$VehicleInfoCopyWithImpl<$Res> implements _$VehicleInfoCopyWith<$Res> {
  __$VehicleInfoCopyWithImpl(this._self, this._then);

  final _VehicleInfo _self;
  final $Res Function(_VehicleInfo) _then;

  /// Create a copy of VehicleInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? vin = freezed,
    Object? registrationNumber = freezed,
  }) {
    return _then(_VehicleInfo(
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
