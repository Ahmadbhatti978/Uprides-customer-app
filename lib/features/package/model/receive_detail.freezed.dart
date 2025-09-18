// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receive_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReceiveDetail {
  @JsonKey(name: 'type')
  String? get type;
  @JsonKey(name: 'data')
  Data? get data;

  /// Create a copy of ReceiveDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReceiveDetailCopyWith<ReceiveDetail> get copyWith =>
      _$ReceiveDetailCopyWithImpl<ReceiveDetail>(
          this as ReceiveDetail, _$identity);

  /// Serializes this ReceiveDetail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReceiveDetail &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, data);

  @override
  String toString() {
    return 'ReceiveDetail(type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class $ReceiveDetailCopyWith<$Res> {
  factory $ReceiveDetailCopyWith(
          ReceiveDetail value, $Res Function(ReceiveDetail) _then) =
      _$ReceiveDetailCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type, @JsonKey(name: 'data') Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ReceiveDetailCopyWithImpl<$Res>
    implements $ReceiveDetailCopyWith<$Res> {
  _$ReceiveDetailCopyWithImpl(this._self, this._then);

  final ReceiveDetail _self;
  final $Res Function(ReceiveDetail) _then;

  /// Create a copy of ReceiveDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  /// Create a copy of ReceiveDetail
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

/// Adds pattern-matching-related methods to [ReceiveDetail].
extension ReceiveDetailPatterns on ReceiveDetail {
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
    TResult Function(_ReceiveDetail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReceiveDetail() when $default != null:
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
    TResult Function(_ReceiveDetail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReceiveDetail():
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
    TResult? Function(_ReceiveDetail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReceiveDetail() when $default != null:
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
    TResult Function(@JsonKey(name: 'type') String? type,
            @JsonKey(name: 'data') Data? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReceiveDetail() when $default != null:
        return $default(_that.type, _that.data);
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
    TResult Function(@JsonKey(name: 'type') String? type,
            @JsonKey(name: 'data') Data? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReceiveDetail():
        return $default(_that.type, _that.data);
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
    TResult? Function(@JsonKey(name: 'type') String? type,
            @JsonKey(name: 'data') Data? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReceiveDetail() when $default != null:
        return $default(_that.type, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReceiveDetail implements ReceiveDetail {
  const _ReceiveDetail(
      {@JsonKey(name: 'type') this.type, @JsonKey(name: 'data') this.data});
  factory _ReceiveDetail.fromJson(Map<String, dynamic> json) =>
      _$ReceiveDetailFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'data')
  final Data? data;

  /// Create a copy of ReceiveDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReceiveDetailCopyWith<_ReceiveDetail> get copyWith =>
      __$ReceiveDetailCopyWithImpl<_ReceiveDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReceiveDetailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReceiveDetail &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, data);

  @override
  String toString() {
    return 'ReceiveDetail(type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ReceiveDetailCopyWith<$Res>
    implements $ReceiveDetailCopyWith<$Res> {
  factory _$ReceiveDetailCopyWith(
          _ReceiveDetail value, $Res Function(_ReceiveDetail) _then) =
      __$ReceiveDetailCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type, @JsonKey(name: 'data') Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$ReceiveDetailCopyWithImpl<$Res>
    implements _$ReceiveDetailCopyWith<$Res> {
  __$ReceiveDetailCopyWithImpl(this._self, this._then);

  final _ReceiveDetail _self;
  final $Res Function(_ReceiveDetail) _then;

  /// Create a copy of ReceiveDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_ReceiveDetail(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  /// Create a copy of ReceiveDetail
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
  @JsonKey(name: 'ride')
  Ride? get ride;
  @JsonKey(name: 'packages')
  List<Package>? get packages;

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
            const DeepCollectionEquality().equals(other.packages, packages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, ride, const DeepCollectionEquality().hash(packages));

  @override
  String toString() {
    return 'Data(ride: $ride, packages: $packages)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'ride') Ride? ride,
      @JsonKey(name: 'packages') List<Package>? packages});

  $RideCopyWith<$Res>? get ride;
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
    Object? packages = freezed,
  }) {
    return _then(_self.copyWith(
      ride: freezed == ride
          ? _self.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as Ride?,
      packages: freezed == packages
          ? _self.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<Package>?,
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
    TResult Function(@JsonKey(name: 'ride') Ride? ride,
            @JsonKey(name: 'packages') List<Package>? packages)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.ride, _that.packages);
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
    TResult Function(@JsonKey(name: 'ride') Ride? ride,
            @JsonKey(name: 'packages') List<Package>? packages)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
        return $default(_that.ride, _that.packages);
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
    TResult? Function(@JsonKey(name: 'ride') Ride? ride,
            @JsonKey(name: 'packages') List<Package>? packages)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.ride, _that.packages);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Data implements Data {
  const _Data(
      {@JsonKey(name: 'ride') this.ride,
      @JsonKey(name: 'packages') final List<Package>? packages})
      : _packages = packages;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  @JsonKey(name: 'ride')
  final Ride? ride;
  final List<Package>? _packages;
  @override
  @JsonKey(name: 'packages')
  List<Package>? get packages {
    final value = _packages;
    if (value == null) return null;
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, ride, const DeepCollectionEquality().hash(_packages));

  @override
  String toString() {
    return 'Data(ride: $ride, packages: $packages)';
  }
}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) =
      __$DataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ride') Ride? ride,
      @JsonKey(name: 'packages') List<Package>? packages});

  @override
  $RideCopyWith<$Res>? get ride;
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
    Object? packages = freezed,
  }) {
    return _then(_Data(
      ride: freezed == ride
          ? _self.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as Ride?,
      packages: freezed == packages
          ? _self._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<Package>?,
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
}

/// @nodoc
mixin _$Package {
  @JsonKey(name: 'reciever_details')
  RecieverDetails? get recieverDetails;
  @JsonKey(name: 'delivery_location')
  Location? get deliveryLocation;
  @JsonKey(name: 'dimensions')
  Dimensions? get dimensions;
  @JsonKey(name: 'charges')
  Charges? get charges;
  @JsonKey(name: 'driver_remarks')
  DriverRemarks? get driverRemarks;
  @JsonKey(name: '_id')
  String? get id;
  @JsonKey(name: 'package_ride')
  String? get packageRide;
  @JsonKey(name: 'package_status')
  String? get packageStatus;
  @JsonKey(name: 'package_tid')
  String? get packageTid;
  @JsonKey(name: 'package_type')
  String? get packageType;
  @JsonKey(name: 'order')
  int? get order;
  @JsonKey(name: 'media')
  List<dynamic>? get media;
  @JsonKey(name: '__v')
  int? get v;
  @JsonKey(name: 'delivery_adddress')
  String? get deliveryAdddress;
  @JsonKey(name: 'delivery_address')
  String? get deliveryAddress;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PackageCopyWith<Package> get copyWith =>
      _$PackageCopyWithImpl<Package>(this as Package, _$identity);

  /// Serializes this Package to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Package &&
            (identical(other.recieverDetails, recieverDetails) ||
                other.recieverDetails == recieverDetails) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.charges, charges) || other.charges == charges) &&
            (identical(other.driverRemarks, driverRemarks) ||
                other.driverRemarks == driverRemarks) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.packageRide, packageRide) ||
                other.packageRide == packageRide) &&
            (identical(other.packageStatus, packageStatus) ||
                other.packageStatus == packageStatus) &&
            (identical(other.packageTid, packageTid) ||
                other.packageTid == packageTid) &&
            (identical(other.packageType, packageType) ||
                other.packageType == packageType) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other.media, media) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.deliveryAdddress, deliveryAdddress) ||
                other.deliveryAdddress == deliveryAdddress) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      recieverDetails,
      deliveryLocation,
      dimensions,
      charges,
      driverRemarks,
      id,
      packageRide,
      packageStatus,
      packageTid,
      packageType,
      order,
      const DeepCollectionEquality().hash(media),
      v,
      deliveryAdddress,
      deliveryAddress);

  @override
  String toString() {
    return 'Package(recieverDetails: $recieverDetails, deliveryLocation: $deliveryLocation, dimensions: $dimensions, charges: $charges, driverRemarks: $driverRemarks, id: $id, packageRide: $packageRide, packageStatus: $packageStatus, packageTid: $packageTid, packageType: $packageType, order: $order, media: $media, v: $v, deliveryAdddress: $deliveryAdddress, deliveryAddress: $deliveryAddress)';
  }
}

/// @nodoc
abstract mixin class $PackageCopyWith<$Res> {
  factory $PackageCopyWith(Package value, $Res Function(Package) _then) =
      _$PackageCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'reciever_details') RecieverDetails? recieverDetails,
      @JsonKey(name: 'delivery_location') Location? deliveryLocation,
      @JsonKey(name: 'dimensions') Dimensions? dimensions,
      @JsonKey(name: 'charges') Charges? charges,
      @JsonKey(name: 'driver_remarks') DriverRemarks? driverRemarks,
      @JsonKey(name: '_id') String? id,
      @JsonKey(name: 'package_ride') String? packageRide,
      @JsonKey(name: 'package_status') String? packageStatus,
      @JsonKey(name: 'package_tid') String? packageTid,
      @JsonKey(name: 'package_type') String? packageType,
      @JsonKey(name: 'order') int? order,
      @JsonKey(name: 'media') List<dynamic>? media,
      @JsonKey(name: '__v') int? v,
      @JsonKey(name: 'delivery_adddress') String? deliveryAdddress,
      @JsonKey(name: 'delivery_address') String? deliveryAddress});

  $RecieverDetailsCopyWith<$Res>? get recieverDetails;
  $LocationCopyWith<$Res>? get deliveryLocation;
  $DimensionsCopyWith<$Res>? get dimensions;
  $ChargesCopyWith<$Res>? get charges;
  $DriverRemarksCopyWith<$Res>? get driverRemarks;
}

/// @nodoc
class _$PackageCopyWithImpl<$Res> implements $PackageCopyWith<$Res> {
  _$PackageCopyWithImpl(this._self, this._then);

  final Package _self;
  final $Res Function(Package) _then;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recieverDetails = freezed,
    Object? deliveryLocation = freezed,
    Object? dimensions = freezed,
    Object? charges = freezed,
    Object? driverRemarks = freezed,
    Object? id = freezed,
    Object? packageRide = freezed,
    Object? packageStatus = freezed,
    Object? packageTid = freezed,
    Object? packageType = freezed,
    Object? order = freezed,
    Object? media = freezed,
    Object? v = freezed,
    Object? deliveryAdddress = freezed,
    Object? deliveryAddress = freezed,
  }) {
    return _then(_self.copyWith(
      recieverDetails: freezed == recieverDetails
          ? _self.recieverDetails
          : recieverDetails // ignore: cast_nullable_to_non_nullable
              as RecieverDetails?,
      deliveryLocation: freezed == deliveryLocation
          ? _self.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      dimensions: freezed == dimensions
          ? _self.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimensions?,
      charges: freezed == charges
          ? _self.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as Charges?,
      driverRemarks: freezed == driverRemarks
          ? _self.driverRemarks
          : driverRemarks // ignore: cast_nullable_to_non_nullable
              as DriverRemarks?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      packageRide: freezed == packageRide
          ? _self.packageRide
          : packageRide // ignore: cast_nullable_to_non_nullable
              as String?,
      packageStatus: freezed == packageStatus
          ? _self.packageStatus
          : packageStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      packageTid: freezed == packageTid
          ? _self.packageTid
          : packageTid // ignore: cast_nullable_to_non_nullable
              as String?,
      packageType: freezed == packageType
          ? _self.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      media: freezed == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      v: freezed == v
          ? _self.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryAdddress: freezed == deliveryAdddress
          ? _self.deliveryAdddress
          : deliveryAdddress // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecieverDetailsCopyWith<$Res>? get recieverDetails {
    if (_self.recieverDetails == null) {
      return null;
    }

    return $RecieverDetailsCopyWith<$Res>(_self.recieverDetails!, (value) {
      return _then(_self.copyWith(recieverDetails: value));
    });
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get deliveryLocation {
    if (_self.deliveryLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.deliveryLocation!, (value) {
      return _then(_self.copyWith(deliveryLocation: value));
    });
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DimensionsCopyWith<$Res>? get dimensions {
    if (_self.dimensions == null) {
      return null;
    }

    return $DimensionsCopyWith<$Res>(_self.dimensions!, (value) {
      return _then(_self.copyWith(dimensions: value));
    });
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChargesCopyWith<$Res>? get charges {
    if (_self.charges == null) {
      return null;
    }

    return $ChargesCopyWith<$Res>(_self.charges!, (value) {
      return _then(_self.copyWith(charges: value));
    });
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverRemarksCopyWith<$Res>? get driverRemarks {
    if (_self.driverRemarks == null) {
      return null;
    }

    return $DriverRemarksCopyWith<$Res>(_self.driverRemarks!, (value) {
      return _then(_self.copyWith(driverRemarks: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Package].
extension PackagePatterns on Package {
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
    TResult Function(_Package value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Package() when $default != null:
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
    TResult Function(_Package value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Package():
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
    TResult? Function(_Package value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Package() when $default != null:
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
            @JsonKey(name: 'reciever_details') RecieverDetails? recieverDetails,
            @JsonKey(name: 'delivery_location') Location? deliveryLocation,
            @JsonKey(name: 'dimensions') Dimensions? dimensions,
            @JsonKey(name: 'charges') Charges? charges,
            @JsonKey(name: 'driver_remarks') DriverRemarks? driverRemarks,
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'package_ride') String? packageRide,
            @JsonKey(name: 'package_status') String? packageStatus,
            @JsonKey(name: 'package_tid') String? packageTid,
            @JsonKey(name: 'package_type') String? packageType,
            @JsonKey(name: 'order') int? order,
            @JsonKey(name: 'media') List<dynamic>? media,
            @JsonKey(name: '__v') int? v,
            @JsonKey(name: 'delivery_adddress') String? deliveryAdddress,
            @JsonKey(name: 'delivery_address') String? deliveryAddress)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Package() when $default != null:
        return $default(
            _that.recieverDetails,
            _that.deliveryLocation,
            _that.dimensions,
            _that.charges,
            _that.driverRemarks,
            _that.id,
            _that.packageRide,
            _that.packageStatus,
            _that.packageTid,
            _that.packageType,
            _that.order,
            _that.media,
            _that.v,
            _that.deliveryAdddress,
            _that.deliveryAddress);
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
            @JsonKey(name: 'reciever_details') RecieverDetails? recieverDetails,
            @JsonKey(name: 'delivery_location') Location? deliveryLocation,
            @JsonKey(name: 'dimensions') Dimensions? dimensions,
            @JsonKey(name: 'charges') Charges? charges,
            @JsonKey(name: 'driver_remarks') DriverRemarks? driverRemarks,
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'package_ride') String? packageRide,
            @JsonKey(name: 'package_status') String? packageStatus,
            @JsonKey(name: 'package_tid') String? packageTid,
            @JsonKey(name: 'package_type') String? packageType,
            @JsonKey(name: 'order') int? order,
            @JsonKey(name: 'media') List<dynamic>? media,
            @JsonKey(name: '__v') int? v,
            @JsonKey(name: 'delivery_adddress') String? deliveryAdddress,
            @JsonKey(name: 'delivery_address') String? deliveryAddress)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Package():
        return $default(
            _that.recieverDetails,
            _that.deliveryLocation,
            _that.dimensions,
            _that.charges,
            _that.driverRemarks,
            _that.id,
            _that.packageRide,
            _that.packageStatus,
            _that.packageTid,
            _that.packageType,
            _that.order,
            _that.media,
            _that.v,
            _that.deliveryAdddress,
            _that.deliveryAddress);
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
            @JsonKey(name: 'reciever_details') RecieverDetails? recieverDetails,
            @JsonKey(name: 'delivery_location') Location? deliveryLocation,
            @JsonKey(name: 'dimensions') Dimensions? dimensions,
            @JsonKey(name: 'charges') Charges? charges,
            @JsonKey(name: 'driver_remarks') DriverRemarks? driverRemarks,
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'package_ride') String? packageRide,
            @JsonKey(name: 'package_status') String? packageStatus,
            @JsonKey(name: 'package_tid') String? packageTid,
            @JsonKey(name: 'package_type') String? packageType,
            @JsonKey(name: 'order') int? order,
            @JsonKey(name: 'media') List<dynamic>? media,
            @JsonKey(name: '__v') int? v,
            @JsonKey(name: 'delivery_adddress') String? deliveryAdddress,
            @JsonKey(name: 'delivery_address') String? deliveryAddress)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Package() when $default != null:
        return $default(
            _that.recieverDetails,
            _that.deliveryLocation,
            _that.dimensions,
            _that.charges,
            _that.driverRemarks,
            _that.id,
            _that.packageRide,
            _that.packageStatus,
            _that.packageTid,
            _that.packageType,
            _that.order,
            _that.media,
            _that.v,
            _that.deliveryAdddress,
            _that.deliveryAddress);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Package implements Package {
  const _Package(
      {@JsonKey(name: 'reciever_details') this.recieverDetails,
      @JsonKey(name: 'delivery_location') this.deliveryLocation,
      @JsonKey(name: 'dimensions') this.dimensions,
      @JsonKey(name: 'charges') this.charges,
      @JsonKey(name: 'driver_remarks') this.driverRemarks,
      @JsonKey(name: '_id') this.id,
      @JsonKey(name: 'package_ride') this.packageRide,
      @JsonKey(name: 'package_status') this.packageStatus,
      @JsonKey(name: 'package_tid') this.packageTid,
      @JsonKey(name: 'package_type') this.packageType,
      @JsonKey(name: 'order') this.order,
      @JsonKey(name: 'media') final List<dynamic>? media,
      @JsonKey(name: '__v') this.v,
      @JsonKey(name: 'delivery_adddress') this.deliveryAdddress,
      @JsonKey(name: 'delivery_address') this.deliveryAddress})
      : _media = media;
  factory _Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);

  @override
  @JsonKey(name: 'reciever_details')
  final RecieverDetails? recieverDetails;
  @override
  @JsonKey(name: 'delivery_location')
  final Location? deliveryLocation;
  @override
  @JsonKey(name: 'dimensions')
  final Dimensions? dimensions;
  @override
  @JsonKey(name: 'charges')
  final Charges? charges;
  @override
  @JsonKey(name: 'driver_remarks')
  final DriverRemarks? driverRemarks;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'package_ride')
  final String? packageRide;
  @override
  @JsonKey(name: 'package_status')
  final String? packageStatus;
  @override
  @JsonKey(name: 'package_tid')
  final String? packageTid;
  @override
  @JsonKey(name: 'package_type')
  final String? packageType;
  @override
  @JsonKey(name: 'order')
  final int? order;
  final List<dynamic>? _media;
  @override
  @JsonKey(name: 'media')
  List<dynamic>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: '__v')
  final int? v;
  @override
  @JsonKey(name: 'delivery_adddress')
  final String? deliveryAdddress;
  @override
  @JsonKey(name: 'delivery_address')
  final String? deliveryAddress;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PackageCopyWith<_Package> get copyWith =>
      __$PackageCopyWithImpl<_Package>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PackageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Package &&
            (identical(other.recieverDetails, recieverDetails) ||
                other.recieverDetails == recieverDetails) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.charges, charges) || other.charges == charges) &&
            (identical(other.driverRemarks, driverRemarks) ||
                other.driverRemarks == driverRemarks) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.packageRide, packageRide) ||
                other.packageRide == packageRide) &&
            (identical(other.packageStatus, packageStatus) ||
                other.packageStatus == packageStatus) &&
            (identical(other.packageTid, packageTid) ||
                other.packageTid == packageTid) &&
            (identical(other.packageType, packageType) ||
                other.packageType == packageType) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.deliveryAdddress, deliveryAdddress) ||
                other.deliveryAdddress == deliveryAdddress) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      recieverDetails,
      deliveryLocation,
      dimensions,
      charges,
      driverRemarks,
      id,
      packageRide,
      packageStatus,
      packageTid,
      packageType,
      order,
      const DeepCollectionEquality().hash(_media),
      v,
      deliveryAdddress,
      deliveryAddress);

  @override
  String toString() {
    return 'Package(recieverDetails: $recieverDetails, deliveryLocation: $deliveryLocation, dimensions: $dimensions, charges: $charges, driverRemarks: $driverRemarks, id: $id, packageRide: $packageRide, packageStatus: $packageStatus, packageTid: $packageTid, packageType: $packageType, order: $order, media: $media, v: $v, deliveryAdddress: $deliveryAdddress, deliveryAddress: $deliveryAddress)';
  }
}

/// @nodoc
abstract mixin class _$PackageCopyWith<$Res> implements $PackageCopyWith<$Res> {
  factory _$PackageCopyWith(_Package value, $Res Function(_Package) _then) =
      __$PackageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'reciever_details') RecieverDetails? recieverDetails,
      @JsonKey(name: 'delivery_location') Location? deliveryLocation,
      @JsonKey(name: 'dimensions') Dimensions? dimensions,
      @JsonKey(name: 'charges') Charges? charges,
      @JsonKey(name: 'driver_remarks') DriverRemarks? driverRemarks,
      @JsonKey(name: '_id') String? id,
      @JsonKey(name: 'package_ride') String? packageRide,
      @JsonKey(name: 'package_status') String? packageStatus,
      @JsonKey(name: 'package_tid') String? packageTid,
      @JsonKey(name: 'package_type') String? packageType,
      @JsonKey(name: 'order') int? order,
      @JsonKey(name: 'media') List<dynamic>? media,
      @JsonKey(name: '__v') int? v,
      @JsonKey(name: 'delivery_adddress') String? deliveryAdddress,
      @JsonKey(name: 'delivery_address') String? deliveryAddress});

  @override
  $RecieverDetailsCopyWith<$Res>? get recieverDetails;
  @override
  $LocationCopyWith<$Res>? get deliveryLocation;
  @override
  $DimensionsCopyWith<$Res>? get dimensions;
  @override
  $ChargesCopyWith<$Res>? get charges;
  @override
  $DriverRemarksCopyWith<$Res>? get driverRemarks;
}

/// @nodoc
class __$PackageCopyWithImpl<$Res> implements _$PackageCopyWith<$Res> {
  __$PackageCopyWithImpl(this._self, this._then);

  final _Package _self;
  final $Res Function(_Package) _then;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? recieverDetails = freezed,
    Object? deliveryLocation = freezed,
    Object? dimensions = freezed,
    Object? charges = freezed,
    Object? driverRemarks = freezed,
    Object? id = freezed,
    Object? packageRide = freezed,
    Object? packageStatus = freezed,
    Object? packageTid = freezed,
    Object? packageType = freezed,
    Object? order = freezed,
    Object? media = freezed,
    Object? v = freezed,
    Object? deliveryAdddress = freezed,
    Object? deliveryAddress = freezed,
  }) {
    return _then(_Package(
      recieverDetails: freezed == recieverDetails
          ? _self.recieverDetails
          : recieverDetails // ignore: cast_nullable_to_non_nullable
              as RecieverDetails?,
      deliveryLocation: freezed == deliveryLocation
          ? _self.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      dimensions: freezed == dimensions
          ? _self.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimensions?,
      charges: freezed == charges
          ? _self.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as Charges?,
      driverRemarks: freezed == driverRemarks
          ? _self.driverRemarks
          : driverRemarks // ignore: cast_nullable_to_non_nullable
              as DriverRemarks?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      packageRide: freezed == packageRide
          ? _self.packageRide
          : packageRide // ignore: cast_nullable_to_non_nullable
              as String?,
      packageStatus: freezed == packageStatus
          ? _self.packageStatus
          : packageStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      packageTid: freezed == packageTid
          ? _self.packageTid
          : packageTid // ignore: cast_nullable_to_non_nullable
              as String?,
      packageType: freezed == packageType
          ? _self.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      media: freezed == media
          ? _self._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      v: freezed == v
          ? _self.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryAdddress: freezed == deliveryAdddress
          ? _self.deliveryAdddress
          : deliveryAdddress // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecieverDetailsCopyWith<$Res>? get recieverDetails {
    if (_self.recieverDetails == null) {
      return null;
    }

    return $RecieverDetailsCopyWith<$Res>(_self.recieverDetails!, (value) {
      return _then(_self.copyWith(recieverDetails: value));
    });
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get deliveryLocation {
    if (_self.deliveryLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.deliveryLocation!, (value) {
      return _then(_self.copyWith(deliveryLocation: value));
    });
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DimensionsCopyWith<$Res>? get dimensions {
    if (_self.dimensions == null) {
      return null;
    }

    return $DimensionsCopyWith<$Res>(_self.dimensions!, (value) {
      return _then(_self.copyWith(dimensions: value));
    });
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChargesCopyWith<$Res>? get charges {
    if (_self.charges == null) {
      return null;
    }

    return $ChargesCopyWith<$Res>(_self.charges!, (value) {
      return _then(_self.copyWith(charges: value));
    });
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverRemarksCopyWith<$Res>? get driverRemarks {
    if (_self.driverRemarks == null) {
      return null;
    }

    return $DriverRemarksCopyWith<$Res>(_self.driverRemarks!, (value) {
      return _then(_self.copyWith(driverRemarks: value));
    });
  }
}

/// @nodoc
mixin _$Charges {
  @JsonKey(name: 'amount')
  int? get amount;
  @JsonKey(name: 'currency')
  String? get currency;
  @JsonKey(name: 'payment')
  String? get payment;

  /// Create a copy of Charges
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChargesCopyWith<Charges> get copyWith =>
      _$ChargesCopyWithImpl<Charges>(this as Charges, _$identity);

  /// Serializes this Charges to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Charges &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency, payment);

  @override
  String toString() {
    return 'Charges(amount: $amount, currency: $currency, payment: $payment)';
  }
}

/// @nodoc
abstract mixin class $ChargesCopyWith<$Res> {
  factory $ChargesCopyWith(Charges value, $Res Function(Charges) _then) =
      _$ChargesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'payment') String? payment});
}

/// @nodoc
class _$ChargesCopyWithImpl<$Res> implements $ChargesCopyWith<$Res> {
  _$ChargesCopyWithImpl(this._self, this._then);

  final Charges _self;
  final $Res Function(Charges) _then;

  /// Create a copy of Charges
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
    Object? payment = freezed,
  }) {
    return _then(_self.copyWith(
      amount: freezed == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: freezed == payment
          ? _self.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Charges].
extension ChargesPatterns on Charges {
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
    TResult Function(_Charges value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Charges() when $default != null:
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
    TResult Function(_Charges value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Charges():
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
    TResult? Function(_Charges value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Charges() when $default != null:
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
            @JsonKey(name: 'amount') int? amount,
            @JsonKey(name: 'currency') String? currency,
            @JsonKey(name: 'payment') String? payment)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Charges() when $default != null:
        return $default(_that.amount, _that.currency, _that.payment);
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
            @JsonKey(name: 'amount') int? amount,
            @JsonKey(name: 'currency') String? currency,
            @JsonKey(name: 'payment') String? payment)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Charges():
        return $default(_that.amount, _that.currency, _that.payment);
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
            @JsonKey(name: 'amount') int? amount,
            @JsonKey(name: 'currency') String? currency,
            @JsonKey(name: 'payment') String? payment)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Charges() when $default != null:
        return $default(_that.amount, _that.currency, _that.payment);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Charges implements Charges {
  const _Charges(
      {@JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'currency') this.currency,
      @JsonKey(name: 'payment') this.payment});
  factory _Charges.fromJson(Map<String, dynamic> json) =>
      _$ChargesFromJson(json);

  @override
  @JsonKey(name: 'amount')
  final int? amount;
  @override
  @JsonKey(name: 'currency')
  final String? currency;
  @override
  @JsonKey(name: 'payment')
  final String? payment;

  /// Create a copy of Charges
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChargesCopyWith<_Charges> get copyWith =>
      __$ChargesCopyWithImpl<_Charges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChargesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Charges &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency, payment);

  @override
  String toString() {
    return 'Charges(amount: $amount, currency: $currency, payment: $payment)';
  }
}

/// @nodoc
abstract mixin class _$ChargesCopyWith<$Res> implements $ChargesCopyWith<$Res> {
  factory _$ChargesCopyWith(_Charges value, $Res Function(_Charges) _then) =
      __$ChargesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'payment') String? payment});
}

/// @nodoc
class __$ChargesCopyWithImpl<$Res> implements _$ChargesCopyWith<$Res> {
  __$ChargesCopyWithImpl(this._self, this._then);

  final _Charges _self;
  final $Res Function(_Charges) _then;

  /// Create a copy of Charges
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
    Object? payment = freezed,
  }) {
    return _then(_Charges(
      amount: freezed == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: freezed == payment
          ? _self.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: 'longitude')
  double? get longitude;
  @JsonKey(name: 'latitude')
  double? get latitude;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationCopyWith<Location> get copyWith =>
      _$LocationCopyWithImpl<Location>(this as Location, _$identity);

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Location &&
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
    return 'Location(longitude: $longitude, latitude: $latitude)';
  }
}

/// @nodoc
abstract mixin class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) _then) =
      _$LocationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'latitude') double? latitude});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._self, this._then);

  final Location _self;
  final $Res Function(Location) _then;

  /// Create a copy of Location
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

/// Adds pattern-matching-related methods to [Location].
extension LocationPatterns on Location {
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
    TResult Function(_Location value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
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
    TResult Function(_Location value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location():
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
    TResult? Function(_Location value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
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
    TResult Function(@JsonKey(name: 'longitude') double? longitude,
            @JsonKey(name: 'latitude') double? latitude)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
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
    TResult Function(@JsonKey(name: 'longitude') double? longitude,
            @JsonKey(name: 'latitude') double? latitude)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location():
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
    TResult? Function(@JsonKey(name: 'longitude') double? longitude,
            @JsonKey(name: 'latitude') double? latitude)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
        return $default(_that.longitude, _that.latitude);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Location implements Location {
  const _Location(
      {@JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'latitude') this.latitude});
  factory _Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  @override
  @JsonKey(name: 'longitude')
  final double? longitude;
  @override
  @JsonKey(name: 'latitude')
  final double? latitude;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Location &&
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
    return 'Location(longitude: $longitude, latitude: $latitude)';
  }
}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) =
      __$LocationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'latitude') double? latitude});
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(this._self, this._then);

  final _Location _self;
  final $Res Function(_Location) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_Location(
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
mixin _$Dimensions {
  @JsonKey(name: 'width')
  int? get width;
  @JsonKey(name: 'height')
  int? get height;
  @JsonKey(name: 'weight')
  int? get weight;

  /// Create a copy of Dimensions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DimensionsCopyWith<Dimensions> get copyWith =>
      _$DimensionsCopyWithImpl<Dimensions>(this as Dimensions, _$identity);

  /// Serializes this Dimensions to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Dimensions &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, weight);

  @override
  String toString() {
    return 'Dimensions(width: $width, height: $height, weight: $weight)';
  }
}

/// @nodoc
abstract mixin class $DimensionsCopyWith<$Res> {
  factory $DimensionsCopyWith(
          Dimensions value, $Res Function(Dimensions) _then) =
      _$DimensionsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'weight') int? weight});
}

/// @nodoc
class _$DimensionsCopyWithImpl<$Res> implements $DimensionsCopyWith<$Res> {
  _$DimensionsCopyWithImpl(this._self, this._then);

  final Dimensions _self;
  final $Res Function(Dimensions) _then;

  /// Create a copy of Dimensions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? weight = freezed,
  }) {
    return _then(_self.copyWith(
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Dimensions].
extension DimensionsPatterns on Dimensions {
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
    TResult Function(_Dimensions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Dimensions() when $default != null:
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
    TResult Function(_Dimensions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dimensions():
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
    TResult? Function(_Dimensions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dimensions() when $default != null:
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
            @JsonKey(name: 'width') int? width,
            @JsonKey(name: 'height') int? height,
            @JsonKey(name: 'weight') int? weight)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Dimensions() when $default != null:
        return $default(_that.width, _that.height, _that.weight);
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
            @JsonKey(name: 'width') int? width,
            @JsonKey(name: 'height') int? height,
            @JsonKey(name: 'weight') int? weight)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dimensions():
        return $default(_that.width, _that.height, _that.weight);
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
            @JsonKey(name: 'width') int? width,
            @JsonKey(name: 'height') int? height,
            @JsonKey(name: 'weight') int? weight)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dimensions() when $default != null:
        return $default(_that.width, _that.height, _that.weight);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Dimensions implements Dimensions {
  const _Dimensions(
      {@JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'weight') this.weight});
  factory _Dimensions.fromJson(Map<String, dynamic> json) =>
      _$DimensionsFromJson(json);

  @override
  @JsonKey(name: 'width')
  final int? width;
  @override
  @JsonKey(name: 'height')
  final int? height;
  @override
  @JsonKey(name: 'weight')
  final int? weight;

  /// Create a copy of Dimensions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DimensionsCopyWith<_Dimensions> get copyWith =>
      __$DimensionsCopyWithImpl<_Dimensions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DimensionsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Dimensions &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, weight);

  @override
  String toString() {
    return 'Dimensions(width: $width, height: $height, weight: $weight)';
  }
}

/// @nodoc
abstract mixin class _$DimensionsCopyWith<$Res>
    implements $DimensionsCopyWith<$Res> {
  factory _$DimensionsCopyWith(
          _Dimensions value, $Res Function(_Dimensions) _then) =
      __$DimensionsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'weight') int? weight});
}

/// @nodoc
class __$DimensionsCopyWithImpl<$Res> implements _$DimensionsCopyWith<$Res> {
  __$DimensionsCopyWithImpl(this._self, this._then);

  final _Dimensions _self;
  final $Res Function(_Dimensions) _then;

  /// Create a copy of Dimensions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? weight = freezed,
  }) {
    return _then(_Dimensions(
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$DriverRemarks {
  @JsonKey(name: 'media')
  List<dynamic>? get media;

  /// Create a copy of DriverRemarks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DriverRemarksCopyWith<DriverRemarks> get copyWith =>
      _$DriverRemarksCopyWithImpl<DriverRemarks>(
          this as DriverRemarks, _$identity);

  /// Serializes this DriverRemarks to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DriverRemarks &&
            const DeepCollectionEquality().equals(other.media, media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(media));

  @override
  String toString() {
    return 'DriverRemarks(media: $media)';
  }
}

/// @nodoc
abstract mixin class $DriverRemarksCopyWith<$Res> {
  factory $DriverRemarksCopyWith(
          DriverRemarks value, $Res Function(DriverRemarks) _then) =
      _$DriverRemarksCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'media') List<dynamic>? media});
}

/// @nodoc
class _$DriverRemarksCopyWithImpl<$Res>
    implements $DriverRemarksCopyWith<$Res> {
  _$DriverRemarksCopyWithImpl(this._self, this._then);

  final DriverRemarks _self;
  final $Res Function(DriverRemarks) _then;

  /// Create a copy of DriverRemarks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = freezed,
  }) {
    return _then(_self.copyWith(
      media: freezed == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DriverRemarks].
extension DriverRemarksPatterns on DriverRemarks {
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
    TResult Function(_DriverRemarks value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriverRemarks() when $default != null:
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
    TResult Function(_DriverRemarks value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverRemarks():
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
    TResult? Function(_DriverRemarks value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverRemarks() when $default != null:
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
    TResult Function(@JsonKey(name: 'media') List<dynamic>? media)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriverRemarks() when $default != null:
        return $default(_that.media);
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
    TResult Function(@JsonKey(name: 'media') List<dynamic>? media) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverRemarks():
        return $default(_that.media);
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
    TResult? Function(@JsonKey(name: 'media') List<dynamic>? media)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverRemarks() when $default != null:
        return $default(_that.media);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DriverRemarks implements DriverRemarks {
  const _DriverRemarks({@JsonKey(name: 'media') final List<dynamic>? media})
      : _media = media;
  factory _DriverRemarks.fromJson(Map<String, dynamic> json) =>
      _$DriverRemarksFromJson(json);

  final List<dynamic>? _media;
  @override
  @JsonKey(name: 'media')
  List<dynamic>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of DriverRemarks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DriverRemarksCopyWith<_DriverRemarks> get copyWith =>
      __$DriverRemarksCopyWithImpl<_DriverRemarks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DriverRemarksToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriverRemarks &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_media));

  @override
  String toString() {
    return 'DriverRemarks(media: $media)';
  }
}

/// @nodoc
abstract mixin class _$DriverRemarksCopyWith<$Res>
    implements $DriverRemarksCopyWith<$Res> {
  factory _$DriverRemarksCopyWith(
          _DriverRemarks value, $Res Function(_DriverRemarks) _then) =
      __$DriverRemarksCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'media') List<dynamic>? media});
}

/// @nodoc
class __$DriverRemarksCopyWithImpl<$Res>
    implements _$DriverRemarksCopyWith<$Res> {
  __$DriverRemarksCopyWithImpl(this._self, this._then);

  final _DriverRemarks _self;
  final $Res Function(_DriverRemarks) _then;

  /// Create a copy of DriverRemarks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? media = freezed,
  }) {
    return _then(_DriverRemarks(
      media: freezed == media
          ? _self._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$RecieverDetails {
  @JsonKey(name: 'full_name')
  String? get fullName;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @JsonKey(name: 'reg_on_db')
  bool? get regOnDb;

  /// Create a copy of RecieverDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecieverDetailsCopyWith<RecieverDetails> get copyWith =>
      _$RecieverDetailsCopyWithImpl<RecieverDetails>(
          this as RecieverDetails, _$identity);

  /// Serializes this RecieverDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecieverDetails &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.regOnDb, regOnDb) || other.regOnDb == regOnDb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, phoneNumber, regOnDb);

  @override
  String toString() {
    return 'RecieverDetails(fullName: $fullName, phoneNumber: $phoneNumber, regOnDb: $regOnDb)';
  }
}

/// @nodoc
abstract mixin class $RecieverDetailsCopyWith<$Res> {
  factory $RecieverDetailsCopyWith(
          RecieverDetails value, $Res Function(RecieverDetails) _then) =
      _$RecieverDetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'reg_on_db') bool? regOnDb});
}

/// @nodoc
class _$RecieverDetailsCopyWithImpl<$Res>
    implements $RecieverDetailsCopyWith<$Res> {
  _$RecieverDetailsCopyWithImpl(this._self, this._then);

  final RecieverDetails _self;
  final $Res Function(RecieverDetails) _then;

  /// Create a copy of RecieverDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? regOnDb = freezed,
  }) {
    return _then(_self.copyWith(
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      regOnDb: freezed == regOnDb
          ? _self.regOnDb
          : regOnDb // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RecieverDetails].
extension RecieverDetailsPatterns on RecieverDetails {
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
    TResult Function(_RecieverDetails value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RecieverDetails() when $default != null:
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
    TResult Function(_RecieverDetails value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RecieverDetails():
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
    TResult? Function(_RecieverDetails value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RecieverDetails() when $default != null:
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
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'phone_number') String? phoneNumber,
            @JsonKey(name: 'reg_on_db') bool? regOnDb)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RecieverDetails() when $default != null:
        return $default(_that.fullName, _that.phoneNumber, _that.regOnDb);
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
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'phone_number') String? phoneNumber,
            @JsonKey(name: 'reg_on_db') bool? regOnDb)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RecieverDetails():
        return $default(_that.fullName, _that.phoneNumber, _that.regOnDb);
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
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'phone_number') String? phoneNumber,
            @JsonKey(name: 'reg_on_db') bool? regOnDb)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RecieverDetails() when $default != null:
        return $default(_that.fullName, _that.phoneNumber, _that.regOnDb);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RecieverDetails implements RecieverDetails {
  const _RecieverDetails(
      {@JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'reg_on_db') this.regOnDb});
  factory _RecieverDetails.fromJson(Map<String, dynamic> json) =>
      _$RecieverDetailsFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'reg_on_db')
  final bool? regOnDb;

  /// Create a copy of RecieverDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RecieverDetailsCopyWith<_RecieverDetails> get copyWith =>
      __$RecieverDetailsCopyWithImpl<_RecieverDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RecieverDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecieverDetails &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.regOnDb, regOnDb) || other.regOnDb == regOnDb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, phoneNumber, regOnDb);

  @override
  String toString() {
    return 'RecieverDetails(fullName: $fullName, phoneNumber: $phoneNumber, regOnDb: $regOnDb)';
  }
}

/// @nodoc
abstract mixin class _$RecieverDetailsCopyWith<$Res>
    implements $RecieverDetailsCopyWith<$Res> {
  factory _$RecieverDetailsCopyWith(
          _RecieverDetails value, $Res Function(_RecieverDetails) _then) =
      __$RecieverDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'reg_on_db') bool? regOnDb});
}

/// @nodoc
class __$RecieverDetailsCopyWithImpl<$Res>
    implements _$RecieverDetailsCopyWith<$Res> {
  __$RecieverDetailsCopyWithImpl(this._self, this._then);

  final _RecieverDetails _self;
  final $Res Function(_RecieverDetails) _then;

  /// Create a copy of RecieverDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? regOnDb = freezed,
  }) {
    return _then(_RecieverDetails(
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      regOnDb: freezed == regOnDb
          ? _self.regOnDb
          : regOnDb // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$Ride {
  @JsonKey(name: '_id')
  String? get id;
  @JsonKey(name: 'user')
  String? get user;
  @JsonKey(name: 'tracking_id')
  String? get trackingId;
  @JsonKey(name: 'status')
  String? get status;
  @JsonKey(name: 'pickup_location')
  Location? get pickupLocation;
  @JsonKey(name: 'distance_in_meters')
  int? get distanceInMeters;
  @JsonKey(name: 'polyline')
  String? get polyline;
  @JsonKey(name: 'pickup_time')
  DateTime? get pickupTime;
  @JsonKey(name: '__v')
  int? get v;
  @JsonKey(name: 'driver')
  String? get driver;
  @JsonKey(name: 'pickup_address')
  String? get pickupAddress;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.trackingId, trackingId) ||
                other.trackingId == trackingId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.distanceInMeters, distanceInMeters) ||
                other.distanceInMeters == distanceInMeters) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline) &&
            (identical(other.pickupTime, pickupTime) ||
                other.pickupTime == pickupTime) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      trackingId,
      status,
      pickupLocation,
      distanceInMeters,
      polyline,
      pickupTime,
      v,
      driver,
      pickupAddress);

  @override
  String toString() {
    return 'Ride(id: $id, user: $user, trackingId: $trackingId, status: $status, pickupLocation: $pickupLocation, distanceInMeters: $distanceInMeters, polyline: $polyline, pickupTime: $pickupTime, v: $v, driver: $driver, pickupAddress: $pickupAddress)';
  }
}

/// @nodoc
abstract mixin class $RideCopyWith<$Res> {
  factory $RideCopyWith(Ride value, $Res Function(Ride) _then) =
      _$RideCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'user') String? user,
      @JsonKey(name: 'tracking_id') String? trackingId,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'pickup_location') Location? pickupLocation,
      @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
      @JsonKey(name: 'polyline') String? polyline,
      @JsonKey(name: 'pickup_time') DateTime? pickupTime,
      @JsonKey(name: '__v') int? v,
      @JsonKey(name: 'driver') String? driver,
      @JsonKey(name: 'pickup_address') String? pickupAddress});

  $LocationCopyWith<$Res>? get pickupLocation;
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
    Object? id = freezed,
    Object? user = freezed,
    Object? trackingId = freezed,
    Object? status = freezed,
    Object? pickupLocation = freezed,
    Object? distanceInMeters = freezed,
    Object? polyline = freezed,
    Object? pickupTime = freezed,
    Object? v = freezed,
    Object? driver = freezed,
    Object? pickupAddress = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingId: freezed == trackingId
          ? _self.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLocation: freezed == pickupLocation
          ? _self.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      distanceInMeters: freezed == distanceInMeters
          ? _self.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      polyline: freezed == polyline
          ? _self.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupTime: freezed == pickupTime
          ? _self.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _self.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      driver: freezed == driver
          ? _self.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: freezed == pickupAddress
          ? _self.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Ride
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
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'user') String? user,
            @JsonKey(name: 'tracking_id') String? trackingId,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'pickup_location') Location? pickupLocation,
            @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
            @JsonKey(name: 'polyline') String? polyline,
            @JsonKey(name: 'pickup_time') DateTime? pickupTime,
            @JsonKey(name: '__v') int? v,
            @JsonKey(name: 'driver') String? driver,
            @JsonKey(name: 'pickup_address') String? pickupAddress)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Ride() when $default != null:
        return $default(
            _that.id,
            _that.user,
            _that.trackingId,
            _that.status,
            _that.pickupLocation,
            _that.distanceInMeters,
            _that.polyline,
            _that.pickupTime,
            _that.v,
            _that.driver,
            _that.pickupAddress);
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
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'user') String? user,
            @JsonKey(name: 'tracking_id') String? trackingId,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'pickup_location') Location? pickupLocation,
            @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
            @JsonKey(name: 'polyline') String? polyline,
            @JsonKey(name: 'pickup_time') DateTime? pickupTime,
            @JsonKey(name: '__v') int? v,
            @JsonKey(name: 'driver') String? driver,
            @JsonKey(name: 'pickup_address') String? pickupAddress)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ride():
        return $default(
            _that.id,
            _that.user,
            _that.trackingId,
            _that.status,
            _that.pickupLocation,
            _that.distanceInMeters,
            _that.polyline,
            _that.pickupTime,
            _that.v,
            _that.driver,
            _that.pickupAddress);
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
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'user') String? user,
            @JsonKey(name: 'tracking_id') String? trackingId,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'pickup_location') Location? pickupLocation,
            @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
            @JsonKey(name: 'polyline') String? polyline,
            @JsonKey(name: 'pickup_time') DateTime? pickupTime,
            @JsonKey(name: '__v') int? v,
            @JsonKey(name: 'driver') String? driver,
            @JsonKey(name: 'pickup_address') String? pickupAddress)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ride() when $default != null:
        return $default(
            _that.id,
            _that.user,
            _that.trackingId,
            _that.status,
            _that.pickupLocation,
            _that.distanceInMeters,
            _that.polyline,
            _that.pickupTime,
            _that.v,
            _that.driver,
            _that.pickupAddress);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Ride implements Ride {
  const _Ride(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'tracking_id') this.trackingId,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'pickup_location') this.pickupLocation,
      @JsonKey(name: 'distance_in_meters') this.distanceInMeters,
      @JsonKey(name: 'polyline') this.polyline,
      @JsonKey(name: 'pickup_time') this.pickupTime,
      @JsonKey(name: '__v') this.v,
      @JsonKey(name: 'driver') this.driver,
      @JsonKey(name: 'pickup_address') this.pickupAddress});
  factory _Ride.fromJson(Map<String, dynamic> json) => _$RideFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'user')
  final String? user;
  @override
  @JsonKey(name: 'tracking_id')
  final String? trackingId;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'pickup_location')
  final Location? pickupLocation;
  @override
  @JsonKey(name: 'distance_in_meters')
  final int? distanceInMeters;
  @override
  @JsonKey(name: 'polyline')
  final String? polyline;
  @override
  @JsonKey(name: 'pickup_time')
  final DateTime? pickupTime;
  @override
  @JsonKey(name: '__v')
  final int? v;
  @override
  @JsonKey(name: 'driver')
  final String? driver;
  @override
  @JsonKey(name: 'pickup_address')
  final String? pickupAddress;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.trackingId, trackingId) ||
                other.trackingId == trackingId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.distanceInMeters, distanceInMeters) ||
                other.distanceInMeters == distanceInMeters) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline) &&
            (identical(other.pickupTime, pickupTime) ||
                other.pickupTime == pickupTime) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      trackingId,
      status,
      pickupLocation,
      distanceInMeters,
      polyline,
      pickupTime,
      v,
      driver,
      pickupAddress);

  @override
  String toString() {
    return 'Ride(id: $id, user: $user, trackingId: $trackingId, status: $status, pickupLocation: $pickupLocation, distanceInMeters: $distanceInMeters, polyline: $polyline, pickupTime: $pickupTime, v: $v, driver: $driver, pickupAddress: $pickupAddress)';
  }
}

/// @nodoc
abstract mixin class _$RideCopyWith<$Res> implements $RideCopyWith<$Res> {
  factory _$RideCopyWith(_Ride value, $Res Function(_Ride) _then) =
      __$RideCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'user') String? user,
      @JsonKey(name: 'tracking_id') String? trackingId,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'pickup_location') Location? pickupLocation,
      @JsonKey(name: 'distance_in_meters') int? distanceInMeters,
      @JsonKey(name: 'polyline') String? polyline,
      @JsonKey(name: 'pickup_time') DateTime? pickupTime,
      @JsonKey(name: '__v') int? v,
      @JsonKey(name: 'driver') String? driver,
      @JsonKey(name: 'pickup_address') String? pickupAddress});

  @override
  $LocationCopyWith<$Res>? get pickupLocation;
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
    Object? id = freezed,
    Object? user = freezed,
    Object? trackingId = freezed,
    Object? status = freezed,
    Object? pickupLocation = freezed,
    Object? distanceInMeters = freezed,
    Object? polyline = freezed,
    Object? pickupTime = freezed,
    Object? v = freezed,
    Object? driver = freezed,
    Object? pickupAddress = freezed,
  }) {
    return _then(_Ride(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingId: freezed == trackingId
          ? _self.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLocation: freezed == pickupLocation
          ? _self.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      distanceInMeters: freezed == distanceInMeters
          ? _self.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      polyline: freezed == polyline
          ? _self.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupTime: freezed == pickupTime
          ? _self.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _self.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      driver: freezed == driver
          ? _self.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: freezed == pickupAddress
          ? _self.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Ride
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
}

// dart format on
