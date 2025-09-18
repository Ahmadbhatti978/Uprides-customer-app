// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'optimized_stop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OptimizedStop {
  @JsonKey(name: 'location')
  Coordinate? get location;
  @JsonKey(name: 'order')
  int? get order;
  @JsonKey(name: 'address')
  String? get address;
  @JsonKey(name: '_id')
  String? get id;
  @JsonKey(name: 'id')
  String? get optimizedStopId;

  /// Create a copy of OptimizedStop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OptimizedStopCopyWith<OptimizedStop> get copyWith =>
      _$OptimizedStopCopyWithImpl<OptimizedStop>(
          this as OptimizedStop, _$identity);

  /// Serializes this OptimizedStop to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OptimizedStop &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.optimizedStopId, optimizedStopId) ||
                other.optimizedStopId == optimizedStopId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, location, order, address, id, optimizedStopId);

  @override
  String toString() {
    return 'OptimizedStop(location: $location, order: $order, address: $address, id: $id, optimizedStopId: $optimizedStopId)';
  }
}

/// @nodoc
abstract mixin class $OptimizedStopCopyWith<$Res> {
  factory $OptimizedStopCopyWith(
          OptimizedStop value, $Res Function(OptimizedStop) _then) =
      _$OptimizedStopCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'location') Coordinate? location,
      @JsonKey(name: 'order') int? order,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: '_id') String? id,
      @JsonKey(name: 'id') String? optimizedStopId});

  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class _$OptimizedStopCopyWithImpl<$Res>
    implements $OptimizedStopCopyWith<$Res> {
  _$OptimizedStopCopyWithImpl(this._self, this._then);

  final OptimizedStop _self;
  final $Res Function(OptimizedStop) _then;

  /// Create a copy of OptimizedStop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? order = freezed,
    Object? address = freezed,
    Object? id = freezed,
    Object? optimizedStopId = freezed,
  }) {
    return _then(_self.copyWith(
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      order: freezed == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      optimizedStopId: freezed == optimizedStopId
          ? _self.optimizedStopId
          : optimizedStopId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of OptimizedStop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OptimizedStop].
extension OptimizedStopPatterns on OptimizedStop {
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
    TResult Function(_OptimizedStop value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OptimizedStop() when $default != null:
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
    TResult Function(_OptimizedStop value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OptimizedStop():
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
    TResult? Function(_OptimizedStop value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OptimizedStop() when $default != null:
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
            @JsonKey(name: 'location') Coordinate? location,
            @JsonKey(name: 'order') int? order,
            @JsonKey(name: 'address') String? address,
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'id') String? optimizedStopId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OptimizedStop() when $default != null:
        return $default(_that.location, _that.order, _that.address, _that.id,
            _that.optimizedStopId);
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
            @JsonKey(name: 'location') Coordinate? location,
            @JsonKey(name: 'order') int? order,
            @JsonKey(name: 'address') String? address,
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'id') String? optimizedStopId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OptimizedStop():
        return $default(_that.location, _that.order, _that.address, _that.id,
            _that.optimizedStopId);
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
            @JsonKey(name: 'location') Coordinate? location,
            @JsonKey(name: 'order') int? order,
            @JsonKey(name: 'address') String? address,
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'id') String? optimizedStopId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OptimizedStop() when $default != null:
        return $default(_that.location, _that.order, _that.address, _that.id,
            _that.optimizedStopId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OptimizedStop implements OptimizedStop {
  const _OptimizedStop(
      {@JsonKey(name: 'location') this.location,
      @JsonKey(name: 'order') this.order,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: '_id') this.id,
      @JsonKey(name: 'id') this.optimizedStopId});
  factory _OptimizedStop.fromJson(Map<String, dynamic> json) =>
      _$OptimizedStopFromJson(json);

  @override
  @JsonKey(name: 'location')
  final Coordinate? location;
  @override
  @JsonKey(name: 'order')
  final int? order;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'id')
  final String? optimizedStopId;

  /// Create a copy of OptimizedStop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OptimizedStopCopyWith<_OptimizedStop> get copyWith =>
      __$OptimizedStopCopyWithImpl<_OptimizedStop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OptimizedStopToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OptimizedStop &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.optimizedStopId, optimizedStopId) ||
                other.optimizedStopId == optimizedStopId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, location, order, address, id, optimizedStopId);

  @override
  String toString() {
    return 'OptimizedStop(location: $location, order: $order, address: $address, id: $id, optimizedStopId: $optimizedStopId)';
  }
}

/// @nodoc
abstract mixin class _$OptimizedStopCopyWith<$Res>
    implements $OptimizedStopCopyWith<$Res> {
  factory _$OptimizedStopCopyWith(
          _OptimizedStop value, $Res Function(_OptimizedStop) _then) =
      __$OptimizedStopCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'location') Coordinate? location,
      @JsonKey(name: 'order') int? order,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: '_id') String? id,
      @JsonKey(name: 'id') String? optimizedStopId});

  @override
  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class __$OptimizedStopCopyWithImpl<$Res>
    implements _$OptimizedStopCopyWith<$Res> {
  __$OptimizedStopCopyWithImpl(this._self, this._then);

  final _OptimizedStop _self;
  final $Res Function(_OptimizedStop) _then;

  /// Create a copy of OptimizedStop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? location = freezed,
    Object? order = freezed,
    Object? address = freezed,
    Object? id = freezed,
    Object? optimizedStopId = freezed,
  }) {
    return _then(_OptimizedStop(
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      order: freezed == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      optimizedStopId: freezed == optimizedStopId
          ? _self.optimizedStopId
          : optimizedStopId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of OptimizedStop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

// dart format on
