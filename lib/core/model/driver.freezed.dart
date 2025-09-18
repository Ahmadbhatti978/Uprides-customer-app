// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Driver {
  @JsonKey(name: '_id')
  String? get id;
  @JsonKey(name: 'full_name')
  String? get fullName;
  @JsonKey(name: 'profile_photo')
  String? get profilePhoto;
  @JsonKey(name: 'organization_id')
  String? get organizationId;
  @JsonKey(name: 'vehicle_id')
  @VehicalIDConverter()
  VehicleId? get vehicleId;

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DriverCopyWith<Driver> get copyWith =>
      _$DriverCopyWithImpl<Driver>(this as Driver, _$identity);

  /// Serializes this Driver to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Driver &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fullName, profilePhoto, organizationId, vehicleId);

  @override
  String toString() {
    return 'Driver(id: $id, fullName: $fullName, profilePhoto: $profilePhoto, organizationId: $organizationId, vehicleId: $vehicleId)';
  }
}

/// @nodoc
abstract mixin class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) _then) =
      _$DriverCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'profile_photo') String? profilePhoto,
      @JsonKey(name: 'organization_id') String? organizationId,
      @JsonKey(name: 'vehicle_id') @VehicalIDConverter() VehicleId? vehicleId});

  $VehicleIdCopyWith<$Res>? get vehicleId;
}

/// @nodoc
class _$DriverCopyWithImpl<$Res> implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._self, this._then);

  final Driver _self;
  final $Res Function(Driver) _then;

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? profilePhoto = freezed,
    Object? organizationId = freezed,
    Object? vehicleId = freezed,
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
      profilePhoto: freezed == profilePhoto
          ? _self.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleId: freezed == vehicleId
          ? _self.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as VehicleId?,
    ));
  }

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleIdCopyWith<$Res>? get vehicleId {
    if (_self.vehicleId == null) {
      return null;
    }

    return $VehicleIdCopyWith<$Res>(_self.vehicleId!, (value) {
      return _then(_self.copyWith(vehicleId: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Driver].
extension DriverPatterns on Driver {
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
    TResult Function(_Driver value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Driver() when $default != null:
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
    TResult Function(_Driver value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Driver():
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
    TResult? Function(_Driver value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Driver() when $default != null:
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
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'profile_photo') String? profilePhoto,
            @JsonKey(name: 'organization_id') String? organizationId,
            @JsonKey(name: 'vehicle_id')
            @VehicalIDConverter()
            VehicleId? vehicleId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Driver() when $default != null:
        return $default(_that.id, _that.fullName, _that.profilePhoto,
            _that.organizationId, _that.vehicleId);
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
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'profile_photo') String? profilePhoto,
            @JsonKey(name: 'organization_id') String? organizationId,
            @JsonKey(name: 'vehicle_id')
            @VehicalIDConverter()
            VehicleId? vehicleId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Driver():
        return $default(_that.id, _that.fullName, _that.profilePhoto,
            _that.organizationId, _that.vehicleId);
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
            @JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'profile_photo') String? profilePhoto,
            @JsonKey(name: 'organization_id') String? organizationId,
            @JsonKey(name: 'vehicle_id')
            @VehicalIDConverter()
            VehicleId? vehicleId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Driver() when $default != null:
        return $default(_that.id, _that.fullName, _that.profilePhoto,
            _that.organizationId, _that.vehicleId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Driver implements Driver {
  const _Driver(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'profile_photo') this.profilePhoto,
      @JsonKey(name: 'organization_id') this.organizationId,
      @JsonKey(name: 'vehicle_id') @VehicalIDConverter() this.vehicleId});
  factory _Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'profile_photo')
  final String? profilePhoto;
  @override
  @JsonKey(name: 'organization_id')
  final String? organizationId;
  @override
  @JsonKey(name: 'vehicle_id')
  @VehicalIDConverter()
  final VehicleId? vehicleId;

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DriverCopyWith<_Driver> get copyWith =>
      __$DriverCopyWithImpl<_Driver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DriverToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Driver &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fullName, profilePhoto, organizationId, vehicleId);

  @override
  String toString() {
    return 'Driver(id: $id, fullName: $fullName, profilePhoto: $profilePhoto, organizationId: $organizationId, vehicleId: $vehicleId)';
  }
}

/// @nodoc
abstract mixin class _$DriverCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$DriverCopyWith(_Driver value, $Res Function(_Driver) _then) =
      __$DriverCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'profile_photo') String? profilePhoto,
      @JsonKey(name: 'organization_id') String? organizationId,
      @JsonKey(name: 'vehicle_id') @VehicalIDConverter() VehicleId? vehicleId});

  @override
  $VehicleIdCopyWith<$Res>? get vehicleId;
}

/// @nodoc
class __$DriverCopyWithImpl<$Res> implements _$DriverCopyWith<$Res> {
  __$DriverCopyWithImpl(this._self, this._then);

  final _Driver _self;
  final $Res Function(_Driver) _then;

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? profilePhoto = freezed,
    Object? organizationId = freezed,
    Object? vehicleId = freezed,
  }) {
    return _then(_Driver(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _self.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleId: freezed == vehicleId
          ? _self.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as VehicleId?,
    ));
  }

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleIdCopyWith<$Res>? get vehicleId {
    if (_self.vehicleId == null) {
      return null;
    }

    return $VehicleIdCopyWith<$Res>(_self.vehicleId!, (value) {
      return _then(_self.copyWith(vehicleId: value));
    });
  }
}

/// @nodoc
mixin _$VehicleId {
// Documents? documents,
  String? get id;
  String? get vehicleModel;
  String? get color;
  String? get brand;
  String? get vin;
  String? get registrationNumber;
  String? get createdBy;
  String? get category;
  dynamic get vehicleId;
  bool? get isActive;
  bool? get babySitterAvailable;
  bool? get jumpStart;
  bool? get rental;
  bool? get intercity;
  int? get seats;
  int? get rentHourlyCharges;
  int? get securityDeposit;
  bool? get petFriendly;
  bool? get assist;
  DateTime? get createdAt;
  DateTime? get updatedAt;
  int? get v;
  String? get assignedDriver;

  /// Create a copy of VehicleId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VehicleIdCopyWith<VehicleId> get copyWith =>
      _$VehicleIdCopyWithImpl<VehicleId>(this as VehicleId, _$identity);

  /// Serializes this VehicleId to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VehicleId &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vehicleModel, vehicleModel) ||
                other.vehicleModel == vehicleModel) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other.vehicleId, vehicleId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.babySitterAvailable, babySitterAvailable) ||
                other.babySitterAvailable == babySitterAvailable) &&
            (identical(other.jumpStart, jumpStart) ||
                other.jumpStart == jumpStart) &&
            (identical(other.rental, rental) || other.rental == rental) &&
            (identical(other.intercity, intercity) ||
                other.intercity == intercity) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.rentHourlyCharges, rentHourlyCharges) ||
                other.rentHourlyCharges == rentHourlyCharges) &&
            (identical(other.securityDeposit, securityDeposit) ||
                other.securityDeposit == securityDeposit) &&
            (identical(other.petFriendly, petFriendly) ||
                other.petFriendly == petFriendly) &&
            (identical(other.assist, assist) || other.assist == assist) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.assignedDriver, assignedDriver) ||
                other.assignedDriver == assignedDriver));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        vehicleModel,
        color,
        brand,
        vin,
        registrationNumber,
        createdBy,
        category,
        const DeepCollectionEquality().hash(vehicleId),
        isActive,
        babySitterAvailable,
        jumpStart,
        rental,
        intercity,
        seats,
        rentHourlyCharges,
        securityDeposit,
        petFriendly,
        assist,
        createdAt,
        updatedAt,
        v,
        assignedDriver
      ]);

  @override
  String toString() {
    return 'VehicleId(id: $id, vehicleModel: $vehicleModel, color: $color, brand: $brand, vin: $vin, registrationNumber: $registrationNumber, createdBy: $createdBy, category: $category, vehicleId: $vehicleId, isActive: $isActive, babySitterAvailable: $babySitterAvailable, jumpStart: $jumpStart, rental: $rental, intercity: $intercity, seats: $seats, rentHourlyCharges: $rentHourlyCharges, securityDeposit: $securityDeposit, petFriendly: $petFriendly, assist: $assist, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, assignedDriver: $assignedDriver)';
  }
}

/// @nodoc
abstract mixin class $VehicleIdCopyWith<$Res> {
  factory $VehicleIdCopyWith(VehicleId value, $Res Function(VehicleId) _then) =
      _$VehicleIdCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? vehicleModel,
      String? color,
      String? brand,
      String? vin,
      String? registrationNumber,
      String? createdBy,
      String? category,
      dynamic vehicleId,
      bool? isActive,
      bool? babySitterAvailable,
      bool? jumpStart,
      bool? rental,
      bool? intercity,
      int? seats,
      int? rentHourlyCharges,
      int? securityDeposit,
      bool? petFriendly,
      bool? assist,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      String? assignedDriver});
}

/// @nodoc
class _$VehicleIdCopyWithImpl<$Res> implements $VehicleIdCopyWith<$Res> {
  _$VehicleIdCopyWithImpl(this._self, this._then);

  final VehicleId _self;
  final $Res Function(VehicleId) _then;

  /// Create a copy of VehicleId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vehicleModel = freezed,
    Object? color = freezed,
    Object? brand = freezed,
    Object? vin = freezed,
    Object? registrationNumber = freezed,
    Object? createdBy = freezed,
    Object? category = freezed,
    Object? vehicleId = freezed,
    Object? isActive = freezed,
    Object? babySitterAvailable = freezed,
    Object? jumpStart = freezed,
    Object? rental = freezed,
    Object? intercity = freezed,
    Object? seats = freezed,
    Object? rentHourlyCharges = freezed,
    Object? securityDeposit = freezed,
    Object? petFriendly = freezed,
    Object? assist = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? assignedDriver = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleModel: freezed == vehicleModel
          ? _self.vehicleModel
          : vehicleModel // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleId: freezed == vehicleId
          ? _self.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      babySitterAvailable: freezed == babySitterAvailable
          ? _self.babySitterAvailable
          : babySitterAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      jumpStart: freezed == jumpStart
          ? _self.jumpStart
          : jumpStart // ignore: cast_nullable_to_non_nullable
              as bool?,
      rental: freezed == rental
          ? _self.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as bool?,
      intercity: freezed == intercity
          ? _self.intercity
          : intercity // ignore: cast_nullable_to_non_nullable
              as bool?,
      seats: freezed == seats
          ? _self.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int?,
      rentHourlyCharges: freezed == rentHourlyCharges
          ? _self.rentHourlyCharges
          : rentHourlyCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      securityDeposit: freezed == securityDeposit
          ? _self.securityDeposit
          : securityDeposit // ignore: cast_nullable_to_non_nullable
              as int?,
      petFriendly: freezed == petFriendly
          ? _self.petFriendly
          : petFriendly // ignore: cast_nullable_to_non_nullable
              as bool?,
      assist: freezed == assist
          ? _self.assist
          : assist // ignore: cast_nullable_to_non_nullable
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
      assignedDriver: freezed == assignedDriver
          ? _self.assignedDriver
          : assignedDriver // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VehicleId].
extension VehicleIdPatterns on VehicleId {
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
    TResult Function(_VehicleId value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VehicleId() when $default != null:
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
    TResult Function(_VehicleId value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleId():
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
    TResult? Function(_VehicleId value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleId() when $default != null:
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
            String? id,
            String? vehicleModel,
            String? color,
            String? brand,
            String? vin,
            String? registrationNumber,
            String? createdBy,
            String? category,
            dynamic vehicleId,
            bool? isActive,
            bool? babySitterAvailable,
            bool? jumpStart,
            bool? rental,
            bool? intercity,
            int? seats,
            int? rentHourlyCharges,
            int? securityDeposit,
            bool? petFriendly,
            bool? assist,
            DateTime? createdAt,
            DateTime? updatedAt,
            int? v,
            String? assignedDriver)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VehicleId() when $default != null:
        return $default(
            _that.id,
            _that.vehicleModel,
            _that.color,
            _that.brand,
            _that.vin,
            _that.registrationNumber,
            _that.createdBy,
            _that.category,
            _that.vehicleId,
            _that.isActive,
            _that.babySitterAvailable,
            _that.jumpStart,
            _that.rental,
            _that.intercity,
            _that.seats,
            _that.rentHourlyCharges,
            _that.securityDeposit,
            _that.petFriendly,
            _that.assist,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.assignedDriver);
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
            String? id,
            String? vehicleModel,
            String? color,
            String? brand,
            String? vin,
            String? registrationNumber,
            String? createdBy,
            String? category,
            dynamic vehicleId,
            bool? isActive,
            bool? babySitterAvailable,
            bool? jumpStart,
            bool? rental,
            bool? intercity,
            int? seats,
            int? rentHourlyCharges,
            int? securityDeposit,
            bool? petFriendly,
            bool? assist,
            DateTime? createdAt,
            DateTime? updatedAt,
            int? v,
            String? assignedDriver)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleId():
        return $default(
            _that.id,
            _that.vehicleModel,
            _that.color,
            _that.brand,
            _that.vin,
            _that.registrationNumber,
            _that.createdBy,
            _that.category,
            _that.vehicleId,
            _that.isActive,
            _that.babySitterAvailable,
            _that.jumpStart,
            _that.rental,
            _that.intercity,
            _that.seats,
            _that.rentHourlyCharges,
            _that.securityDeposit,
            _that.petFriendly,
            _that.assist,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.assignedDriver);
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
            String? id,
            String? vehicleModel,
            String? color,
            String? brand,
            String? vin,
            String? registrationNumber,
            String? createdBy,
            String? category,
            dynamic vehicleId,
            bool? isActive,
            bool? babySitterAvailable,
            bool? jumpStart,
            bool? rental,
            bool? intercity,
            int? seats,
            int? rentHourlyCharges,
            int? securityDeposit,
            bool? petFriendly,
            bool? assist,
            DateTime? createdAt,
            DateTime? updatedAt,
            int? v,
            String? assignedDriver)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleId() when $default != null:
        return $default(
            _that.id,
            _that.vehicleModel,
            _that.color,
            _that.brand,
            _that.vin,
            _that.registrationNumber,
            _that.createdBy,
            _that.category,
            _that.vehicleId,
            _that.isActive,
            _that.babySitterAvailable,
            _that.jumpStart,
            _that.rental,
            _that.intercity,
            _that.seats,
            _that.rentHourlyCharges,
            _that.securityDeposit,
            _that.petFriendly,
            _that.assist,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.assignedDriver);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _VehicleId implements VehicleId {
  const _VehicleId(
      {this.id,
      this.vehicleModel,
      this.color,
      this.brand,
      this.vin,
      this.registrationNumber,
      this.createdBy,
      this.category,
      this.vehicleId,
      this.isActive,
      this.babySitterAvailable,
      this.jumpStart,
      this.rental,
      this.intercity,
      this.seats,
      this.rentHourlyCharges,
      this.securityDeposit,
      this.petFriendly,
      this.assist,
      this.createdAt,
      this.updatedAt,
      this.v,
      this.assignedDriver});
  factory _VehicleId.fromJson(Map<String, dynamic> json) =>
      _$VehicleIdFromJson(json);

// Documents? documents,
  @override
  final String? id;
  @override
  final String? vehicleModel;
  @override
  final String? color;
  @override
  final String? brand;
  @override
  final String? vin;
  @override
  final String? registrationNumber;
  @override
  final String? createdBy;
  @override
  final String? category;
  @override
  final dynamic vehicleId;
  @override
  final bool? isActive;
  @override
  final bool? babySitterAvailable;
  @override
  final bool? jumpStart;
  @override
  final bool? rental;
  @override
  final bool? intercity;
  @override
  final int? seats;
  @override
  final int? rentHourlyCharges;
  @override
  final int? securityDeposit;
  @override
  final bool? petFriendly;
  @override
  final bool? assist;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;
  @override
  final String? assignedDriver;

  /// Create a copy of VehicleId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VehicleIdCopyWith<_VehicleId> get copyWith =>
      __$VehicleIdCopyWithImpl<_VehicleId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VehicleIdToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VehicleId &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vehicleModel, vehicleModel) ||
                other.vehicleModel == vehicleModel) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other.vehicleId, vehicleId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.babySitterAvailable, babySitterAvailable) ||
                other.babySitterAvailable == babySitterAvailable) &&
            (identical(other.jumpStart, jumpStart) ||
                other.jumpStart == jumpStart) &&
            (identical(other.rental, rental) || other.rental == rental) &&
            (identical(other.intercity, intercity) ||
                other.intercity == intercity) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.rentHourlyCharges, rentHourlyCharges) ||
                other.rentHourlyCharges == rentHourlyCharges) &&
            (identical(other.securityDeposit, securityDeposit) ||
                other.securityDeposit == securityDeposit) &&
            (identical(other.petFriendly, petFriendly) ||
                other.petFriendly == petFriendly) &&
            (identical(other.assist, assist) || other.assist == assist) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.assignedDriver, assignedDriver) ||
                other.assignedDriver == assignedDriver));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        vehicleModel,
        color,
        brand,
        vin,
        registrationNumber,
        createdBy,
        category,
        const DeepCollectionEquality().hash(vehicleId),
        isActive,
        babySitterAvailable,
        jumpStart,
        rental,
        intercity,
        seats,
        rentHourlyCharges,
        securityDeposit,
        petFriendly,
        assist,
        createdAt,
        updatedAt,
        v,
        assignedDriver
      ]);

  @override
  String toString() {
    return 'VehicleId(id: $id, vehicleModel: $vehicleModel, color: $color, brand: $brand, vin: $vin, registrationNumber: $registrationNumber, createdBy: $createdBy, category: $category, vehicleId: $vehicleId, isActive: $isActive, babySitterAvailable: $babySitterAvailable, jumpStart: $jumpStart, rental: $rental, intercity: $intercity, seats: $seats, rentHourlyCharges: $rentHourlyCharges, securityDeposit: $securityDeposit, petFriendly: $petFriendly, assist: $assist, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, assignedDriver: $assignedDriver)';
  }
}

/// @nodoc
abstract mixin class _$VehicleIdCopyWith<$Res>
    implements $VehicleIdCopyWith<$Res> {
  factory _$VehicleIdCopyWith(
          _VehicleId value, $Res Function(_VehicleId) _then) =
      __$VehicleIdCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? vehicleModel,
      String? color,
      String? brand,
      String? vin,
      String? registrationNumber,
      String? createdBy,
      String? category,
      dynamic vehicleId,
      bool? isActive,
      bool? babySitterAvailable,
      bool? jumpStart,
      bool? rental,
      bool? intercity,
      int? seats,
      int? rentHourlyCharges,
      int? securityDeposit,
      bool? petFriendly,
      bool? assist,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      String? assignedDriver});
}

/// @nodoc
class __$VehicleIdCopyWithImpl<$Res> implements _$VehicleIdCopyWith<$Res> {
  __$VehicleIdCopyWithImpl(this._self, this._then);

  final _VehicleId _self;
  final $Res Function(_VehicleId) _then;

  /// Create a copy of VehicleId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? vehicleModel = freezed,
    Object? color = freezed,
    Object? brand = freezed,
    Object? vin = freezed,
    Object? registrationNumber = freezed,
    Object? createdBy = freezed,
    Object? category = freezed,
    Object? vehicleId = freezed,
    Object? isActive = freezed,
    Object? babySitterAvailable = freezed,
    Object? jumpStart = freezed,
    Object? rental = freezed,
    Object? intercity = freezed,
    Object? seats = freezed,
    Object? rentHourlyCharges = freezed,
    Object? securityDeposit = freezed,
    Object? petFriendly = freezed,
    Object? assist = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? assignedDriver = freezed,
  }) {
    return _then(_VehicleId(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleModel: freezed == vehicleModel
          ? _self.vehicleModel
          : vehicleModel // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleId: freezed == vehicleId
          ? _self.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      babySitterAvailable: freezed == babySitterAvailable
          ? _self.babySitterAvailable
          : babySitterAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      jumpStart: freezed == jumpStart
          ? _self.jumpStart
          : jumpStart // ignore: cast_nullable_to_non_nullable
              as bool?,
      rental: freezed == rental
          ? _self.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as bool?,
      intercity: freezed == intercity
          ? _self.intercity
          : intercity // ignore: cast_nullable_to_non_nullable
              as bool?,
      seats: freezed == seats
          ? _self.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int?,
      rentHourlyCharges: freezed == rentHourlyCharges
          ? _self.rentHourlyCharges
          : rentHourlyCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      securityDeposit: freezed == securityDeposit
          ? _self.securityDeposit
          : securityDeposit // ignore: cast_nullable_to_non_nullable
              as int?,
      petFriendly: freezed == petFriendly
          ? _self.petFriendly
          : petFriendly // ignore: cast_nullable_to_non_nullable
              as bool?,
      assist: freezed == assist
          ? _self.assist
          : assist // ignore: cast_nullable_to_non_nullable
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
      assignedDriver: freezed == assignedDriver
          ? _self.assignedDriver
          : assignedDriver // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
