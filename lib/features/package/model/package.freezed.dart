// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Package {
  @JsonKey(name: 'pickup_location')
  Coordinate? get pickupLocation;
  @JsonKey(name: 'pickup_time', toJson: _dateTimeToIso8601String)
  DateTime? get pickupTime;
  @JsonKey(name: 'packages')
  List<PackageElement>? get packages;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PackageCopyWith<Package> get copyWith =>
      _$PackageCopyWithImpl<Package>(this as Package, _$identity);

  /// Serializes this Package to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Package &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.pickupTime, pickupTime) ||
                other.pickupTime == pickupTime) &&
            const DeepCollectionEquality().equals(other.packages, packages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pickupLocation, pickupTime,
      const DeepCollectionEquality().hash(packages));

  @override
  String toString() {
    return 'Package(pickupLocation: $pickupLocation, pickupTime: $pickupTime, packages: $packages)';
  }
}

/// @nodoc
abstract mixin class $PackageCopyWith<$Res> {
  factory $PackageCopyWith(Package value, $Res Function(Package) _then) =
      _$PackageCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'pickup_location') Coordinate? pickupLocation,
      @JsonKey(name: 'pickup_time', toJson: _dateTimeToIso8601String)
      DateTime? pickupTime,
      @JsonKey(name: 'packages') List<PackageElement>? packages});

  $CoordinateCopyWith<$Res>? get pickupLocation;
}

/// @nodoc
class _$PackageCopyWithImpl<$Res> implements $PackageCopyWith<$Res> {
  _$PackageCopyWithImpl(this._self, this._then);

  final Package _self;
  final $Res Function(Package) _then;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = freezed,
    Object? pickupTime = freezed,
    Object? packages = freezed,
  }) {
    return _then(_self.copyWith(
      pickupLocation: freezed == pickupLocation
          ? _self.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      pickupTime: freezed == pickupTime
          ? _self.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      packages: freezed == packages
          ? _self.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageElement>?,
    ));
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get pickupLocation {
    if (_self.pickupLocation == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.pickupLocation!, (value) {
      return _then(_self.copyWith(pickupLocation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Package].
extension PackagePatterns on Package {
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
    TResult Function(_Package value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Package() when $default != null:
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
    TResult Function(_Package value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Package():
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
    TResult? Function(_Package value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Package() when $default != null:
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
            @JsonKey(name: 'pickup_location') Coordinate? pickupLocation,
            @JsonKey(name: 'pickup_time', toJson: _dateTimeToIso8601String)
            DateTime? pickupTime,
            @JsonKey(name: 'packages') List<PackageElement>? packages)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Package() when $default != null:
        return $default(_that.pickupLocation, _that.pickupTime, _that.packages);
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
            @JsonKey(name: 'pickup_location') Coordinate? pickupLocation,
            @JsonKey(name: 'pickup_time', toJson: _dateTimeToIso8601String)
            DateTime? pickupTime,
            @JsonKey(name: 'packages') List<PackageElement>? packages)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Package():
        return $default(_that.pickupLocation, _that.pickupTime, _that.packages);
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
            @JsonKey(name: 'pickup_location') Coordinate? pickupLocation,
            @JsonKey(name: 'pickup_time', toJson: _dateTimeToIso8601String)
            DateTime? pickupTime,
            @JsonKey(name: 'packages') List<PackageElement>? packages)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Package() when $default != null:
        return $default(_that.pickupLocation, _that.pickupTime, _that.packages);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Package implements Package {
  const _Package(
      {@JsonKey(name: 'pickup_location') this.pickupLocation,
      @JsonKey(name: 'pickup_time', toJson: _dateTimeToIso8601String)
      this.pickupTime,
      @JsonKey(name: 'packages') final List<PackageElement>? packages})
      : _packages = packages;
  factory _Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);

  @override
  @JsonKey(name: 'pickup_location')
  final Coordinate? pickupLocation;
  @override
  @JsonKey(name: 'pickup_time', toJson: _dateTimeToIso8601String)
  final DateTime? pickupTime;
  final List<PackageElement>? _packages;
  @override
  @JsonKey(name: 'packages')
  List<PackageElement>? get packages {
    final value = _packages;
    if (value == null) return null;
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PackageCopyWith<_Package> get copyWith =>
      __$PackageCopyWithImpl<_Package>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PackageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Package &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.pickupTime, pickupTime) ||
                other.pickupTime == pickupTime) &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pickupLocation, pickupTime,
      const DeepCollectionEquality().hash(_packages));

  @override
  String toString() {
    return 'Package(pickupLocation: $pickupLocation, pickupTime: $pickupTime, packages: $packages)';
  }
}

/// @nodoc
abstract mixin class _$PackageCopyWith<$Res> implements $PackageCopyWith<$Res> {
  factory _$PackageCopyWith(_Package value, $Res Function(_Package) _then) =
      __$PackageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pickup_location') Coordinate? pickupLocation,
      @JsonKey(name: 'pickup_time', toJson: _dateTimeToIso8601String)
      DateTime? pickupTime,
      @JsonKey(name: 'packages') List<PackageElement>? packages});

  @override
  $CoordinateCopyWith<$Res>? get pickupLocation;
}

/// @nodoc
class __$PackageCopyWithImpl<$Res> implements _$PackageCopyWith<$Res> {
  __$PackageCopyWithImpl(this._self, this._then);

  final _Package _self;
  final $Res Function(_Package) _then;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pickupLocation = freezed,
    Object? pickupTime = freezed,
    Object? packages = freezed,
  }) {
    return _then(_Package(
      pickupLocation: freezed == pickupLocation
          ? _self.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      pickupTime: freezed == pickupTime
          ? _self.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      packages: freezed == packages
          ? _self._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageElement>?,
    ));
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get pickupLocation {
    if (_self.pickupLocation == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.pickupLocation!, (value) {
      return _then(_self.copyWith(pickupLocation: value));
    });
  }
}

/// @nodoc
mixin _$PackageElement {
  @JsonKey(name: 'receiver_details')
  ReceiverDetails? get receiverDetails;
  @JsonKey(name: 'package_type', defaultValue: 'other')
  String? get packageType;
  @JsonKey(name: 'delivery_location')
  Coordinate? get deliveryLocation;
  @JsonKey(name: 'dimensions')
  Dimensions? get dimensions;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'media', defaultValue: <String>[])
  List<String>? get media;

  /// Create a copy of PackageElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PackageElementCopyWith<PackageElement> get copyWith =>
      _$PackageElementCopyWithImpl<PackageElement>(
          this as PackageElement, _$identity);

  /// Serializes this PackageElement to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackageElement &&
            (identical(other.receiverDetails, receiverDetails) ||
                other.receiverDetails == receiverDetails) &&
            (identical(other.packageType, packageType) ||
                other.packageType == packageType) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.media, media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      receiverDetails,
      packageType,
      deliveryLocation,
      dimensions,
      description,
      const DeepCollectionEquality().hash(media));

  @override
  String toString() {
    return 'PackageElement(receiverDetails: $receiverDetails, packageType: $packageType, deliveryLocation: $deliveryLocation, dimensions: $dimensions, description: $description, media: $media)';
  }
}

/// @nodoc
abstract mixin class $PackageElementCopyWith<$Res> {
  factory $PackageElementCopyWith(
          PackageElement value, $Res Function(PackageElement) _then) =
      _$PackageElementCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'receiver_details') ReceiverDetails? receiverDetails,
      @JsonKey(name: 'package_type', defaultValue: 'other') String? packageType,
      @JsonKey(name: 'delivery_location') Coordinate? deliveryLocation,
      @JsonKey(name: 'dimensions') Dimensions? dimensions,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'media', defaultValue: <String>[]) List<String>? media});

  $ReceiverDetailsCopyWith<$Res>? get receiverDetails;
  $CoordinateCopyWith<$Res>? get deliveryLocation;
  $DimensionsCopyWith<$Res>? get dimensions;
}

/// @nodoc
class _$PackageElementCopyWithImpl<$Res>
    implements $PackageElementCopyWith<$Res> {
  _$PackageElementCopyWithImpl(this._self, this._then);

  final PackageElement _self;
  final $Res Function(PackageElement) _then;

  /// Create a copy of PackageElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverDetails = freezed,
    Object? packageType = freezed,
    Object? deliveryLocation = freezed,
    Object? dimensions = freezed,
    Object? description = freezed,
    Object? media = freezed,
  }) {
    return _then(_self.copyWith(
      receiverDetails: freezed == receiverDetails
          ? _self.receiverDetails
          : receiverDetails // ignore: cast_nullable_to_non_nullable
              as ReceiverDetails?,
      packageType: freezed == packageType
          ? _self.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _self.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      dimensions: freezed == dimensions
          ? _self.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimensions?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  /// Create a copy of PackageElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReceiverDetailsCopyWith<$Res>? get receiverDetails {
    if (_self.receiverDetails == null) {
      return null;
    }

    return $ReceiverDetailsCopyWith<$Res>(_self.receiverDetails!, (value) {
      return _then(_self.copyWith(receiverDetails: value));
    });
  }

  /// Create a copy of PackageElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get deliveryLocation {
    if (_self.deliveryLocation == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.deliveryLocation!, (value) {
      return _then(_self.copyWith(deliveryLocation: value));
    });
  }

  /// Create a copy of PackageElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DimensionsCopyWith<$Res>? get dimensions {
    if (_self.dimensions == null) {
      return null;
    }

    return $DimensionsCopyWith<$Res>(_self.dimensions!, (value) {
      return _then(_self.copyWith(dimensions: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PackageElement].
extension PackageElementPatterns on PackageElement {
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
    TResult Function(_PackageElement value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PackageElement() when $default != null:
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
    TResult Function(_PackageElement value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PackageElement():
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
    TResult? Function(_PackageElement value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PackageElement() when $default != null:
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
            @JsonKey(name: 'receiver_details') ReceiverDetails? receiverDetails,
            @JsonKey(name: 'package_type', defaultValue: 'other')
            String? packageType,
            @JsonKey(name: 'delivery_location') Coordinate? deliveryLocation,
            @JsonKey(name: 'dimensions') Dimensions? dimensions,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'media', defaultValue: <String>[])
            List<String>? media)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PackageElement() when $default != null:
        return $default(
            _that.receiverDetails,
            _that.packageType,
            _that.deliveryLocation,
            _that.dimensions,
            _that.description,
            _that.media);
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
            @JsonKey(name: 'receiver_details') ReceiverDetails? receiverDetails,
            @JsonKey(name: 'package_type', defaultValue: 'other')
            String? packageType,
            @JsonKey(name: 'delivery_location') Coordinate? deliveryLocation,
            @JsonKey(name: 'dimensions') Dimensions? dimensions,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'media', defaultValue: <String>[])
            List<String>? media)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PackageElement():
        return $default(
            _that.receiverDetails,
            _that.packageType,
            _that.deliveryLocation,
            _that.dimensions,
            _that.description,
            _that.media);
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
            @JsonKey(name: 'receiver_details') ReceiverDetails? receiverDetails,
            @JsonKey(name: 'package_type', defaultValue: 'other')
            String? packageType,
            @JsonKey(name: 'delivery_location') Coordinate? deliveryLocation,
            @JsonKey(name: 'dimensions') Dimensions? dimensions,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'media', defaultValue: <String>[])
            List<String>? media)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PackageElement() when $default != null:
        return $default(
            _that.receiverDetails,
            _that.packageType,
            _that.deliveryLocation,
            _that.dimensions,
            _that.description,
            _that.media);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PackageElement implements PackageElement {
  const _PackageElement(
      {@JsonKey(name: 'receiver_details') this.receiverDetails,
      @JsonKey(name: 'package_type', defaultValue: 'other') this.packageType,
      @JsonKey(name: 'delivery_location') this.deliveryLocation,
      @JsonKey(name: 'dimensions') this.dimensions,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'media', defaultValue: <String>[])
      final List<String>? media})
      : _media = media;
  factory _PackageElement.fromJson(Map<String, dynamic> json) =>
      _$PackageElementFromJson(json);

  @override
  @JsonKey(name: 'receiver_details')
  final ReceiverDetails? receiverDetails;
  @override
  @JsonKey(name: 'package_type', defaultValue: 'other')
  final String? packageType;
  @override
  @JsonKey(name: 'delivery_location')
  final Coordinate? deliveryLocation;
  @override
  @JsonKey(name: 'dimensions')
  final Dimensions? dimensions;
  @override
  @JsonKey(name: 'description')
  final String? description;
  final List<String>? _media;
  @override
  @JsonKey(name: 'media', defaultValue: <String>[])
  List<String>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PackageElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PackageElementCopyWith<_PackageElement> get copyWith =>
      __$PackageElementCopyWithImpl<_PackageElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PackageElementToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackageElement &&
            (identical(other.receiverDetails, receiverDetails) ||
                other.receiverDetails == receiverDetails) &&
            (identical(other.packageType, packageType) ||
                other.packageType == packageType) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      receiverDetails,
      packageType,
      deliveryLocation,
      dimensions,
      description,
      const DeepCollectionEquality().hash(_media));

  @override
  String toString() {
    return 'PackageElement(receiverDetails: $receiverDetails, packageType: $packageType, deliveryLocation: $deliveryLocation, dimensions: $dimensions, description: $description, media: $media)';
  }
}

/// @nodoc
abstract mixin class _$PackageElementCopyWith<$Res>
    implements $PackageElementCopyWith<$Res> {
  factory _$PackageElementCopyWith(
          _PackageElement value, $Res Function(_PackageElement) _then) =
      __$PackageElementCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'receiver_details') ReceiverDetails? receiverDetails,
      @JsonKey(name: 'package_type', defaultValue: 'other') String? packageType,
      @JsonKey(name: 'delivery_location') Coordinate? deliveryLocation,
      @JsonKey(name: 'dimensions') Dimensions? dimensions,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'media', defaultValue: <String>[]) List<String>? media});

  @override
  $ReceiverDetailsCopyWith<$Res>? get receiverDetails;
  @override
  $CoordinateCopyWith<$Res>? get deliveryLocation;
  @override
  $DimensionsCopyWith<$Res>? get dimensions;
}

/// @nodoc
class __$PackageElementCopyWithImpl<$Res>
    implements _$PackageElementCopyWith<$Res> {
  __$PackageElementCopyWithImpl(this._self, this._then);

  final _PackageElement _self;
  final $Res Function(_PackageElement) _then;

  /// Create a copy of PackageElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? receiverDetails = freezed,
    Object? packageType = freezed,
    Object? deliveryLocation = freezed,
    Object? dimensions = freezed,
    Object? description = freezed,
    Object? media = freezed,
  }) {
    return _then(_PackageElement(
      receiverDetails: freezed == receiverDetails
          ? _self.receiverDetails
          : receiverDetails // ignore: cast_nullable_to_non_nullable
              as ReceiverDetails?,
      packageType: freezed == packageType
          ? _self.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _self.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      dimensions: freezed == dimensions
          ? _self.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimensions?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _self._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  /// Create a copy of PackageElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReceiverDetailsCopyWith<$Res>? get receiverDetails {
    if (_self.receiverDetails == null) {
      return null;
    }

    return $ReceiverDetailsCopyWith<$Res>(_self.receiverDetails!, (value) {
      return _then(_self.copyWith(receiverDetails: value));
    });
  }

  /// Create a copy of PackageElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get deliveryLocation {
    if (_self.deliveryLocation == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_self.deliveryLocation!, (value) {
      return _then(_self.copyWith(deliveryLocation: value));
    });
  }

  /// Create a copy of PackageElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DimensionsCopyWith<$Res>? get dimensions {
    if (_self.dimensions == null) {
      return null;
    }

    return $DimensionsCopyWith<$Res>(_self.dimensions!, (value) {
      return _then(_self.copyWith(dimensions: value));
    });
  }
}

/// @nodoc
mixin _$Dimensions {
  @JsonKey(name: 'width')
  int? get width;
  @JsonKey(name: 'height')
  int? get height;
  @JsonKey(name: 'length')
  int? get length;
  @JsonKey(name: 'weight')
  int? get weight;

  /// Create a copy of Dimensions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DimensionsCopyWith<Dimensions> get copyWith =>
      _$DimensionsCopyWithImpl<Dimensions>(this as Dimensions, _$identity);

  /// Serializes this Dimensions to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Dimensions &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, length, weight);

  @override
  String toString() {
    return 'Dimensions(width: $width, height: $height, length: $length, weight: $weight)';
  }
}

/// @nodoc
abstract mixin class $DimensionsCopyWith<$Res> {
  factory $DimensionsCopyWith(
          Dimensions value, $Res Function(Dimensions) _then) =
      _$DimensionsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'length') int? length,
      @JsonKey(name: 'weight') int? weight});
}

/// @nodoc
class _$DimensionsCopyWithImpl<$Res> implements $DimensionsCopyWith<$Res> {
  _$DimensionsCopyWithImpl(this._self, this._then);

  final Dimensions _self;
  final $Res Function(Dimensions) _then;

  /// Create a copy of Dimensions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? length = freezed,
    Object? weight = freezed,
  }) {
    return _then(_self.copyWith(
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Dimensions].
extension DimensionsPatterns on Dimensions {
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
    TResult Function(_Dimensions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Dimensions() when $default != null:
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
    TResult Function(_Dimensions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dimensions():
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
    TResult? Function(_Dimensions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dimensions() when $default != null:
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
            @JsonKey(name: 'width') int? width,
            @JsonKey(name: 'height') int? height,
            @JsonKey(name: 'length') int? length,
            @JsonKey(name: 'weight') int? weight)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Dimensions() when $default != null:
        return $default(_that.width, _that.height, _that.length, _that.weight);
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
            @JsonKey(name: 'width') int? width,
            @JsonKey(name: 'height') int? height,
            @JsonKey(name: 'length') int? length,
            @JsonKey(name: 'weight') int? weight)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dimensions():
        return $default(_that.width, _that.height, _that.length, _that.weight);
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
            @JsonKey(name: 'width') int? width,
            @JsonKey(name: 'height') int? height,
            @JsonKey(name: 'length') int? length,
            @JsonKey(name: 'weight') int? weight)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dimensions() when $default != null:
        return $default(_that.width, _that.height, _that.length, _that.weight);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Dimensions implements Dimensions {
  const _Dimensions(
      {@JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'length') this.length,
      @JsonKey(name: 'weight') this.weight});
  factory _Dimensions.fromJson(Map<String, dynamic> json) =>
      _$DimensionsFromJson(json);

  @override
  @JsonKey(name: 'width')
  final int? width;
  @override
  @JsonKey(name: 'height')
  final int? height;
  @override
  @JsonKey(name: 'length')
  final int? length;
  @override
  @JsonKey(name: 'weight')
  final int? weight;

  /// Create a copy of Dimensions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DimensionsCopyWith<_Dimensions> get copyWith =>
      __$DimensionsCopyWithImpl<_Dimensions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DimensionsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Dimensions &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, length, weight);

  @override
  String toString() {
    return 'Dimensions(width: $width, height: $height, length: $length, weight: $weight)';
  }
}

/// @nodoc
abstract mixin class _$DimensionsCopyWith<$Res>
    implements $DimensionsCopyWith<$Res> {
  factory _$DimensionsCopyWith(
          _Dimensions value, $Res Function(_Dimensions) _then) =
      __$DimensionsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'length') int? length,
      @JsonKey(name: 'weight') int? weight});
}

/// @nodoc
class __$DimensionsCopyWithImpl<$Res> implements _$DimensionsCopyWith<$Res> {
  __$DimensionsCopyWithImpl(this._self, this._then);

  final _Dimensions _self;
  final $Res Function(_Dimensions) _then;

  /// Create a copy of Dimensions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? length = freezed,
    Object? weight = freezed,
  }) {
    return _then(_Dimensions(
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$ReceiverDetails {
  @JsonKey(name: 'full_name')
  String? get fullName;
  @JsonKey(name: 'phone', toJson: removeSpaces)
  String? get phone;

  /// Create a copy of ReceiverDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReceiverDetailsCopyWith<ReceiverDetails> get copyWith =>
      _$ReceiverDetailsCopyWithImpl<ReceiverDetails>(
          this as ReceiverDetails, _$identity);

  /// Serializes this ReceiverDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReceiverDetails &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, phone);

  @override
  String toString() {
    return 'ReceiverDetails(fullName: $fullName, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $ReceiverDetailsCopyWith<$Res> {
  factory $ReceiverDetailsCopyWith(
          ReceiverDetails value, $Res Function(ReceiverDetails) _then) =
      _$ReceiverDetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'phone', toJson: removeSpaces) String? phone});
}

/// @nodoc
class _$ReceiverDetailsCopyWithImpl<$Res>
    implements $ReceiverDetailsCopyWith<$Res> {
  _$ReceiverDetailsCopyWithImpl(this._self, this._then);

  final ReceiverDetails _self;
  final $Res Function(ReceiverDetails) _then;

  /// Create a copy of ReceiverDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phone = freezed,
  }) {
    return _then(_self.copyWith(
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReceiverDetails].
extension ReceiverDetailsPatterns on ReceiverDetails {
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
    TResult Function(_ReceiverDetails value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReceiverDetails() when $default != null:
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
    TResult Function(_ReceiverDetails value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReceiverDetails():
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
    TResult? Function(_ReceiverDetails value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReceiverDetails() when $default != null:
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
    TResult Function(@JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'phone', toJson: removeSpaces) String? phone)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReceiverDetails() when $default != null:
        return $default(_that.fullName, _that.phone);
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
    TResult Function(@JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'phone', toJson: removeSpaces) String? phone)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReceiverDetails():
        return $default(_that.fullName, _that.phone);
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
    TResult? Function(@JsonKey(name: 'full_name') String? fullName,
            @JsonKey(name: 'phone', toJson: removeSpaces) String? phone)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReceiverDetails() when $default != null:
        return $default(_that.fullName, _that.phone);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReceiverDetails implements ReceiverDetails {
  const _ReceiverDetails(
      {@JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'phone', toJson: removeSpaces) this.phone});
  factory _ReceiverDetails.fromJson(Map<String, dynamic> json) =>
      _$ReceiverDetailsFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'phone', toJson: removeSpaces)
  final String? phone;

  /// Create a copy of ReceiverDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReceiverDetailsCopyWith<_ReceiverDetails> get copyWith =>
      __$ReceiverDetailsCopyWithImpl<_ReceiverDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReceiverDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReceiverDetails &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, phone);

  @override
  String toString() {
    return 'ReceiverDetails(fullName: $fullName, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$ReceiverDetailsCopyWith<$Res>
    implements $ReceiverDetailsCopyWith<$Res> {
  factory _$ReceiverDetailsCopyWith(
          _ReceiverDetails value, $Res Function(_ReceiverDetails) _then) =
      __$ReceiverDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'phone', toJson: removeSpaces) String? phone});
}

/// @nodoc
class __$ReceiverDetailsCopyWithImpl<$Res>
    implements _$ReceiverDetailsCopyWith<$Res> {
  __$ReceiverDetailsCopyWithImpl(this._self, this._then);

  final _ReceiverDetails _self;
  final $Res Function(_ReceiverDetails) _then;

  /// Create a copy of ReceiverDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fullName = freezed,
    Object? phone = freezed,
  }) {
    return _then(_ReceiverDetails(
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PackagesDetail {
  int? get type;
  Dimensions? get dimensions;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'media')
  List<String>? get media;

  /// Create a copy of PackagesDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PackagesDetailCopyWith<PackagesDetail> get copyWith =>
      _$PackagesDetailCopyWithImpl<PackagesDetail>(
          this as PackagesDetail, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackagesDetail &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.media, media));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, dimensions, description,
      const DeepCollectionEquality().hash(media));

  @override
  String toString() {
    return 'PackagesDetail(type: $type, dimensions: $dimensions, description: $description, media: $media)';
  }
}

/// @nodoc
abstract mixin class $PackagesDetailCopyWith<$Res> {
  factory $PackagesDetailCopyWith(
          PackagesDetail value, $Res Function(PackagesDetail) _then) =
      _$PackagesDetailCopyWithImpl;
  @useResult
  $Res call(
      {int? type,
      Dimensions? dimensions,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'media') List<String>? media});

  $DimensionsCopyWith<$Res>? get dimensions;
}

/// @nodoc
class _$PackagesDetailCopyWithImpl<$Res>
    implements $PackagesDetailCopyWith<$Res> {
  _$PackagesDetailCopyWithImpl(this._self, this._then);

  final PackagesDetail _self;
  final $Res Function(PackagesDetail) _then;

  /// Create a copy of PackagesDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? dimensions = freezed,
    Object? description = freezed,
    Object? media = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      dimensions: freezed == dimensions
          ? _self.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimensions?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  /// Create a copy of PackagesDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DimensionsCopyWith<$Res>? get dimensions {
    if (_self.dimensions == null) {
      return null;
    }

    return $DimensionsCopyWith<$Res>(_self.dimensions!, (value) {
      return _then(_self.copyWith(dimensions: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PackagesDetail].
extension PackagesDetailPatterns on PackagesDetail {
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
    TResult Function(_PackagesDetail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PackagesDetail() when $default != null:
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
    TResult Function(_PackagesDetail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PackagesDetail():
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
    TResult? Function(_PackagesDetail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PackagesDetail() when $default != null:
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
            int? type,
            Dimensions? dimensions,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'media') List<String>? media)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PackagesDetail() when $default != null:
        return $default(
            _that.type, _that.dimensions, _that.description, _that.media);
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
            int? type,
            Dimensions? dimensions,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'media') List<String>? media)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PackagesDetail():
        return $default(
            _that.type, _that.dimensions, _that.description, _that.media);
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
            int? type,
            Dimensions? dimensions,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'media') List<String>? media)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PackagesDetail() when $default != null:
        return $default(
            _that.type, _that.dimensions, _that.description, _that.media);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PackagesDetail implements PackagesDetail {
  const _PackagesDetail(
      {this.type,
      this.dimensions,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'media') final List<String>? media})
      : _media = media;

  @override
  final int? type;
  @override
  final Dimensions? dimensions;
  @override
  @JsonKey(name: 'description')
  final String? description;
  final List<String>? _media;
  @override
  @JsonKey(name: 'media')
  List<String>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PackagesDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PackagesDetailCopyWith<_PackagesDetail> get copyWith =>
      __$PackagesDetailCopyWithImpl<_PackagesDetail>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackagesDetail &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, dimensions, description,
      const DeepCollectionEquality().hash(_media));

  @override
  String toString() {
    return 'PackagesDetail(type: $type, dimensions: $dimensions, description: $description, media: $media)';
  }
}

/// @nodoc
abstract mixin class _$PackagesDetailCopyWith<$Res>
    implements $PackagesDetailCopyWith<$Res> {
  factory _$PackagesDetailCopyWith(
          _PackagesDetail value, $Res Function(_PackagesDetail) _then) =
      __$PackagesDetailCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? type,
      Dimensions? dimensions,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'media') List<String>? media});

  @override
  $DimensionsCopyWith<$Res>? get dimensions;
}

/// @nodoc
class __$PackagesDetailCopyWithImpl<$Res>
    implements _$PackagesDetailCopyWith<$Res> {
  __$PackagesDetailCopyWithImpl(this._self, this._then);

  final _PackagesDetail _self;
  final $Res Function(_PackagesDetail) _then;

  /// Create a copy of PackagesDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? dimensions = freezed,
    Object? description = freezed,
    Object? media = freezed,
  }) {
    return _then(_PackagesDetail(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      dimensions: freezed == dimensions
          ? _self.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimensions?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _self._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  /// Create a copy of PackagesDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DimensionsCopyWith<$Res>? get dimensions {
    if (_self.dimensions == null) {
      return null;
    }

    return $DimensionsCopyWith<$Res>(_self.dimensions!, (value) {
      return _then(_self.copyWith(dimensions: value));
    });
  }
}

// dart format on
