// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compute_routes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ComputeRoutes {
  @JsonKey(name: 'routes')
  List<Route>? get routes;

  /// Create a copy of ComputeRoutes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ComputeRoutesCopyWith<ComputeRoutes> get copyWith =>
      _$ComputeRoutesCopyWithImpl<ComputeRoutes>(
          this as ComputeRoutes, _$identity);

  /// Serializes this ComputeRoutes to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ComputeRoutes &&
            const DeepCollectionEquality().equals(other.routes, routes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(routes));

  @override
  String toString() {
    return 'ComputeRoutes(routes: $routes)';
  }
}

/// @nodoc
abstract mixin class $ComputeRoutesCopyWith<$Res> {
  factory $ComputeRoutesCopyWith(
          ComputeRoutes value, $Res Function(ComputeRoutes) _then) =
      _$ComputeRoutesCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'routes') List<Route>? routes});
}

/// @nodoc
class _$ComputeRoutesCopyWithImpl<$Res>
    implements $ComputeRoutesCopyWith<$Res> {
  _$ComputeRoutesCopyWithImpl(this._self, this._then);

  final ComputeRoutes _self;
  final $Res Function(ComputeRoutes) _then;

  /// Create a copy of ComputeRoutes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routes = freezed,
  }) {
    return _then(_self.copyWith(
      routes: freezed == routes
          ? _self.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Route>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ComputeRoutes].
extension ComputeRoutesPatterns on ComputeRoutes {
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
    TResult Function(_ComputeRoutes value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ComputeRoutes() when $default != null:
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
    TResult Function(_ComputeRoutes value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ComputeRoutes():
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
    TResult? Function(_ComputeRoutes value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ComputeRoutes() when $default != null:
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
    TResult Function(@JsonKey(name: 'routes') List<Route>? routes)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ComputeRoutes() when $default != null:
        return $default(_that.routes);
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
    TResult Function(@JsonKey(name: 'routes') List<Route>? routes) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ComputeRoutes():
        return $default(_that.routes);
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
    TResult? Function(@JsonKey(name: 'routes') List<Route>? routes)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ComputeRoutes() when $default != null:
        return $default(_that.routes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ComputeRoutes implements ComputeRoutes {
  const _ComputeRoutes({@JsonKey(name: 'routes') final List<Route>? routes})
      : _routes = routes;
  factory _ComputeRoutes.fromJson(Map<String, dynamic> json) =>
      _$ComputeRoutesFromJson(json);

  final List<Route>? _routes;
  @override
  @JsonKey(name: 'routes')
  List<Route>? get routes {
    final value = _routes;
    if (value == null) return null;
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ComputeRoutes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ComputeRoutesCopyWith<_ComputeRoutes> get copyWith =>
      __$ComputeRoutesCopyWithImpl<_ComputeRoutes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ComputeRoutesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ComputeRoutes &&
            const DeepCollectionEquality().equals(other._routes, _routes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_routes));

  @override
  String toString() {
    return 'ComputeRoutes(routes: $routes)';
  }
}

/// @nodoc
abstract mixin class _$ComputeRoutesCopyWith<$Res>
    implements $ComputeRoutesCopyWith<$Res> {
  factory _$ComputeRoutesCopyWith(
          _ComputeRoutes value, $Res Function(_ComputeRoutes) _then) =
      __$ComputeRoutesCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'routes') List<Route>? routes});
}

/// @nodoc
class __$ComputeRoutesCopyWithImpl<$Res>
    implements _$ComputeRoutesCopyWith<$Res> {
  __$ComputeRoutesCopyWithImpl(this._self, this._then);

  final _ComputeRoutes _self;
  final $Res Function(_ComputeRoutes) _then;

  /// Create a copy of ComputeRoutes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routes = freezed,
  }) {
    return _then(_ComputeRoutes(
      routes: freezed == routes
          ? _self._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Route>?,
    ));
  }
}

/// @nodoc
mixin _$Route {
  @JsonKey(name: 'distanceMeters')
  int? get distanceMeters;
  @JsonKey(name: 'duration')
  String? get duration;
  @JsonKey(name: 'polyline')
  Polyline? get polyline;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RouteCopyWith<Route> get copyWith =>
      _$RouteCopyWithImpl<Route>(this as Route, _$identity);

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Route &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, distanceMeters, duration, polyline);

  @override
  String toString() {
    return 'Route(distanceMeters: $distanceMeters, duration: $duration, polyline: $polyline)';
  }
}

/// @nodoc
abstract mixin class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) _then) =
      _$RouteCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'distanceMeters') int? distanceMeters,
      @JsonKey(name: 'duration') String? duration,
      @JsonKey(name: 'polyline') Polyline? polyline});

  $PolylineCopyWith<$Res>? get polyline;
}

/// @nodoc
class _$RouteCopyWithImpl<$Res> implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._self, this._then);

  final Route _self;
  final $Res Function(Route) _then;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceMeters = freezed,
    Object? duration = freezed,
    Object? polyline = freezed,
  }) {
    return _then(_self.copyWith(
      distanceMeters: freezed == distanceMeters
          ? _self.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      polyline: freezed == polyline
          ? _self.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as Polyline?,
    ));
  }

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PolylineCopyWith<$Res>? get polyline {
    if (_self.polyline == null) {
      return null;
    }

    return $PolylineCopyWith<$Res>(_self.polyline!, (value) {
      return _then(_self.copyWith(polyline: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Route].
extension RoutePatterns on Route {
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
    TResult Function(_Route value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Route() when $default != null:
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
    TResult Function(_Route value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Route():
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
    TResult? Function(_Route value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Route() when $default != null:
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
            @JsonKey(name: 'distanceMeters') int? distanceMeters,
            @JsonKey(name: 'duration') String? duration,
            @JsonKey(name: 'polyline') Polyline? polyline)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Route() when $default != null:
        return $default(_that.distanceMeters, _that.duration, _that.polyline);
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
            @JsonKey(name: 'distanceMeters') int? distanceMeters,
            @JsonKey(name: 'duration') String? duration,
            @JsonKey(name: 'polyline') Polyline? polyline)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Route():
        return $default(_that.distanceMeters, _that.duration, _that.polyline);
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
            @JsonKey(name: 'distanceMeters') int? distanceMeters,
            @JsonKey(name: 'duration') String? duration,
            @JsonKey(name: 'polyline') Polyline? polyline)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Route() when $default != null:
        return $default(_that.distanceMeters, _that.duration, _that.polyline);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Route implements Route {
  const _Route(
      {@JsonKey(name: 'distanceMeters') this.distanceMeters,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'polyline') this.polyline});
  factory _Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

  @override
  @JsonKey(name: 'distanceMeters')
  final int? distanceMeters;
  @override
  @JsonKey(name: 'duration')
  final String? duration;
  @override
  @JsonKey(name: 'polyline')
  final Polyline? polyline;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RouteCopyWith<_Route> get copyWith =>
      __$RouteCopyWithImpl<_Route>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RouteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Route &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, distanceMeters, duration, polyline);

  @override
  String toString() {
    return 'Route(distanceMeters: $distanceMeters, duration: $duration, polyline: $polyline)';
  }
}

/// @nodoc
abstract mixin class _$RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$RouteCopyWith(_Route value, $Res Function(_Route) _then) =
      __$RouteCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'distanceMeters') int? distanceMeters,
      @JsonKey(name: 'duration') String? duration,
      @JsonKey(name: 'polyline') Polyline? polyline});

  @override
  $PolylineCopyWith<$Res>? get polyline;
}

/// @nodoc
class __$RouteCopyWithImpl<$Res> implements _$RouteCopyWith<$Res> {
  __$RouteCopyWithImpl(this._self, this._then);

  final _Route _self;
  final $Res Function(_Route) _then;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? distanceMeters = freezed,
    Object? duration = freezed,
    Object? polyline = freezed,
  }) {
    return _then(_Route(
      distanceMeters: freezed == distanceMeters
          ? _self.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      polyline: freezed == polyline
          ? _self.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as Polyline?,
    ));
  }

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PolylineCopyWith<$Res>? get polyline {
    if (_self.polyline == null) {
      return null;
    }

    return $PolylineCopyWith<$Res>(_self.polyline!, (value) {
      return _then(_self.copyWith(polyline: value));
    });
  }
}

/// @nodoc
mixin _$Polyline {
  @JsonKey(name: 'encodedPolyline')
  String? get encodedPolyline;

  /// Create a copy of Polyline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PolylineCopyWith<Polyline> get copyWith =>
      _$PolylineCopyWithImpl<Polyline>(this as Polyline, _$identity);

  /// Serializes this Polyline to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Polyline &&
            (identical(other.encodedPolyline, encodedPolyline) ||
                other.encodedPolyline == encodedPolyline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, encodedPolyline);

  @override
  String toString() {
    return 'Polyline(encodedPolyline: $encodedPolyline)';
  }
}

/// @nodoc
abstract mixin class $PolylineCopyWith<$Res> {
  factory $PolylineCopyWith(Polyline value, $Res Function(Polyline) _then) =
      _$PolylineCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'encodedPolyline') String? encodedPolyline});
}

/// @nodoc
class _$PolylineCopyWithImpl<$Res> implements $PolylineCopyWith<$Res> {
  _$PolylineCopyWithImpl(this._self, this._then);

  final Polyline _self;
  final $Res Function(Polyline) _then;

  /// Create a copy of Polyline
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encodedPolyline = freezed,
  }) {
    return _then(_self.copyWith(
      encodedPolyline: freezed == encodedPolyline
          ? _self.encodedPolyline
          : encodedPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Polyline].
extension PolylinePatterns on Polyline {
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
    TResult Function(_Polyline value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Polyline() when $default != null:
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
    TResult Function(_Polyline value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Polyline():
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
    TResult? Function(_Polyline value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Polyline() when $default != null:
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
    TResult Function(@JsonKey(name: 'encodedPolyline') String? encodedPolyline)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Polyline() when $default != null:
        return $default(_that.encodedPolyline);
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
    TResult Function(@JsonKey(name: 'encodedPolyline') String? encodedPolyline)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Polyline():
        return $default(_that.encodedPolyline);
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
            @JsonKey(name: 'encodedPolyline') String? encodedPolyline)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Polyline() when $default != null:
        return $default(_that.encodedPolyline);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Polyline implements Polyline {
  const _Polyline({@JsonKey(name: 'encodedPolyline') this.encodedPolyline});
  factory _Polyline.fromJson(Map<String, dynamic> json) =>
      _$PolylineFromJson(json);

  @override
  @JsonKey(name: 'encodedPolyline')
  final String? encodedPolyline;

  /// Create a copy of Polyline
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PolylineCopyWith<_Polyline> get copyWith =>
      __$PolylineCopyWithImpl<_Polyline>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PolylineToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Polyline &&
            (identical(other.encodedPolyline, encodedPolyline) ||
                other.encodedPolyline == encodedPolyline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, encodedPolyline);

  @override
  String toString() {
    return 'Polyline(encodedPolyline: $encodedPolyline)';
  }
}

/// @nodoc
abstract mixin class _$PolylineCopyWith<$Res>
    implements $PolylineCopyWith<$Res> {
  factory _$PolylineCopyWith(_Polyline value, $Res Function(_Polyline) _then) =
      __$PolylineCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'encodedPolyline') String? encodedPolyline});
}

/// @nodoc
class __$PolylineCopyWithImpl<$Res> implements _$PolylineCopyWith<$Res> {
  __$PolylineCopyWithImpl(this._self, this._then);

  final _Polyline _self;
  final $Res Function(_Polyline) _then;

  /// Create a copy of Polyline
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? encodedPolyline = freezed,
  }) {
    return _then(_Polyline(
      encodedPolyline: freezed == encodedPolyline
          ? _self.encodedPolyline
          : encodedPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
