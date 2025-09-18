// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_type_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RideTypeImages {
  @JsonKey(name: "success")
  bool? get success;
  @JsonKey(name: "message")
  String? get message;
  @JsonKey(name: "data")
  Data? get data;
  @JsonKey(name: "statusCode")
  int? get statusCode;

  /// Create a copy of RideTypeImages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideTypeImagesCopyWith<RideTypeImages> get copyWith =>
      _$RideTypeImagesCopyWithImpl<RideTypeImages>(
          this as RideTypeImages, _$identity);

  /// Serializes this RideTypeImages to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideTypeImages &&
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
    return 'RideTypeImages(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class $RideTypeImagesCopyWith<$Res> {
  factory $RideTypeImagesCopyWith(
          RideTypeImages value, $Res Function(RideTypeImages) _then) =
      _$RideTypeImagesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "statusCode") int? statusCode});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$RideTypeImagesCopyWithImpl<$Res>
    implements $RideTypeImagesCopyWith<$Res> {
  _$RideTypeImagesCopyWithImpl(this._self, this._then);

  final RideTypeImages _self;
  final $Res Function(RideTypeImages) _then;

  /// Create a copy of RideTypeImages
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

  /// Create a copy of RideTypeImages
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

/// Adds pattern-matching-related methods to [RideTypeImages].
extension RideTypeImagesPatterns on RideTypeImages {
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
    TResult Function(_RideTypeImages value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideTypeImages() when $default != null:
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
    TResult Function(_RideTypeImages value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypeImages():
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
    TResult? Function(_RideTypeImages value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypeImages() when $default != null:
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
      case _RideTypeImages() when $default != null:
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
      case _RideTypeImages():
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
      case _RideTypeImages() when $default != null:
        return $default(
            _that.success, _that.message, _that.data, _that.statusCode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RideTypeImages implements RideTypeImages {
  const _RideTypeImages(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "statusCode") this.statusCode});
  factory _RideTypeImages.fromJson(Map<String, dynamic> json) =>
      _$RideTypeImagesFromJson(json);

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

  /// Create a copy of RideTypeImages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideTypeImagesCopyWith<_RideTypeImages> get copyWith =>
      __$RideTypeImagesCopyWithImpl<_RideTypeImages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideTypeImagesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideTypeImages &&
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
    return 'RideTypeImages(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class _$RideTypeImagesCopyWith<$Res>
    implements $RideTypeImagesCopyWith<$Res> {
  factory _$RideTypeImagesCopyWith(
          _RideTypeImages value, $Res Function(_RideTypeImages) _then) =
      __$RideTypeImagesCopyWithImpl;
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
class __$RideTypeImagesCopyWithImpl<$Res>
    implements _$RideTypeImagesCopyWith<$Res> {
  __$RideTypeImagesCopyWithImpl(this._self, this._then);

  final _RideTypeImages _self;
  final $Res Function(_RideTypeImages) _then;

  /// Create a copy of RideTypeImages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_RideTypeImages(
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

  /// Create a copy of RideTypeImages
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
  @JsonKey(name: "rideTypes")
  RideTypes? get rideTypes;

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
            (identical(other.rideTypes, rideTypes) ||
                other.rideTypes == rideTypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideTypes);

  @override
  String toString() {
    return 'Data(rideTypes: $rideTypes)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: "rideTypes") RideTypes? rideTypes});

  $RideTypesCopyWith<$Res>? get rideTypes;
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
    Object? rideTypes = freezed,
  }) {
    return _then(_self.copyWith(
      rideTypes: freezed == rideTypes
          ? _self.rideTypes
          : rideTypes // ignore: cast_nullable_to_non_nullable
              as RideTypes?,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideTypesCopyWith<$Res>? get rideTypes {
    if (_self.rideTypes == null) {
      return null;
    }

    return $RideTypesCopyWith<$Res>(_self.rideTypes!, (value) {
      return _then(_self.copyWith(rideTypes: value));
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
    TResult Function(@JsonKey(name: "rideTypes") RideTypes? rideTypes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.rideTypes);
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
    TResult Function(@JsonKey(name: "rideTypes") RideTypes? rideTypes) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
        return $default(_that.rideTypes);
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
    TResult? Function(@JsonKey(name: "rideTypes") RideTypes? rideTypes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.rideTypes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Data implements Data {
  const _Data({@JsonKey(name: "rideTypes") this.rideTypes});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  @JsonKey(name: "rideTypes")
  final RideTypes? rideTypes;

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
            (identical(other.rideTypes, rideTypes) ||
                other.rideTypes == rideTypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideTypes);

  @override
  String toString() {
    return 'Data(rideTypes: $rideTypes)';
  }
}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) =
      __$DataCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: "rideTypes") RideTypes? rideTypes});

  @override
  $RideTypesCopyWith<$Res>? get rideTypes;
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
    Object? rideTypes = freezed,
  }) {
    return _then(_Data(
      rideTypes: freezed == rideTypes
          ? _self.rideTypes
          : rideTypes // ignore: cast_nullable_to_non_nullable
              as RideTypes?,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideTypesCopyWith<$Res>? get rideTypes {
    if (_self.rideTypes == null) {
      return null;
    }

    return $RideTypesCopyWith<$Res>(_self.rideTypes!, (value) {
      return _then(_self.copyWith(rideTypes: value));
    });
  }
}

/// @nodoc
mixin _$RideTypes {
  @JsonKey(name: "results")
  List<RideType>? get results;
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

  /// Create a copy of RideTypes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideTypesCopyWith<RideTypes> get copyWith =>
      _$RideTypesCopyWithImpl<RideTypes>(this as RideTypes, _$identity);

  /// Serializes this RideTypes to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideTypes &&
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
    return 'RideTypes(results: $results, page: $page, limit: $limit, totalPages: $totalPages, totalResults: $totalResults, isNextPage: $isNextPage, isPreviousPage: $isPreviousPage)';
  }
}

/// @nodoc
abstract mixin class $RideTypesCopyWith<$Res> {
  factory $RideTypesCopyWith(RideTypes value, $Res Function(RideTypes) _then) =
      _$RideTypesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "results") List<RideType>? results,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "limit") int? limit,
      @JsonKey(name: "totalPages") int? totalPages,
      @JsonKey(name: "totalResults") int? totalResults,
      @JsonKey(name: "isNextPage") bool? isNextPage,
      @JsonKey(name: "isPreviousPage") bool? isPreviousPage});
}

/// @nodoc
class _$RideTypesCopyWithImpl<$Res> implements $RideTypesCopyWith<$Res> {
  _$RideTypesCopyWithImpl(this._self, this._then);

  final RideTypes _self;
  final $Res Function(RideTypes) _then;

  /// Create a copy of RideTypes
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
              as List<RideType>?,
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

/// Adds pattern-matching-related methods to [RideTypes].
extension RideTypesPatterns on RideTypes {
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
    TResult Function(_RideTypes value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideTypes() when $default != null:
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
    TResult Function(_RideTypes value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypes():
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
    TResult? Function(_RideTypes value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideTypes() when $default != null:
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
            @JsonKey(name: "results") List<RideType>? results,
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
      case _RideTypes() when $default != null:
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
            @JsonKey(name: "results") List<RideType>? results,
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
      case _RideTypes():
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
            @JsonKey(name: "results") List<RideType>? results,
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
      case _RideTypes() when $default != null:
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
class _RideTypes implements RideTypes {
  const _RideTypes(
      {@JsonKey(name: "results") final List<RideType>? results,
      @JsonKey(name: "page") this.page,
      @JsonKey(name: "limit") this.limit,
      @JsonKey(name: "totalPages") this.totalPages,
      @JsonKey(name: "totalResults") this.totalResults,
      @JsonKey(name: "isNextPage") this.isNextPage,
      @JsonKey(name: "isPreviousPage") this.isPreviousPage})
      : _results = results;
  factory _RideTypes.fromJson(Map<String, dynamic> json) =>
      _$RideTypesFromJson(json);

  final List<RideType>? _results;
  @override
  @JsonKey(name: "results")
  List<RideType>? get results {
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

  /// Create a copy of RideTypes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideTypesCopyWith<_RideTypes> get copyWith =>
      __$RideTypesCopyWithImpl<_RideTypes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideTypesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideTypes &&
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
    return 'RideTypes(results: $results, page: $page, limit: $limit, totalPages: $totalPages, totalResults: $totalResults, isNextPage: $isNextPage, isPreviousPage: $isPreviousPage)';
  }
}

/// @nodoc
abstract mixin class _$RideTypesCopyWith<$Res>
    implements $RideTypesCopyWith<$Res> {
  factory _$RideTypesCopyWith(
          _RideTypes value, $Res Function(_RideTypes) _then) =
      __$RideTypesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "results") List<RideType>? results,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "limit") int? limit,
      @JsonKey(name: "totalPages") int? totalPages,
      @JsonKey(name: "totalResults") int? totalResults,
      @JsonKey(name: "isNextPage") bool? isNextPage,
      @JsonKey(name: "isPreviousPage") bool? isPreviousPage});
}

/// @nodoc
class __$RideTypesCopyWithImpl<$Res> implements _$RideTypesCopyWith<$Res> {
  __$RideTypesCopyWithImpl(this._self, this._then);

  final _RideTypes _self;
  final $Res Function(_RideTypes) _then;

  /// Create a copy of RideTypes
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
    return _then(_RideTypes(
      results: freezed == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<RideType>?,
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
mixin _$RideType {
  @JsonKey(name: "_id")
  String? get id;
  @JsonKey(name: "ride_category")
  RideCategory? get rideCategory;
  @JsonKey(name: "name")
  String? get name;
  @JsonKey(name: "type")
  String? get type;
  @JsonKey(name: "ride_image")
  String? get rideImage;
  @JsonKey(name: "is_deleted")
  bool? get isDeleted;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @JsonKey(name: "__v")
  int? get v;
  @JsonKey(name: "is_active")
  bool? get isActive;
  @JsonKey(name: "created_at")
  DateTime? get resultCreatedAt;
  @JsonKey(name: "updated_at")
  DateTime? get resultUpdatedAt;

  /// Create a copy of RideType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideTypeCopyWith<RideType> get copyWith =>
      _$RideTypeCopyWithImpl<RideType>(this as RideType, _$identity);

  /// Serializes this RideType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rideCategory, rideCategory) ||
                other.rideCategory == rideCategory) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rideImage, rideImage) ||
                other.rideImage == rideImage) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.resultCreatedAt, resultCreatedAt) ||
                other.resultCreatedAt == resultCreatedAt) &&
            (identical(other.resultUpdatedAt, resultUpdatedAt) ||
                other.resultUpdatedAt == resultUpdatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      rideCategory,
      name,
      type,
      rideImage,
      isDeleted,
      createdAt,
      updatedAt,
      v,
      isActive,
      resultCreatedAt,
      resultUpdatedAt);

  @override
  String toString() {
    return 'RideType(id: $id, rideCategory: $rideCategory, name: $name, type: $type, rideImage: $rideImage, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, isActive: $isActive, resultCreatedAt: $resultCreatedAt, resultUpdatedAt: $resultUpdatedAt)';
  }
}

/// @nodoc
abstract mixin class $RideTypeCopyWith<$Res> {
  factory $RideTypeCopyWith(RideType value, $Res Function(RideType) _then) =
      _$RideTypeCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "ride_category") RideCategory? rideCategory,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "ride_image") String? rideImage,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "created_at") DateTime? resultCreatedAt,
      @JsonKey(name: "updated_at") DateTime? resultUpdatedAt});

  $RideCategoryCopyWith<$Res>? get rideCategory;
}

/// @nodoc
class _$RideTypeCopyWithImpl<$Res> implements $RideTypeCopyWith<$Res> {
  _$RideTypeCopyWithImpl(this._self, this._then);

  final RideType _self;
  final $Res Function(RideType) _then;

  /// Create a copy of RideType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rideCategory = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? rideImage = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? isActive = freezed,
    Object? resultCreatedAt = freezed,
    Object? resultUpdatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rideCategory: freezed == rideCategory
          ? _self.rideCategory
          : rideCategory // ignore: cast_nullable_to_non_nullable
              as RideCategory?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rideImage: freezed == rideImage
          ? _self.rideImage
          : rideImage // ignore: cast_nullable_to_non_nullable
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
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      resultCreatedAt: freezed == resultCreatedAt
          ? _self.resultCreatedAt
          : resultCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resultUpdatedAt: freezed == resultUpdatedAt
          ? _self.resultUpdatedAt
          : resultUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of RideType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideCategoryCopyWith<$Res>? get rideCategory {
    if (_self.rideCategory == null) {
      return null;
    }

    return $RideCategoryCopyWith<$Res>(_self.rideCategory!, (value) {
      return _then(_self.copyWith(rideCategory: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RideType].
extension RideTypePatterns on RideType {
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
    TResult Function(_RideType value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideType() when $default != null:
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
    TResult Function(_RideType value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideType():
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
    TResult? Function(_RideType value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideType() when $default != null:
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
            @JsonKey(name: "ride_category") RideCategory? rideCategory,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "ride_image") String? rideImage,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "is_active") bool? isActive,
            @JsonKey(name: "created_at") DateTime? resultCreatedAt,
            @JsonKey(name: "updated_at") DateTime? resultUpdatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideType() when $default != null:
        return $default(
            _that.id,
            _that.rideCategory,
            _that.name,
            _that.type,
            _that.rideImage,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.isActive,
            _that.resultCreatedAt,
            _that.resultUpdatedAt);
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
            @JsonKey(name: "ride_category") RideCategory? rideCategory,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "ride_image") String? rideImage,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "is_active") bool? isActive,
            @JsonKey(name: "created_at") DateTime? resultCreatedAt,
            @JsonKey(name: "updated_at") DateTime? resultUpdatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideType():
        return $default(
            _that.id,
            _that.rideCategory,
            _that.name,
            _that.type,
            _that.rideImage,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.isActive,
            _that.resultCreatedAt,
            _that.resultUpdatedAt);
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
            @JsonKey(name: "ride_category") RideCategory? rideCategory,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "ride_image") String? rideImage,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "is_active") bool? isActive,
            @JsonKey(name: "created_at") DateTime? resultCreatedAt,
            @JsonKey(name: "updated_at") DateTime? resultUpdatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideType() when $default != null:
        return $default(
            _that.id,
            _that.rideCategory,
            _that.name,
            _that.type,
            _that.rideImage,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.isActive,
            _that.resultCreatedAt,
            _that.resultUpdatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RideType implements RideType {
  const _RideType(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "ride_category") this.rideCategory,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "ride_image") this.rideImage,
      @JsonKey(name: "is_deleted") this.isDeleted,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "created_at") this.resultCreatedAt,
      @JsonKey(name: "updated_at") this.resultUpdatedAt});
  factory _RideType.fromJson(Map<String, dynamic> json) =>
      _$RideTypeFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "ride_category")
  final RideCategory? rideCategory;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "ride_image")
  final String? rideImage;
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
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "created_at")
  final DateTime? resultCreatedAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? resultUpdatedAt;

  /// Create a copy of RideType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideTypeCopyWith<_RideType> get copyWith =>
      __$RideTypeCopyWithImpl<_RideType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideTypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rideCategory, rideCategory) ||
                other.rideCategory == rideCategory) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rideImage, rideImage) ||
                other.rideImage == rideImage) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.resultCreatedAt, resultCreatedAt) ||
                other.resultCreatedAt == resultCreatedAt) &&
            (identical(other.resultUpdatedAt, resultUpdatedAt) ||
                other.resultUpdatedAt == resultUpdatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      rideCategory,
      name,
      type,
      rideImage,
      isDeleted,
      createdAt,
      updatedAt,
      v,
      isActive,
      resultCreatedAt,
      resultUpdatedAt);

  @override
  String toString() {
    return 'RideType(id: $id, rideCategory: $rideCategory, name: $name, type: $type, rideImage: $rideImage, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, isActive: $isActive, resultCreatedAt: $resultCreatedAt, resultUpdatedAt: $resultUpdatedAt)';
  }
}

/// @nodoc
abstract mixin class _$RideTypeCopyWith<$Res>
    implements $RideTypeCopyWith<$Res> {
  factory _$RideTypeCopyWith(_RideType value, $Res Function(_RideType) _then) =
      __$RideTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "ride_category") RideCategory? rideCategory,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "ride_image") String? rideImage,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "created_at") DateTime? resultCreatedAt,
      @JsonKey(name: "updated_at") DateTime? resultUpdatedAt});

  @override
  $RideCategoryCopyWith<$Res>? get rideCategory;
}

/// @nodoc
class __$RideTypeCopyWithImpl<$Res> implements _$RideTypeCopyWith<$Res> {
  __$RideTypeCopyWithImpl(this._self, this._then);

  final _RideType _self;
  final $Res Function(_RideType) _then;

  /// Create a copy of RideType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? rideCategory = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? rideImage = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? isActive = freezed,
    Object? resultCreatedAt = freezed,
    Object? resultUpdatedAt = freezed,
  }) {
    return _then(_RideType(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rideCategory: freezed == rideCategory
          ? _self.rideCategory
          : rideCategory // ignore: cast_nullable_to_non_nullable
              as RideCategory?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rideImage: freezed == rideImage
          ? _self.rideImage
          : rideImage // ignore: cast_nullable_to_non_nullable
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
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      resultCreatedAt: freezed == resultCreatedAt
          ? _self.resultCreatedAt
          : resultCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resultUpdatedAt: freezed == resultUpdatedAt
          ? _self.resultUpdatedAt
          : resultUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of RideType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideCategoryCopyWith<$Res>? get rideCategory {
    if (_self.rideCategory == null) {
      return null;
    }

    return $RideCategoryCopyWith<$Res>(_self.rideCategory!, (value) {
      return _then(_self.copyWith(rideCategory: value));
    });
  }
}

/// @nodoc
mixin _$RideCategory {
  @JsonKey(name: "country_id")
  String? get countryId;
  @JsonKey(name: "city_id")
  String? get cityId;
  @JsonKey(name: "name")
  String? get name;
  @JsonKey(name: "is_active")
  bool? get isActive;
  @JsonKey(name: "is_deleted")
  bool? get isDeleted;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @JsonKey(name: "id")
  String? get id;

  /// Create a copy of RideCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideCategoryCopyWith<RideCategory> get copyWith =>
      _$RideCategoryCopyWithImpl<RideCategory>(
          this as RideCategory, _$identity);

  /// Serializes this RideCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideCategory &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
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
  int get hashCode => Object.hash(runtimeType, countryId, cityId, name,
      isActive, isDeleted, createdAt, updatedAt, id);

  @override
  String toString() {
    return 'RideCategory(countryId: $countryId, cityId: $cityId, name: $name, isActive: $isActive, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class $RideCategoryCopyWith<$Res> {
  factory $RideCategoryCopyWith(
          RideCategory value, $Res Function(RideCategory) _then) =
      _$RideCategoryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "country_id") String? countryId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "id") String? id});
}

/// @nodoc
class _$RideCategoryCopyWithImpl<$Res> implements $RideCategoryCopyWith<$Res> {
  _$RideCategoryCopyWithImpl(this._self, this._then);

  final RideCategory _self;
  final $Res Function(RideCategory) _then;

  /// Create a copy of RideCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? name = freezed,
    Object? isActive = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_self.copyWith(
      countryId: freezed == countryId
          ? _self.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
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
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RideCategory].
extension RideCategoryPatterns on RideCategory {
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
    TResult Function(_RideCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideCategory() when $default != null:
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
    TResult Function(_RideCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideCategory():
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
    TResult? Function(_RideCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideCategory() when $default != null:
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
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "is_active") bool? isActive,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "id") String? id)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideCategory() when $default != null:
        return $default(
            _that.countryId,
            _that.cityId,
            _that.name,
            _that.isActive,
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
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "is_active") bool? isActive,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "id") String? id)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideCategory():
        return $default(
            _that.countryId,
            _that.cityId,
            _that.name,
            _that.isActive,
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
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "name") String? name,
            @JsonKey(name: "is_active") bool? isActive,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "id") String? id)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideCategory() when $default != null:
        return $default(
            _that.countryId,
            _that.cityId,
            _that.name,
            _that.isActive,
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
class _RideCategory implements RideCategory {
  const _RideCategory(
      {@JsonKey(name: "country_id") this.countryId,
      @JsonKey(name: "city_id") this.cityId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "is_deleted") this.isDeleted,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "id") this.id});
  factory _RideCategory.fromJson(Map<String, dynamic> json) =>
      _$RideCategoryFromJson(json);

  @override
  @JsonKey(name: "country_id")
  final String? countryId;
  @override
  @JsonKey(name: "city_id")
  final String? cityId;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
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

  /// Create a copy of RideCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideCategoryCopyWith<_RideCategory> get copyWith =>
      __$RideCategoryCopyWithImpl<_RideCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideCategory &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
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
  int get hashCode => Object.hash(runtimeType, countryId, cityId, name,
      isActive, isDeleted, createdAt, updatedAt, id);

  @override
  String toString() {
    return 'RideCategory(countryId: $countryId, cityId: $cityId, name: $name, isActive: $isActive, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$RideCategoryCopyWith<$Res>
    implements $RideCategoryCopyWith<$Res> {
  factory _$RideCategoryCopyWith(
          _RideCategory value, $Res Function(_RideCategory) _then) =
      __$RideCategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "country_id") String? countryId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "id") String? id});
}

/// @nodoc
class __$RideCategoryCopyWithImpl<$Res>
    implements _$RideCategoryCopyWith<$Res> {
  __$RideCategoryCopyWithImpl(this._self, this._then);

  final _RideCategory _self;
  final $Res Function(_RideCategory) _then;

  /// Create a copy of RideCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? name = freezed,
    Object? isActive = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_RideCategory(
      countryId: freezed == countryId
          ? _self.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
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
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
