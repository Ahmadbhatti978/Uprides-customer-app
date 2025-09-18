// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Stop {
  @JsonKey(name: "type")
  String? get type;
  @JsonKey(name: "coordinates")
  List<double>? get coordinates;
  @JsonKey(name: "_id")
  String? get id;
  @JsonKey(name: "id")
  String? get stopId;

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StopCopyWith<Stop> get copyWith =>
      _$StopCopyWithImpl<Stop>(this as Stop, _$identity);

  /// Serializes this Stop to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Stop &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.coordinates, coordinates) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stopId, stopId) || other.stopId == stopId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(coordinates), id, stopId);

  @override
  String toString() {
    return 'Stop(type: $type, coordinates: $coordinates, id: $id, stopId: $stopId)';
  }
}

/// @nodoc
abstract mixin class $StopCopyWith<$Res> {
  factory $StopCopyWith(Stop value, $Res Function(Stop) _then) =
      _$StopCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "coordinates") List<double>? coordinates,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "id") String? stopId});
}

/// @nodoc
class _$StopCopyWithImpl<$Res> implements $StopCopyWith<$Res> {
  _$StopCopyWithImpl(this._self, this._then);

  final Stop _self;
  final $Res Function(Stop) _then;

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
    Object? id = freezed,
    Object? stopId = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _self.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      stopId: freezed == stopId
          ? _self.stopId
          : stopId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Stop].
extension StopPatterns on Stop {
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
    TResult Function(_Stop value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Stop() when $default != null:
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
    TResult Function(_Stop value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stop():
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
    TResult? Function(_Stop value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stop() when $default != null:
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
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "coordinates") List<double>? coordinates,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "id") String? stopId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Stop() when $default != null:
        return $default(_that.type, _that.coordinates, _that.id, _that.stopId);
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
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "coordinates") List<double>? coordinates,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "id") String? stopId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stop():
        return $default(_that.type, _that.coordinates, _that.id, _that.stopId);
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
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "coordinates") List<double>? coordinates,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "id") String? stopId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stop() when $default != null:
        return $default(_that.type, _that.coordinates, _that.id, _that.stopId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Stop implements Stop {
  const _Stop(
      {@JsonKey(name: "type") this.type,
      @JsonKey(name: "coordinates") final List<double>? coordinates,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "id") this.stopId})
      : _coordinates = coordinates;
  factory _Stop.fromJson(Map<String, dynamic> json) => _$StopFromJson(json);

  @override
  @JsonKey(name: "type")
  final String? type;
  final List<double>? _coordinates;
  @override
  @JsonKey(name: "coordinates")
  List<double>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "id")
  final String? stopId;

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StopCopyWith<_Stop> get copyWith =>
      __$StopCopyWithImpl<_Stop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StopToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Stop &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stopId, stopId) || other.stopId == stopId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(_coordinates), id, stopId);

  @override
  String toString() {
    return 'Stop(type: $type, coordinates: $coordinates, id: $id, stopId: $stopId)';
  }
}

/// @nodoc
abstract mixin class _$StopCopyWith<$Res> implements $StopCopyWith<$Res> {
  factory _$StopCopyWith(_Stop value, $Res Function(_Stop) _then) =
      __$StopCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "coordinates") List<double>? coordinates,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "id") String? stopId});
}

/// @nodoc
class __$StopCopyWithImpl<$Res> implements _$StopCopyWith<$Res> {
  __$StopCopyWithImpl(this._self, this._then);

  final _Stop _self;
  final $Res Function(_Stop) _then;

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
    Object? id = freezed,
    Object? stopId = freezed,
  }) {
    return _then(_Stop(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _self._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      stopId: freezed == stopId
          ? _self.stopId
          : stopId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
