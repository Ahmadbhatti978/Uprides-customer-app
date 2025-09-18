// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stops_eta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StopsEta {
  @JsonKey(name: "stop")
  Coordinate? get stop;
  @JsonKey(name: "eta_seconds")
  int? get etaSeconds;
  @JsonKey(name: "_id")
  String? get id;
  @JsonKey(name: "id")
  String? get stopsEtaId;

  /// Create a copy of StopsEta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StopsEtaCopyWith<StopsEta> get copyWith =>
      _$StopsEtaCopyWithImpl<StopsEta>(this as StopsEta, _$identity);

  /// Serializes this StopsEta to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StopsEta &&
            (identical(other.stop, stop) || other.stop == stop) &&
            (identical(other.etaSeconds, etaSeconds) ||
                other.etaSeconds == etaSeconds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stopsEtaId, stopsEtaId) ||
                other.stopsEtaId == stopsEtaId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stop, etaSeconds, id, stopsEtaId);

  @override
  String toString() {
    return 'StopsEta(stop: $stop, etaSeconds: $etaSeconds, id: $id, stopsEtaId: $stopsEtaId)';
  }
}

/// @nodoc
abstract mixin class $StopsEtaCopyWith<$Res> {
  factory $StopsEtaCopyWith(StopsEta value, $Res Function(StopsEta) _then) =
      _$StopsEtaCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "stop") Coordinate? stop,
      @JsonKey(name: "eta_seconds") int? etaSeconds,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "id") String? stopsEtaId});

  $CoordinateCopyWith<$Res>? get stop;
}

/// @nodoc
class _$StopsEtaCopyWithImpl<$Res> implements $StopsEtaCopyWith<$Res> {
  _$StopsEtaCopyWithImpl(this._self, this._then);

  final StopsEta _self;
  final $Res Function(StopsEta) _then;

  /// Create a copy of StopsEta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stop = freezed,
    Object? etaSeconds = freezed,
    Object? id = freezed,
    Object? stopsEtaId = freezed,
  }) {
    return _then(_self.copyWith(
      stop: freezed == stop
          ? _self.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      etaSeconds: freezed == etaSeconds
          ? _self.etaSeconds
          : etaSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      stopsEtaId: freezed == stopsEtaId
          ? _self.stopsEtaId
          : stopsEtaId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StopsEta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get stop {
    if (_self.stop == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.stop!, (value) {
      return _then(_self.copyWith(stop: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StopsEta].
extension StopsEtaPatterns on StopsEta {
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
    TResult Function(_StopsEta value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StopsEta() when $default != null:
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
    TResult Function(_StopsEta value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StopsEta():
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
    TResult? Function(_StopsEta value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StopsEta() when $default != null:
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
            @JsonKey(name: "stop") Coordinate? stop,
            @JsonKey(name: "eta_seconds") int? etaSeconds,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "id") String? stopsEtaId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StopsEta() when $default != null:
        return $default(
            _that.stop, _that.etaSeconds, _that.id, _that.stopsEtaId);
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
            @JsonKey(name: "stop") Coordinate? stop,
            @JsonKey(name: "eta_seconds") int? etaSeconds,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "id") String? stopsEtaId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StopsEta():
        return $default(
            _that.stop, _that.etaSeconds, _that.id, _that.stopsEtaId);
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
            @JsonKey(name: "stop") Coordinate? stop,
            @JsonKey(name: "eta_seconds") int? etaSeconds,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "id") String? stopsEtaId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StopsEta() when $default != null:
        return $default(
            _that.stop, _that.etaSeconds, _that.id, _that.stopsEtaId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StopsEta implements StopsEta {
  const _StopsEta(
      {@JsonKey(name: "stop") this.stop,
      @JsonKey(name: "eta_seconds") this.etaSeconds,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "id") this.stopsEtaId});
  factory _StopsEta.fromJson(Map<String, dynamic> json) =>
      _$StopsEtaFromJson(json);

  @override
  @JsonKey(name: "stop")
  final Coordinate? stop;
  @override
  @JsonKey(name: "eta_seconds")
  final int? etaSeconds;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "id")
  final String? stopsEtaId;

  /// Create a copy of StopsEta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StopsEtaCopyWith<_StopsEta> get copyWith =>
      __$StopsEtaCopyWithImpl<_StopsEta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StopsEtaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StopsEta &&
            (identical(other.stop, stop) || other.stop == stop) &&
            (identical(other.etaSeconds, etaSeconds) ||
                other.etaSeconds == etaSeconds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stopsEtaId, stopsEtaId) ||
                other.stopsEtaId == stopsEtaId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stop, etaSeconds, id, stopsEtaId);

  @override
  String toString() {
    return 'StopsEta(stop: $stop, etaSeconds: $etaSeconds, id: $id, stopsEtaId: $stopsEtaId)';
  }
}

/// @nodoc
abstract mixin class _$StopsEtaCopyWith<$Res>
    implements $StopsEtaCopyWith<$Res> {
  factory _$StopsEtaCopyWith(_StopsEta value, $Res Function(_StopsEta) _then) =
      __$StopsEtaCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "stop") Coordinate? stop,
      @JsonKey(name: "eta_seconds") int? etaSeconds,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "id") String? stopsEtaId});

  @override
  $CoordinateCopyWith<$Res>? get stop;
}

/// @nodoc
class __$StopsEtaCopyWithImpl<$Res> implements _$StopsEtaCopyWith<$Res> {
  __$StopsEtaCopyWithImpl(this._self, this._then);

  final _StopsEta _self;
  final $Res Function(_StopsEta) _then;

  /// Create a copy of StopsEta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stop = freezed,
    Object? etaSeconds = freezed,
    Object? id = freezed,
    Object? stopsEtaId = freezed,
  }) {
    return _then(_StopsEta(
      stop: freezed == stop
          ? _self.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      etaSeconds: freezed == etaSeconds
          ? _self.etaSeconds
          : etaSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      stopsEtaId: freezed == stopsEtaId
          ? _self.stopsEtaId
          : stopsEtaId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StopsEta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get stop {
    if (_self.stop == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.stop!, (value) {
      return _then(_self.copyWith(stop: value));
    });
  }
}

// dart format on
