// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_charges.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CancelCharges {
  @JsonKey(name: "success")
  bool? get success;
  @JsonKey(name: "message")
  String? get message;
  @JsonKey(name: "data")
  Data? get data;
  @JsonKey(name: "statusCode")
  int? get statusCode;

  /// Create a copy of CancelCharges
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CancelChargesCopyWith<CancelCharges> get copyWith =>
      _$CancelChargesCopyWithImpl<CancelCharges>(
          this as CancelCharges, _$identity);

  /// Serializes this CancelCharges to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CancelCharges &&
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
    return 'CancelCharges(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class $CancelChargesCopyWith<$Res> {
  factory $CancelChargesCopyWith(
          CancelCharges value, $Res Function(CancelCharges) _then) =
      _$CancelChargesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "statusCode") int? statusCode});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CancelChargesCopyWithImpl<$Res>
    implements $CancelChargesCopyWith<$Res> {
  _$CancelChargesCopyWithImpl(this._self, this._then);

  final CancelCharges _self;
  final $Res Function(CancelCharges) _then;

  /// Create a copy of CancelCharges
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

  /// Create a copy of CancelCharges
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

/// Adds pattern-matching-related methods to [CancelCharges].
extension CancelChargesPatterns on CancelCharges {
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
    TResult Function(_CancelCharges value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CancelCharges() when $default != null:
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
    TResult Function(_CancelCharges value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CancelCharges():
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
    TResult? Function(_CancelCharges value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CancelCharges() when $default != null:
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
      case _CancelCharges() when $default != null:
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
      case _CancelCharges():
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
      case _CancelCharges() when $default != null:
        return $default(
            _that.success, _that.message, _that.data, _that.statusCode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CancelCharges implements CancelCharges {
  const _CancelCharges(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "statusCode") this.statusCode});
  factory _CancelCharges.fromJson(Map<String, dynamic> json) =>
      _$CancelChargesFromJson(json);

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

  /// Create a copy of CancelCharges
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CancelChargesCopyWith<_CancelCharges> get copyWith =>
      __$CancelChargesCopyWithImpl<_CancelCharges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CancelChargesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CancelCharges &&
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
    return 'CancelCharges(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class _$CancelChargesCopyWith<$Res>
    implements $CancelChargesCopyWith<$Res> {
  factory _$CancelChargesCopyWith(
          _CancelCharges value, $Res Function(_CancelCharges) _then) =
      __$CancelChargesCopyWithImpl;
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
class __$CancelChargesCopyWithImpl<$Res>
    implements _$CancelChargesCopyWith<$Res> {
  __$CancelChargesCopyWithImpl(this._self, this._then);

  final _CancelCharges _self;
  final $Res Function(_CancelCharges) _then;

  /// Create a copy of CancelCharges
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_CancelCharges(
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

  /// Create a copy of CancelCharges
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
  @JsonKey(name: "charges")
  Charges? get charges;

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
            (identical(other.charges, charges) || other.charges == charges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, charges);

  @override
  String toString() {
    return 'Data(charges: $charges)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: "charges") Charges? charges});

  $ChargesCopyWith<$Res>? get charges;
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
    Object? charges = freezed,
  }) {
    return _then(_self.copyWith(
      charges: freezed == charges
          ? _self.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as Charges?,
    ));
  }

  /// Create a copy of Data
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
    TResult Function(@JsonKey(name: "charges") Charges? charges)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.charges);
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
    TResult Function(@JsonKey(name: "charges") Charges? charges) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
        return $default(_that.charges);
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
    TResult? Function(@JsonKey(name: "charges") Charges? charges)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.charges);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Data implements Data {
  const _Data({@JsonKey(name: "charges") this.charges});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  @JsonKey(name: "charges")
  final Charges? charges;

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
            (identical(other.charges, charges) || other.charges == charges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, charges);

  @override
  String toString() {
    return 'Data(charges: $charges)';
  }
}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) =
      __$DataCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: "charges") Charges? charges});

  @override
  $ChargesCopyWith<$Res>? get charges;
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
    Object? charges = freezed,
  }) {
    return _then(_Data(
      charges: freezed == charges
          ? _self.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as Charges?,
    ));
  }

  /// Create a copy of Data
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
}

/// @nodoc
mixin _$Charges {
  @JsonKey(name: "cancellationCharges")
  double? get cancellationCharges;
  @JsonKey(name: "refundAmount")
  double? get refundAmount;

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
            (identical(other.cancellationCharges, cancellationCharges) ||
                other.cancellationCharges == cancellationCharges) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cancellationCharges, refundAmount);

  @override
  String toString() {
    return 'Charges(cancellationCharges: $cancellationCharges, refundAmount: $refundAmount)';
  }
}

/// @nodoc
abstract mixin class $ChargesCopyWith<$Res> {
  factory $ChargesCopyWith(Charges value, $Res Function(Charges) _then) =
      _$ChargesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "cancellationCharges") double? cancellationCharges,
      @JsonKey(name: "refundAmount") double? refundAmount});
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
    Object? cancellationCharges = freezed,
    Object? refundAmount = freezed,
  }) {
    return _then(_self.copyWith(
      cancellationCharges: freezed == cancellationCharges
          ? _self.cancellationCharges
          : cancellationCharges // ignore: cast_nullable_to_non_nullable
              as double?,
      refundAmount: freezed == refundAmount
          ? _self.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double?,
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
            @JsonKey(name: "cancellationCharges") double? cancellationCharges,
            @JsonKey(name: "refundAmount") double? refundAmount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Charges() when $default != null:
        return $default(_that.cancellationCharges, _that.refundAmount);
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
            @JsonKey(name: "cancellationCharges") double? cancellationCharges,
            @JsonKey(name: "refundAmount") double? refundAmount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Charges():
        return $default(_that.cancellationCharges, _that.refundAmount);
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
            @JsonKey(name: "cancellationCharges") double? cancellationCharges,
            @JsonKey(name: "refundAmount") double? refundAmount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Charges() when $default != null:
        return $default(_that.cancellationCharges, _that.refundAmount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Charges implements Charges {
  const _Charges(
      {@JsonKey(name: "cancellationCharges") this.cancellationCharges,
      @JsonKey(name: "refundAmount") this.refundAmount});
  factory _Charges.fromJson(Map<String, dynamic> json) =>
      _$ChargesFromJson(json);

  @override
  @JsonKey(name: "cancellationCharges")
  final double? cancellationCharges;
  @override
  @JsonKey(name: "refundAmount")
  final double? refundAmount;

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
            (identical(other.cancellationCharges, cancellationCharges) ||
                other.cancellationCharges == cancellationCharges) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cancellationCharges, refundAmount);

  @override
  String toString() {
    return 'Charges(cancellationCharges: $cancellationCharges, refundAmount: $refundAmount)';
  }
}

/// @nodoc
abstract mixin class _$ChargesCopyWith<$Res> implements $ChargesCopyWith<$Res> {
  factory _$ChargesCopyWith(_Charges value, $Res Function(_Charges) _then) =
      __$ChargesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cancellationCharges") double? cancellationCharges,
      @JsonKey(name: "refundAmount") double? refundAmount});
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
    Object? cancellationCharges = freezed,
    Object? refundAmount = freezed,
  }) {
    return _then(_Charges(
      cancellationCharges: freezed == cancellationCharges
          ? _self.cancellationCharges
          : cancellationCharges // ignore: cast_nullable_to_non_nullable
              as double?,
      refundAmount: freezed == refundAmount
          ? _self.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
