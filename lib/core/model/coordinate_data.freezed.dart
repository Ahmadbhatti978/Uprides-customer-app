// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoordinateData {
  int get index;
  DateTime get time;
  int get polyIndex;

  /// Create a copy of CoordinateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoordinateDataCopyWith<CoordinateData> get copyWith =>
      _$CoordinateDataCopyWithImpl<CoordinateData>(
          this as CoordinateData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoordinateData &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.polyIndex, polyIndex) ||
                other.polyIndex == polyIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, time, polyIndex);

  @override
  String toString() {
    return 'CoordinateData(index: $index, time: $time, polyIndex: $polyIndex)';
  }
}

/// @nodoc
abstract mixin class $CoordinateDataCopyWith<$Res> {
  factory $CoordinateDataCopyWith(
          CoordinateData value, $Res Function(CoordinateData) _then) =
      _$CoordinateDataCopyWithImpl;
  @useResult
  $Res call({int index, DateTime time, int polyIndex});
}

/// @nodoc
class _$CoordinateDataCopyWithImpl<$Res>
    implements $CoordinateDataCopyWith<$Res> {
  _$CoordinateDataCopyWithImpl(this._self, this._then);

  final CoordinateData _self;
  final $Res Function(CoordinateData) _then;

  /// Create a copy of CoordinateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? time = null,
    Object? polyIndex = null,
  }) {
    return _then(_self.copyWith(
      index: null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      polyIndex: null == polyIndex
          ? _self.polyIndex
          : polyIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [CoordinateData].
extension CoordinateDataPatterns on CoordinateData {
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
    TResult Function(_CoordinateData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoordinateData() when $default != null:
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
    TResult Function(_CoordinateData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoordinateData():
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
    TResult? Function(_CoordinateData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoordinateData() when $default != null:
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
    TResult Function(int index, DateTime time, int polyIndex)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoordinateData() when $default != null:
        return $default(_that.index, _that.time, _that.polyIndex);
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
    TResult Function(int index, DateTime time, int polyIndex) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoordinateData():
        return $default(_that.index, _that.time, _that.polyIndex);
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
    TResult? Function(int index, DateTime time, int polyIndex)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoordinateData() when $default != null:
        return $default(_that.index, _that.time, _that.polyIndex);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CoordinateData implements CoordinateData {
  const _CoordinateData(
      {required this.index, required this.time, required this.polyIndex});

  @override
  final int index;
  @override
  final DateTime time;
  @override
  final int polyIndex;

  /// Create a copy of CoordinateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoordinateDataCopyWith<_CoordinateData> get copyWith =>
      __$CoordinateDataCopyWithImpl<_CoordinateData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoordinateData &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.polyIndex, polyIndex) ||
                other.polyIndex == polyIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, time, polyIndex);

  @override
  String toString() {
    return 'CoordinateData(index: $index, time: $time, polyIndex: $polyIndex)';
  }
}

/// @nodoc
abstract mixin class _$CoordinateDataCopyWith<$Res>
    implements $CoordinateDataCopyWith<$Res> {
  factory _$CoordinateDataCopyWith(
          _CoordinateData value, $Res Function(_CoordinateData) _then) =
      __$CoordinateDataCopyWithImpl;
  @override
  @useResult
  $Res call({int index, DateTime time, int polyIndex});
}

/// @nodoc
class __$CoordinateDataCopyWithImpl<$Res>
    implements _$CoordinateDataCopyWith<$Res> {
  __$CoordinateDataCopyWithImpl(this._self, this._then);

  final _CoordinateData _self;
  final $Res Function(_CoordinateData) _then;

  /// Create a copy of CoordinateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
    Object? time = null,
    Object? polyIndex = null,
  }) {
    return _then(_CoordinateData(
      index: null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      polyIndex: null == polyIndex
          ? _self.polyIndex
          : polyIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
