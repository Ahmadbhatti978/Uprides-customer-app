// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adjusted_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdjustedPrice {
  @JsonKey(name: "success")
  bool? get success;
  @JsonKey(name: "message")
  String? get message;
  @JsonKey(name: "data")
  Data? get data;
  @JsonKey(name: "statusCode")
  int? get statusCode;

  /// Create a copy of AdjustedPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdjustedPriceCopyWith<AdjustedPrice> get copyWith =>
      _$AdjustedPriceCopyWithImpl<AdjustedPrice>(
          this as AdjustedPrice, _$identity);

  /// Serializes this AdjustedPrice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdjustedPrice &&
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
    return 'AdjustedPrice(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class $AdjustedPriceCopyWith<$Res> {
  factory $AdjustedPriceCopyWith(
          AdjustedPrice value, $Res Function(AdjustedPrice) _then) =
      _$AdjustedPriceCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "statusCode") int? statusCode});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AdjustedPriceCopyWithImpl<$Res>
    implements $AdjustedPriceCopyWith<$Res> {
  _$AdjustedPriceCopyWithImpl(this._self, this._then);

  final AdjustedPrice _self;
  final $Res Function(AdjustedPrice) _then;

  /// Create a copy of AdjustedPrice
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

  /// Create a copy of AdjustedPrice
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

/// Adds pattern-matching-related methods to [AdjustedPrice].
extension AdjustedPricePatterns on AdjustedPrice {
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
    TResult Function(_AdjustedPrice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdjustedPrice() when $default != null:
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
    TResult Function(_AdjustedPrice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdjustedPrice():
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
    TResult? Function(_AdjustedPrice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdjustedPrice() when $default != null:
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
      case _AdjustedPrice() when $default != null:
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
      case _AdjustedPrice():
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
      case _AdjustedPrice() when $default != null:
        return $default(
            _that.success, _that.message, _that.data, _that.statusCode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AdjustedPrice implements AdjustedPrice {
  const _AdjustedPrice(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "statusCode") this.statusCode});
  factory _AdjustedPrice.fromJson(Map<String, dynamic> json) =>
      _$AdjustedPriceFromJson(json);

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

  /// Create a copy of AdjustedPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdjustedPriceCopyWith<_AdjustedPrice> get copyWith =>
      __$AdjustedPriceCopyWithImpl<_AdjustedPrice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdjustedPriceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdjustedPrice &&
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
    return 'AdjustedPrice(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class _$AdjustedPriceCopyWith<$Res>
    implements $AdjustedPriceCopyWith<$Res> {
  factory _$AdjustedPriceCopyWith(
          _AdjustedPrice value, $Res Function(_AdjustedPrice) _then) =
      __$AdjustedPriceCopyWithImpl;
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
class __$AdjustedPriceCopyWithImpl<$Res>
    implements _$AdjustedPriceCopyWith<$Res> {
  __$AdjustedPriceCopyWithImpl(this._self, this._then);

  final _AdjustedPrice _self;
  final $Res Function(_AdjustedPrice) _then;

  /// Create a copy of AdjustedPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_AdjustedPrice(
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

  /// Create a copy of AdjustedPrice
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
  @JsonKey(name: "total_amount")
  double? get totalAmount;
  @JsonKey(name: "total_vat")
  double? get totalVat;
  @JsonKey(name: "adjusted_fare")
  double? get adjustedFare;
  @JsonKey(name: "adjusted_vat")
  double? get adjustedVat;
  @JsonKey(name: "adjusted_total_amount")
  double? get adjustedTotalAmount;

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
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.totalVat, totalVat) ||
                other.totalVat == totalVat) &&
            (identical(other.adjustedFare, adjustedFare) ||
                other.adjustedFare == adjustedFare) &&
            (identical(other.adjustedVat, adjustedVat) ||
                other.adjustedVat == adjustedVat) &&
            (identical(other.adjustedTotalAmount, adjustedTotalAmount) ||
                other.adjustedTotalAmount == adjustedTotalAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalAmount, totalVat,
      adjustedFare, adjustedVat, adjustedTotalAmount);

  @override
  String toString() {
    return 'Data(totalAmount: $totalAmount, totalVat: $totalVat, adjustedFare: $adjustedFare, adjustedVat: $adjustedVat, adjustedTotalAmount: $adjustedTotalAmount)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "total_vat") double? totalVat,
      @JsonKey(name: "adjusted_fare") double? adjustedFare,
      @JsonKey(name: "adjusted_vat") double? adjustedVat,
      @JsonKey(name: "adjusted_total_amount") double? adjustedTotalAmount});
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
    Object? totalAmount = freezed,
    Object? totalVat = freezed,
    Object? adjustedFare = freezed,
    Object? adjustedVat = freezed,
    Object? adjustedTotalAmount = freezed,
  }) {
    return _then(_self.copyWith(
      totalAmount: freezed == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalVat: freezed == totalVat
          ? _self.totalVat
          : totalVat // ignore: cast_nullable_to_non_nullable
              as double?,
      adjustedFare: freezed == adjustedFare
          ? _self.adjustedFare
          : adjustedFare // ignore: cast_nullable_to_non_nullable
              as double?,
      adjustedVat: freezed == adjustedVat
          ? _self.adjustedVat
          : adjustedVat // ignore: cast_nullable_to_non_nullable
              as double?,
      adjustedTotalAmount: freezed == adjustedTotalAmount
          ? _self.adjustedTotalAmount
          : adjustedTotalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
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
            @JsonKey(name: "total_amount") double? totalAmount,
            @JsonKey(name: "total_vat") double? totalVat,
            @JsonKey(name: "adjusted_fare") double? adjustedFare,
            @JsonKey(name: "adjusted_vat") double? adjustedVat,
            @JsonKey(name: "adjusted_total_amount")
            double? adjustedTotalAmount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.totalAmount, _that.totalVat, _that.adjustedFare,
            _that.adjustedVat, _that.adjustedTotalAmount);
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
            @JsonKey(name: "total_amount") double? totalAmount,
            @JsonKey(name: "total_vat") double? totalVat,
            @JsonKey(name: "adjusted_fare") double? adjustedFare,
            @JsonKey(name: "adjusted_vat") double? adjustedVat,
            @JsonKey(name: "adjusted_total_amount") double? adjustedTotalAmount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
        return $default(_that.totalAmount, _that.totalVat, _that.adjustedFare,
            _that.adjustedVat, _that.adjustedTotalAmount);
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
            @JsonKey(name: "total_amount") double? totalAmount,
            @JsonKey(name: "total_vat") double? totalVat,
            @JsonKey(name: "adjusted_fare") double? adjustedFare,
            @JsonKey(name: "adjusted_vat") double? adjustedVat,
            @JsonKey(name: "adjusted_total_amount")
            double? adjustedTotalAmount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.totalAmount, _that.totalVat, _that.adjustedFare,
            _that.adjustedVat, _that.adjustedTotalAmount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Data implements Data {
  const _Data(
      {@JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "total_vat") this.totalVat,
      @JsonKey(name: "adjusted_fare") this.adjustedFare,
      @JsonKey(name: "adjusted_vat") this.adjustedVat,
      @JsonKey(name: "adjusted_total_amount") this.adjustedTotalAmount});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  @JsonKey(name: "total_amount")
  final double? totalAmount;
  @override
  @JsonKey(name: "total_vat")
  final double? totalVat;
  @override
  @JsonKey(name: "adjusted_fare")
  final double? adjustedFare;
  @override
  @JsonKey(name: "adjusted_vat")
  final double? adjustedVat;
  @override
  @JsonKey(name: "adjusted_total_amount")
  final double? adjustedTotalAmount;

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
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.totalVat, totalVat) ||
                other.totalVat == totalVat) &&
            (identical(other.adjustedFare, adjustedFare) ||
                other.adjustedFare == adjustedFare) &&
            (identical(other.adjustedVat, adjustedVat) ||
                other.adjustedVat == adjustedVat) &&
            (identical(other.adjustedTotalAmount, adjustedTotalAmount) ||
                other.adjustedTotalAmount == adjustedTotalAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalAmount, totalVat,
      adjustedFare, adjustedVat, adjustedTotalAmount);

  @override
  String toString() {
    return 'Data(totalAmount: $totalAmount, totalVat: $totalVat, adjustedFare: $adjustedFare, adjustedVat: $adjustedVat, adjustedTotalAmount: $adjustedTotalAmount)';
  }
}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) =
      __$DataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "total_vat") double? totalVat,
      @JsonKey(name: "adjusted_fare") double? adjustedFare,
      @JsonKey(name: "adjusted_vat") double? adjustedVat,
      @JsonKey(name: "adjusted_total_amount") double? adjustedTotalAmount});
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
    Object? totalAmount = freezed,
    Object? totalVat = freezed,
    Object? adjustedFare = freezed,
    Object? adjustedVat = freezed,
    Object? adjustedTotalAmount = freezed,
  }) {
    return _then(_Data(
      totalAmount: freezed == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalVat: freezed == totalVat
          ? _self.totalVat
          : totalVat // ignore: cast_nullable_to_non_nullable
              as double?,
      adjustedFare: freezed == adjustedFare
          ? _self.adjustedFare
          : adjustedFare // ignore: cast_nullable_to_non_nullable
              as double?,
      adjustedVat: freezed == adjustedVat
          ? _self.adjustedVat
          : adjustedVat // ignore: cast_nullable_to_non_nullable
              as double?,
      adjustedTotalAmount: freezed == adjustedTotalAmount
          ? _self.adjustedTotalAmount
          : adjustedTotalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
