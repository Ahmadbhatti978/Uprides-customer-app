// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Invoice {
  @JsonKey(name: "success")
  bool? get success;
  @JsonKey(name: "message")
  String? get message;
  @JsonKey(name: "data")
  Data? get data;
  @JsonKey(name: "statusCode")
  int? get statusCode;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InvoiceCopyWith<Invoice> get copyWith =>
      _$InvoiceCopyWithImpl<Invoice>(this as Invoice, _$identity);

  /// Serializes this Invoice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Invoice &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, data, statusCode);

  @override
  String toString() {
    return 'Invoice(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) _then) =
      _$InvoiceCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "statusCode") int? statusCode});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res> implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._self, this._then);

  final Invoice _self;
  final $Res Function(Invoice) _then;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? statusCode = freezed,
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
      statusCode: freezed == statusCode
          ? _self.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of Invoice
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

/// Adds pattern-matching-related methods to [Invoice].
extension InvoicePatterns on Invoice {
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
    TResult Function(_Invoice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Invoice() when $default != null:
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
    TResult Function(_Invoice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Invoice():
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
    TResult? Function(_Invoice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Invoice() when $default != null:
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
            @JsonKey(name: "data") Data? data,
            @JsonKey(name: "statusCode") int? statusCode)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Invoice() when $default != null:
        return $default(
            _that.success, _that.message, _that.data, _that.statusCode);
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
            @JsonKey(name: "data") Data? data,
            @JsonKey(name: "statusCode") int? statusCode)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Invoice():
        return $default(
            _that.success, _that.message, _that.data, _that.statusCode);
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
            @JsonKey(name: "data") Data? data,
            @JsonKey(name: "statusCode") int? statusCode)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Invoice() when $default != null:
        return $default(
            _that.success, _that.message, _that.data, _that.statusCode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Invoice implements Invoice {
  const _Invoice(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "statusCode") this.statusCode});
  factory _Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final Data? data;
  @override
  @JsonKey(name: "statusCode")
  final int? statusCode;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InvoiceCopyWith<_Invoice> get copyWith =>
      __$InvoiceCopyWithImpl<_Invoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InvoiceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Invoice &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, data, statusCode);

  @override
  String toString() {
    return 'Invoice(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class _$InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$InvoiceCopyWith(_Invoice value, $Res Function(_Invoice) _then) =
      __$InvoiceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "statusCode") int? statusCode});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$InvoiceCopyWithImpl<$Res> implements _$InvoiceCopyWith<$Res> {
  __$InvoiceCopyWithImpl(this._self, this._then);

  final _Invoice _self;
  final $Res Function(_Invoice) _then;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_Invoice(
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
      statusCode: freezed == statusCode
          ? _self.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of Invoice
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
  @JsonKey(name: "driver_name")
  String? get driverName;
  @JsonKey(name: "vehicle")
  String? get vehicle;
  @JsonKey(name: "vehicleDetails")
  VehicleDetails? get vehicleDetails;
  @JsonKey(name: "vin")
  String? get vin;
  @JsonKey(name: "pickup_address")
  String? get pickupAddress;
  @JsonKey(name: "dropoff_address")
  String? get dropoffAddress;
  @JsonKey(name: "pickup_to_dropoff_polyline")
  String? get pickupToDropoffPolyline;
  @JsonKey(name: "fare")
  double? get fare;
  @JsonKey(name: "total")
  double? get total;
  @JsonKey(name: "vat")
  double? get vat;
  @JsonKey(name: "amount_paid")
  double? get amountPaid;
  @JsonKey(name: "duration")
  int? get duration;
  @JsonKey(name: "distance")
  double? get distance;
  @JsonKey(name: "ride_created_at")
  DateTime? get rideCreatedAt;
  @JsonKey(name: "cancellation_charges")
  int? get cancellationCharges;

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
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.vehicleDetails, vehicleDetails) ||
                other.vehicleDetails == vehicleDetails) &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.dropoffAddress, dropoffAddress) ||
                other.dropoffAddress == dropoffAddress) &&
            (identical(
                    other.pickupToDropoffPolyline, pickupToDropoffPolyline) ||
                other.pickupToDropoffPolyline == pickupToDropoffPolyline) &&
            (identical(other.fare, fare) || other.fare == fare) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.rideCreatedAt, rideCreatedAt) ||
                other.rideCreatedAt == rideCreatedAt) &&
            (identical(other.cancellationCharges, cancellationCharges) ||
                other.cancellationCharges == cancellationCharges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      driverName,
      vehicle,
      vehicleDetails,
      vin,
      pickupAddress,
      dropoffAddress,
      pickupToDropoffPolyline,
      fare,
      total,
      vat,
      amountPaid,
      duration,
      distance,
      rideCreatedAt,
      cancellationCharges);

  @override
  String toString() {
    return 'Data(driverName: $driverName, vehicle: $vehicle, vehicleDetails: $vehicleDetails, vin: $vin, pickupAddress: $pickupAddress, dropoffAddress: $dropoffAddress, pickupToDropoffPolyline: $pickupToDropoffPolyline, fare: $fare, total: $total, vat: $vat, amountPaid: $amountPaid, duration: $duration, distance: $distance, rideCreatedAt: $rideCreatedAt, cancellationCharges: $cancellationCharges)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "driver_name") String? driverName,
      @JsonKey(name: "vehicle") String? vehicle,
      @JsonKey(name: "vehicleDetails") VehicleDetails? vehicleDetails,
      @JsonKey(name: "vin") String? vin,
      @JsonKey(name: "pickup_address") String? pickupAddress,
      @JsonKey(name: "dropoff_address") String? dropoffAddress,
      @JsonKey(name: "pickup_to_dropoff_polyline")
      String? pickupToDropoffPolyline,
      @JsonKey(name: "fare") double? fare,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "amount_paid") double? amountPaid,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "distance") double? distance,
      @JsonKey(name: "ride_created_at") DateTime? rideCreatedAt,
      @JsonKey(name: "cancellation_charges") int? cancellationCharges});

  $VehicleDetailsCopyWith<$Res>? get vehicleDetails;
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
    Object? driverName = freezed,
    Object? vehicle = freezed,
    Object? vehicleDetails = freezed,
    Object? vin = freezed,
    Object? pickupAddress = freezed,
    Object? dropoffAddress = freezed,
    Object? pickupToDropoffPolyline = freezed,
    Object? fare = freezed,
    Object? total = freezed,
    Object? vat = freezed,
    Object? amountPaid = freezed,
    Object? duration = freezed,
    Object? distance = freezed,
    Object? rideCreatedAt = freezed,
    Object? cancellationCharges = freezed,
  }) {
    return _then(_self.copyWith(
      driverName: freezed == driverName
          ? _self.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: freezed == vehicle
          ? _self.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleDetails: freezed == vehicleDetails
          ? _self.vehicleDetails
          : vehicleDetails // ignore: cast_nullable_to_non_nullable
              as VehicleDetails?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: freezed == pickupAddress
          ? _self.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropoffAddress: freezed == dropoffAddress
          ? _self.dropoffAddress
          : dropoffAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupToDropoffPolyline: freezed == pickupToDropoffPolyline
          ? _self.pickupToDropoffPolyline
          : pickupToDropoffPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
      fare: freezed == fare
          ? _self.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _self.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      amountPaid: freezed == amountPaid
          ? _self.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      rideCreatedAt: freezed == rideCreatedAt
          ? _self.rideCreatedAt
          : rideCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancellationCharges: freezed == cancellationCharges
          ? _self.cancellationCharges
          : cancellationCharges // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleDetailsCopyWith<$Res>? get vehicleDetails {
    if (_self.vehicleDetails == null) {
      return null;
    }

    return $VehicleDetailsCopyWith<$Res>(_self.vehicleDetails!, (value) {
      return _then(_self.copyWith(vehicleDetails: value));
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
            @JsonKey(name: "driver_name") String? driverName,
            @JsonKey(name: "vehicle") String? vehicle,
            @JsonKey(name: "vehicleDetails") VehicleDetails? vehicleDetails,
            @JsonKey(name: "vin") String? vin,
            @JsonKey(name: "pickup_address") String? pickupAddress,
            @JsonKey(name: "dropoff_address") String? dropoffAddress,
            @JsonKey(name: "pickup_to_dropoff_polyline")
            String? pickupToDropoffPolyline,
            @JsonKey(name: "fare") double? fare,
            @JsonKey(name: "total") double? total,
            @JsonKey(name: "vat") double? vat,
            @JsonKey(name: "amount_paid") double? amountPaid,
            @JsonKey(name: "duration") int? duration,
            @JsonKey(name: "distance") double? distance,
            @JsonKey(name: "ride_created_at") DateTime? rideCreatedAt,
            @JsonKey(name: "cancellation_charges") int? cancellationCharges)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(
            _that.driverName,
            _that.vehicle,
            _that.vehicleDetails,
            _that.vin,
            _that.pickupAddress,
            _that.dropoffAddress,
            _that.pickupToDropoffPolyline,
            _that.fare,
            _that.total,
            _that.vat,
            _that.amountPaid,
            _that.duration,
            _that.distance,
            _that.rideCreatedAt,
            _that.cancellationCharges);
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
            @JsonKey(name: "driver_name") String? driverName,
            @JsonKey(name: "vehicle") String? vehicle,
            @JsonKey(name: "vehicleDetails") VehicleDetails? vehicleDetails,
            @JsonKey(name: "vin") String? vin,
            @JsonKey(name: "pickup_address") String? pickupAddress,
            @JsonKey(name: "dropoff_address") String? dropoffAddress,
            @JsonKey(name: "pickup_to_dropoff_polyline")
            String? pickupToDropoffPolyline,
            @JsonKey(name: "fare") double? fare,
            @JsonKey(name: "total") double? total,
            @JsonKey(name: "vat") double? vat,
            @JsonKey(name: "amount_paid") double? amountPaid,
            @JsonKey(name: "duration") int? duration,
            @JsonKey(name: "distance") double? distance,
            @JsonKey(name: "ride_created_at") DateTime? rideCreatedAt,
            @JsonKey(name: "cancellation_charges") int? cancellationCharges)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
        return $default(
            _that.driverName,
            _that.vehicle,
            _that.vehicleDetails,
            _that.vin,
            _that.pickupAddress,
            _that.dropoffAddress,
            _that.pickupToDropoffPolyline,
            _that.fare,
            _that.total,
            _that.vat,
            _that.amountPaid,
            _that.duration,
            _that.distance,
            _that.rideCreatedAt,
            _that.cancellationCharges);
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
            @JsonKey(name: "driver_name") String? driverName,
            @JsonKey(name: "vehicle") String? vehicle,
            @JsonKey(name: "vehicleDetails") VehicleDetails? vehicleDetails,
            @JsonKey(name: "vin") String? vin,
            @JsonKey(name: "pickup_address") String? pickupAddress,
            @JsonKey(name: "dropoff_address") String? dropoffAddress,
            @JsonKey(name: "pickup_to_dropoff_polyline")
            String? pickupToDropoffPolyline,
            @JsonKey(name: "fare") double? fare,
            @JsonKey(name: "total") double? total,
            @JsonKey(name: "vat") double? vat,
            @JsonKey(name: "amount_paid") double? amountPaid,
            @JsonKey(name: "duration") int? duration,
            @JsonKey(name: "distance") double? distance,
            @JsonKey(name: "ride_created_at") DateTime? rideCreatedAt,
            @JsonKey(name: "cancellation_charges") int? cancellationCharges)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(
            _that.driverName,
            _that.vehicle,
            _that.vehicleDetails,
            _that.vin,
            _that.pickupAddress,
            _that.dropoffAddress,
            _that.pickupToDropoffPolyline,
            _that.fare,
            _that.total,
            _that.vat,
            _that.amountPaid,
            _that.duration,
            _that.distance,
            _that.rideCreatedAt,
            _that.cancellationCharges);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Data implements Data {
  const _Data(
      {@JsonKey(name: "driver_name") this.driverName,
      @JsonKey(name: "vehicle") this.vehicle,
      @JsonKey(name: "vehicleDetails") this.vehicleDetails,
      @JsonKey(name: "vin") this.vin,
      @JsonKey(name: "pickup_address") this.pickupAddress,
      @JsonKey(name: "dropoff_address") this.dropoffAddress,
      @JsonKey(name: "pickup_to_dropoff_polyline") this.pickupToDropoffPolyline,
      @JsonKey(name: "fare") this.fare,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "amount_paid") this.amountPaid,
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "distance") this.distance,
      @JsonKey(name: "ride_created_at") this.rideCreatedAt,
      @JsonKey(name: "cancellation_charges") this.cancellationCharges});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  @JsonKey(name: "driver_name")
  final String? driverName;
  @override
  @JsonKey(name: "vehicle")
  final String? vehicle;
  @override
  @JsonKey(name: "vehicleDetails")
  final VehicleDetails? vehicleDetails;
  @override
  @JsonKey(name: "vin")
  final String? vin;
  @override
  @JsonKey(name: "pickup_address")
  final String? pickupAddress;
  @override
  @JsonKey(name: "dropoff_address")
  final String? dropoffAddress;
  @override
  @JsonKey(name: "pickup_to_dropoff_polyline")
  final String? pickupToDropoffPolyline;
  @override
  @JsonKey(name: "fare")
  final double? fare;
  @override
  @JsonKey(name: "total")
  final double? total;
  @override
  @JsonKey(name: "vat")
  final double? vat;
  @override
  @JsonKey(name: "amount_paid")
  final double? amountPaid;
  @override
  @JsonKey(name: "duration")
  final int? duration;
  @override
  @JsonKey(name: "distance")
  final double? distance;
  @override
  @JsonKey(name: "ride_created_at")
  final DateTime? rideCreatedAt;
  @override
  @JsonKey(name: "cancellation_charges")
  final int? cancellationCharges;

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
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.vehicleDetails, vehicleDetails) ||
                other.vehicleDetails == vehicleDetails) &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.dropoffAddress, dropoffAddress) ||
                other.dropoffAddress == dropoffAddress) &&
            (identical(
                    other.pickupToDropoffPolyline, pickupToDropoffPolyline) ||
                other.pickupToDropoffPolyline == pickupToDropoffPolyline) &&
            (identical(other.fare, fare) || other.fare == fare) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.rideCreatedAt, rideCreatedAt) ||
                other.rideCreatedAt == rideCreatedAt) &&
            (identical(other.cancellationCharges, cancellationCharges) ||
                other.cancellationCharges == cancellationCharges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      driverName,
      vehicle,
      vehicleDetails,
      vin,
      pickupAddress,
      dropoffAddress,
      pickupToDropoffPolyline,
      fare,
      total,
      vat,
      amountPaid,
      duration,
      distance,
      rideCreatedAt,
      cancellationCharges);

  @override
  String toString() {
    return 'Data(driverName: $driverName, vehicle: $vehicle, vehicleDetails: $vehicleDetails, vin: $vin, pickupAddress: $pickupAddress, dropoffAddress: $dropoffAddress, pickupToDropoffPolyline: $pickupToDropoffPolyline, fare: $fare, total: $total, vat: $vat, amountPaid: $amountPaid, duration: $duration, distance: $distance, rideCreatedAt: $rideCreatedAt, cancellationCharges: $cancellationCharges)';
  }
}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) =
      __$DataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "driver_name") String? driverName,
      @JsonKey(name: "vehicle") String? vehicle,
      @JsonKey(name: "vehicleDetails") VehicleDetails? vehicleDetails,
      @JsonKey(name: "vin") String? vin,
      @JsonKey(name: "pickup_address") String? pickupAddress,
      @JsonKey(name: "dropoff_address") String? dropoffAddress,
      @JsonKey(name: "pickup_to_dropoff_polyline")
      String? pickupToDropoffPolyline,
      @JsonKey(name: "fare") double? fare,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "amount_paid") double? amountPaid,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "distance") double? distance,
      @JsonKey(name: "ride_created_at") DateTime? rideCreatedAt,
      @JsonKey(name: "cancellation_charges") int? cancellationCharges});

  @override
  $VehicleDetailsCopyWith<$Res>? get vehicleDetails;
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
    Object? driverName = freezed,
    Object? vehicle = freezed,
    Object? vehicleDetails = freezed,
    Object? vin = freezed,
    Object? pickupAddress = freezed,
    Object? dropoffAddress = freezed,
    Object? pickupToDropoffPolyline = freezed,
    Object? fare = freezed,
    Object? total = freezed,
    Object? vat = freezed,
    Object? amountPaid = freezed,
    Object? duration = freezed,
    Object? distance = freezed,
    Object? rideCreatedAt = freezed,
    Object? cancellationCharges = freezed,
  }) {
    return _then(_Data(
      driverName: freezed == driverName
          ? _self.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: freezed == vehicle
          ? _self.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleDetails: freezed == vehicleDetails
          ? _self.vehicleDetails
          : vehicleDetails // ignore: cast_nullable_to_non_nullable
              as VehicleDetails?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: freezed == pickupAddress
          ? _self.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropoffAddress: freezed == dropoffAddress
          ? _self.dropoffAddress
          : dropoffAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupToDropoffPolyline: freezed == pickupToDropoffPolyline
          ? _self.pickupToDropoffPolyline
          : pickupToDropoffPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
      fare: freezed == fare
          ? _self.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _self.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      amountPaid: freezed == amountPaid
          ? _self.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      rideCreatedAt: freezed == rideCreatedAt
          ? _self.rideCreatedAt
          : rideCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancellationCharges: freezed == cancellationCharges
          ? _self.cancellationCharges
          : cancellationCharges // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleDetailsCopyWith<$Res>? get vehicleDetails {
    if (_self.vehicleDetails == null) {
      return null;
    }

    return $VehicleDetailsCopyWith<$Res>(_self.vehicleDetails!, (value) {
      return _then(_self.copyWith(vehicleDetails: value));
    });
  }
}

/// @nodoc
mixin _$VehicleDetails {
  @JsonKey(name: "vehicle")
  Vehicle? get vehicle;

  /// Create a copy of VehicleDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VehicleDetailsCopyWith<VehicleDetails> get copyWith =>
      _$VehicleDetailsCopyWithImpl<VehicleDetails>(
          this as VehicleDetails, _$identity);

  /// Serializes this VehicleDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VehicleDetails &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vehicle);

  @override
  String toString() {
    return 'VehicleDetails(vehicle: $vehicle)';
  }
}

/// @nodoc
abstract mixin class $VehicleDetailsCopyWith<$Res> {
  factory $VehicleDetailsCopyWith(
          VehicleDetails value, $Res Function(VehicleDetails) _then) =
      _$VehicleDetailsCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: "vehicle") Vehicle? vehicle});

  $VehicleCopyWith<$Res>? get vehicle;
}

/// @nodoc
class _$VehicleDetailsCopyWithImpl<$Res>
    implements $VehicleDetailsCopyWith<$Res> {
  _$VehicleDetailsCopyWithImpl(this._self, this._then);

  final VehicleDetails _self;
  final $Res Function(VehicleDetails) _then;

  /// Create a copy of VehicleDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle = freezed,
  }) {
    return _then(_self.copyWith(
      vehicle: freezed == vehicle
          ? _self.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
    ));
  }

  /// Create a copy of VehicleDetails
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

/// Adds pattern-matching-related methods to [VehicleDetails].
extension VehicleDetailsPatterns on VehicleDetails {
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
    TResult Function(_VehicleDetails value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VehicleDetails() when $default != null:
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
    TResult Function(_VehicleDetails value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleDetails():
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
    TResult? Function(_VehicleDetails value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleDetails() when $default != null:
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
    TResult Function(@JsonKey(name: "vehicle") Vehicle? vehicle)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VehicleDetails() when $default != null:
        return $default(_that.vehicle);
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
    TResult Function(@JsonKey(name: "vehicle") Vehicle? vehicle) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleDetails():
        return $default(_that.vehicle);
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
    TResult? Function(@JsonKey(name: "vehicle") Vehicle? vehicle)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleDetails() when $default != null:
        return $default(_that.vehicle);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VehicleDetails implements VehicleDetails {
  const _VehicleDetails({@JsonKey(name: "vehicle") this.vehicle});
  factory _VehicleDetails.fromJson(Map<String, dynamic> json) =>
      _$VehicleDetailsFromJson(json);

  @override
  @JsonKey(name: "vehicle")
  final Vehicle? vehicle;

  /// Create a copy of VehicleDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VehicleDetailsCopyWith<_VehicleDetails> get copyWith =>
      __$VehicleDetailsCopyWithImpl<_VehicleDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VehicleDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VehicleDetails &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vehicle);

  @override
  String toString() {
    return 'VehicleDetails(vehicle: $vehicle)';
  }
}

/// @nodoc
abstract mixin class _$VehicleDetailsCopyWith<$Res>
    implements $VehicleDetailsCopyWith<$Res> {
  factory _$VehicleDetailsCopyWith(
          _VehicleDetails value, $Res Function(_VehicleDetails) _then) =
      __$VehicleDetailsCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: "vehicle") Vehicle? vehicle});

  @override
  $VehicleCopyWith<$Res>? get vehicle;
}

/// @nodoc
class __$VehicleDetailsCopyWithImpl<$Res>
    implements _$VehicleDetailsCopyWith<$Res> {
  __$VehicleDetailsCopyWithImpl(this._self, this._then);

  final _VehicleDetails _self;
  final $Res Function(_VehicleDetails) _then;

  /// Create a copy of VehicleDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? vehicle = freezed,
  }) {
    return _then(_VehicleDetails(
      vehicle: freezed == vehicle
          ? _self.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
    ));
  }

  /// Create a copy of VehicleDetails
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
  @JsonKey(name: "id")
  String? get id;
  @JsonKey(name: "organization_id")
  String? get organizationId;
  @JsonKey(name: "registration_number")
  String? get registrationNumber;
  @JsonKey(name: "brand_name")
  String? get brandName;
  @JsonKey(name: "seats")
  int? get seats;
  @JsonKey(name: "color")
  String? get color;
  @JsonKey(name: "status")
  int? get status;
  @JsonKey(name: "model_year")
  int? get modelYear;
  @JsonKey(name: "is_pet_friendly")
  bool? get isPetFriendly;
  @JsonKey(name: "is_assist")
  bool? get isAssist;
  @JsonKey(name: "is_jumpstart")
  bool? get isJumpstart;
  @JsonKey(name: "is_listing")
  bool? get isListing;
  @JsonKey(name: "is_bold_miles")
  bool? get isBoldMiles;
  @JsonKey(name: "rental_security_deposit")
  int? get rentalSecurityDeposit;
  @JsonKey(name: "rental_daily_charges")
  int? get rentalDailyCharges;
  @JsonKey(name: "is_active")
  bool? get isActive;
  @JsonKey(name: "is_blocked")
  bool? get isBlocked;
  @JsonKey(name: "is_deleted")
  bool? get isDeleted;
  @JsonKey(name: "created_at")
  String? get createdAt;
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @JsonKey(name: "vin")
  String? get vin;
  @JsonKey(name: "vehicle_type")
  VehicleType? get vehicleType;
  @JsonKey(name: "vehicle_image")
  String? get vehicleImage;
  @JsonKey(name: "vehicle_model")
  String? get vehicleModel;
  @JsonKey(name: "vehicle_id")
  String? get vehicleId;
  @JsonKey(name: "ride_type_category")
  RideTypeCategory? get rideTypeCategory;

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
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.modelYear, modelYear) ||
                other.modelYear == modelYear) &&
            (identical(other.isPetFriendly, isPetFriendly) ||
                other.isPetFriendly == isPetFriendly) &&
            (identical(other.isAssist, isAssist) ||
                other.isAssist == isAssist) &&
            (identical(other.isJumpstart, isJumpstart) ||
                other.isJumpstart == isJumpstart) &&
            (identical(other.isListing, isListing) ||
                other.isListing == isListing) &&
            (identical(other.isBoldMiles, isBoldMiles) ||
                other.isBoldMiles == isBoldMiles) &&
            (identical(other.rentalSecurityDeposit, rentalSecurityDeposit) ||
                other.rentalSecurityDeposit == rentalSecurityDeposit) &&
            (identical(other.rentalDailyCharges, rentalDailyCharges) ||
                other.rentalDailyCharges == rentalDailyCharges) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.vehicleImage, vehicleImage) ||
                other.vehicleImage == vehicleImage) &&
            (identical(other.vehicleModel, vehicleModel) ||
                other.vehicleModel == vehicleModel) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.rideTypeCategory, rideTypeCategory) ||
                other.rideTypeCategory == rideTypeCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        organizationId,
        registrationNumber,
        brandName,
        seats,
        color,
        status,
        modelYear,
        isPetFriendly,
        isAssist,
        isJumpstart,
        isListing,
        isBoldMiles,
        rentalSecurityDeposit,
        rentalDailyCharges,
        isActive,
        isBlocked,
        isDeleted,
        createdAt,
        updatedAt,
        vin,
        vehicleType,
        vehicleImage,
        vehicleModel,
        vehicleId,
        rideTypeCategory
      ]);

  @override
  String toString() {
    return 'Vehicle(id: $id, organizationId: $organizationId, registrationNumber: $registrationNumber, brandName: $brandName, seats: $seats, color: $color, status: $status, modelYear: $modelYear, isPetFriendly: $isPetFriendly, isAssist: $isAssist, isJumpstart: $isJumpstart, isListing: $isListing, isBoldMiles: $isBoldMiles, rentalSecurityDeposit: $rentalSecurityDeposit, rentalDailyCharges: $rentalDailyCharges, isActive: $isActive, isBlocked: $isBlocked, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, vin: $vin, vehicleType: $vehicleType, vehicleImage: $vehicleImage, vehicleModel: $vehicleModel, vehicleId: $vehicleId, rideTypeCategory: $rideTypeCategory)';
  }
}

/// @nodoc
abstract mixin class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) _then) =
      _$VehicleCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "organization_id") String? organizationId,
      @JsonKey(name: "registration_number") String? registrationNumber,
      @JsonKey(name: "brand_name") String? brandName,
      @JsonKey(name: "seats") int? seats,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "model_year") int? modelYear,
      @JsonKey(name: "is_pet_friendly") bool? isPetFriendly,
      @JsonKey(name: "is_assist") bool? isAssist,
      @JsonKey(name: "is_jumpstart") bool? isJumpstart,
      @JsonKey(name: "is_listing") bool? isListing,
      @JsonKey(name: "is_bold_miles") bool? isBoldMiles,
      @JsonKey(name: "rental_security_deposit") int? rentalSecurityDeposit,
      @JsonKey(name: "rental_daily_charges") int? rentalDailyCharges,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_blocked") bool? isBlocked,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "vin") String? vin,
      @JsonKey(name: "vehicle_type") VehicleType? vehicleType,
      @JsonKey(name: "vehicle_image") String? vehicleImage,
      @JsonKey(name: "vehicle_model") String? vehicleModel,
      @JsonKey(name: "vehicle_id") String? vehicleId,
      @JsonKey(name: "ride_type_category") RideTypeCategory? rideTypeCategory});

  $VehicleTypeCopyWith<$Res>? get vehicleType;
  $RideTypeCategoryCopyWith<$Res>? get rideTypeCategory;
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
    Object? organizationId = freezed,
    Object? registrationNumber = freezed,
    Object? brandName = freezed,
    Object? seats = freezed,
    Object? color = freezed,
    Object? status = freezed,
    Object? modelYear = freezed,
    Object? isPetFriendly = freezed,
    Object? isAssist = freezed,
    Object? isJumpstart = freezed,
    Object? isListing = freezed,
    Object? isBoldMiles = freezed,
    Object? rentalSecurityDeposit = freezed,
    Object? rentalDailyCharges = freezed,
    Object? isActive = freezed,
    Object? isBlocked = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? vin = freezed,
    Object? vehicleType = freezed,
    Object? vehicleImage = freezed,
    Object? vehicleModel = freezed,
    Object? vehicleId = freezed,
    Object? rideTypeCategory = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _self.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _self.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      modelYear: freezed == modelYear
          ? _self.modelYear
          : modelYear // ignore: cast_nullable_to_non_nullable
              as int?,
      isPetFriendly: freezed == isPetFriendly
          ? _self.isPetFriendly
          : isPetFriendly // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAssist: freezed == isAssist
          ? _self.isAssist
          : isAssist // ignore: cast_nullable_to_non_nullable
              as bool?,
      isJumpstart: freezed == isJumpstart
          ? _self.isJumpstart
          : isJumpstart // ignore: cast_nullable_to_non_nullable
              as bool?,
      isListing: freezed == isListing
          ? _self.isListing
          : isListing // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBoldMiles: freezed == isBoldMiles
          ? _self.isBoldMiles
          : isBoldMiles // ignore: cast_nullable_to_non_nullable
              as bool?,
      rentalSecurityDeposit: freezed == rentalSecurityDeposit
          ? _self.rentalSecurityDeposit
          : rentalSecurityDeposit // ignore: cast_nullable_to_non_nullable
              as int?,
      rentalDailyCharges: freezed == rentalDailyCharges
          ? _self.rentalDailyCharges
          : rentalDailyCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBlocked: freezed == isBlocked
          ? _self.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _self.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType?,
      vehicleImage: freezed == vehicleImage
          ? _self.vehicleImage
          : vehicleImage // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleModel: freezed == vehicleModel
          ? _self.vehicleModel
          : vehicleModel // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleId: freezed == vehicleId
          ? _self.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideTypeCategory: freezed == rideTypeCategory
          ? _self.rideTypeCategory
          : rideTypeCategory // ignore: cast_nullable_to_non_nullable
              as RideTypeCategory?,
    ));
  }

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleTypeCopyWith<$Res>? get vehicleType {
    if (_self.vehicleType == null) {
      return null;
    }

    return $VehicleTypeCopyWith<$Res>(_self.vehicleType!, (value) {
      return _then(_self.copyWith(vehicleType: value));
    });
  }

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideTypeCategoryCopyWith<$Res>? get rideTypeCategory {
    if (_self.rideTypeCategory == null) {
      return null;
    }

    return $RideTypeCategoryCopyWith<$Res>(_self.rideTypeCategory!, (value) {
      return _then(_self.copyWith(rideTypeCategory: value));
    });
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
    TResult Function(
            @JsonKey(name: "id") String? id,
            @JsonKey(name: "organization_id") String? organizationId,
            @JsonKey(name: "registration_number") String? registrationNumber,
            @JsonKey(name: "brand_name") String? brandName,
            @JsonKey(name: "seats") int? seats,
            @JsonKey(name: "color") String? color,
            @JsonKey(name: "status") int? status,
            @JsonKey(name: "model_year") int? modelYear,
            @JsonKey(name: "is_pet_friendly") bool? isPetFriendly,
            @JsonKey(name: "is_assist") bool? isAssist,
            @JsonKey(name: "is_jumpstart") bool? isJumpstart,
            @JsonKey(name: "is_listing") bool? isListing,
            @JsonKey(name: "is_bold_miles") bool? isBoldMiles,
            @JsonKey(name: "rental_security_deposit")
            int? rentalSecurityDeposit,
            @JsonKey(name: "rental_daily_charges") int? rentalDailyCharges,
            @JsonKey(name: "is_active") bool? isActive,
            @JsonKey(name: "is_blocked") bool? isBlocked,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "created_at") String? createdAt,
            @JsonKey(name: "updated_at") String? updatedAt,
            @JsonKey(name: "vin") String? vin,
            @JsonKey(name: "vehicle_type") VehicleType? vehicleType,
            @JsonKey(name: "vehicle_image") String? vehicleImage,
            @JsonKey(name: "vehicle_model") String? vehicleModel,
            @JsonKey(name: "vehicle_id") String? vehicleId,
            @JsonKey(name: "ride_type_category")
            RideTypeCategory? rideTypeCategory)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Vehicle() when $default != null:
        return $default(
            _that.id,
            _that.organizationId,
            _that.registrationNumber,
            _that.brandName,
            _that.seats,
            _that.color,
            _that.status,
            _that.modelYear,
            _that.isPetFriendly,
            _that.isAssist,
            _that.isJumpstart,
            _that.isListing,
            _that.isBoldMiles,
            _that.rentalSecurityDeposit,
            _that.rentalDailyCharges,
            _that.isActive,
            _that.isBlocked,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.vin,
            _that.vehicleType,
            _that.vehicleImage,
            _that.vehicleModel,
            _that.vehicleId,
            _that.rideTypeCategory);
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
            @JsonKey(name: "organization_id") String? organizationId,
            @JsonKey(name: "registration_number") String? registrationNumber,
            @JsonKey(name: "brand_name") String? brandName,
            @JsonKey(name: "seats") int? seats,
            @JsonKey(name: "color") String? color,
            @JsonKey(name: "status") int? status,
            @JsonKey(name: "model_year") int? modelYear,
            @JsonKey(name: "is_pet_friendly") bool? isPetFriendly,
            @JsonKey(name: "is_assist") bool? isAssist,
            @JsonKey(name: "is_jumpstart") bool? isJumpstart,
            @JsonKey(name: "is_listing") bool? isListing,
            @JsonKey(name: "is_bold_miles") bool? isBoldMiles,
            @JsonKey(name: "rental_security_deposit")
            int? rentalSecurityDeposit,
            @JsonKey(name: "rental_daily_charges") int? rentalDailyCharges,
            @JsonKey(name: "is_active") bool? isActive,
            @JsonKey(name: "is_blocked") bool? isBlocked,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "created_at") String? createdAt,
            @JsonKey(name: "updated_at") String? updatedAt,
            @JsonKey(name: "vin") String? vin,
            @JsonKey(name: "vehicle_type") VehicleType? vehicleType,
            @JsonKey(name: "vehicle_image") String? vehicleImage,
            @JsonKey(name: "vehicle_model") String? vehicleModel,
            @JsonKey(name: "vehicle_id") String? vehicleId,
            @JsonKey(name: "ride_type_category")
            RideTypeCategory? rideTypeCategory)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Vehicle():
        return $default(
            _that.id,
            _that.organizationId,
            _that.registrationNumber,
            _that.brandName,
            _that.seats,
            _that.color,
            _that.status,
            _that.modelYear,
            _that.isPetFriendly,
            _that.isAssist,
            _that.isJumpstart,
            _that.isListing,
            _that.isBoldMiles,
            _that.rentalSecurityDeposit,
            _that.rentalDailyCharges,
            _that.isActive,
            _that.isBlocked,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.vin,
            _that.vehicleType,
            _that.vehicleImage,
            _that.vehicleModel,
            _that.vehicleId,
            _that.rideTypeCategory);
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
            @JsonKey(name: "organization_id") String? organizationId,
            @JsonKey(name: "registration_number") String? registrationNumber,
            @JsonKey(name: "brand_name") String? brandName,
            @JsonKey(name: "seats") int? seats,
            @JsonKey(name: "color") String? color,
            @JsonKey(name: "status") int? status,
            @JsonKey(name: "model_year") int? modelYear,
            @JsonKey(name: "is_pet_friendly") bool? isPetFriendly,
            @JsonKey(name: "is_assist") bool? isAssist,
            @JsonKey(name: "is_jumpstart") bool? isJumpstart,
            @JsonKey(name: "is_listing") bool? isListing,
            @JsonKey(name: "is_bold_miles") bool? isBoldMiles,
            @JsonKey(name: "rental_security_deposit")
            int? rentalSecurityDeposit,
            @JsonKey(name: "rental_daily_charges") int? rentalDailyCharges,
            @JsonKey(name: "is_active") bool? isActive,
            @JsonKey(name: "is_blocked") bool? isBlocked,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "created_at") String? createdAt,
            @JsonKey(name: "updated_at") String? updatedAt,
            @JsonKey(name: "vin") String? vin,
            @JsonKey(name: "vehicle_type") VehicleType? vehicleType,
            @JsonKey(name: "vehicle_image") String? vehicleImage,
            @JsonKey(name: "vehicle_model") String? vehicleModel,
            @JsonKey(name: "vehicle_id") String? vehicleId,
            @JsonKey(name: "ride_type_category")
            RideTypeCategory? rideTypeCategory)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Vehicle() when $default != null:
        return $default(
            _that.id,
            _that.organizationId,
            _that.registrationNumber,
            _that.brandName,
            _that.seats,
            _that.color,
            _that.status,
            _that.modelYear,
            _that.isPetFriendly,
            _that.isAssist,
            _that.isJumpstart,
            _that.isListing,
            _that.isBoldMiles,
            _that.rentalSecurityDeposit,
            _that.rentalDailyCharges,
            _that.isActive,
            _that.isBlocked,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.vin,
            _that.vehicleType,
            _that.vehicleImage,
            _that.vehicleModel,
            _that.vehicleId,
            _that.rideTypeCategory);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Vehicle implements Vehicle {
  const _Vehicle(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "organization_id") this.organizationId,
      @JsonKey(name: "registration_number") this.registrationNumber,
      @JsonKey(name: "brand_name") this.brandName,
      @JsonKey(name: "seats") this.seats,
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "model_year") this.modelYear,
      @JsonKey(name: "is_pet_friendly") this.isPetFriendly,
      @JsonKey(name: "is_assist") this.isAssist,
      @JsonKey(name: "is_jumpstart") this.isJumpstart,
      @JsonKey(name: "is_listing") this.isListing,
      @JsonKey(name: "is_bold_miles") this.isBoldMiles,
      @JsonKey(name: "rental_security_deposit") this.rentalSecurityDeposit,
      @JsonKey(name: "rental_daily_charges") this.rentalDailyCharges,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "is_blocked") this.isBlocked,
      @JsonKey(name: "is_deleted") this.isDeleted,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "vin") this.vin,
      @JsonKey(name: "vehicle_type") this.vehicleType,
      @JsonKey(name: "vehicle_image") this.vehicleImage,
      @JsonKey(name: "vehicle_model") this.vehicleModel,
      @JsonKey(name: "vehicle_id") this.vehicleId,
      @JsonKey(name: "ride_type_category") this.rideTypeCategory});
  factory _Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "organization_id")
  final String? organizationId;
  @override
  @JsonKey(name: "registration_number")
  final String? registrationNumber;
  @override
  @JsonKey(name: "brand_name")
  final String? brandName;
  @override
  @JsonKey(name: "seats")
  final int? seats;
  @override
  @JsonKey(name: "color")
  final String? color;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "model_year")
  final int? modelYear;
  @override
  @JsonKey(name: "is_pet_friendly")
  final bool? isPetFriendly;
  @override
  @JsonKey(name: "is_assist")
  final bool? isAssist;
  @override
  @JsonKey(name: "is_jumpstart")
  final bool? isJumpstart;
  @override
  @JsonKey(name: "is_listing")
  final bool? isListing;
  @override
  @JsonKey(name: "is_bold_miles")
  final bool? isBoldMiles;
  @override
  @JsonKey(name: "rental_security_deposit")
  final int? rentalSecurityDeposit;
  @override
  @JsonKey(name: "rental_daily_charges")
  final int? rentalDailyCharges;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "is_blocked")
  final bool? isBlocked;
  @override
  @JsonKey(name: "is_deleted")
  final bool? isDeleted;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "vin")
  final String? vin;
  @override
  @JsonKey(name: "vehicle_type")
  final VehicleType? vehicleType;
  @override
  @JsonKey(name: "vehicle_image")
  final String? vehicleImage;
  @override
  @JsonKey(name: "vehicle_model")
  final String? vehicleModel;
  @override
  @JsonKey(name: "vehicle_id")
  final String? vehicleId;
  @override
  @JsonKey(name: "ride_type_category")
  final RideTypeCategory? rideTypeCategory;

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
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.modelYear, modelYear) ||
                other.modelYear == modelYear) &&
            (identical(other.isPetFriendly, isPetFriendly) ||
                other.isPetFriendly == isPetFriendly) &&
            (identical(other.isAssist, isAssist) ||
                other.isAssist == isAssist) &&
            (identical(other.isJumpstart, isJumpstart) ||
                other.isJumpstart == isJumpstart) &&
            (identical(other.isListing, isListing) ||
                other.isListing == isListing) &&
            (identical(other.isBoldMiles, isBoldMiles) ||
                other.isBoldMiles == isBoldMiles) &&
            (identical(other.rentalSecurityDeposit, rentalSecurityDeposit) ||
                other.rentalSecurityDeposit == rentalSecurityDeposit) &&
            (identical(other.rentalDailyCharges, rentalDailyCharges) ||
                other.rentalDailyCharges == rentalDailyCharges) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.vehicleImage, vehicleImage) ||
                other.vehicleImage == vehicleImage) &&
            (identical(other.vehicleModel, vehicleModel) ||
                other.vehicleModel == vehicleModel) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.rideTypeCategory, rideTypeCategory) ||
                other.rideTypeCategory == rideTypeCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        organizationId,
        registrationNumber,
        brandName,
        seats,
        color,
        status,
        modelYear,
        isPetFriendly,
        isAssist,
        isJumpstart,
        isListing,
        isBoldMiles,
        rentalSecurityDeposit,
        rentalDailyCharges,
        isActive,
        isBlocked,
        isDeleted,
        createdAt,
        updatedAt,
        vin,
        vehicleType,
        vehicleImage,
        vehicleModel,
        vehicleId,
        rideTypeCategory
      ]);

  @override
  String toString() {
    return 'Vehicle(id: $id, organizationId: $organizationId, registrationNumber: $registrationNumber, brandName: $brandName, seats: $seats, color: $color, status: $status, modelYear: $modelYear, isPetFriendly: $isPetFriendly, isAssist: $isAssist, isJumpstart: $isJumpstart, isListing: $isListing, isBoldMiles: $isBoldMiles, rentalSecurityDeposit: $rentalSecurityDeposit, rentalDailyCharges: $rentalDailyCharges, isActive: $isActive, isBlocked: $isBlocked, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, vin: $vin, vehicleType: $vehicleType, vehicleImage: $vehicleImage, vehicleModel: $vehicleModel, vehicleId: $vehicleId, rideTypeCategory: $rideTypeCategory)';
  }
}

/// @nodoc
abstract mixin class _$VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$VehicleCopyWith(_Vehicle value, $Res Function(_Vehicle) _then) =
      __$VehicleCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "organization_id") String? organizationId,
      @JsonKey(name: "registration_number") String? registrationNumber,
      @JsonKey(name: "brand_name") String? brandName,
      @JsonKey(name: "seats") int? seats,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "model_year") int? modelYear,
      @JsonKey(name: "is_pet_friendly") bool? isPetFriendly,
      @JsonKey(name: "is_assist") bool? isAssist,
      @JsonKey(name: "is_jumpstart") bool? isJumpstart,
      @JsonKey(name: "is_listing") bool? isListing,
      @JsonKey(name: "is_bold_miles") bool? isBoldMiles,
      @JsonKey(name: "rental_security_deposit") int? rentalSecurityDeposit,
      @JsonKey(name: "rental_daily_charges") int? rentalDailyCharges,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_blocked") bool? isBlocked,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "vin") String? vin,
      @JsonKey(name: "vehicle_type") VehicleType? vehicleType,
      @JsonKey(name: "vehicle_image") String? vehicleImage,
      @JsonKey(name: "vehicle_model") String? vehicleModel,
      @JsonKey(name: "vehicle_id") String? vehicleId,
      @JsonKey(name: "ride_type_category") RideTypeCategory? rideTypeCategory});

  @override
  $VehicleTypeCopyWith<$Res>? get vehicleType;
  @override
  $RideTypeCategoryCopyWith<$Res>? get rideTypeCategory;
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
    Object? organizationId = freezed,
    Object? registrationNumber = freezed,
    Object? brandName = freezed,
    Object? seats = freezed,
    Object? color = freezed,
    Object? status = freezed,
    Object? modelYear = freezed,
    Object? isPetFriendly = freezed,
    Object? isAssist = freezed,
    Object? isJumpstart = freezed,
    Object? isListing = freezed,
    Object? isBoldMiles = freezed,
    Object? rentalSecurityDeposit = freezed,
    Object? rentalDailyCharges = freezed,
    Object? isActive = freezed,
    Object? isBlocked = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? vin = freezed,
    Object? vehicleType = freezed,
    Object? vehicleImage = freezed,
    Object? vehicleModel = freezed,
    Object? vehicleId = freezed,
    Object? rideTypeCategory = freezed,
  }) {
    return _then(_Vehicle(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _self.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _self.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      modelYear: freezed == modelYear
          ? _self.modelYear
          : modelYear // ignore: cast_nullable_to_non_nullable
              as int?,
      isPetFriendly: freezed == isPetFriendly
          ? _self.isPetFriendly
          : isPetFriendly // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAssist: freezed == isAssist
          ? _self.isAssist
          : isAssist // ignore: cast_nullable_to_non_nullable
              as bool?,
      isJumpstart: freezed == isJumpstart
          ? _self.isJumpstart
          : isJumpstart // ignore: cast_nullable_to_non_nullable
              as bool?,
      isListing: freezed == isListing
          ? _self.isListing
          : isListing // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBoldMiles: freezed == isBoldMiles
          ? _self.isBoldMiles
          : isBoldMiles // ignore: cast_nullable_to_non_nullable
              as bool?,
      rentalSecurityDeposit: freezed == rentalSecurityDeposit
          ? _self.rentalSecurityDeposit
          : rentalSecurityDeposit // ignore: cast_nullable_to_non_nullable
              as int?,
      rentalDailyCharges: freezed == rentalDailyCharges
          ? _self.rentalDailyCharges
          : rentalDailyCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBlocked: freezed == isBlocked
          ? _self.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _self.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType?,
      vehicleImage: freezed == vehicleImage
          ? _self.vehicleImage
          : vehicleImage // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleModel: freezed == vehicleModel
          ? _self.vehicleModel
          : vehicleModel // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleId: freezed == vehicleId
          ? _self.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideTypeCategory: freezed == rideTypeCategory
          ? _self.rideTypeCategory
          : rideTypeCategory // ignore: cast_nullable_to_non_nullable
              as RideTypeCategory?,
    ));
  }

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleTypeCopyWith<$Res>? get vehicleType {
    if (_self.vehicleType == null) {
      return null;
    }

    return $VehicleTypeCopyWith<$Res>(_self.vehicleType!, (value) {
      return _then(_self.copyWith(vehicleType: value));
    });
  }

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideTypeCategoryCopyWith<$Res>? get rideTypeCategory {
    if (_self.rideTypeCategory == null) {
      return null;
    }

    return $RideTypeCategoryCopyWith<$Res>(_self.rideTypeCategory!, (value) {
      return _then(_self.copyWith(rideTypeCategory: value));
    });
  }
}

/// @nodoc
mixin _$RideTypeCategory {
  @JsonKey(name: "type_id")
  String? get typeId;
  @JsonKey(name: "type")
  String? get type;

  /// Create a copy of RideTypeCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideTypeCategoryCopyWith<RideTypeCategory> get copyWith =>
      _$RideTypeCategoryCopyWithImpl<RideTypeCategory>(
          this as RideTypeCategory, _$identity);

  /// Serializes this RideTypeCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideTypeCategory &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, typeId, type);

  @override
  String toString() {
    return 'RideTypeCategory(typeId: $typeId, type: $type)';
  }
}

/// @nodoc
abstract mixin class $RideTypeCategoryCopyWith<$Res> {
  factory $RideTypeCategoryCopyWith(
          RideTypeCategory value, $Res Function(RideTypeCategory) _then) =
      _$RideTypeCategoryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "type_id") String? typeId,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$RideTypeCategoryCopyWithImpl<$Res>
    implements $RideTypeCategoryCopyWith<$Res> {
  _$RideTypeCategoryCopyWithImpl(this._self, this._then);

  final RideTypeCategory _self;
  final $Res Function(RideTypeCategory) _then;

  /// Create a copy of RideTypeCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeId = freezed,
    Object? type = freezed,
  }) {
    return _then(_self.copyWith(
      typeId: freezed == typeId
          ? _self.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RideTypeCategory].
extension RideTypeCategoryPatterns on RideTypeCategory {
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
    TResult Function(_RideTypeCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideTypeCategory() when $default != null:
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
    TResult Function(_RideTypeCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypeCategory():
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
    TResult? Function(_RideTypeCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypeCategory() when $default != null:
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
    TResult Function(@JsonKey(name: "type_id") String? typeId,
            @JsonKey(name: "type") String? type)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideTypeCategory() when $default != null:
        return $default(_that.typeId, _that.type);
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
    TResult Function(@JsonKey(name: "type_id") String? typeId,
            @JsonKey(name: "type") String? type)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypeCategory():
        return $default(_that.typeId, _that.type);
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
    TResult? Function(@JsonKey(name: "type_id") String? typeId,
            @JsonKey(name: "type") String? type)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypeCategory() when $default != null:
        return $default(_that.typeId, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RideTypeCategory implements RideTypeCategory {
  const _RideTypeCategory(
      {@JsonKey(name: "type_id") this.typeId,
      @JsonKey(name: "type") this.type});
  factory _RideTypeCategory.fromJson(Map<String, dynamic> json) =>
      _$RideTypeCategoryFromJson(json);

  @override
  @JsonKey(name: "type_id")
  final String? typeId;
  @override
  @JsonKey(name: "type")
  final String? type;

  /// Create a copy of RideTypeCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideTypeCategoryCopyWith<_RideTypeCategory> get copyWith =>
      __$RideTypeCategoryCopyWithImpl<_RideTypeCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideTypeCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideTypeCategory &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, typeId, type);

  @override
  String toString() {
    return 'RideTypeCategory(typeId: $typeId, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$RideTypeCategoryCopyWith<$Res>
    implements $RideTypeCategoryCopyWith<$Res> {
  factory _$RideTypeCategoryCopyWith(
          _RideTypeCategory value, $Res Function(_RideTypeCategory) _then) =
      __$RideTypeCategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type_id") String? typeId,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class __$RideTypeCategoryCopyWithImpl<$Res>
    implements _$RideTypeCategoryCopyWith<$Res> {
  __$RideTypeCategoryCopyWithImpl(this._self, this._then);

  final _RideTypeCategory _self;
  final $Res Function(_RideTypeCategory) _then;

  /// Create a copy of RideTypeCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? typeId = freezed,
    Object? type = freezed,
  }) {
    return _then(_RideTypeCategory(
      typeId: freezed == typeId
          ? _self.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$VehicleType {
  @JsonKey(name: "id")
  String? get id;
  @JsonKey(name: "name")
  String? get name;

  /// Create a copy of VehicleType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VehicleTypeCopyWith<VehicleType> get copyWith =>
      _$VehicleTypeCopyWithImpl<VehicleType>(this as VehicleType, _$identity);

  /// Serializes this VehicleType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VehicleType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'VehicleType(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $VehicleTypeCopyWith<$Res> {
  factory $VehicleTypeCopyWith(
          VehicleType value, $Res Function(VehicleType) _then) =
      _$VehicleTypeCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$VehicleTypeCopyWithImpl<$Res> implements $VehicleTypeCopyWith<$Res> {
  _$VehicleTypeCopyWithImpl(this._self, this._then);

  final VehicleType _self;
  final $Res Function(VehicleType) _then;

  /// Create a copy of VehicleType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VehicleType].
extension VehicleTypePatterns on VehicleType {
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
    TResult Function(_VehicleType value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VehicleType() when $default != null:
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
    TResult Function(_VehicleType value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleType():
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
    TResult? Function(_VehicleType value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleType() when $default != null:
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
    TResult Function(@JsonKey(name: "id") String? id,
            @JsonKey(name: "name") String? name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VehicleType() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(@JsonKey(name: "id") String? id,
            @JsonKey(name: "name") String? name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleType():
        return $default(_that.id, _that.name);
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
    TResult? Function(@JsonKey(name: "id") String? id,
            @JsonKey(name: "name") String? name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleType() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VehicleType implements VehicleType {
  const _VehicleType(
      {@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name});
  factory _VehicleType.fromJson(Map<String, dynamic> json) =>
      _$VehicleTypeFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;

  /// Create a copy of VehicleType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VehicleTypeCopyWith<_VehicleType> get copyWith =>
      __$VehicleTypeCopyWithImpl<_VehicleType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VehicleTypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VehicleType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'VehicleType(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$VehicleTypeCopyWith<$Res>
    implements $VehicleTypeCopyWith<$Res> {
  factory _$VehicleTypeCopyWith(
          _VehicleType value, $Res Function(_VehicleType) _then) =
      __$VehicleTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class __$VehicleTypeCopyWithImpl<$Res> implements _$VehicleTypeCopyWith<$Res> {
  __$VehicleTypeCopyWithImpl(this._self, this._then);

  final _VehicleType _self;
  final $Res Function(_VehicleType) _then;

  /// Create a copy of VehicleType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_VehicleType(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
