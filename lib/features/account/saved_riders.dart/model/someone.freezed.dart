// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'someone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Someone {
  bool? get success;
  String? get message;
  List<Rider>? get riders;
  int? get statusCode;
  String? get originalError;
  int? get page;
  int? get limit;
  int? get totalPages;
  int? get totalResults;
  bool? get isNextPage;
  bool? get isPreviousPage;

  /// Create a copy of Someone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SomeoneCopyWith<Someone> get copyWith =>
      _$SomeoneCopyWithImpl<Someone>(this as Someone, _$identity);

  /// Serializes this Someone to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Someone &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.riders, riders) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.originalError, originalError) ||
                other.originalError == originalError) &&
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
      success,
      message,
      const DeepCollectionEquality().hash(riders),
      statusCode,
      originalError,
      page,
      limit,
      totalPages,
      totalResults,
      isNextPage,
      isPreviousPage);

  @override
  String toString() {
    return 'Someone(success: $success, message: $message, riders: $riders, statusCode: $statusCode, originalError: $originalError, page: $page, limit: $limit, totalPages: $totalPages, totalResults: $totalResults, isNextPage: $isNextPage, isPreviousPage: $isPreviousPage)';
  }
}

/// @nodoc
abstract mixin class $SomeoneCopyWith<$Res> {
  factory $SomeoneCopyWith(Someone value, $Res Function(Someone) _then) =
      _$SomeoneCopyWithImpl;
  @useResult
  $Res call(
      {bool? success,
      String? message,
      List<Rider>? riders,
      int? statusCode,
      String? originalError,
      int? page,
      int? limit,
      int? totalPages,
      int? totalResults,
      bool? isNextPage,
      bool? isPreviousPage});
}

/// @nodoc
class _$SomeoneCopyWithImpl<$Res> implements $SomeoneCopyWith<$Res> {
  _$SomeoneCopyWithImpl(this._self, this._then);

  final Someone _self;
  final $Res Function(Someone) _then;

  /// Create a copy of Someone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? riders = freezed,
    Object? statusCode = freezed,
    Object? originalError = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? isNextPage = freezed,
    Object? isPreviousPage = freezed,
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
      riders: freezed == riders
          ? _self.riders
          : riders // ignore: cast_nullable_to_non_nullable
              as List<Rider>?,
      statusCode: freezed == statusCode
          ? _self.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      originalError: freezed == originalError
          ? _self.originalError
          : originalError // ignore: cast_nullable_to_non_nullable
              as String?,
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

/// Adds pattern-matching-related methods to [Someone].
extension SomeonePatterns on Someone {
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
    TResult Function(_Someone value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Someone() when $default != null:
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
    TResult Function(_Someone value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Someone():
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
    TResult? Function(_Someone value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Someone() when $default != null:
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
            bool? success,
            String? message,
            List<Rider>? riders,
            int? statusCode,
            String? originalError,
            int? page,
            int? limit,
            int? totalPages,
            int? totalResults,
            bool? isNextPage,
            bool? isPreviousPage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Someone() when $default != null:
        return $default(
            _that.success,
            _that.message,
            _that.riders,
            _that.statusCode,
            _that.originalError,
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
            bool? success,
            String? message,
            List<Rider>? riders,
            int? statusCode,
            String? originalError,
            int? page,
            int? limit,
            int? totalPages,
            int? totalResults,
            bool? isNextPage,
            bool? isPreviousPage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Someone():
        return $default(
            _that.success,
            _that.message,
            _that.riders,
            _that.statusCode,
            _that.originalError,
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
            bool? success,
            String? message,
            List<Rider>? riders,
            int? statusCode,
            String? originalError,
            int? page,
            int? limit,
            int? totalPages,
            int? totalResults,
            bool? isNextPage,
            bool? isPreviousPage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Someone() when $default != null:
        return $default(
            _that.success,
            _that.message,
            _that.riders,
            _that.statusCode,
            _that.originalError,
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
class _Someone implements Someone {
  const _Someone(
      {this.success,
      this.message,
      final List<Rider>? riders,
      this.statusCode,
      this.originalError,
      this.page,
      this.limit,
      this.totalPages,
      this.totalResults,
      this.isNextPage,
      this.isPreviousPage})
      : _riders = riders;
  factory _Someone.fromJson(Map<String, dynamic> json) =>
      _$SomeoneFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  final List<Rider>? _riders;
  @override
  List<Rider>? get riders {
    final value = _riders;
    if (value == null) return null;
    if (_riders is EqualUnmodifiableListView) return _riders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? statusCode;
  @override
  final String? originalError;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final int? totalPages;
  @override
  final int? totalResults;
  @override
  final bool? isNextPage;
  @override
  final bool? isPreviousPage;

  /// Create a copy of Someone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SomeoneCopyWith<_Someone> get copyWith =>
      __$SomeoneCopyWithImpl<_Someone>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SomeoneToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Someone &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._riders, _riders) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.originalError, originalError) ||
                other.originalError == originalError) &&
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
      success,
      message,
      const DeepCollectionEquality().hash(_riders),
      statusCode,
      originalError,
      page,
      limit,
      totalPages,
      totalResults,
      isNextPage,
      isPreviousPage);

  @override
  String toString() {
    return 'Someone(success: $success, message: $message, riders: $riders, statusCode: $statusCode, originalError: $originalError, page: $page, limit: $limit, totalPages: $totalPages, totalResults: $totalResults, isNextPage: $isNextPage, isPreviousPage: $isPreviousPage)';
  }
}

/// @nodoc
abstract mixin class _$SomeoneCopyWith<$Res> implements $SomeoneCopyWith<$Res> {
  factory _$SomeoneCopyWith(_Someone value, $Res Function(_Someone) _then) =
      __$SomeoneCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? success,
      String? message,
      List<Rider>? riders,
      int? statusCode,
      String? originalError,
      int? page,
      int? limit,
      int? totalPages,
      int? totalResults,
      bool? isNextPage,
      bool? isPreviousPage});
}

/// @nodoc
class __$SomeoneCopyWithImpl<$Res> implements _$SomeoneCopyWith<$Res> {
  __$SomeoneCopyWithImpl(this._self, this._then);

  final _Someone _self;
  final $Res Function(_Someone) _then;

  /// Create a copy of Someone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? riders = freezed,
    Object? statusCode = freezed,
    Object? originalError = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? isNextPage = freezed,
    Object? isPreviousPage = freezed,
  }) {
    return _then(_Someone(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      riders: freezed == riders
          ? _self._riders
          : riders // ignore: cast_nullable_to_non_nullable
              as List<Rider>?,
      statusCode: freezed == statusCode
          ? _self.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      originalError: freezed == originalError
          ? _self.originalError
          : originalError // ignore: cast_nullable_to_non_nullable
              as String?,
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

// dart format on
