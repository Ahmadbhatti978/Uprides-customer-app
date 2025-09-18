// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentRequest {
  @JsonKey(name: "success")
  bool? get success;
  @JsonKey(name: "message")
  String? get message;
  @JsonKey(name: "data")
  PaymentRequestData? get data;
  @JsonKey(name: "statusCode")
  int? get statusCode;

  /// Create a copy of PaymentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentRequestCopyWith<PaymentRequest> get copyWith =>
      _$PaymentRequestCopyWithImpl<PaymentRequest>(
          this as PaymentRequest, _$identity);

  /// Serializes this PaymentRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentRequest &&
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
    return 'PaymentRequest(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class $PaymentRequestCopyWith<$Res> {
  factory $PaymentRequestCopyWith(
          PaymentRequest value, $Res Function(PaymentRequest) _then) =
      _$PaymentRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") PaymentRequestData? data,
      @JsonKey(name: "statusCode") int? statusCode});

  $PaymentRequestDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PaymentRequestCopyWithImpl<$Res>
    implements $PaymentRequestCopyWith<$Res> {
  _$PaymentRequestCopyWithImpl(this._self, this._then);

  final PaymentRequest _self;
  final $Res Function(PaymentRequest) _then;

  /// Create a copy of PaymentRequest
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
              as PaymentRequestData?,
      statusCode: freezed == statusCode
          ? _self.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of PaymentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentRequestDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $PaymentRequestDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PaymentRequest].
extension PaymentRequestPatterns on PaymentRequest {
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
    TResult Function(_PaymentRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaymentRequest() when $default != null:
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
    TResult Function(_PaymentRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentRequest():
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
    TResult? Function(_PaymentRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentRequest() when $default != null:
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
            @JsonKey(name: "data") PaymentRequestData? data,
            @JsonKey(name: "statusCode") int? statusCode)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaymentRequest() when $default != null:
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
            @JsonKey(name: "data") PaymentRequestData? data,
            @JsonKey(name: "statusCode") int? statusCode)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentRequest():
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
            @JsonKey(name: "data") PaymentRequestData? data,
            @JsonKey(name: "statusCode") int? statusCode)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentRequest() when $default != null:
        return $default(
            _that.success, _that.message, _that.data, _that.statusCode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PaymentRequest implements PaymentRequest {
  const _PaymentRequest(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "statusCode") this.statusCode});
  factory _PaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final PaymentRequestData? data;
  @override
  @JsonKey(name: "statusCode")
  final int? statusCode;

  /// Create a copy of PaymentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentRequestCopyWith<_PaymentRequest> get copyWith =>
      __$PaymentRequestCopyWithImpl<_PaymentRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentRequest &&
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
    return 'PaymentRequest(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class _$PaymentRequestCopyWith<$Res>
    implements $PaymentRequestCopyWith<$Res> {
  factory _$PaymentRequestCopyWith(
          _PaymentRequest value, $Res Function(_PaymentRequest) _then) =
      __$PaymentRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") PaymentRequestData? data,
      @JsonKey(name: "statusCode") int? statusCode});

  @override
  $PaymentRequestDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$PaymentRequestCopyWithImpl<$Res>
    implements _$PaymentRequestCopyWith<$Res> {
  __$PaymentRequestCopyWithImpl(this._self, this._then);

  final _PaymentRequest _self;
  final $Res Function(_PaymentRequest) _then;

  /// Create a copy of PaymentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_PaymentRequest(
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
              as PaymentRequestData?,
      statusCode: freezed == statusCode
          ? _self.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of PaymentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentRequestDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $PaymentRequestDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$PaymentRequestData {
  @JsonKey(name: "data")
  DataData? get data;

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentRequestDataCopyWith<PaymentRequestData> get copyWith =>
      _$PaymentRequestDataCopyWithImpl<PaymentRequestData>(
          this as PaymentRequestData, _$identity);

  /// Serializes this PaymentRequestData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentRequestData &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'PaymentRequestData(data: $data)';
  }
}

/// @nodoc
abstract mixin class $PaymentRequestDataCopyWith<$Res> {
  factory $PaymentRequestDataCopyWith(
          PaymentRequestData value, $Res Function(PaymentRequestData) _then) =
      _$PaymentRequestDataCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: "data") DataData? data});

  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PaymentRequestDataCopyWithImpl<$Res>
    implements $PaymentRequestDataCopyWith<$Res> {
  _$PaymentRequestDataCopyWithImpl(this._self, this._then);

  final PaymentRequestData _self;
  final $Res Function(PaymentRequestData) _then;

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData?,
    ));
  }

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $DataDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PaymentRequestData].
extension PaymentRequestDataPatterns on PaymentRequestData {
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
    TResult Function(_PaymentRequestData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaymentRequestData() when $default != null:
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
    TResult Function(_PaymentRequestData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentRequestData():
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
    TResult? Function(_PaymentRequestData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentRequestData() when $default != null:
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
    TResult Function(@JsonKey(name: "data") DataData? data)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaymentRequestData() when $default != null:
        return $default(_that.data);
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
    TResult Function(@JsonKey(name: "data") DataData? data) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentRequestData():
        return $default(_that.data);
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
    TResult? Function(@JsonKey(name: "data") DataData? data)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentRequestData() when $default != null:
        return $default(_that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PaymentRequestData implements PaymentRequestData {
  const _PaymentRequestData({@JsonKey(name: "data") this.data});
  factory _PaymentRequestData.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestDataFromJson(json);

  @override
  @JsonKey(name: "data")
  final DataData? data;

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentRequestDataCopyWith<_PaymentRequestData> get copyWith =>
      __$PaymentRequestDataCopyWithImpl<_PaymentRequestData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentRequestDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentRequestData &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'PaymentRequestData(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$PaymentRequestDataCopyWith<$Res>
    implements $PaymentRequestDataCopyWith<$Res> {
  factory _$PaymentRequestDataCopyWith(
          _PaymentRequestData value, $Res Function(_PaymentRequestData) _then) =
      __$PaymentRequestDataCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") DataData? data});

  @override
  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$PaymentRequestDataCopyWithImpl<$Res>
    implements _$PaymentRequestDataCopyWith<$Res> {
  __$PaymentRequestDataCopyWithImpl(this._self, this._then);

  final _PaymentRequestData _self;
  final $Res Function(_PaymentRequestData) _then;

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_PaymentRequestData(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData?,
    ));
  }

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $DataDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$DataData {
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
  @JsonKey(name: "paid_by_id")
  String? get paidById;
  @JsonKey(name: "ride_type_id")
  RideTypeId? get rideTypeId;
  @JsonKey(name: "ride_request")
  RideRequest? get rideRequest;
  @JsonKey(name: "quoted_fare")
  String? get quotedFare;
  @JsonKey(name: "customer_fullname")
  String? get customerFullname;
  @JsonKey(name: "paid_by_fullname")
  String? get paidByFullname;
  @JsonKey(name: "ride_service")
  String? get rideService;
  @JsonKey(name: "total_amount")
  double? get totalAmount;
  @JsonKey(name: "price_without_vat")
  double? get priceWithoutVat;
  @JsonKey(name: "discounted_price_without_vat")
  double? get discountedPriceWithoutVat;
  @JsonKey(name: "vat_amount")
  double? get vatAmount;
  @JsonKey(name: "note")
  String? get note;
  @JsonKey(name: "status")
  String? get status;
  @JsonKey(name: "is_deleted")
  bool? get isDeleted;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @JsonKey(name: "__v")
  int? get v;
  @JsonKey(name: "customer_details")
  CustomerDetails? get customerDetails;

  /// Create a copy of DataData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataDataCopyWith<DataData> get copyWith =>
      _$DataDataCopyWithImpl<DataData>(this as DataData, _$identity);

  /// Serializes this DataData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.paidById, paidById) ||
                other.paidById == paidById) &&
            (identical(other.rideTypeId, rideTypeId) ||
                other.rideTypeId == rideTypeId) &&
            (identical(other.rideRequest, rideRequest) ||
                other.rideRequest == rideRequest) &&
            (identical(other.quotedFare, quotedFare) ||
                other.quotedFare == quotedFare) &&
            (identical(other.customerFullname, customerFullname) ||
                other.customerFullname == customerFullname) &&
            (identical(other.paidByFullname, paidByFullname) ||
                other.paidByFullname == paidByFullname) &&
            (identical(other.rideService, rideService) ||
                other.rideService == rideService) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.priceWithoutVat, priceWithoutVat) ||
                other.priceWithoutVat == priceWithoutVat) &&
            (identical(other.discountedPriceWithoutVat,
                    discountedPriceWithoutVat) ||
                other.discountedPriceWithoutVat == discountedPriceWithoutVat) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.customerDetails, customerDetails) ||
                other.customerDetails == customerDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        countryId,
        cityId,
        zoneId,
        customerId,
        paidById,
        rideTypeId,
        rideRequest,
        quotedFare,
        customerFullname,
        paidByFullname,
        rideService,
        totalAmount,
        priceWithoutVat,
        discountedPriceWithoutVat,
        vatAmount,
        note,
        status,
        isDeleted,
        createdAt,
        updatedAt,
        v,
        customerDetails
      ]);

  @override
  String toString() {
    return 'DataData(id: $id, countryId: $countryId, cityId: $cityId, zoneId: $zoneId, customerId: $customerId, paidById: $paidById, rideTypeId: $rideTypeId, rideRequest: $rideRequest, quotedFare: $quotedFare, customerFullname: $customerFullname, paidByFullname: $paidByFullname, rideService: $rideService, totalAmount: $totalAmount, priceWithoutVat: $priceWithoutVat, discountedPriceWithoutVat: $discountedPriceWithoutVat, vatAmount: $vatAmount, note: $note, status: $status, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, customerDetails: $customerDetails)';
  }
}

/// @nodoc
abstract mixin class $DataDataCopyWith<$Res> {
  factory $DataDataCopyWith(DataData value, $Res Function(DataData) _then) =
      _$DataDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "country_id") String? countryId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "zone_id") String? zoneId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "paid_by_id") String? paidById,
      @JsonKey(name: "ride_type_id") RideTypeId? rideTypeId,
      @JsonKey(name: "ride_request") RideRequest? rideRequest,
      @JsonKey(name: "quoted_fare") String? quotedFare,
      @JsonKey(name: "customer_fullname") String? customerFullname,
      @JsonKey(name: "paid_by_fullname") String? paidByFullname,
      @JsonKey(name: "ride_service") String? rideService,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "price_without_vat") double? priceWithoutVat,
      @JsonKey(name: "discounted_price_without_vat")
      double? discountedPriceWithoutVat,
      @JsonKey(name: "vat_amount") double? vatAmount,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "customer_details") CustomerDetails? customerDetails});

  $RideTypeIdCopyWith<$Res>? get rideTypeId;
  $RideRequestCopyWith<$Res>? get rideRequest;
  $CustomerDetailsCopyWith<$Res>? get customerDetails;
}

/// @nodoc
class _$DataDataCopyWithImpl<$Res> implements $DataDataCopyWith<$Res> {
  _$DataDataCopyWithImpl(this._self, this._then);

  final DataData _self;
  final $Res Function(DataData) _then;

  /// Create a copy of DataData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? zoneId = freezed,
    Object? customerId = freezed,
    Object? paidById = freezed,
    Object? rideTypeId = freezed,
    Object? rideRequest = freezed,
    Object? quotedFare = freezed,
    Object? customerFullname = freezed,
    Object? paidByFullname = freezed,
    Object? rideService = freezed,
    Object? totalAmount = freezed,
    Object? priceWithoutVat = freezed,
    Object? discountedPriceWithoutVat = freezed,
    Object? vatAmount = freezed,
    Object? note = freezed,
    Object? status = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? customerDetails = freezed,
  }) {
    return _then(_self.copyWith(
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
      paidById: freezed == paidById
          ? _self.paidById
          : paidById // ignore: cast_nullable_to_non_nullable
              as String?,
      rideTypeId: freezed == rideTypeId
          ? _self.rideTypeId
          : rideTypeId // ignore: cast_nullable_to_non_nullable
              as RideTypeId?,
      rideRequest: freezed == rideRequest
          ? _self.rideRequest
          : rideRequest // ignore: cast_nullable_to_non_nullable
              as RideRequest?,
      quotedFare: freezed == quotedFare
          ? _self.quotedFare
          : quotedFare // ignore: cast_nullable_to_non_nullable
              as String?,
      customerFullname: freezed == customerFullname
          ? _self.customerFullname
          : customerFullname // ignore: cast_nullable_to_non_nullable
              as String?,
      paidByFullname: freezed == paidByFullname
          ? _self.paidByFullname
          : paidByFullname // ignore: cast_nullable_to_non_nullable
              as String?,
      rideService: freezed == rideService
          ? _self.rideService
          : rideService // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      priceWithoutVat: freezed == priceWithoutVat
          ? _self.priceWithoutVat
          : priceWithoutVat // ignore: cast_nullable_to_non_nullable
              as double?,
      discountedPriceWithoutVat: freezed == discountedPriceWithoutVat
          ? _self.discountedPriceWithoutVat
          : discountedPriceWithoutVat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatAmount: freezed == vatAmount
          ? _self.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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
      customerDetails: freezed == customerDetails
          ? _self.customerDetails
          : customerDetails // ignore: cast_nullable_to_non_nullable
              as CustomerDetails?,
    ));
  }

  /// Create a copy of DataData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideTypeIdCopyWith<$Res>? get rideTypeId {
    if (_self.rideTypeId == null) {
      return null;
    }

    return $RideTypeIdCopyWith<$Res>(_self.rideTypeId!, (value) {
      return _then(_self.copyWith(rideTypeId: value));
    });
  }

  /// Create a copy of DataData
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

  /// Create a copy of DataData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerDetailsCopyWith<$Res>? get customerDetails {
    if (_self.customerDetails == null) {
      return null;
    }

    return $CustomerDetailsCopyWith<$Res>(_self.customerDetails!, (value) {
      return _then(_self.copyWith(customerDetails: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DataData].
extension DataDataPatterns on DataData {
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
    TResult Function(_DataData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DataData() when $default != null:
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
    TResult Function(_DataData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DataData():
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
    TResult? Function(_DataData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DataData() when $default != null:
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
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "paid_by_id") String? paidById,
            @JsonKey(name: "ride_type_id") RideTypeId? rideTypeId,
            @JsonKey(name: "ride_request") RideRequest? rideRequest,
            @JsonKey(name: "quoted_fare") String? quotedFare,
            @JsonKey(name: "customer_fullname") String? customerFullname,
            @JsonKey(name: "paid_by_fullname") String? paidByFullname,
            @JsonKey(name: "ride_service") String? rideService,
            @JsonKey(name: "total_amount") double? totalAmount,
            @JsonKey(name: "price_without_vat") double? priceWithoutVat,
            @JsonKey(name: "discounted_price_without_vat")
            double? discountedPriceWithoutVat,
            @JsonKey(name: "vat_amount") double? vatAmount,
            @JsonKey(name: "note") String? note,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "customer_details")
            CustomerDetails? customerDetails)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DataData() when $default != null:
        return $default(
            _that.id,
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.customerId,
            _that.paidById,
            _that.rideTypeId,
            _that.rideRequest,
            _that.quotedFare,
            _that.customerFullname,
            _that.paidByFullname,
            _that.rideService,
            _that.totalAmount,
            _that.priceWithoutVat,
            _that.discountedPriceWithoutVat,
            _that.vatAmount,
            _that.note,
            _that.status,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.customerDetails);
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
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "paid_by_id") String? paidById,
            @JsonKey(name: "ride_type_id") RideTypeId? rideTypeId,
            @JsonKey(name: "ride_request") RideRequest? rideRequest,
            @JsonKey(name: "quoted_fare") String? quotedFare,
            @JsonKey(name: "customer_fullname") String? customerFullname,
            @JsonKey(name: "paid_by_fullname") String? paidByFullname,
            @JsonKey(name: "ride_service") String? rideService,
            @JsonKey(name: "total_amount") double? totalAmount,
            @JsonKey(name: "price_without_vat") double? priceWithoutVat,
            @JsonKey(name: "discounted_price_without_vat")
            double? discountedPriceWithoutVat,
            @JsonKey(name: "vat_amount") double? vatAmount,
            @JsonKey(name: "note") String? note,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "customer_details") CustomerDetails? customerDetails)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DataData():
        return $default(
            _that.id,
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.customerId,
            _that.paidById,
            _that.rideTypeId,
            _that.rideRequest,
            _that.quotedFare,
            _that.customerFullname,
            _that.paidByFullname,
            _that.rideService,
            _that.totalAmount,
            _that.priceWithoutVat,
            _that.discountedPriceWithoutVat,
            _that.vatAmount,
            _that.note,
            _that.status,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.customerDetails);
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
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "paid_by_id") String? paidById,
            @JsonKey(name: "ride_type_id") RideTypeId? rideTypeId,
            @JsonKey(name: "ride_request") RideRequest? rideRequest,
            @JsonKey(name: "quoted_fare") String? quotedFare,
            @JsonKey(name: "customer_fullname") String? customerFullname,
            @JsonKey(name: "paid_by_fullname") String? paidByFullname,
            @JsonKey(name: "ride_service") String? rideService,
            @JsonKey(name: "total_amount") double? totalAmount,
            @JsonKey(name: "price_without_vat") double? priceWithoutVat,
            @JsonKey(name: "discounted_price_without_vat")
            double? discountedPriceWithoutVat,
            @JsonKey(name: "vat_amount") double? vatAmount,
            @JsonKey(name: "note") String? note,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "customer_details")
            CustomerDetails? customerDetails)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DataData() when $default != null:
        return $default(
            _that.id,
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.customerId,
            _that.paidById,
            _that.rideTypeId,
            _that.rideRequest,
            _that.quotedFare,
            _that.customerFullname,
            _that.paidByFullname,
            _that.rideService,
            _that.totalAmount,
            _that.priceWithoutVat,
            _that.discountedPriceWithoutVat,
            _that.vatAmount,
            _that.note,
            _that.status,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.customerDetails);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DataData implements DataData {
  const _DataData(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "country_id") this.countryId,
      @JsonKey(name: "city_id") this.cityId,
      @JsonKey(name: "zone_id") this.zoneId,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "paid_by_id") this.paidById,
      @JsonKey(name: "ride_type_id") this.rideTypeId,
      @JsonKey(name: "ride_request") this.rideRequest,
      @JsonKey(name: "quoted_fare") this.quotedFare,
      @JsonKey(name: "customer_fullname") this.customerFullname,
      @JsonKey(name: "paid_by_fullname") this.paidByFullname,
      @JsonKey(name: "ride_service") this.rideService,
      @JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "price_without_vat") this.priceWithoutVat,
      @JsonKey(name: "discounted_price_without_vat")
      this.discountedPriceWithoutVat,
      @JsonKey(name: "vat_amount") this.vatAmount,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "is_deleted") this.isDeleted,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "customer_details") this.customerDetails});
  factory _DataData.fromJson(Map<String, dynamic> json) =>
      _$DataDataFromJson(json);

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
  @JsonKey(name: "paid_by_id")
  final String? paidById;
  @override
  @JsonKey(name: "ride_type_id")
  final RideTypeId? rideTypeId;
  @override
  @JsonKey(name: "ride_request")
  final RideRequest? rideRequest;
  @override
  @JsonKey(name: "quoted_fare")
  final String? quotedFare;
  @override
  @JsonKey(name: "customer_fullname")
  final String? customerFullname;
  @override
  @JsonKey(name: "paid_by_fullname")
  final String? paidByFullname;
  @override
  @JsonKey(name: "ride_service")
  final String? rideService;
  @override
  @JsonKey(name: "total_amount")
  final double? totalAmount;
  @override
  @JsonKey(name: "price_without_vat")
  final double? priceWithoutVat;
  @override
  @JsonKey(name: "discounted_price_without_vat")
  final double? discountedPriceWithoutVat;
  @override
  @JsonKey(name: "vat_amount")
  final double? vatAmount;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "status")
  final String? status;
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
  @JsonKey(name: "customer_details")
  final CustomerDetails? customerDetails;

  /// Create a copy of DataData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DataDataCopyWith<_DataData> get copyWith =>
      __$DataDataCopyWithImpl<_DataData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DataDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.paidById, paidById) ||
                other.paidById == paidById) &&
            (identical(other.rideTypeId, rideTypeId) ||
                other.rideTypeId == rideTypeId) &&
            (identical(other.rideRequest, rideRequest) ||
                other.rideRequest == rideRequest) &&
            (identical(other.quotedFare, quotedFare) ||
                other.quotedFare == quotedFare) &&
            (identical(other.customerFullname, customerFullname) ||
                other.customerFullname == customerFullname) &&
            (identical(other.paidByFullname, paidByFullname) ||
                other.paidByFullname == paidByFullname) &&
            (identical(other.rideService, rideService) ||
                other.rideService == rideService) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.priceWithoutVat, priceWithoutVat) ||
                other.priceWithoutVat == priceWithoutVat) &&
            (identical(other.discountedPriceWithoutVat,
                    discountedPriceWithoutVat) ||
                other.discountedPriceWithoutVat == discountedPriceWithoutVat) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.customerDetails, customerDetails) ||
                other.customerDetails == customerDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        countryId,
        cityId,
        zoneId,
        customerId,
        paidById,
        rideTypeId,
        rideRequest,
        quotedFare,
        customerFullname,
        paidByFullname,
        rideService,
        totalAmount,
        priceWithoutVat,
        discountedPriceWithoutVat,
        vatAmount,
        note,
        status,
        isDeleted,
        createdAt,
        updatedAt,
        v,
        customerDetails
      ]);

  @override
  String toString() {
    return 'DataData(id: $id, countryId: $countryId, cityId: $cityId, zoneId: $zoneId, customerId: $customerId, paidById: $paidById, rideTypeId: $rideTypeId, rideRequest: $rideRequest, quotedFare: $quotedFare, customerFullname: $customerFullname, paidByFullname: $paidByFullname, rideService: $rideService, totalAmount: $totalAmount, priceWithoutVat: $priceWithoutVat, discountedPriceWithoutVat: $discountedPriceWithoutVat, vatAmount: $vatAmount, note: $note, status: $status, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, customerDetails: $customerDetails)';
  }
}

/// @nodoc
abstract mixin class _$DataDataCopyWith<$Res>
    implements $DataDataCopyWith<$Res> {
  factory _$DataDataCopyWith(_DataData value, $Res Function(_DataData) _then) =
      __$DataDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "country_id") String? countryId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "zone_id") String? zoneId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "paid_by_id") String? paidById,
      @JsonKey(name: "ride_type_id") RideTypeId? rideTypeId,
      @JsonKey(name: "ride_request") RideRequest? rideRequest,
      @JsonKey(name: "quoted_fare") String? quotedFare,
      @JsonKey(name: "customer_fullname") String? customerFullname,
      @JsonKey(name: "paid_by_fullname") String? paidByFullname,
      @JsonKey(name: "ride_service") String? rideService,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "price_without_vat") double? priceWithoutVat,
      @JsonKey(name: "discounted_price_without_vat")
      double? discountedPriceWithoutVat,
      @JsonKey(name: "vat_amount") double? vatAmount,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "customer_details") CustomerDetails? customerDetails});

  @override
  $RideTypeIdCopyWith<$Res>? get rideTypeId;
  @override
  $RideRequestCopyWith<$Res>? get rideRequest;
  @override
  $CustomerDetailsCopyWith<$Res>? get customerDetails;
}

/// @nodoc
class __$DataDataCopyWithImpl<$Res> implements _$DataDataCopyWith<$Res> {
  __$DataDataCopyWithImpl(this._self, this._then);

  final _DataData _self;
  final $Res Function(_DataData) _then;

  /// Create a copy of DataData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? zoneId = freezed,
    Object? customerId = freezed,
    Object? paidById = freezed,
    Object? rideTypeId = freezed,
    Object? rideRequest = freezed,
    Object? quotedFare = freezed,
    Object? customerFullname = freezed,
    Object? paidByFullname = freezed,
    Object? rideService = freezed,
    Object? totalAmount = freezed,
    Object? priceWithoutVat = freezed,
    Object? discountedPriceWithoutVat = freezed,
    Object? vatAmount = freezed,
    Object? note = freezed,
    Object? status = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? customerDetails = freezed,
  }) {
    return _then(_DataData(
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
      paidById: freezed == paidById
          ? _self.paidById
          : paidById // ignore: cast_nullable_to_non_nullable
              as String?,
      rideTypeId: freezed == rideTypeId
          ? _self.rideTypeId
          : rideTypeId // ignore: cast_nullable_to_non_nullable
              as RideTypeId?,
      rideRequest: freezed == rideRequest
          ? _self.rideRequest
          : rideRequest // ignore: cast_nullable_to_non_nullable
              as RideRequest?,
      quotedFare: freezed == quotedFare
          ? _self.quotedFare
          : quotedFare // ignore: cast_nullable_to_non_nullable
              as String?,
      customerFullname: freezed == customerFullname
          ? _self.customerFullname
          : customerFullname // ignore: cast_nullable_to_non_nullable
              as String?,
      paidByFullname: freezed == paidByFullname
          ? _self.paidByFullname
          : paidByFullname // ignore: cast_nullable_to_non_nullable
              as String?,
      rideService: freezed == rideService
          ? _self.rideService
          : rideService // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      priceWithoutVat: freezed == priceWithoutVat
          ? _self.priceWithoutVat
          : priceWithoutVat // ignore: cast_nullable_to_non_nullable
              as double?,
      discountedPriceWithoutVat: freezed == discountedPriceWithoutVat
          ? _self.discountedPriceWithoutVat
          : discountedPriceWithoutVat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatAmount: freezed == vatAmount
          ? _self.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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
      customerDetails: freezed == customerDetails
          ? _self.customerDetails
          : customerDetails // ignore: cast_nullable_to_non_nullable
              as CustomerDetails?,
    ));
  }

  /// Create a copy of DataData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideTypeIdCopyWith<$Res>? get rideTypeId {
    if (_self.rideTypeId == null) {
      return null;
    }

    return $RideTypeIdCopyWith<$Res>(_self.rideTypeId!, (value) {
      return _then(_self.copyWith(rideTypeId: value));
    });
  }

  /// Create a copy of DataData
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

  /// Create a copy of DataData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerDetailsCopyWith<$Res>? get customerDetails {
    if (_self.customerDetails == null) {
      return null;
    }

    return $CustomerDetailsCopyWith<$Res>(_self.customerDetails!, (value) {
      return _then(_self.copyWith(customerDetails: value));
    });
  }
}

/// @nodoc
mixin _$CustomerDetails {
  @JsonKey(name: "customer_id")
  String? get customerId;
  @JsonKey(name: "full_name")
  String? get fullName;
  @JsonKey(name: "email")
  String? get email;
  @JsonKey(name: "phone")
  String? get phone;
  @JsonKey(name: "profile_pic")
  String? get profilePic;
  @JsonKey(name: "fcm_token")
  String? get fcmToken;
  @JsonKey(name: "username")
  String? get username;
  @JsonKey(name: "current_ride_id")
  String? get currentRideId;
  @JsonKey(name: "rating")
  int? get rating;
  @JsonKey(name: "rating_count")
  int? get ratingCount;
  @JsonKey(name: "_id")
  String? get id;

  /// Create a copy of CustomerDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerDetailsCopyWith<CustomerDetails> get copyWith =>
      _$CustomerDetailsCopyWithImpl<CustomerDetails>(
          this as CustomerDetails, _$identity);

  /// Serializes this CustomerDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomerDetails &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.currentRideId, currentRideId) ||
                other.currentRideId == currentRideId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      customerId,
      fullName,
      email,
      phone,
      profilePic,
      fcmToken,
      username,
      currentRideId,
      rating,
      ratingCount,
      id);

  @override
  String toString() {
    return 'CustomerDetails(customerId: $customerId, fullName: $fullName, email: $email, phone: $phone, profilePic: $profilePic, fcmToken: $fcmToken, username: $username, currentRideId: $currentRideId, rating: $rating, ratingCount: $ratingCount, id: $id)';
  }
}

/// @nodoc
abstract mixin class $CustomerDetailsCopyWith<$Res> {
  factory $CustomerDetailsCopyWith(
          CustomerDetails value, $Res Function(CustomerDetails) _then) =
      _$CustomerDetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "profile_pic") String? profilePic,
      @JsonKey(name: "fcm_token") String? fcmToken,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "current_ride_id") String? currentRideId,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "rating_count") int? ratingCount,
      @JsonKey(name: "_id") String? id});
}

/// @nodoc
class _$CustomerDetailsCopyWithImpl<$Res>
    implements $CustomerDetailsCopyWith<$Res> {
  _$CustomerDetailsCopyWithImpl(this._self, this._then);

  final CustomerDetails _self;
  final $Res Function(CustomerDetails) _then;

  /// Create a copy of CustomerDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? profilePic = freezed,
    Object? fcmToken = freezed,
    Object? username = freezed,
    Object? currentRideId = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? id = freezed,
  }) {
    return _then(_self.copyWith(
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      profilePic: freezed == profilePic
          ? _self.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _self.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      currentRideId: freezed == currentRideId
          ? _self.currentRideId
          : currentRideId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingCount: freezed == ratingCount
          ? _self.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CustomerDetails].
extension CustomerDetailsPatterns on CustomerDetails {
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
    TResult Function(_CustomerDetails value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomerDetails() when $default != null:
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
    TResult Function(_CustomerDetails value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerDetails():
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
    TResult? Function(_CustomerDetails value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerDetails() when $default != null:
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
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "full_name") String? fullName,
            @JsonKey(name: "email") String? email,
            @JsonKey(name: "phone") String? phone,
            @JsonKey(name: "profile_pic") String? profilePic,
            @JsonKey(name: "fcm_token") String? fcmToken,
            @JsonKey(name: "username") String? username,
            @JsonKey(name: "current_ride_id") String? currentRideId,
            @JsonKey(name: "rating") int? rating,
            @JsonKey(name: "rating_count") int? ratingCount,
            @JsonKey(name: "_id") String? id)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomerDetails() when $default != null:
        return $default(
            _that.customerId,
            _that.fullName,
            _that.email,
            _that.phone,
            _that.profilePic,
            _that.fcmToken,
            _that.username,
            _that.currentRideId,
            _that.rating,
            _that.ratingCount,
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
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "full_name") String? fullName,
            @JsonKey(name: "email") String? email,
            @JsonKey(name: "phone") String? phone,
            @JsonKey(name: "profile_pic") String? profilePic,
            @JsonKey(name: "fcm_token") String? fcmToken,
            @JsonKey(name: "username") String? username,
            @JsonKey(name: "current_ride_id") String? currentRideId,
            @JsonKey(name: "rating") int? rating,
            @JsonKey(name: "rating_count") int? ratingCount,
            @JsonKey(name: "_id") String? id)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerDetails():
        return $default(
            _that.customerId,
            _that.fullName,
            _that.email,
            _that.phone,
            _that.profilePic,
            _that.fcmToken,
            _that.username,
            _that.currentRideId,
            _that.rating,
            _that.ratingCount,
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
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "full_name") String? fullName,
            @JsonKey(name: "email") String? email,
            @JsonKey(name: "phone") String? phone,
            @JsonKey(name: "profile_pic") String? profilePic,
            @JsonKey(name: "fcm_token") String? fcmToken,
            @JsonKey(name: "username") String? username,
            @JsonKey(name: "current_ride_id") String? currentRideId,
            @JsonKey(name: "rating") int? rating,
            @JsonKey(name: "rating_count") int? ratingCount,
            @JsonKey(name: "_id") String? id)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerDetails() when $default != null:
        return $default(
            _that.customerId,
            _that.fullName,
            _that.email,
            _that.phone,
            _that.profilePic,
            _that.fcmToken,
            _that.username,
            _that.currentRideId,
            _that.rating,
            _that.ratingCount,
            _that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CustomerDetails implements CustomerDetails {
  const _CustomerDetails(
      {@JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "full_name") this.fullName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "profile_pic") this.profilePic,
      @JsonKey(name: "fcm_token") this.fcmToken,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "current_ride_id") this.currentRideId,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "rating_count") this.ratingCount,
      @JsonKey(name: "_id") this.id});
  factory _CustomerDetails.fromJson(Map<String, dynamic> json) =>
      _$CustomerDetailsFromJson(json);

  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
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
  @JsonKey(name: "profile_pic")
  final String? profilePic;
  @override
  @JsonKey(name: "fcm_token")
  final String? fcmToken;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "current_ride_id")
  final String? currentRideId;
  @override
  @JsonKey(name: "rating")
  final int? rating;
  @override
  @JsonKey(name: "rating_count")
  final int? ratingCount;
  @override
  @JsonKey(name: "_id")
  final String? id;

  /// Create a copy of CustomerDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerDetailsCopyWith<_CustomerDetails> get copyWith =>
      __$CustomerDetailsCopyWithImpl<_CustomerDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerDetails &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.currentRideId, currentRideId) ||
                other.currentRideId == currentRideId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      customerId,
      fullName,
      email,
      phone,
      profilePic,
      fcmToken,
      username,
      currentRideId,
      rating,
      ratingCount,
      id);

  @override
  String toString() {
    return 'CustomerDetails(customerId: $customerId, fullName: $fullName, email: $email, phone: $phone, profilePic: $profilePic, fcmToken: $fcmToken, username: $username, currentRideId: $currentRideId, rating: $rating, ratingCount: $ratingCount, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$CustomerDetailsCopyWith<$Res>
    implements $CustomerDetailsCopyWith<$Res> {
  factory _$CustomerDetailsCopyWith(
          _CustomerDetails value, $Res Function(_CustomerDetails) _then) =
      __$CustomerDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "profile_pic") String? profilePic,
      @JsonKey(name: "fcm_token") String? fcmToken,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "current_ride_id") String? currentRideId,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "rating_count") int? ratingCount,
      @JsonKey(name: "_id") String? id});
}

/// @nodoc
class __$CustomerDetailsCopyWithImpl<$Res>
    implements _$CustomerDetailsCopyWith<$Res> {
  __$CustomerDetailsCopyWithImpl(this._self, this._then);

  final _CustomerDetails _self;
  final $Res Function(_CustomerDetails) _then;

  /// Create a copy of CustomerDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerId = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? profilePic = freezed,
    Object? fcmToken = freezed,
    Object? username = freezed,
    Object? currentRideId = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? id = freezed,
  }) {
    return _then(_CustomerDetails(
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      profilePic: freezed == profilePic
          ? _self.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _self.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      currentRideId: freezed == currentRideId
          ? _self.currentRideId
          : currentRideId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingCount: freezed == ratingCount
          ? _self.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$RideTypeId {
  @JsonKey(name: "_id")
  String? get id;
  @JsonKey(name: "name")
  String? get name;
  @JsonKey(name: "is_deleted")
  bool? get isDeleted;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @JsonKey(name: "__v")
  int? get v;
  @JsonKey(name: "ride_image")
  String? get rideImage;
  @JsonKey(name: "type")
  String? get type;
  @JsonKey(name: "ride_category")
  String? get rideCategory;
  @JsonKey(name: "is_active")
  bool? get isActive;
  @JsonKey(name: "number_of_seats")
  int? get numberOfSeats;
  @JsonKey(name: "tag")
  String? get tag;

  /// Create a copy of RideTypeId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideTypeIdCopyWith<RideTypeId> get copyWith =>
      _$RideTypeIdCopyWithImpl<RideTypeId>(this as RideTypeId, _$identity);

  /// Serializes this RideTypeId to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideTypeId &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.rideImage, rideImage) ||
                other.rideImage == rideImage) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rideCategory, rideCategory) ||
                other.rideCategory == rideCategory) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.numberOfSeats, numberOfSeats) ||
                other.numberOfSeats == numberOfSeats) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      isDeleted,
      createdAt,
      updatedAt,
      v,
      rideImage,
      type,
      rideCategory,
      isActive,
      numberOfSeats,
      tag);

  @override
  String toString() {
    return 'RideTypeId(id: $id, name: $name, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, rideImage: $rideImage, type: $type, rideCategory: $rideCategory, isActive: $isActive, numberOfSeats: $numberOfSeats, tag: $tag)';
  }
}

/// @nodoc
abstract mixin class $RideTypeIdCopyWith<$Res> {
  factory $RideTypeIdCopyWith(
          RideTypeId value, $Res Function(RideTypeId) _then) =
      _$RideTypeIdCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "ride_image") String? rideImage,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "ride_category") String? rideCategory,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "number_of_seats") int? numberOfSeats,
      @JsonKey(name: "tag") String? tag});
}

/// @nodoc
class _$RideTypeIdCopyWithImpl<$Res> implements $RideTypeIdCopyWith<$Res> {
  _$RideTypeIdCopyWithImpl(this._self, this._then);

  final RideTypeId _self;
  final $Res Function(RideTypeId) _then;

  /// Create a copy of RideTypeId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? rideImage = freezed,
    Object? type = freezed,
    Object? rideCategory = freezed,
    Object? isActive = freezed,
    Object? numberOfSeats = freezed,
    Object? tag = freezed,
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
      rideImage: freezed == rideImage
          ? _self.rideImage
          : rideImage // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rideCategory: freezed == rideCategory
          ? _self.rideCategory
          : rideCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      numberOfSeats: freezed == numberOfSeats
          ? _self.numberOfSeats
          : numberOfSeats // ignore: cast_nullable_to_non_nullable
              as int?,
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RideTypeId].
extension RideTypeIdPatterns on RideTypeId {
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
    TResult Function(_RideTypeId value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideTypeId() when $default != null:
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
    TResult Function(_RideTypeId value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypeId():
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
    TResult? Function(_RideTypeId value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypeId() when $default != null:
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
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "ride_image") String? rideImage,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "ride_category") String? rideCategory,
            @JsonKey(name: "is_active") bool? isActive,
            @JsonKey(name: "number_of_seats") int? numberOfSeats,
            @JsonKey(name: "tag") String? tag)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideTypeId() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.rideImage,
            _that.type,
            _that.rideCategory,
            _that.isActive,
            _that.numberOfSeats,
            _that.tag);
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
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "ride_image") String? rideImage,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "ride_category") String? rideCategory,
            @JsonKey(name: "is_active") bool? isActive,
            @JsonKey(name: "number_of_seats") int? numberOfSeats,
            @JsonKey(name: "tag") String? tag)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypeId():
        return $default(
            _that.id,
            _that.name,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.rideImage,
            _that.type,
            _that.rideCategory,
            _that.isActive,
            _that.numberOfSeats,
            _that.tag);
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
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "ride_image") String? rideImage,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "ride_category") String? rideCategory,
            @JsonKey(name: "is_active") bool? isActive,
            @JsonKey(name: "number_of_seats") int? numberOfSeats,
            @JsonKey(name: "tag") String? tag)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypeId() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.rideImage,
            _that.type,
            _that.rideCategory,
            _that.isActive,
            _that.numberOfSeats,
            _that.tag);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RideTypeId implements RideTypeId {
  const _RideTypeId(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "is_deleted") this.isDeleted,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "ride_image") this.rideImage,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "ride_category") this.rideCategory,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "number_of_seats") this.numberOfSeats,
      @JsonKey(name: "tag") this.tag});
  factory _RideTypeId.fromJson(Map<String, dynamic> json) =>
      _$RideTypeIdFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
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
  @JsonKey(name: "ride_image")
  final String? rideImage;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "ride_category")
  final String? rideCategory;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "number_of_seats")
  final int? numberOfSeats;
  @override
  @JsonKey(name: "tag")
  final String? tag;

  /// Create a copy of RideTypeId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideTypeIdCopyWith<_RideTypeId> get copyWith =>
      __$RideTypeIdCopyWithImpl<_RideTypeId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideTypeIdToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideTypeId &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.rideImage, rideImage) ||
                other.rideImage == rideImage) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rideCategory, rideCategory) ||
                other.rideCategory == rideCategory) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.numberOfSeats, numberOfSeats) ||
                other.numberOfSeats == numberOfSeats) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      isDeleted,
      createdAt,
      updatedAt,
      v,
      rideImage,
      type,
      rideCategory,
      isActive,
      numberOfSeats,
      tag);

  @override
  String toString() {
    return 'RideTypeId(id: $id, name: $name, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, rideImage: $rideImage, type: $type, rideCategory: $rideCategory, isActive: $isActive, numberOfSeats: $numberOfSeats, tag: $tag)';
  }
}

/// @nodoc
abstract mixin class _$RideTypeIdCopyWith<$Res>
    implements $RideTypeIdCopyWith<$Res> {
  factory _$RideTypeIdCopyWith(
          _RideTypeId value, $Res Function(_RideTypeId) _then) =
      __$RideTypeIdCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "ride_image") String? rideImage,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "ride_category") String? rideCategory,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "number_of_seats") int? numberOfSeats,
      @JsonKey(name: "tag") String? tag});
}

/// @nodoc
class __$RideTypeIdCopyWithImpl<$Res> implements _$RideTypeIdCopyWith<$Res> {
  __$RideTypeIdCopyWithImpl(this._self, this._then);

  final _RideTypeId _self;
  final $Res Function(_RideTypeId) _then;

  /// Create a copy of RideTypeId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? rideImage = freezed,
    Object? type = freezed,
    Object? rideCategory = freezed,
    Object? isActive = freezed,
    Object? numberOfSeats = freezed,
    Object? tag = freezed,
  }) {
    return _then(_RideTypeId(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      rideImage: freezed == rideImage
          ? _self.rideImage
          : rideImage // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rideCategory: freezed == rideCategory
          ? _self.rideCategory
          : rideCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      numberOfSeats: freezed == numberOfSeats
          ? _self.numberOfSeats
          : numberOfSeats // ignore: cast_nullable_to_non_nullable
              as int?,
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
