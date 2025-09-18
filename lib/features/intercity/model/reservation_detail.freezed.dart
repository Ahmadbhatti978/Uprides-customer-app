// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReservationDetail {
  @JsonKey(name: 'details')
  Details? get details;

  /// Create a copy of ReservationDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReservationDetailCopyWith<ReservationDetail> get copyWith =>
      _$ReservationDetailCopyWithImpl<ReservationDetail>(
          this as ReservationDetail, _$identity);

  /// Serializes this ReservationDetail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReservationDetail &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, details);

  @override
  String toString() {
    return 'ReservationDetail(details: $details)';
  }
}

/// @nodoc
abstract mixin class $ReservationDetailCopyWith<$Res> {
  factory $ReservationDetailCopyWith(
          ReservationDetail value, $Res Function(ReservationDetail) _then) =
      _$ReservationDetailCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'details') Details? details});

  $DetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$ReservationDetailCopyWithImpl<$Res>
    implements $ReservationDetailCopyWith<$Res> {
  _$ReservationDetailCopyWithImpl(this._self, this._then);

  final ReservationDetail _self;
  final $Res Function(ReservationDetail) _then;

  /// Create a copy of ReservationDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_self.copyWith(
      details: freezed == details
          ? _self.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
    ));
  }

  /// Create a copy of ReservationDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
      return null;
    }

    return $DetailsCopyWith<$Res>(_self.details!, (value) {
      return _then(_self.copyWith(details: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReservationDetail].
extension ReservationDetailPatterns on ReservationDetail {
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
    TResult Function(_ReservationDetail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReservationDetail() when $default != null:
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
    TResult Function(_ReservationDetail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReservationDetail():
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
    TResult? Function(_ReservationDetail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReservationDetail() when $default != null:
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
    TResult Function(@JsonKey(name: 'details') Details? details)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReservationDetail() when $default != null:
        return $default(_that.details);
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
    TResult Function(@JsonKey(name: 'details') Details? details) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReservationDetail():
        return $default(_that.details);
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
    TResult? Function(@JsonKey(name: 'details') Details? details)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReservationDetail() when $default != null:
        return $default(_that.details);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReservationDetail implements ReservationDetail {
  const _ReservationDetail({@JsonKey(name: 'details') this.details});
  factory _ReservationDetail.fromJson(Map<String, dynamic> json) =>
      _$ReservationDetailFromJson(json);

  @override
  @JsonKey(name: 'details')
  final Details? details;

  /// Create a copy of ReservationDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReservationDetailCopyWith<_ReservationDetail> get copyWith =>
      __$ReservationDetailCopyWithImpl<_ReservationDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReservationDetailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReservationDetail &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, details);

  @override
  String toString() {
    return 'ReservationDetail(details: $details)';
  }
}

/// @nodoc
abstract mixin class _$ReservationDetailCopyWith<$Res>
    implements $ReservationDetailCopyWith<$Res> {
  factory _$ReservationDetailCopyWith(
          _ReservationDetail value, $Res Function(_ReservationDetail) _then) =
      __$ReservationDetailCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'details') Details? details});

  @override
  $DetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$ReservationDetailCopyWithImpl<$Res>
    implements _$ReservationDetailCopyWith<$Res> {
  __$ReservationDetailCopyWithImpl(this._self, this._then);

  final _ReservationDetail _self;
  final $Res Function(_ReservationDetail) _then;

  /// Create a copy of ReservationDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_ReservationDetail(
      details: freezed == details
          ? _self.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
    ));
  }

  /// Create a copy of ReservationDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
      return null;
    }

    return $DetailsCopyWith<$Res>(_self.details!, (value) {
      return _then(_self.copyWith(details: value));
    });
  }
}

/// @nodoc
mixin _$Details {
  @JsonKey(name: 'ride')
  IRide? get ride;
  @JsonKey(name: 'ticket_id')
  String? get ticketId;
  @JsonKey(name: 'boardingStatus')
  String? get boardingStatus;
  @JsonKey(name: 'plusPassnegers')
  int? get plusPassnegers;

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DetailsCopyWith<Details> get copyWith =>
      _$DetailsCopyWithImpl<Details>(this as Details, _$identity);

  /// Serializes this Details to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Details &&
            (identical(other.ride, ride) || other.ride == ride) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.boardingStatus, boardingStatus) ||
                other.boardingStatus == boardingStatus) &&
            (identical(other.plusPassnegers, plusPassnegers) ||
                other.plusPassnegers == plusPassnegers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ride, ticketId, boardingStatus, plusPassnegers);

  @override
  String toString() {
    return 'Details(ride: $ride, ticketId: $ticketId, boardingStatus: $boardingStatus, plusPassnegers: $plusPassnegers)';
  }
}

/// @nodoc
abstract mixin class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) _then) =
      _$DetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'ride') IRide? ride,
      @JsonKey(name: 'ticket_id') String? ticketId,
      @JsonKey(name: 'boardingStatus') String? boardingStatus,
      @JsonKey(name: 'plusPassnegers') int? plusPassnegers});

  $IRideCopyWith<$Res>? get ride;
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res> implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._self, this._then);

  final Details _self;
  final $Res Function(Details) _then;

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ride = freezed,
    Object? ticketId = freezed,
    Object? boardingStatus = freezed,
    Object? plusPassnegers = freezed,
  }) {
    return _then(_self.copyWith(
      ride: freezed == ride
          ? _self.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as IRide?,
      ticketId: freezed == ticketId
          ? _self.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String?,
      boardingStatus: freezed == boardingStatus
          ? _self.boardingStatus
          : boardingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      plusPassnegers: freezed == plusPassnegers
          ? _self.plusPassnegers
          : plusPassnegers // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IRideCopyWith<$Res>? get ride {
    if (_self.ride == null) {
      return null;
    }

    return $IRideCopyWith<$Res>(_self.ride!, (value) {
      return _then(_self.copyWith(ride: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Details].
extension DetailsPatterns on Details {
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
    TResult Function(_Details value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Details() when $default != null:
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
    TResult Function(_Details value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Details():
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
    TResult? Function(_Details value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Details() when $default != null:
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
            @JsonKey(name: 'ride') IRide? ride,
            @JsonKey(name: 'ticket_id') String? ticketId,
            @JsonKey(name: 'boardingStatus') String? boardingStatus,
            @JsonKey(name: 'plusPassnegers') int? plusPassnegers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Details() when $default != null:
        return $default(_that.ride, _that.ticketId, _that.boardingStatus,
            _that.plusPassnegers);
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
            @JsonKey(name: 'ride') IRide? ride,
            @JsonKey(name: 'ticket_id') String? ticketId,
            @JsonKey(name: 'boardingStatus') String? boardingStatus,
            @JsonKey(name: 'plusPassnegers') int? plusPassnegers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Details():
        return $default(_that.ride, _that.ticketId, _that.boardingStatus,
            _that.plusPassnegers);
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
            @JsonKey(name: 'ride') IRide? ride,
            @JsonKey(name: 'ticket_id') String? ticketId,
            @JsonKey(name: 'boardingStatus') String? boardingStatus,
            @JsonKey(name: 'plusPassnegers') int? plusPassnegers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Details() when $default != null:
        return $default(_that.ride, _that.ticketId, _that.boardingStatus,
            _that.plusPassnegers);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Details implements Details {
  const _Details(
      {@JsonKey(name: 'ride') this.ride,
      @JsonKey(name: 'ticket_id') this.ticketId,
      @JsonKey(name: 'boardingStatus') this.boardingStatus,
      @JsonKey(name: 'plusPassnegers') this.plusPassnegers});
  factory _Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);

  @override
  @JsonKey(name: 'ride')
  final IRide? ride;
  @override
  @JsonKey(name: 'ticket_id')
  final String? ticketId;
  @override
  @JsonKey(name: 'boardingStatus')
  final String? boardingStatus;
  @override
  @JsonKey(name: 'plusPassnegers')
  final int? plusPassnegers;

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DetailsCopyWith<_Details> get copyWith =>
      __$DetailsCopyWithImpl<_Details>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Details &&
            (identical(other.ride, ride) || other.ride == ride) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.boardingStatus, boardingStatus) ||
                other.boardingStatus == boardingStatus) &&
            (identical(other.plusPassnegers, plusPassnegers) ||
                other.plusPassnegers == plusPassnegers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ride, ticketId, boardingStatus, plusPassnegers);

  @override
  String toString() {
    return 'Details(ride: $ride, ticketId: $ticketId, boardingStatus: $boardingStatus, plusPassnegers: $plusPassnegers)';
  }
}

/// @nodoc
abstract mixin class _$DetailsCopyWith<$Res> implements $DetailsCopyWith<$Res> {
  factory _$DetailsCopyWith(_Details value, $Res Function(_Details) _then) =
      __$DetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ride') IRide? ride,
      @JsonKey(name: 'ticket_id') String? ticketId,
      @JsonKey(name: 'boardingStatus') String? boardingStatus,
      @JsonKey(name: 'plusPassnegers') int? plusPassnegers});

  @override
  $IRideCopyWith<$Res>? get ride;
}

/// @nodoc
class __$DetailsCopyWithImpl<$Res> implements _$DetailsCopyWith<$Res> {
  __$DetailsCopyWithImpl(this._self, this._then);

  final _Details _self;
  final $Res Function(_Details) _then;

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ride = freezed,
    Object? ticketId = freezed,
    Object? boardingStatus = freezed,
    Object? plusPassnegers = freezed,
  }) {
    return _then(_Details(
      ride: freezed == ride
          ? _self.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as IRide?,
      ticketId: freezed == ticketId
          ? _self.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String?,
      boardingStatus: freezed == boardingStatus
          ? _self.boardingStatus
          : boardingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      plusPassnegers: freezed == plusPassnegers
          ? _self.plusPassnegers
          : plusPassnegers // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IRideCopyWith<$Res>? get ride {
    if (_self.ride == null) {
      return null;
    }

    return $IRideCopyWith<$Res>(_self.ride!, (value) {
      return _then(_self.copyWith(ride: value));
    });
  }
}

// dart format on
