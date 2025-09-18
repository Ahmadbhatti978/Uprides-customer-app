// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehical_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VehicleInfo {
  @JsonKey(name: "id")
  String? get id;
  @JsonKey(name: "vin")
  String? get vin;
  @JsonKey(name: "registration_number")
  String? get registrationNumber;

  /// Create a copy of VehicleInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VehicleInfoCopyWith<VehicleInfo> get copyWith =>
      _$VehicleInfoCopyWithImpl<VehicleInfo>(this as VehicleInfo, _$identity);

  /// Serializes this VehicleInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VehicleInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, vin, registrationNumber);

  @override
  String toString() {
    return 'VehicleInfo(id: $id, vin: $vin, registrationNumber: $registrationNumber)';
  }
}

/// @nodoc
abstract mixin class $VehicleInfoCopyWith<$Res> {
  factory $VehicleInfoCopyWith(
          VehicleInfo value, $Res Function(VehicleInfo) _then) =
      _$VehicleInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "vin") String? vin,
      @JsonKey(name: "registration_number") String? registrationNumber});
}

/// @nodoc
class _$VehicleInfoCopyWithImpl<$Res> implements $VehicleInfoCopyWith<$Res> {
  _$VehicleInfoCopyWithImpl(this._self, this._then);

  final VehicleInfo _self;
  final $Res Function(VehicleInfo) _then;

  /// Create a copy of VehicleInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vin = freezed,
    Object? registrationNumber = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VehicleInfo].
extension VehicleInfoPatterns on VehicleInfo {
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
    TResult Function(_VehicleInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VehicleInfo() when $default != null:
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
    TResult Function(_VehicleInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleInfo():
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
    TResult? Function(_VehicleInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleInfo() when $default != null:
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
            @JsonKey(name: "id") String? id,
            @JsonKey(name: "vin") String? vin,
            @JsonKey(name: "registration_number") String? registrationNumber)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VehicleInfo() when $default != null:
        return $default(_that.id, _that.vin, _that.registrationNumber);
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
            @JsonKey(name: "id") String? id,
            @JsonKey(name: "vin") String? vin,
            @JsonKey(name: "registration_number") String? registrationNumber)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleInfo():
        return $default(_that.id, _that.vin, _that.registrationNumber);
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
            @JsonKey(name: "id") String? id,
            @JsonKey(name: "vin") String? vin,
            @JsonKey(name: "registration_number") String? registrationNumber)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VehicleInfo() when $default != null:
        return $default(_that.id, _that.vin, _that.registrationNumber);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VehicleInfo implements VehicleInfo {
  const _VehicleInfo(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "vin") this.vin,
      @JsonKey(name: "registration_number") this.registrationNumber});
  factory _VehicleInfo.fromJson(Map<String, dynamic> json) =>
      _$VehicleInfoFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "vin")
  final String? vin;
  @override
  @JsonKey(name: "registration_number")
  final String? registrationNumber;

  /// Create a copy of VehicleInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VehicleInfoCopyWith<_VehicleInfo> get copyWith =>
      __$VehicleInfoCopyWithImpl<_VehicleInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VehicleInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VehicleInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, vin, registrationNumber);

  @override
  String toString() {
    return 'VehicleInfo(id: $id, vin: $vin, registrationNumber: $registrationNumber)';
  }
}

/// @nodoc
abstract mixin class _$VehicleInfoCopyWith<$Res>
    implements $VehicleInfoCopyWith<$Res> {
  factory _$VehicleInfoCopyWith(
          _VehicleInfo value, $Res Function(_VehicleInfo) _then) =
      __$VehicleInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "vin") String? vin,
      @JsonKey(name: "registration_number") String? registrationNumber});
}

/// @nodoc
class __$VehicleInfoCopyWithImpl<$Res> implements _$VehicleInfoCopyWith<$Res> {
  __$VehicleInfoCopyWithImpl(this._self, this._then);

  final _VehicleInfo _self;
  final $Res Function(_VehicleInfo) _then;

  /// Create a copy of VehicleInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? vin = freezed,
    Object? registrationNumber = freezed,
  }) {
    return _then(_VehicleInfo(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _self.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
