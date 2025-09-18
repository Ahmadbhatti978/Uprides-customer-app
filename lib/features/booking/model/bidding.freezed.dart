// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bidding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Bidding {
  @JsonKey(name: "ride_id")
  String? get rideId;
  @JsonKey(name: "status")
  String? get status;

  /// Create a copy of Bidding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BiddingCopyWith<Bidding> get copyWith =>
      _$BiddingCopyWithImpl<Bidding>(this as Bidding, _$identity);

  /// Serializes this Bidding to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Bidding &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideId, status);

  @override
  String toString() {
    return 'Bidding(rideId: $rideId, status: $status)';
  }
}

/// @nodoc
abstract mixin class $BiddingCopyWith<$Res> {
  factory $BiddingCopyWith(Bidding value, $Res Function(Bidding) _then) =
      _$BiddingCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "ride_id") String? rideId,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class _$BiddingCopyWithImpl<$Res> implements $BiddingCopyWith<$Res> {
  _$BiddingCopyWithImpl(this._self, this._then);

  final Bidding _self;
  final $Res Function(Bidding) _then;

  /// Create a copy of Bidding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = freezed,
    Object? status = freezed,
  }) {
    return _then(_self.copyWith(
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Bidding].
extension BiddingPatterns on Bidding {
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
    TResult Function(_Bidding value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Bidding() when $default != null:
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
    TResult Function(_Bidding value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Bidding():
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
    TResult? Function(_Bidding value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Bidding() when $default != null:
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
    TResult Function(@JsonKey(name: "ride_id") String? rideId,
            @JsonKey(name: "status") String? status)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Bidding() when $default != null:
        return $default(_that.rideId, _that.status);
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
    TResult Function(@JsonKey(name: "ride_id") String? rideId,
            @JsonKey(name: "status") String? status)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Bidding():
        return $default(_that.rideId, _that.status);
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
    TResult? Function(@JsonKey(name: "ride_id") String? rideId,
            @JsonKey(name: "status") String? status)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Bidding() when $default != null:
        return $default(_that.rideId, _that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Bidding implements Bidding {
  const _Bidding(
      {@JsonKey(name: "ride_id") this.rideId,
      @JsonKey(name: "status") this.status});
  factory _Bidding.fromJson(Map<String, dynamic> json) =>
      _$BiddingFromJson(json);

  @override
  @JsonKey(name: "ride_id")
  final String? rideId;
  @override
  @JsonKey(name: "status")
  final String? status;

  /// Create a copy of Bidding
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BiddingCopyWith<_Bidding> get copyWith =>
      __$BiddingCopyWithImpl<_Bidding>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BiddingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Bidding &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideId, status);

  @override
  String toString() {
    return 'Bidding(rideId: $rideId, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$BiddingCopyWith<$Res> implements $BiddingCopyWith<$Res> {
  factory _$BiddingCopyWith(_Bidding value, $Res Function(_Bidding) _then) =
      __$BiddingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ride_id") String? rideId,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class __$BiddingCopyWithImpl<$Res> implements _$BiddingCopyWith<$Res> {
  __$BiddingCopyWithImpl(this._self, this._then);

  final _Bidding _self;
  final $Res Function(_Bidding) _then;

  /// Create a copy of Bidding
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rideId = freezed,
    Object? status = freezed,
  }) {
    return _then(_Bidding(
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
