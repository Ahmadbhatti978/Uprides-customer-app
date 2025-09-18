// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_locations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedLocations {
  @JsonKey(name: 'data')
  List<LocationElement>? get locations;

  /// Create a copy of SavedLocations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SavedLocationsCopyWith<SavedLocations> get copyWith =>
      _$SavedLocationsCopyWithImpl<SavedLocations>(
          this as SavedLocations, _$identity);

  /// Serializes this SavedLocations to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SavedLocations &&
            const DeepCollectionEquality().equals(other.locations, locations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locations));

  @override
  String toString() {
    return 'SavedLocations(locations: $locations)';
  }
}

/// @nodoc
abstract mixin class $SavedLocationsCopyWith<$Res> {
  factory $SavedLocationsCopyWith(
          SavedLocations value, $Res Function(SavedLocations) _then) =
      _$SavedLocationsCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'data') List<LocationElement>? locations});
}

/// @nodoc
class _$SavedLocationsCopyWithImpl<$Res>
    implements $SavedLocationsCopyWith<$Res> {
  _$SavedLocationsCopyWithImpl(this._self, this._then);

  final SavedLocations _self;
  final $Res Function(SavedLocations) _then;

  /// Create a copy of SavedLocations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(_self.copyWith(
      locations: freezed == locations
          ? _self.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationElement>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SavedLocations].
extension SavedLocationsPatterns on SavedLocations {
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
    TResult Function(_SavedLocations value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SavedLocations() when $default != null:
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
    TResult Function(_SavedLocations value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedLocations():
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
    TResult? Function(_SavedLocations value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedLocations() when $default != null:
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
    TResult Function(@JsonKey(name: 'data') List<LocationElement>? locations)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SavedLocations() when $default != null:
        return $default(_that.locations);
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
    TResult Function(@JsonKey(name: 'data') List<LocationElement>? locations)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedLocations():
        return $default(_that.locations);
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
    TResult? Function(@JsonKey(name: 'data') List<LocationElement>? locations)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedLocations() when $default != null:
        return $default(_that.locations);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SavedLocations implements SavedLocations {
  const _SavedLocations(
      {@JsonKey(name: 'data') final List<LocationElement>? locations})
      : _locations = locations;
  factory _SavedLocations.fromJson(Map<String, dynamic> json) =>
      _$SavedLocationsFromJson(json);

  final List<LocationElement>? _locations;
  @override
  @JsonKey(name: 'data')
  List<LocationElement>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SavedLocations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SavedLocationsCopyWith<_SavedLocations> get copyWith =>
      __$SavedLocationsCopyWithImpl<_SavedLocations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SavedLocationsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SavedLocations &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_locations));

  @override
  String toString() {
    return 'SavedLocations(locations: $locations)';
  }
}

/// @nodoc
abstract mixin class _$SavedLocationsCopyWith<$Res>
    implements $SavedLocationsCopyWith<$Res> {
  factory _$SavedLocationsCopyWith(
          _SavedLocations value, $Res Function(_SavedLocations) _then) =
      __$SavedLocationsCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<LocationElement>? locations});
}

/// @nodoc
class __$SavedLocationsCopyWithImpl<$Res>
    implements _$SavedLocationsCopyWith<$Res> {
  __$SavedLocationsCopyWithImpl(this._self, this._then);

  final _SavedLocations _self;
  final $Res Function(_SavedLocations) _then;

  /// Create a copy of SavedLocations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(_SavedLocations(
      locations: freezed == locations
          ? _self._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationElement>?,
    ));
  }
}

/// @nodoc
mixin _$LocationElement {
  @JsonKey(name: '_id')
  String? get id;
  @JsonKey(name: 'customer_id')
  String? get customerId;
  @JsonKey(name: 'address')
  String? get address;
  @JsonKey(name: 'location_name')
  String? get locationName;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @JsonKey(name: '__v')
  int? get v;
  @JsonKey(name: 'is_deleted')
  bool? get isDeleted;
  @JsonKey(name: 'location', fromJson: coordinateFromJson)
  Coordinate? get location;

  /// Create a copy of LocationElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationElementCopyWith<LocationElement> get copyWith =>
      _$LocationElementCopyWithImpl<LocationElement>(
          this as LocationElement, _$identity);

  /// Serializes this LocationElement to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationElement &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, customerId, address,
      locationName, createdAt, updatedAt, v, isDeleted, location);

  @override
  String toString() {
    return 'LocationElement(id: $id, customerId: $customerId, address: $address, locationName: $locationName, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, isDeleted: $isDeleted, location: $location)';
  }
}

/// @nodoc
abstract mixin class $LocationElementCopyWith<$Res> {
  factory $LocationElementCopyWith(
          LocationElement value, $Res Function(LocationElement) _then) =
      _$LocationElementCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'customer_id') String? customerId,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: '__v') int? v,
      @JsonKey(name: 'is_deleted') bool? isDeleted,
      @JsonKey(name: 'location', fromJson: coordinateFromJson)
      Coordinate? location});

  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class _$LocationElementCopyWithImpl<$Res>
    implements $LocationElementCopyWith<$Res> {
  _$LocationElementCopyWithImpl(this._self, this._then);

  final LocationElement _self;
  final $Res Function(LocationElement) _then;

  /// Create a copy of LocationElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? address = freezed,
    Object? locationName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? isDeleted = freezed,
    Object? location = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
    ));
  }

  /// Create a copy of LocationElement
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

/// Adds pattern-matching-related methods to [LocationElement].
extension LocationElementPatterns on LocationElement {
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
    TResult Function(_LocationElement value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocationElement() when $default != null:
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
    TResult Function(_LocationElement value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationElement():
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
    TResult? Function(_LocationElement value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationElement() when $default != null:
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
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'customer_id') String? customerId,
            @JsonKey(name: 'address') String? address,
            @JsonKey(name: 'location_name') String? locationName,
            @JsonKey(name: 'createdAt') DateTime? createdAt,
            @JsonKey(name: 'updatedAt') DateTime? updatedAt,
            @JsonKey(name: '__v') int? v,
            @JsonKey(name: 'is_deleted') bool? isDeleted,
            @JsonKey(name: 'location', fromJson: coordinateFromJson)
            Coordinate? location)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocationElement() when $default != null:
        return $default(
            _that.id,
            _that.customerId,
            _that.address,
            _that.locationName,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.isDeleted,
            _that.location);
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
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'customer_id') String? customerId,
            @JsonKey(name: 'address') String? address,
            @JsonKey(name: 'location_name') String? locationName,
            @JsonKey(name: 'createdAt') DateTime? createdAt,
            @JsonKey(name: 'updatedAt') DateTime? updatedAt,
            @JsonKey(name: '__v') int? v,
            @JsonKey(name: 'is_deleted') bool? isDeleted,
            @JsonKey(name: 'location', fromJson: coordinateFromJson)
            Coordinate? location)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationElement():
        return $default(
            _that.id,
            _that.customerId,
            _that.address,
            _that.locationName,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.isDeleted,
            _that.location);
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
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'customer_id') String? customerId,
            @JsonKey(name: 'address') String? address,
            @JsonKey(name: 'location_name') String? locationName,
            @JsonKey(name: 'createdAt') DateTime? createdAt,
            @JsonKey(name: 'updatedAt') DateTime? updatedAt,
            @JsonKey(name: '__v') int? v,
            @JsonKey(name: 'is_deleted') bool? isDeleted,
            @JsonKey(name: 'location', fromJson: coordinateFromJson)
            Coordinate? location)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationElement() when $default != null:
        return $default(
            _that.id,
            _that.customerId,
            _that.address,
            _that.locationName,
            _that.createdAt,
            _that.updatedAt,
            _that.v,
            _that.isDeleted,
            _that.location);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LocationElement implements LocationElement {
  const _LocationElement(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'customer_id') this.customerId,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'location_name') this.locationName,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      @JsonKey(name: '__v') this.v,
      @JsonKey(name: 'is_deleted') this.isDeleted,
      @JsonKey(name: 'location', fromJson: coordinateFromJson) this.location});
  factory _LocationElement.fromJson(Map<String, dynamic> json) =>
      _$LocationElementFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'customer_id')
  final String? customerId;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'location_name')
  final String? locationName;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? v;
  @override
  @JsonKey(name: 'is_deleted')
  final bool? isDeleted;
  @override
  @JsonKey(name: 'location', fromJson: coordinateFromJson)
  final Coordinate? location;

  /// Create a copy of LocationElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationElementCopyWith<_LocationElement> get copyWith =>
      __$LocationElementCopyWithImpl<_LocationElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocationElementToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationElement &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, customerId, address,
      locationName, createdAt, updatedAt, v, isDeleted, location);

  @override
  String toString() {
    return 'LocationElement(id: $id, customerId: $customerId, address: $address, locationName: $locationName, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, isDeleted: $isDeleted, location: $location)';
  }
}

/// @nodoc
abstract mixin class _$LocationElementCopyWith<$Res>
    implements $LocationElementCopyWith<$Res> {
  factory _$LocationElementCopyWith(
          _LocationElement value, $Res Function(_LocationElement) _then) =
      __$LocationElementCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'customer_id') String? customerId,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: '__v') int? v,
      @JsonKey(name: 'is_deleted') bool? isDeleted,
      @JsonKey(name: 'location', fromJson: coordinateFromJson)
      Coordinate? location});

  @override
  $CoordinateCopyWith<$Res>? get location;
}

/// @nodoc
class __$LocationElementCopyWithImpl<$Res>
    implements _$LocationElementCopyWith<$Res> {
  __$LocationElementCopyWithImpl(this._self, this._then);

  final _LocationElement _self;
  final $Res Function(_LocationElement) _then;

  /// Create a copy of LocationElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? address = freezed,
    Object? locationName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? isDeleted = freezed,
    Object? location = freezed,
  }) {
    return _then(_LocationElement(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
    ));
  }

  /// Create a copy of LocationElement
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
