// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Activity {
  @JsonKey(name: "success")
  bool? get success;
  @JsonKey(name: "message")
  String? get message;
  @JsonKey(name: "data")
  Data? get data;
  @JsonKey(name: "statusCode")
  int? get statusCode;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<Activity> get copyWith =>
      _$ActivityCopyWithImpl<Activity>(this as Activity, _$identity);

  /// Serializes this Activity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Activity &&
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
    return 'Activity(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) _then) =
      _$ActivityCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "statusCode") int? statusCode});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res> implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._self, this._then);

  final Activity _self;
  final $Res Function(Activity) _then;

  /// Create a copy of Activity
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

  /// Create a copy of Activity
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

/// Adds pattern-matching-related methods to [Activity].
extension ActivityPatterns on Activity {
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
    TResult Function(_Activity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Activity() when $default != null:
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
    TResult Function(_Activity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Activity():
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
    TResult? Function(_Activity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Activity() when $default != null:
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
      case _Activity() when $default != null:
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
      case _Activity():
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
      case _Activity() when $default != null:
        return $default(
            _that.success, _that.message, _that.data, _that.statusCode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Activity implements Activity {
  const _Activity(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "statusCode") this.statusCode});
  factory _Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);

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

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActivityCopyWith<_Activity> get copyWith =>
      __$ActivityCopyWithImpl<_Activity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActivityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Activity &&
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
    return 'Activity(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class _$ActivityCopyWith<$Res>
    implements $ActivityCopyWith<$Res> {
  factory _$ActivityCopyWith(_Activity value, $Res Function(_Activity) _then) =
      __$ActivityCopyWithImpl;
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
class __$ActivityCopyWithImpl<$Res> implements _$ActivityCopyWith<$Res> {
  __$ActivityCopyWithImpl(this._self, this._then);

  final _Activity _self;
  final $Res Function(_Activity) _then;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_Activity(
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

  /// Create a copy of Activity
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
  @JsonKey(name: "rides")
  Rides? get rides;

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
            (identical(other.rides, rides) || other.rides == rides));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rides);

  @override
  String toString() {
    return 'Data(rides: $rides)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: "rides") Rides? rides});

  $RidesCopyWith<$Res>? get rides;
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
    Object? rides = freezed,
  }) {
    return _then(_self.copyWith(
      rides: freezed == rides
          ? _self.rides
          : rides // ignore: cast_nullable_to_non_nullable
              as Rides?,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RidesCopyWith<$Res>? get rides {
    if (_self.rides == null) {
      return null;
    }

    return $RidesCopyWith<$Res>(_self.rides!, (value) {
      return _then(_self.copyWith(rides: value));
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
    TResult Function(@JsonKey(name: "rides") Rides? rides)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.rides);
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
    TResult Function(@JsonKey(name: "rides") Rides? rides) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
        return $default(_that.rides);
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
    TResult? Function(@JsonKey(name: "rides") Rides? rides)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.rides);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Data implements Data {
  const _Data({@JsonKey(name: "rides") this.rides});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  @JsonKey(name: "rides")
  final Rides? rides;

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
            (identical(other.rides, rides) || other.rides == rides));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rides);

  @override
  String toString() {
    return 'Data(rides: $rides)';
  }
}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) =
      __$DataCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: "rides") Rides? rides});

  @override
  $RidesCopyWith<$Res>? get rides;
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
    Object? rides = freezed,
  }) {
    return _then(_Data(
      rides: freezed == rides
          ? _self.rides
          : rides // ignore: cast_nullable_to_non_nullable
              as Rides?,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RidesCopyWith<$Res>? get rides {
    if (_self.rides == null) {
      return null;
    }

    return $RidesCopyWith<$Res>(_self.rides!, (value) {
      return _then(_self.copyWith(rides: value));
    });
  }
}

/// @nodoc
mixin _$Rides {
  @JsonKey(name: "results")
  List<Result>? get results;
  @JsonKey(name: "page")
  int? get page;
  @JsonKey(name: "limit")
  int? get limit;
  @JsonKey(name: "totalPages")
  int? get totalPages;
  @JsonKey(name: "totalResults")
  int? get totalResults;
  @JsonKey(name: "isNextPage")
  bool? get isNextPage;
  @JsonKey(name: "isPreviousPage")
  bool? get isPreviousPage;

  /// Create a copy of Rides
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RidesCopyWith<Rides> get copyWith =>
      _$RidesCopyWithImpl<Rides>(this as Rides, _$identity);

  /// Serializes this Rides to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Rides &&
            const DeepCollectionEquality().equals(other.results, results) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.isNextPage, isNextPage) ||
                other.isNextPage == isNextPage) &&
            (identical(other.isPreviousPage, isPreviousPage) ||
                other.isPreviousPage == isPreviousPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(results),
      page,
      limit,
      totalPages,
      totalResults,
      isNextPage,
      isPreviousPage);

  @override
  String toString() {
    return 'Rides(results: $results, page: $page, limit: $limit, totalPages: $totalPages, totalResults: $totalResults, isNextPage: $isNextPage, isPreviousPage: $isPreviousPage)';
  }
}

/// @nodoc
abstract mixin class $RidesCopyWith<$Res> {
  factory $RidesCopyWith(Rides value, $Res Function(Rides) _then) =
      _$RidesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "results") List<Result>? results,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "limit") int? limit,
      @JsonKey(name: "totalPages") int? totalPages,
      @JsonKey(name: "totalResults") int? totalResults,
      @JsonKey(name: "isNextPage") bool? isNextPage,
      @JsonKey(name: "isPreviousPage") bool? isPreviousPage});
}

/// @nodoc
class _$RidesCopyWithImpl<$Res> implements $RidesCopyWith<$Res> {
  _$RidesCopyWithImpl(this._self, this._then);

  final Rides _self;
  final $Res Function(Rides) _then;

  /// Create a copy of Rides
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? isNextPage = freezed,
    Object? isPreviousPage = freezed,
  }) {
    return _then(_self.copyWith(
      results: freezed == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _self.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      isNextPage: freezed == isNextPage
          ? _self.isNextPage
          : isNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPreviousPage: freezed == isPreviousPage
          ? _self.isPreviousPage
          : isPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Rides].
extension RidesPatterns on Rides {
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
    TResult Function(_Rides value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Rides() when $default != null:
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
    TResult Function(_Rides value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Rides():
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
    TResult? Function(_Rides value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Rides() when $default != null:
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
            @JsonKey(name: "results") List<Result>? results,
            @JsonKey(name: "page") int? page,
            @JsonKey(name: "limit") int? limit,
            @JsonKey(name: "totalPages") int? totalPages,
            @JsonKey(name: "totalResults") int? totalResults,
            @JsonKey(name: "isNextPage") bool? isNextPage,
            @JsonKey(name: "isPreviousPage") bool? isPreviousPage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Rides() when $default != null:
        return $default(
            _that.results,
            _that.page,
            _that.limit,
            _that.totalPages,
            _that.totalResults,
            _that.isNextPage,
            _that.isPreviousPage);
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
            @JsonKey(name: "results") List<Result>? results,
            @JsonKey(name: "page") int? page,
            @JsonKey(name: "limit") int? limit,
            @JsonKey(name: "totalPages") int? totalPages,
            @JsonKey(name: "totalResults") int? totalResults,
            @JsonKey(name: "isNextPage") bool? isNextPage,
            @JsonKey(name: "isPreviousPage") bool? isPreviousPage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Rides():
        return $default(
            _that.results,
            _that.page,
            _that.limit,
            _that.totalPages,
            _that.totalResults,
            _that.isNextPage,
            _that.isPreviousPage);
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
            @JsonKey(name: "results") List<Result>? results,
            @JsonKey(name: "page") int? page,
            @JsonKey(name: "limit") int? limit,
            @JsonKey(name: "totalPages") int? totalPages,
            @JsonKey(name: "totalResults") int? totalResults,
            @JsonKey(name: "isNextPage") bool? isNextPage,
            @JsonKey(name: "isPreviousPage") bool? isPreviousPage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Rides() when $default != null:
        return $default(
            _that.results,
            _that.page,
            _that.limit,
            _that.totalPages,
            _that.totalResults,
            _that.isNextPage,
            _that.isPreviousPage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Rides implements Rides {
  const _Rides(
      {@JsonKey(name: "results") final List<Result>? results,
      @JsonKey(name: "page") this.page,
      @JsonKey(name: "limit") this.limit,
      @JsonKey(name: "totalPages") this.totalPages,
      @JsonKey(name: "totalResults") this.totalResults,
      @JsonKey(name: "isNextPage") this.isNextPage,
      @JsonKey(name: "isPreviousPage") this.isPreviousPage})
      : _results = results;
  factory _Rides.fromJson(Map<String, dynamic> json) => _$RidesFromJson(json);

  final List<Result>? _results;
  @override
  @JsonKey(name: "results")
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "page")
  final int? page;
  @override
  @JsonKey(name: "limit")
  final int? limit;
  @override
  @JsonKey(name: "totalPages")
  final int? totalPages;
  @override
  @JsonKey(name: "totalResults")
  final int? totalResults;
  @override
  @JsonKey(name: "isNextPage")
  final bool? isNextPage;
  @override
  @JsonKey(name: "isPreviousPage")
  final bool? isPreviousPage;

  /// Create a copy of Rides
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RidesCopyWith<_Rides> get copyWith =>
      __$RidesCopyWithImpl<_Rides>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RidesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rides &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.isNextPage, isNextPage) ||
                other.isNextPage == isNextPage) &&
            (identical(other.isPreviousPage, isPreviousPage) ||
                other.isPreviousPage == isPreviousPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      page,
      limit,
      totalPages,
      totalResults,
      isNextPage,
      isPreviousPage);

  @override
  String toString() {
    return 'Rides(results: $results, page: $page, limit: $limit, totalPages: $totalPages, totalResults: $totalResults, isNextPage: $isNextPage, isPreviousPage: $isPreviousPage)';
  }
}

/// @nodoc
abstract mixin class _$RidesCopyWith<$Res> implements $RidesCopyWith<$Res> {
  factory _$RidesCopyWith(_Rides value, $Res Function(_Rides) _then) =
      __$RidesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "results") List<Result>? results,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "limit") int? limit,
      @JsonKey(name: "totalPages") int? totalPages,
      @JsonKey(name: "totalResults") int? totalResults,
      @JsonKey(name: "isNextPage") bool? isNextPage,
      @JsonKey(name: "isPreviousPage") bool? isPreviousPage});
}

/// @nodoc
class __$RidesCopyWithImpl<$Res> implements _$RidesCopyWith<$Res> {
  __$RidesCopyWithImpl(this._self, this._then);

  final _Rides _self;
  final $Res Function(_Rides) _then;

  /// Create a copy of Rides
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? results = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? isNextPage = freezed,
    Object? isPreviousPage = freezed,
  }) {
    return _then(_Rides(
      results: freezed == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _self.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      isNextPage: freezed == isNextPage
          ? _self.isNextPage
          : isNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPreviousPage: freezed == isPreviousPage
          ? _self.isPreviousPage
          : isPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: "customer_info")
  ErInfo? get customerInfo;
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
  RideTypeId? get rideTypeId;
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
  int? get capturedAmount;
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
  double? get cancellationCharges;
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
  dynamic get startedAt;
  @JsonKey(name: "onroute_at")
  DateTime? get onrouteAt;
  @JsonKey(name: "arrived_at")
  DateTime? get arrivedAt;
  @JsonKey(name: "accepted_at")
  DateTime? get acceptedAt;
  @JsonKey(name: "rejected_at")
  dynamic get rejectedAt;
  @JsonKey(name: "cancelled_at")
  DateTime? get cancelledAt;
  @JsonKey(name: "validate_at")
  dynamic get validateAt;
  @JsonKey(name: "completed_at")
  dynamic get completedAt;
  @JsonKey(name: "end_at")
  dynamic get endAt;
  @JsonKey(name: "customer_invoice_seen_at")
  dynamic get customerInvoiceSeenAt;
  @JsonKey(name: "driver_invoice_seen_at")
  dynamic get driverInvoiceSeenAt;
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
  @JsonKey(name: "cancelled_reason")
  String? get cancelledReason;
  @JsonKey(name: "driver_info")
  ErInfo? get driverInfo;
  @JsonKey(name: "vehicle_info")
  VehicleInfo? get vehicleInfo;
  @JsonKey(name: "conversation_id")
  String? get conversationId;
  @JsonKey(name: "organization_id")
  String? get organizationId;
  @JsonKey(name: "vehicle_id")
  String? get vehicleId;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResultCopyWith<Result> get copyWith =>
      _$ResultCopyWithImpl<Result>(this as Result, _$identity);

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Result &&
            (identical(other.customerInfo, customerInfo) ||
                other.customerInfo == customerInfo) &&
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
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            (identical(other.onrouteAt, onrouteAt) ||
                other.onrouteAt == onrouteAt) &&
            (identical(other.arrivedAt, arrivedAt) ||
                other.arrivedAt == arrivedAt) &&
            (identical(other.acceptedAt, acceptedAt) ||
                other.acceptedAt == acceptedAt) &&
            const DeepCollectionEquality()
                .equals(other.rejectedAt, rejectedAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            const DeepCollectionEquality()
                .equals(other.validateAt, validateAt) &&
            const DeepCollectionEquality()
                .equals(other.completedAt, completedAt) &&
            const DeepCollectionEquality().equals(other.endAt, endAt) &&
            const DeepCollectionEquality()
                .equals(other.customerInvoiceSeenAt, customerInvoiceSeenAt) &&
            const DeepCollectionEquality()
                .equals(other.driverInvoiceSeenAt, driverInvoiceSeenAt) &&
            const DeepCollectionEquality()
                .equals(other.rejectedDrivers, rejectedDrivers) &&
            const DeepCollectionEquality()
                .equals(other.requestedDrivers, requestedDrivers) &&
            (identical(other.isDriverCancelled, isDriverCancelled) ||
                other.isDriverCancelled == isDriverCancelled) &&
            (identical(other.isCustomerCancelled, isCustomerCancelled) ||
                other.isCustomerCancelled == isCustomerCancelled) &&
            (identical(other.isSystemCancelled, isSystemCancelled) ||
                other.isSystemCancelled == isSystemCancelled) &&
            (identical(other.isRideEnd, isRideEnd) ||
                other.isRideEnd == isRideEnd) &&
            (identical(other.isCustomerInvoiceSeen, isCustomerInvoiceSeen) ||
                other.isCustomerInvoiceSeen == isCustomerInvoiceSeen) &&
            (identical(other.isDriverInvoiceSeen, isDriverInvoiceSeen) || other.isDriverInvoiceSeen == isDriverInvoiceSeen) &&
            (identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.timeToRespond, timeToRespond) || other.timeToRespond == timeToRespond) &&
            (identical(other.cancelledReason, cancelledReason) || other.cancelledReason == cancelledReason) &&
            (identical(other.driverInfo, driverInfo) || other.driverInfo == driverInfo) &&
            (identical(other.vehicleInfo, vehicleInfo) || other.vehicleInfo == vehicleInfo) &&
            (identical(other.conversationId, conversationId) || other.conversationId == conversationId) &&
            (identical(other.organizationId, organizationId) || other.organizationId == organizationId) &&
            (identical(other.vehicleId, vehicleId) || other.vehicleId == vehicleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        customerInfo,
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
        const DeepCollectionEquality().hash(startedAt),
        onrouteAt,
        arrivedAt,
        acceptedAt,
        const DeepCollectionEquality().hash(rejectedAt),
        cancelledAt,
        const DeepCollectionEquality().hash(validateAt),
        const DeepCollectionEquality().hash(completedAt),
        const DeepCollectionEquality().hash(endAt),
        const DeepCollectionEquality().hash(customerInvoiceSeenAt),
        const DeepCollectionEquality().hash(driverInvoiceSeenAt),
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
        cancelledReason,
        driverInfo,
        vehicleInfo,
        conversationId,
        organizationId,
        vehicleId
      ]);

  @override
  String toString() {
    return 'Result(customerInfo: $customerInfo, id: $id, countryId: $countryId, cityId: $cityId, zoneId: $zoneId, customerId: $customerId, driverId: $driverId, rideTypeId: $rideTypeId, rideRequest: $rideRequest, paymentIntentId: $paymentIntentId, paymentMethodId: $paymentMethodId, customerStripeId: $customerStripeId, chargeAmount: $chargeAmount, capturedAmount: $capturedAmount, farePrice: $farePrice, totalPrice: $totalPrice, vat: $vat, payToDriver: $payToDriver, platformCharges: $platformCharges, toCurrency: $toCurrency, fromCurrency: $fromCurrency, cancellationCharges: $cancellationCharges, bidCount: $bidCount, retryDriversCount: $retryDriversCount, maxRetryDriversCount: $maxRetryDriversCount, isBidding: $isBidding, quotedFare: $quotedFare, scheduledAt: $scheduledAt, requestedAt: $requestedAt, status: $status, paymentStatus: $paymentStatus, nanoId: $nanoId, rideService: $rideService, startedAt: $startedAt, onrouteAt: $onrouteAt, arrivedAt: $arrivedAt, acceptedAt: $acceptedAt, rejectedAt: $rejectedAt, cancelledAt: $cancelledAt, validateAt: $validateAt, completedAt: $completedAt, endAt: $endAt, customerInvoiceSeenAt: $customerInvoiceSeenAt, driverInvoiceSeenAt: $driverInvoiceSeenAt, rejectedDrivers: $rejectedDrivers, requestedDrivers: $requestedDrivers, isDriverCancelled: $isDriverCancelled, isCustomerCancelled: $isCustomerCancelled, isSystemCancelled: $isSystemCancelled, isRideEnd: $isRideEnd, isCustomerInvoiceSeen: $isCustomerInvoiceSeen, isDriverInvoiceSeen: $isDriverInvoiceSeen, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, timeToRespond: $timeToRespond, cancelledReason: $cancelledReason, driverInfo: $driverInfo, vehicleInfo: $vehicleInfo, conversationId: $conversationId, organizationId: $organizationId, vehicleId: $vehicleId)';
  }
}

/// @nodoc
abstract mixin class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) _then) =
      _$ResultCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "customer_info") ErInfo? customerInfo,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "country_id") String? countryId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "zone_id") String? zoneId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "driver_id") String? driverId,
      @JsonKey(name: "ride_type_id") RideTypeId? rideTypeId,
      @JsonKey(name: "ride_request") RideRequest? rideRequest,
      @JsonKey(name: "payment_intent_id") String? paymentIntentId,
      @JsonKey(name: "payment_method_id") String? paymentMethodId,
      @JsonKey(name: "customer_stripe_id") String? customerStripeId,
      @JsonKey(name: "charge_amount") int? chargeAmount,
      @JsonKey(name: "captured_amount") int? capturedAmount,
      @JsonKey(name: "fare_price") double? farePrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "pay_to_driver") double? payToDriver,
      @JsonKey(name: "platform_charges") double? platformCharges,
      @JsonKey(name: "to_currency") String? toCurrency,
      @JsonKey(name: "from_currency") String? fromCurrency,
      @JsonKey(name: "cancellation_charges") double? cancellationCharges,
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
      @JsonKey(name: "started_at") dynamic startedAt,
      @JsonKey(name: "onroute_at") DateTime? onrouteAt,
      @JsonKey(name: "arrived_at") DateTime? arrivedAt,
      @JsonKey(name: "accepted_at") DateTime? acceptedAt,
      @JsonKey(name: "rejected_at") dynamic rejectedAt,
      @JsonKey(name: "cancelled_at") DateTime? cancelledAt,
      @JsonKey(name: "validate_at") dynamic validateAt,
      @JsonKey(name: "completed_at") dynamic completedAt,
      @JsonKey(name: "end_at") dynamic endAt,
      @JsonKey(name: "customer_invoice_seen_at") dynamic customerInvoiceSeenAt,
      @JsonKey(name: "driver_invoice_seen_at") dynamic driverInvoiceSeenAt,
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
      @JsonKey(name: "cancelled_reason") String? cancelledReason,
      @JsonKey(name: "driver_info") ErInfo? driverInfo,
      @JsonKey(name: "vehicle_info") VehicleInfo? vehicleInfo,
      @JsonKey(name: "conversation_id") String? conversationId,
      @JsonKey(name: "organization_id") String? organizationId,
      @JsonKey(name: "vehicle_id") String? vehicleId});

  $ErInfoCopyWith<$Res>? get customerInfo;
  $RideTypeIdCopyWith<$Res>? get rideTypeId;
  $RideRequestCopyWith<$Res>? get rideRequest;
  $ErInfoCopyWith<$Res>? get driverInfo;
  $VehicleInfoCopyWith<$Res>? get vehicleInfo;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._self, this._then);

  final Result _self;
  final $Res Function(Result) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerInfo = freezed,
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
    Object? cancelledReason = freezed,
    Object? driverInfo = freezed,
    Object? vehicleInfo = freezed,
    Object? conversationId = freezed,
    Object? organizationId = freezed,
    Object? vehicleId = freezed,
  }) {
    return _then(_self.copyWith(
      customerInfo: freezed == customerInfo
          ? _self.customerInfo
          : customerInfo // ignore: cast_nullable_to_non_nullable
              as ErInfo?,
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
              as RideTypeId?,
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
              as int?,
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
              as double?,
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
              as dynamic,
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
              as dynamic,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validateAt: freezed == validateAt
          ? _self.validateAt
          : validateAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endAt: freezed == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      customerInvoiceSeenAt: freezed == customerInvoiceSeenAt
          ? _self.customerInvoiceSeenAt
          : customerInvoiceSeenAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      driverInvoiceSeenAt: freezed == driverInvoiceSeenAt
          ? _self.driverInvoiceSeenAt
          : driverInvoiceSeenAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      cancelledReason: freezed == cancelledReason
          ? _self.cancelledReason
          : cancelledReason // ignore: cast_nullable_to_non_nullable
              as String?,
      driverInfo: freezed == driverInfo
          ? _self.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as ErInfo?,
      vehicleInfo: freezed == vehicleInfo
          ? _self.vehicleInfo
          : vehicleInfo // ignore: cast_nullable_to_non_nullable
              as VehicleInfo?,
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

  /// Create a copy of Result
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

  /// Create a copy of Result
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

  /// Create a copy of Result
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

  /// Create a copy of Result
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

  /// Create a copy of Result
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
}

/// Adds pattern-matching-related methods to [Result].
extension ResultPatterns on Result {
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
    TResult Function(_Result value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Result() when $default != null:
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
    TResult Function(_Result value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Result():
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
    TResult? Function(_Result value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Result() when $default != null:
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
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "driver_id") String? driverId,
            @JsonKey(name: "ride_type_id") RideTypeId? rideTypeId,
            @JsonKey(name: "ride_request") RideRequest? rideRequest,
            @JsonKey(name: "payment_intent_id") String? paymentIntentId,
            @JsonKey(name: "payment_method_id") String? paymentMethodId,
            @JsonKey(name: "customer_stripe_id") String? customerStripeId,
            @JsonKey(name: "charge_amount") int? chargeAmount,
            @JsonKey(name: "captured_amount") int? capturedAmount,
            @JsonKey(name: "fare_price") double? farePrice,
            @JsonKey(name: "total_price") double? totalPrice,
            @JsonKey(name: "vat") double? vat,
            @JsonKey(name: "pay_to_driver") double? payToDriver,
            @JsonKey(name: "platform_charges") double? platformCharges,
            @JsonKey(name: "to_currency") String? toCurrency,
            @JsonKey(name: "from_currency") String? fromCurrency,
            @JsonKey(name: "cancellation_charges") double? cancellationCharges,
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
            @JsonKey(name: "started_at") dynamic startedAt,
            @JsonKey(name: "onroute_at") DateTime? onrouteAt,
            @JsonKey(name: "arrived_at") DateTime? arrivedAt,
            @JsonKey(name: "accepted_at") DateTime? acceptedAt,
            @JsonKey(name: "rejected_at") dynamic rejectedAt,
            @JsonKey(name: "cancelled_at") DateTime? cancelledAt,
            @JsonKey(name: "validate_at") dynamic validateAt,
            @JsonKey(name: "completed_at") dynamic completedAt,
            @JsonKey(name: "end_at") dynamic endAt,
            @JsonKey(name: "customer_invoice_seen_at")
            dynamic customerInvoiceSeenAt,
            @JsonKey(name: "driver_invoice_seen_at")
            dynamic driverInvoiceSeenAt,
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
            @JsonKey(name: "cancelled_reason") String? cancelledReason,
            @JsonKey(name: "driver_info") ErInfo? driverInfo,
            @JsonKey(name: "vehicle_info") VehicleInfo? vehicleInfo,
            @JsonKey(name: "conversation_id") String? conversationId,
            @JsonKey(name: "organization_id") String? organizationId,
            @JsonKey(name: "vehicle_id") String? vehicleId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Result() when $default != null:
        return $default(
            _that.customerInfo,
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
            _that.cancelledReason,
            _that.driverInfo,
            _that.vehicleInfo,
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
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "driver_id") String? driverId,
            @JsonKey(name: "ride_type_id") RideTypeId? rideTypeId,
            @JsonKey(name: "ride_request") RideRequest? rideRequest,
            @JsonKey(name: "payment_intent_id") String? paymentIntentId,
            @JsonKey(name: "payment_method_id") String? paymentMethodId,
            @JsonKey(name: "customer_stripe_id") String? customerStripeId,
            @JsonKey(name: "charge_amount") int? chargeAmount,
            @JsonKey(name: "captured_amount") int? capturedAmount,
            @JsonKey(name: "fare_price") double? farePrice,
            @JsonKey(name: "total_price") double? totalPrice,
            @JsonKey(name: "vat") double? vat,
            @JsonKey(name: "pay_to_driver") double? payToDriver,
            @JsonKey(name: "platform_charges") double? platformCharges,
            @JsonKey(name: "to_currency") String? toCurrency,
            @JsonKey(name: "from_currency") String? fromCurrency,
            @JsonKey(name: "cancellation_charges") double? cancellationCharges,
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
            @JsonKey(name: "started_at") dynamic startedAt,
            @JsonKey(name: "onroute_at") DateTime? onrouteAt,
            @JsonKey(name: "arrived_at") DateTime? arrivedAt,
            @JsonKey(name: "accepted_at") DateTime? acceptedAt,
            @JsonKey(name: "rejected_at") dynamic rejectedAt,
            @JsonKey(name: "cancelled_at") DateTime? cancelledAt,
            @JsonKey(name: "validate_at") dynamic validateAt,
            @JsonKey(name: "completed_at") dynamic completedAt,
            @JsonKey(name: "end_at") dynamic endAt,
            @JsonKey(name: "customer_invoice_seen_at")
            dynamic customerInvoiceSeenAt,
            @JsonKey(name: "driver_invoice_seen_at")
            dynamic driverInvoiceSeenAt,
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
            @JsonKey(name: "cancelled_reason") String? cancelledReason,
            @JsonKey(name: "driver_info") ErInfo? driverInfo,
            @JsonKey(name: "vehicle_info") VehicleInfo? vehicleInfo,
            @JsonKey(name: "conversation_id") String? conversationId,
            @JsonKey(name: "organization_id") String? organizationId,
            @JsonKey(name: "vehicle_id") String? vehicleId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Result():
        return $default(
            _that.customerInfo,
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
            _that.cancelledReason,
            _that.driverInfo,
            _that.vehicleInfo,
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
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "driver_id") String? driverId,
            @JsonKey(name: "ride_type_id") RideTypeId? rideTypeId,
            @JsonKey(name: "ride_request") RideRequest? rideRequest,
            @JsonKey(name: "payment_intent_id") String? paymentIntentId,
            @JsonKey(name: "payment_method_id") String? paymentMethodId,
            @JsonKey(name: "customer_stripe_id") String? customerStripeId,
            @JsonKey(name: "charge_amount") int? chargeAmount,
            @JsonKey(name: "captured_amount") int? capturedAmount,
            @JsonKey(name: "fare_price") double? farePrice,
            @JsonKey(name: "total_price") double? totalPrice,
            @JsonKey(name: "vat") double? vat,
            @JsonKey(name: "pay_to_driver") double? payToDriver,
            @JsonKey(name: "platform_charges") double? platformCharges,
            @JsonKey(name: "to_currency") String? toCurrency,
            @JsonKey(name: "from_currency") String? fromCurrency,
            @JsonKey(name: "cancellation_charges") double? cancellationCharges,
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
            @JsonKey(name: "started_at") dynamic startedAt,
            @JsonKey(name: "onroute_at") DateTime? onrouteAt,
            @JsonKey(name: "arrived_at") DateTime? arrivedAt,
            @JsonKey(name: "accepted_at") DateTime? acceptedAt,
            @JsonKey(name: "rejected_at") dynamic rejectedAt,
            @JsonKey(name: "cancelled_at") DateTime? cancelledAt,
            @JsonKey(name: "validate_at") dynamic validateAt,
            @JsonKey(name: "completed_at") dynamic completedAt,
            @JsonKey(name: "end_at") dynamic endAt,
            @JsonKey(name: "customer_invoice_seen_at")
            dynamic customerInvoiceSeenAt,
            @JsonKey(name: "driver_invoice_seen_at")
            dynamic driverInvoiceSeenAt,
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
            @JsonKey(name: "cancelled_reason") String? cancelledReason,
            @JsonKey(name: "driver_info") ErInfo? driverInfo,
            @JsonKey(name: "vehicle_info") VehicleInfo? vehicleInfo,
            @JsonKey(name: "conversation_id") String? conversationId,
            @JsonKey(name: "organization_id") String? organizationId,
            @JsonKey(name: "vehicle_id") String? vehicleId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Result() when $default != null:
        return $default(
            _that.customerInfo,
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
            _that.cancelledReason,
            _that.driverInfo,
            _that.vehicleInfo,
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
class _Result implements Result {
  const _Result(
      {@JsonKey(name: "customer_info") this.customerInfo,
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
      @JsonKey(name: "cancelled_reason") this.cancelledReason,
      @JsonKey(name: "driver_info") this.driverInfo,
      @JsonKey(name: "vehicle_info") this.vehicleInfo,
      @JsonKey(name: "conversation_id") this.conversationId,
      @JsonKey(name: "organization_id") this.organizationId,
      @JsonKey(name: "vehicle_id") this.vehicleId})
      : _rejectedDrivers = rejectedDrivers,
        _requestedDrivers = requestedDrivers;
  factory _Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  @override
  @JsonKey(name: "customer_info")
  final ErInfo? customerInfo;
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
  final RideTypeId? rideTypeId;
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
  final int? capturedAmount;
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
  final double? cancellationCharges;
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
  final dynamic startedAt;
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
  final dynamic rejectedAt;
  @override
  @JsonKey(name: "cancelled_at")
  final DateTime? cancelledAt;
  @override
  @JsonKey(name: "validate_at")
  final dynamic validateAt;
  @override
  @JsonKey(name: "completed_at")
  final dynamic completedAt;
  @override
  @JsonKey(name: "end_at")
  final dynamic endAt;
  @override
  @JsonKey(name: "customer_invoice_seen_at")
  final dynamic customerInvoiceSeenAt;
  @override
  @JsonKey(name: "driver_invoice_seen_at")
  final dynamic driverInvoiceSeenAt;
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
  @JsonKey(name: "cancelled_reason")
  final String? cancelledReason;
  @override
  @JsonKey(name: "driver_info")
  final ErInfo? driverInfo;
  @override
  @JsonKey(name: "vehicle_info")
  final VehicleInfo? vehicleInfo;
  @override
  @JsonKey(name: "conversation_id")
  final String? conversationId;
  @override
  @JsonKey(name: "organization_id")
  final String? organizationId;
  @override
  @JsonKey(name: "vehicle_id")
  final String? vehicleId;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResultCopyWith<_Result> get copyWith =>
      __$ResultCopyWithImpl<_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Result &&
            (identical(other.customerInfo, customerInfo) ||
                other.customerInfo == customerInfo) &&
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
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            (identical(other.onrouteAt, onrouteAt) ||
                other.onrouteAt == onrouteAt) &&
            (identical(other.arrivedAt, arrivedAt) ||
                other.arrivedAt == arrivedAt) &&
            (identical(other.acceptedAt, acceptedAt) ||
                other.acceptedAt == acceptedAt) &&
            const DeepCollectionEquality()
                .equals(other.rejectedAt, rejectedAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            const DeepCollectionEquality()
                .equals(other.validateAt, validateAt) &&
            const DeepCollectionEquality()
                .equals(other.completedAt, completedAt) &&
            const DeepCollectionEquality().equals(other.endAt, endAt) &&
            const DeepCollectionEquality()
                .equals(other.customerInvoiceSeenAt, customerInvoiceSeenAt) &&
            const DeepCollectionEquality()
                .equals(other.driverInvoiceSeenAt, driverInvoiceSeenAt) &&
            const DeepCollectionEquality()
                .equals(other._rejectedDrivers, _rejectedDrivers) &&
            const DeepCollectionEquality()
                .equals(other._requestedDrivers, _requestedDrivers) &&
            (identical(other.isDriverCancelled, isDriverCancelled) ||
                other.isDriverCancelled == isDriverCancelled) &&
            (identical(other.isCustomerCancelled, isCustomerCancelled) ||
                other.isCustomerCancelled == isCustomerCancelled) &&
            (identical(other.isSystemCancelled, isSystemCancelled) ||
                other.isSystemCancelled == isSystemCancelled) &&
            (identical(other.isRideEnd, isRideEnd) ||
                other.isRideEnd == isRideEnd) &&
            (identical(other.isCustomerInvoiceSeen, isCustomerInvoiceSeen) ||
                other.isCustomerInvoiceSeen == isCustomerInvoiceSeen) &&
            (identical(other.isDriverInvoiceSeen, isDriverInvoiceSeen) || other.isDriverInvoiceSeen == isDriverInvoiceSeen) &&
            (identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.timeToRespond, timeToRespond) || other.timeToRespond == timeToRespond) &&
            (identical(other.cancelledReason, cancelledReason) || other.cancelledReason == cancelledReason) &&
            (identical(other.driverInfo, driverInfo) || other.driverInfo == driverInfo) &&
            (identical(other.vehicleInfo, vehicleInfo) || other.vehicleInfo == vehicleInfo) &&
            (identical(other.conversationId, conversationId) || other.conversationId == conversationId) &&
            (identical(other.organizationId, organizationId) || other.organizationId == organizationId) &&
            (identical(other.vehicleId, vehicleId) || other.vehicleId == vehicleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        customerInfo,
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
        const DeepCollectionEquality().hash(startedAt),
        onrouteAt,
        arrivedAt,
        acceptedAt,
        const DeepCollectionEquality().hash(rejectedAt),
        cancelledAt,
        const DeepCollectionEquality().hash(validateAt),
        const DeepCollectionEquality().hash(completedAt),
        const DeepCollectionEquality().hash(endAt),
        const DeepCollectionEquality().hash(customerInvoiceSeenAt),
        const DeepCollectionEquality().hash(driverInvoiceSeenAt),
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
        cancelledReason,
        driverInfo,
        vehicleInfo,
        conversationId,
        organizationId,
        vehicleId
      ]);

  @override
  String toString() {
    return 'Result(customerInfo: $customerInfo, id: $id, countryId: $countryId, cityId: $cityId, zoneId: $zoneId, customerId: $customerId, driverId: $driverId, rideTypeId: $rideTypeId, rideRequest: $rideRequest, paymentIntentId: $paymentIntentId, paymentMethodId: $paymentMethodId, customerStripeId: $customerStripeId, chargeAmount: $chargeAmount, capturedAmount: $capturedAmount, farePrice: $farePrice, totalPrice: $totalPrice, vat: $vat, payToDriver: $payToDriver, platformCharges: $platformCharges, toCurrency: $toCurrency, fromCurrency: $fromCurrency, cancellationCharges: $cancellationCharges, bidCount: $bidCount, retryDriversCount: $retryDriversCount, maxRetryDriversCount: $maxRetryDriversCount, isBidding: $isBidding, quotedFare: $quotedFare, scheduledAt: $scheduledAt, requestedAt: $requestedAt, status: $status, paymentStatus: $paymentStatus, nanoId: $nanoId, rideService: $rideService, startedAt: $startedAt, onrouteAt: $onrouteAt, arrivedAt: $arrivedAt, acceptedAt: $acceptedAt, rejectedAt: $rejectedAt, cancelledAt: $cancelledAt, validateAt: $validateAt, completedAt: $completedAt, endAt: $endAt, customerInvoiceSeenAt: $customerInvoiceSeenAt, driverInvoiceSeenAt: $driverInvoiceSeenAt, rejectedDrivers: $rejectedDrivers, requestedDrivers: $requestedDrivers, isDriverCancelled: $isDriverCancelled, isCustomerCancelled: $isCustomerCancelled, isSystemCancelled: $isSystemCancelled, isRideEnd: $isRideEnd, isCustomerInvoiceSeen: $isCustomerInvoiceSeen, isDriverInvoiceSeen: $isDriverInvoiceSeen, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, timeToRespond: $timeToRespond, cancelledReason: $cancelledReason, driverInfo: $driverInfo, vehicleInfo: $vehicleInfo, conversationId: $conversationId, organizationId: $organizationId, vehicleId: $vehicleId)';
  }
}

/// @nodoc
abstract mixin class _$ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultCopyWith(_Result value, $Res Function(_Result) _then) =
      __$ResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "customer_info") ErInfo? customerInfo,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "country_id") String? countryId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "zone_id") String? zoneId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "driver_id") String? driverId,
      @JsonKey(name: "ride_type_id") RideTypeId? rideTypeId,
      @JsonKey(name: "ride_request") RideRequest? rideRequest,
      @JsonKey(name: "payment_intent_id") String? paymentIntentId,
      @JsonKey(name: "payment_method_id") String? paymentMethodId,
      @JsonKey(name: "customer_stripe_id") String? customerStripeId,
      @JsonKey(name: "charge_amount") int? chargeAmount,
      @JsonKey(name: "captured_amount") int? capturedAmount,
      @JsonKey(name: "fare_price") double? farePrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "pay_to_driver") double? payToDriver,
      @JsonKey(name: "platform_charges") double? platformCharges,
      @JsonKey(name: "to_currency") String? toCurrency,
      @JsonKey(name: "from_currency") String? fromCurrency,
      @JsonKey(name: "cancellation_charges") double? cancellationCharges,
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
      @JsonKey(name: "started_at") dynamic startedAt,
      @JsonKey(name: "onroute_at") DateTime? onrouteAt,
      @JsonKey(name: "arrived_at") DateTime? arrivedAt,
      @JsonKey(name: "accepted_at") DateTime? acceptedAt,
      @JsonKey(name: "rejected_at") dynamic rejectedAt,
      @JsonKey(name: "cancelled_at") DateTime? cancelledAt,
      @JsonKey(name: "validate_at") dynamic validateAt,
      @JsonKey(name: "completed_at") dynamic completedAt,
      @JsonKey(name: "end_at") dynamic endAt,
      @JsonKey(name: "customer_invoice_seen_at") dynamic customerInvoiceSeenAt,
      @JsonKey(name: "driver_invoice_seen_at") dynamic driverInvoiceSeenAt,
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
      @JsonKey(name: "cancelled_reason") String? cancelledReason,
      @JsonKey(name: "driver_info") ErInfo? driverInfo,
      @JsonKey(name: "vehicle_info") VehicleInfo? vehicleInfo,
      @JsonKey(name: "conversation_id") String? conversationId,
      @JsonKey(name: "organization_id") String? organizationId,
      @JsonKey(name: "vehicle_id") String? vehicleId});

  @override
  $ErInfoCopyWith<$Res>? get customerInfo;
  @override
  $RideTypeIdCopyWith<$Res>? get rideTypeId;
  @override
  $RideRequestCopyWith<$Res>? get rideRequest;
  @override
  $ErInfoCopyWith<$Res>? get driverInfo;
  @override
  $VehicleInfoCopyWith<$Res>? get vehicleInfo;
}

/// @nodoc
class __$ResultCopyWithImpl<$Res> implements _$ResultCopyWith<$Res> {
  __$ResultCopyWithImpl(this._self, this._then);

  final _Result _self;
  final $Res Function(_Result) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerInfo = freezed,
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
    Object? cancelledReason = freezed,
    Object? driverInfo = freezed,
    Object? vehicleInfo = freezed,
    Object? conversationId = freezed,
    Object? organizationId = freezed,
    Object? vehicleId = freezed,
  }) {
    return _then(_Result(
      customerInfo: freezed == customerInfo
          ? _self.customerInfo
          : customerInfo // ignore: cast_nullable_to_non_nullable
              as ErInfo?,
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
              as RideTypeId?,
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
              as int?,
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
              as double?,
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
              as dynamic,
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
              as dynamic,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validateAt: freezed == validateAt
          ? _self.validateAt
          : validateAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endAt: freezed == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      customerInvoiceSeenAt: freezed == customerInvoiceSeenAt
          ? _self.customerInvoiceSeenAt
          : customerInvoiceSeenAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      driverInvoiceSeenAt: freezed == driverInvoiceSeenAt
          ? _self.driverInvoiceSeenAt
          : driverInvoiceSeenAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      cancelledReason: freezed == cancelledReason
          ? _self.cancelledReason
          : cancelledReason // ignore: cast_nullable_to_non_nullable
              as String?,
      driverInfo: freezed == driverInfo
          ? _self.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as ErInfo?,
      vehicleInfo: freezed == vehicleInfo
          ? _self.vehicleInfo
          : vehicleInfo // ignore: cast_nullable_to_non_nullable
              as VehicleInfo?,
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

  /// Create a copy of Result
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

  /// Create a copy of Result
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

  /// Create a copy of Result
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

  /// Create a copy of Result
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

  /// Create a copy of Result
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
}

/// @nodoc
mixin _$RideTypeId {
  @JsonKey(name: "_id")
  String? get id;
  @JsonKey(name: "name")
  String? get name;

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
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'RideTypeId(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $RideTypeIdCopyWith<$Res> {
  factory $RideTypeIdCopyWith(
          RideTypeId value, $Res Function(RideTypeId) _then) =
      _$RideTypeIdCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id, @JsonKey(name: "name") String? name});
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
    TResult Function(@JsonKey(name: "_id") String? id,
            @JsonKey(name: "name") String? name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideTypeId() when $default != null:
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
    TResult Function(@JsonKey(name: "_id") String? id,
            @JsonKey(name: "name") String? name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypeId():
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
    TResult? Function(@JsonKey(name: "_id") String? id,
            @JsonKey(name: "name") String? name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypeId() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RideTypeId implements RideTypeId {
  const _RideTypeId(
      {@JsonKey(name: "_id") this.id, @JsonKey(name: "name") this.name});
  factory _RideTypeId.fromJson(Map<String, dynamic> json) =>
      _$RideTypeIdFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;

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
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'RideTypeId(id: $id, name: $name)';
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
      {@JsonKey(name: "_id") String? id, @JsonKey(name: "name") String? name});
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
    ));
  }
}

// dart format on
