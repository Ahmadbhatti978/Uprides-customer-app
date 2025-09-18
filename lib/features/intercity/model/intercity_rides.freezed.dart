// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intercity_rides.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IntercityRides {
  @JsonKey(name: 'exactDateRides')
  List<IRide>? get exactDateRides;
  @JsonKey(name: 'matchingRides')
  List<IRide>? get matchingRides;

  /// Create a copy of IntercityRides
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntercityRidesCopyWith<IntercityRides> get copyWith =>
      _$IntercityRidesCopyWithImpl<IntercityRides>(
          this as IntercityRides, _$identity);

  /// Serializes this IntercityRides to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntercityRides &&
            const DeepCollectionEquality()
                .equals(other.exactDateRides, exactDateRides) &&
            const DeepCollectionEquality()
                .equals(other.matchingRides, matchingRides));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exactDateRides),
      const DeepCollectionEquality().hash(matchingRides));

  @override
  String toString() {
    return 'IntercityRides(exactDateRides: $exactDateRides, matchingRides: $matchingRides)';
  }
}

/// @nodoc
abstract mixin class $IntercityRidesCopyWith<$Res> {
  factory $IntercityRidesCopyWith(
          IntercityRides value, $Res Function(IntercityRides) _then) =
      _$IntercityRidesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'exactDateRides') List<IRide>? exactDateRides,
      @JsonKey(name: 'matchingRides') List<IRide>? matchingRides});
}

/// @nodoc
class _$IntercityRidesCopyWithImpl<$Res>
    implements $IntercityRidesCopyWith<$Res> {
  _$IntercityRidesCopyWithImpl(this._self, this._then);

  final IntercityRides _self;
  final $Res Function(IntercityRides) _then;

  /// Create a copy of IntercityRides
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exactDateRides = freezed,
    Object? matchingRides = freezed,
  }) {
    return _then(_self.copyWith(
      exactDateRides: freezed == exactDateRides
          ? _self.exactDateRides
          : exactDateRides // ignore: cast_nullable_to_non_nullable
              as List<IRide>?,
      matchingRides: freezed == matchingRides
          ? _self.matchingRides
          : matchingRides // ignore: cast_nullable_to_non_nullable
              as List<IRide>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [IntercityRides].
extension IntercityRidesPatterns on IntercityRides {
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
    TResult Function(_IntercityRides value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IntercityRides() when $default != null:
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
    TResult Function(_IntercityRides value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntercityRides():
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
    TResult? Function(_IntercityRides value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntercityRides() when $default != null:
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
            @JsonKey(name: 'exactDateRides') List<IRide>? exactDateRides,
            @JsonKey(name: 'matchingRides') List<IRide>? matchingRides)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IntercityRides() when $default != null:
        return $default(_that.exactDateRides, _that.matchingRides);
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
            @JsonKey(name: 'exactDateRides') List<IRide>? exactDateRides,
            @JsonKey(name: 'matchingRides') List<IRide>? matchingRides)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntercityRides():
        return $default(_that.exactDateRides, _that.matchingRides);
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
            @JsonKey(name: 'exactDateRides') List<IRide>? exactDateRides,
            @JsonKey(name: 'matchingRides') List<IRide>? matchingRides)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntercityRides() when $default != null:
        return $default(_that.exactDateRides, _that.matchingRides);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _IntercityRides implements IntercityRides {
  const _IntercityRides(
      {@JsonKey(name: 'exactDateRides') final List<IRide>? exactDateRides,
      @JsonKey(name: 'matchingRides') final List<IRide>? matchingRides})
      : _exactDateRides = exactDateRides,
        _matchingRides = matchingRides;
  factory _IntercityRides.fromJson(Map<String, dynamic> json) =>
      _$IntercityRidesFromJson(json);

  final List<IRide>? _exactDateRides;
  @override
  @JsonKey(name: 'exactDateRides')
  List<IRide>? get exactDateRides {
    final value = _exactDateRides;
    if (value == null) return null;
    if (_exactDateRides is EqualUnmodifiableListView) return _exactDateRides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<IRide>? _matchingRides;
  @override
  @JsonKey(name: 'matchingRides')
  List<IRide>? get matchingRides {
    final value = _matchingRides;
    if (value == null) return null;
    if (_matchingRides is EqualUnmodifiableListView) return _matchingRides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of IntercityRides
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntercityRidesCopyWith<_IntercityRides> get copyWith =>
      __$IntercityRidesCopyWithImpl<_IntercityRides>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntercityRidesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntercityRides &&
            const DeepCollectionEquality()
                .equals(other._exactDateRides, _exactDateRides) &&
            const DeepCollectionEquality()
                .equals(other._matchingRides, _matchingRides));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exactDateRides),
      const DeepCollectionEquality().hash(_matchingRides));

  @override
  String toString() {
    return 'IntercityRides(exactDateRides: $exactDateRides, matchingRides: $matchingRides)';
  }
}

/// @nodoc
abstract mixin class _$IntercityRidesCopyWith<$Res>
    implements $IntercityRidesCopyWith<$Res> {
  factory _$IntercityRidesCopyWith(
          _IntercityRides value, $Res Function(_IntercityRides) _then) =
      __$IntercityRidesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'exactDateRides') List<IRide>? exactDateRides,
      @JsonKey(name: 'matchingRides') List<IRide>? matchingRides});
}

/// @nodoc
class __$IntercityRidesCopyWithImpl<$Res>
    implements _$IntercityRidesCopyWith<$Res> {
  __$IntercityRidesCopyWithImpl(this._self, this._then);

  final _IntercityRides _self;
  final $Res Function(_IntercityRides) _then;

  /// Create a copy of IntercityRides
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? exactDateRides = freezed,
    Object? matchingRides = freezed,
  }) {
    return _then(_IntercityRides(
      exactDateRides: freezed == exactDateRides
          ? _self._exactDateRides
          : exactDateRides // ignore: cast_nullable_to_non_nullable
              as List<IRide>?,
      matchingRides: freezed == matchingRides
          ? _self._matchingRides
          : matchingRides // ignore: cast_nullable_to_non_nullable
              as List<IRide>?,
    ));
  }
}

// dart format on
