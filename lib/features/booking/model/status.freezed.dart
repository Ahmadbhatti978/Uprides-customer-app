// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Status {
  @JsonKey(name: 'success')
  bool? get success;
  @JsonKey(name: 'message')
  String? get message;
  @JsonKey(name: 'data')
  Data? get data;
  @JsonKey(name: 'statusCode')
  int? get statusCode;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StatusCopyWith<Status> get copyWith =>
      _$StatusCopyWithImpl<Status>(this as Status, _$identity);

  /// Serializes this Status to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Status &&
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
    return 'Status(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) _then) =
      _$StatusCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Data? data,
      @JsonKey(name: 'statusCode') int? statusCode});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._self, this._then);

  final Status _self;
  final $Res Function(Status) _then;

  /// Create a copy of Status
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

  /// Create a copy of Status
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

/// Adds pattern-matching-related methods to [Status].
extension StatusPatterns on Status {
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
    TResult Function(_Status value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Status() when $default != null:
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
    TResult Function(_Status value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Status():
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
    TResult? Function(_Status value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Status() when $default != null:
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
            @JsonKey(name: 'success') bool? success,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'data') Data? data,
            @JsonKey(name: 'statusCode') int? statusCode)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Status() when $default != null:
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
            @JsonKey(name: 'success') bool? success,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'data') Data? data,
            @JsonKey(name: 'statusCode') int? statusCode)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Status():
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
            @JsonKey(name: 'success') bool? success,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'data') Data? data,
            @JsonKey(name: 'statusCode') int? statusCode)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Status() when $default != null:
        return $default(
            _that.success, _that.message, _that.data, _that.statusCode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Status implements Status {
  const _Status(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'statusCode') this.statusCode});
  factory _Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final Data? data;
  @override
  @JsonKey(name: 'statusCode')
  final int? statusCode;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StatusCopyWith<_Status> get copyWith =>
      __$StatusCopyWithImpl<_Status>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Status &&
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
    return 'Status(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class _$StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$StatusCopyWith(_Status value, $Res Function(_Status) _then) =
      __$StatusCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Data? data,
      @JsonKey(name: 'statusCode') int? statusCode});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$StatusCopyWithImpl<$Res> implements _$StatusCopyWith<$Res> {
  __$StatusCopyWithImpl(this._self, this._then);

  final _Status _self;
  final $Res Function(_Status) _then;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_Status(
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

  /// Create a copy of Status
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
  @JsonKey(name: 'retry')
  bool? get retry;
  @JsonKey(name: 'current_retry')
  int? get currentRetry;
  @JsonKey(name: 'max_retries')
  int? get maxRetries;
  @JsonKey(name: 'waiting_time')
  int? get waitingTime;

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
            (identical(other.retry, retry) || other.retry == retry) &&
            (identical(other.currentRetry, currentRetry) ||
                other.currentRetry == currentRetry) &&
            (identical(other.maxRetries, maxRetries) ||
                other.maxRetries == maxRetries) &&
            (identical(other.waitingTime, waitingTime) ||
                other.waitingTime == waitingTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, retry, currentRetry, maxRetries, waitingTime);

  @override
  String toString() {
    return 'Data(retry: $retry, currentRetry: $currentRetry, maxRetries: $maxRetries, waitingTime: $waitingTime)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'retry') bool? retry,
      @JsonKey(name: 'current_retry') int? currentRetry,
      @JsonKey(name: 'max_retries') int? maxRetries,
      @JsonKey(name: 'waiting_time') int? waitingTime});
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
    Object? retry = freezed,
    Object? currentRetry = freezed,
    Object? maxRetries = freezed,
    Object? waitingTime = freezed,
  }) {
    return _then(_self.copyWith(
      retry: freezed == retry
          ? _self.retry
          : retry // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentRetry: freezed == currentRetry
          ? _self.currentRetry
          : currentRetry // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRetries: freezed == maxRetries
          ? _self.maxRetries
          : maxRetries // ignore: cast_nullable_to_non_nullable
              as int?,
      waitingTime: freezed == waitingTime
          ? _self.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as int?,
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
            @JsonKey(name: 'retry') bool? retry,
            @JsonKey(name: 'current_retry') int? currentRetry,
            @JsonKey(name: 'max_retries') int? maxRetries,
            @JsonKey(name: 'waiting_time') int? waitingTime)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.retry, _that.currentRetry, _that.maxRetries,
            _that.waitingTime);
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
            @JsonKey(name: 'retry') bool? retry,
            @JsonKey(name: 'current_retry') int? currentRetry,
            @JsonKey(name: 'max_retries') int? maxRetries,
            @JsonKey(name: 'waiting_time') int? waitingTime)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
        return $default(_that.retry, _that.currentRetry, _that.maxRetries,
            _that.waitingTime);
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
            @JsonKey(name: 'retry') bool? retry,
            @JsonKey(name: 'current_retry') int? currentRetry,
            @JsonKey(name: 'max_retries') int? maxRetries,
            @JsonKey(name: 'waiting_time') int? waitingTime)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.retry, _that.currentRetry, _that.maxRetries,
            _that.waitingTime);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Data implements Data {
  const _Data(
      {@JsonKey(name: 'retry') this.retry,
      @JsonKey(name: 'current_retry') this.currentRetry,
      @JsonKey(name: 'max_retries') this.maxRetries,
      @JsonKey(name: 'waiting_time') this.waitingTime});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  @JsonKey(name: 'retry')
  final bool? retry;
  @override
  @JsonKey(name: 'current_retry')
  final int? currentRetry;
  @override
  @JsonKey(name: 'max_retries')
  final int? maxRetries;
  @override
  @JsonKey(name: 'waiting_time')
  final int? waitingTime;

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
            (identical(other.retry, retry) || other.retry == retry) &&
            (identical(other.currentRetry, currentRetry) ||
                other.currentRetry == currentRetry) &&
            (identical(other.maxRetries, maxRetries) ||
                other.maxRetries == maxRetries) &&
            (identical(other.waitingTime, waitingTime) ||
                other.waitingTime == waitingTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, retry, currentRetry, maxRetries, waitingTime);

  @override
  String toString() {
    return 'Data(retry: $retry, currentRetry: $currentRetry, maxRetries: $maxRetries, waitingTime: $waitingTime)';
  }
}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) =
      __$DataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'retry') bool? retry,
      @JsonKey(name: 'current_retry') int? currentRetry,
      @JsonKey(name: 'max_retries') int? maxRetries,
      @JsonKey(name: 'waiting_time') int? waitingTime});
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
    Object? retry = freezed,
    Object? currentRetry = freezed,
    Object? maxRetries = freezed,
    Object? waitingTime = freezed,
  }) {
    return _then(_Data(
      retry: freezed == retry
          ? _self.retry
          : retry // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentRetry: freezed == currentRetry
          ? _self.currentRetry
          : currentRetry // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRetries: freezed == maxRetries
          ? _self.maxRetries
          : maxRetries // ignore: cast_nullable_to_non_nullable
              as int?,
      waitingTime: freezed == waitingTime
          ? _self.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
