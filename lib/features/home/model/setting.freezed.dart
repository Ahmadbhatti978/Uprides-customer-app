// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Setting {
  @JsonKey(name: "success")
  bool? get success;
  @JsonKey(name: "message")
  String? get message;
  @JsonKey(name: "data")
  Data? get data;

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingCopyWith<Setting> get copyWith =>
      _$SettingCopyWithImpl<Setting>(this as Setting, _$identity);

  /// Serializes this Setting to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Setting &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @override
  String toString() {
    return 'Setting(success: $success, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $SettingCopyWith<$Res> {
  factory $SettingCopyWith(Setting value, $Res Function(Setting) _then) =
      _$SettingCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SettingCopyWithImpl<$Res> implements $SettingCopyWith<$Res> {
  _$SettingCopyWithImpl(this._self, this._then);

  final Setting _self;
  final $Res Function(Setting) _then;

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Setting].
extension SettingPatterns on Setting {
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
    TResult Function(_Setting value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Setting() when $default != null:
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
    TResult Function(_Setting value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Setting():
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
    TResult? Function(_Setting value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Setting() when $default != null:
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
            @JsonKey(name: "success") bool? success,
            @JsonKey(name: "message") String? message,
            @JsonKey(name: "data") Data? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Setting() when $default != null:
        return $default(_that.success, _that.message, _that.data);
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
            @JsonKey(name: "success") bool? success,
            @JsonKey(name: "message") String? message,
            @JsonKey(name: "data") Data? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Setting():
        return $default(_that.success, _that.message, _that.data);
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
            @JsonKey(name: "success") bool? success,
            @JsonKey(name: "message") String? message,
            @JsonKey(name: "data") Data? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Setting() when $default != null:
        return $default(_that.success, _that.message, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Setting implements Setting {
  const _Setting(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});
  factory _Setting.fromJson(Map<String, dynamic> json) =>
      _$SettingFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final Data? data;

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SettingCopyWith<_Setting> get copyWith =>
      __$SettingCopyWithImpl<_Setting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SettingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Setting &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @override
  String toString() {
    return 'Setting(success: $success, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$SettingCopyWith<$Res> implements $SettingCopyWith<$Res> {
  factory _$SettingCopyWith(_Setting value, $Res Function(_Setting) _then) =
      __$SettingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$SettingCopyWithImpl<$Res> implements _$SettingCopyWith<$Res> {
  __$SettingCopyWithImpl(this._self, this._then);

  final _Setting _self;
  final $Res Function(_Setting) _then;

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_Setting(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "settings")
  Settings? get settings;
  @JsonKey(name: "provider_details")
  ProviderDetails? get providerDetails;
  @JsonKey(name: "ride_id")
  dynamic get rideId;
  @JsonKey(name: "ride_details")
  RideDetails? get rideDetails;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.providerDetails, providerDetails) ||
                other.providerDetails == providerDetails) &&
            const DeepCollectionEquality().equals(other.rideId, rideId) &&
            (identical(other.rideDetails, rideDetails) ||
                other.rideDetails == rideDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, settings, providerDetails,
      const DeepCollectionEquality().hash(rideId), rideDetails);

  @override
  String toString() {
    return 'Data(settings: $settings, providerDetails: $providerDetails, rideId: $rideId, rideDetails: $rideDetails)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "settings") Settings? settings,
      @JsonKey(name: "provider_details") ProviderDetails? providerDetails,
      @JsonKey(name: "ride_id") dynamic rideId,
      @JsonKey(name: "ride_details") RideDetails? rideDetails});

  $SettingsCopyWith<$Res>? get settings;
  $ProviderDetailsCopyWith<$Res>? get providerDetails;
  $RideDetailsCopyWith<$Res>? get rideDetails;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = freezed,
    Object? providerDetails = freezed,
    Object? rideId = freezed,
    Object? rideDetails = freezed,
  }) {
    return _then(_self.copyWith(
      settings: freezed == settings
          ? _self.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings?,
      providerDetails: freezed == providerDetails
          ? _self.providerDetails
          : providerDetails // ignore: cast_nullable_to_non_nullable
              as ProviderDetails?,
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rideDetails: freezed == rideDetails
          ? _self.rideDetails
          : rideDetails // ignore: cast_nullable_to_non_nullable
              as RideDetails?,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res>? get settings {
    if (_self.settings == null) {
      return null;
    }

    return $SettingsCopyWith<$Res>(_self.settings!, (value) {
      return _then(_self.copyWith(settings: value));
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProviderDetailsCopyWith<$Res>? get providerDetails {
    if (_self.providerDetails == null) {
      return null;
    }

    return $ProviderDetailsCopyWith<$Res>(_self.providerDetails!, (value) {
      return _then(_self.copyWith(providerDetails: value));
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideDetailsCopyWith<$Res>? get rideDetails {
    if (_self.rideDetails == null) {
      return null;
    }

    return $RideDetailsCopyWith<$Res>(_self.rideDetails!, (value) {
      return _then(_self.copyWith(rideDetails: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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
    TResult Function(_Data value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
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
    TResult Function(_Data value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
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
    TResult? Function(_Data value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
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
            @JsonKey(name: "settings") Settings? settings,
            @JsonKey(name: "provider_details") ProviderDetails? providerDetails,
            @JsonKey(name: "ride_id") dynamic rideId,
            @JsonKey(name: "ride_details") RideDetails? rideDetails)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.settings, _that.providerDetails, _that.rideId,
            _that.rideDetails);
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
            @JsonKey(name: "settings") Settings? settings,
            @JsonKey(name: "provider_details") ProviderDetails? providerDetails,
            @JsonKey(name: "ride_id") dynamic rideId,
            @JsonKey(name: "ride_details") RideDetails? rideDetails)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
        return $default(_that.settings, _that.providerDetails, _that.rideId,
            _that.rideDetails);
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
            @JsonKey(name: "settings") Settings? settings,
            @JsonKey(name: "provider_details") ProviderDetails? providerDetails,
            @JsonKey(name: "ride_id") dynamic rideId,
            @JsonKey(name: "ride_details") RideDetails? rideDetails)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.settings, _that.providerDetails, _that.rideId,
            _that.rideDetails);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Data implements Data {
  const _Data(
      {@JsonKey(name: "settings") this.settings,
      @JsonKey(name: "provider_details") this.providerDetails,
      @JsonKey(name: "ride_id") this.rideId,
      @JsonKey(name: "ride_details") this.rideDetails});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  @JsonKey(name: "settings")
  final Settings? settings;
  @override
  @JsonKey(name: "provider_details")
  final ProviderDetails? providerDetails;
  @override
  @JsonKey(name: "ride_id")
  final dynamic rideId;
  @override
  @JsonKey(name: "ride_details")
  final RideDetails? rideDetails;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.providerDetails, providerDetails) ||
                other.providerDetails == providerDetails) &&
            const DeepCollectionEquality().equals(other.rideId, rideId) &&
            (identical(other.rideDetails, rideDetails) ||
                other.rideDetails == rideDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, settings, providerDetails,
      const DeepCollectionEquality().hash(rideId), rideDetails);

  @override
  String toString() {
    return 'Data(settings: $settings, providerDetails: $providerDetails, rideId: $rideId, rideDetails: $rideDetails)';
  }
}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) =
      __$DataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "settings") Settings? settings,
      @JsonKey(name: "provider_details") ProviderDetails? providerDetails,
      @JsonKey(name: "ride_id") dynamic rideId,
      @JsonKey(name: "ride_details") RideDetails? rideDetails});

  @override
  $SettingsCopyWith<$Res>? get settings;
  @override
  $ProviderDetailsCopyWith<$Res>? get providerDetails;
  @override
  $RideDetailsCopyWith<$Res>? get rideDetails;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? settings = freezed,
    Object? providerDetails = freezed,
    Object? rideId = freezed,
    Object? rideDetails = freezed,
  }) {
    return _then(_Data(
      settings: freezed == settings
          ? _self.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings?,
      providerDetails: freezed == providerDetails
          ? _self.providerDetails
          : providerDetails // ignore: cast_nullable_to_non_nullable
              as ProviderDetails?,
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rideDetails: freezed == rideDetails
          ? _self.rideDetails
          : rideDetails // ignore: cast_nullable_to_non_nullable
              as RideDetails?,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res>? get settings {
    if (_self.settings == null) {
      return null;
    }

    return $SettingsCopyWith<$Res>(_self.settings!, (value) {
      return _then(_self.copyWith(settings: value));
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProviderDetailsCopyWith<$Res>? get providerDetails {
    if (_self.providerDetails == null) {
      return null;
    }

    return $ProviderDetailsCopyWith<$Res>(_self.providerDetails!, (value) {
      return _then(_self.copyWith(providerDetails: value));
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideDetailsCopyWith<$Res>? get rideDetails {
    if (_self.rideDetails == null) {
      return null;
    }

    return $RideDetailsCopyWith<$Res>(_self.rideDetails!, (value) {
      return _then(_self.copyWith(rideDetails: value));
    });
  }
}

/// @nodoc
mixin _$ProviderDetails {
  @JsonKey(name: "last_location")
  LastLocation? get lastLocation;
  @JsonKey(name: "_id")
  String? get id;
  @JsonKey(name: "email")
  String? get email;
  @JsonKey(name: "__v")
  int? get v;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @JsonKey(name: "designation")
  String? get designation;
  @JsonKey(name: "is_blocked")
  bool? get isBlocked;
  @JsonKey(name: "is_completed")
  bool? get isCompleted;
  @JsonKey(name: "is_deleted")
  bool? get isDeleted;
  @JsonKey(name: "is_email_verified")
  bool? get isEmailVerified;
  @JsonKey(name: "is_phone_verified")
  bool? get isPhoneVerified;
  @JsonKey(name: "rating")
  int? get rating;
  @JsonKey(name: "rating_count")
  int? get ratingCount;
  @JsonKey(name: "role")
  String? get role;
  @JsonKey(name: "status")
  String? get status;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @JsonKey(name: "phone")
  String? get phone;
  @JsonKey(name: "device_id")
  String? get deviceId;
  @JsonKey(name: "first_name")
  String? get firstName;
  @JsonKey(name: "full_name")
  String? get fullName;
  @JsonKey(name: "language")
  String? get language;
  @JsonKey(name: "last_name")
  String? get lastName;
  @JsonKey(name: "profile_pic")
  String? get profilePic;
  @JsonKey(name: "provider")
  String? get provider;
  @JsonKey(name: "username")
  String? get username;
  @JsonKey(name: "fcm_token")
  String? get fcmToken;
  @JsonKey(name: "app_version")
  String? get appVersion;
  @JsonKey(name: "device_type")
  String? get deviceType;

  /// Create a copy of ProviderDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProviderDetailsCopyWith<ProviderDetails> get copyWith =>
      _$ProviderDetailsCopyWithImpl<ProviderDetails>(
          this as ProviderDetails, _$identity);

  /// Serializes this ProviderDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProviderDetails &&
            (identical(other.lastLocation, lastLocation) ||
                other.lastLocation == lastLocation) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.isPhoneVerified, isPhoneVerified) ||
                other.isPhoneVerified == isPhoneVerified) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        lastLocation,
        id,
        email,
        v,
        createdAt,
        designation,
        isBlocked,
        isCompleted,
        isDeleted,
        isEmailVerified,
        isPhoneVerified,
        rating,
        ratingCount,
        role,
        status,
        updatedAt,
        phone,
        deviceId,
        firstName,
        fullName,
        language,
        lastName,
        profilePic,
        provider,
        username,
        fcmToken,
        appVersion,
        deviceType
      ]);

  @override
  String toString() {
    return 'ProviderDetails(lastLocation: $lastLocation, id: $id, email: $email, v: $v, createdAt: $createdAt, designation: $designation, isBlocked: $isBlocked, isCompleted: $isCompleted, isDeleted: $isDeleted, isEmailVerified: $isEmailVerified, isPhoneVerified: $isPhoneVerified, rating: $rating, ratingCount: $ratingCount, role: $role, status: $status, updatedAt: $updatedAt, phone: $phone, deviceId: $deviceId, firstName: $firstName, fullName: $fullName, language: $language, lastName: $lastName, profilePic: $profilePic, provider: $provider, username: $username, fcmToken: $fcmToken, appVersion: $appVersion, deviceType: $deviceType)';
  }
}

/// @nodoc
abstract mixin class $ProviderDetailsCopyWith<$Res> {
  factory $ProviderDetailsCopyWith(
          ProviderDetails value, $Res Function(ProviderDetails) _then) =
      _$ProviderDetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "last_location") LastLocation? lastLocation,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "designation") String? designation,
      @JsonKey(name: "is_blocked") bool? isBlocked,
      @JsonKey(name: "is_completed") bool? isCompleted,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "is_email_verified") bool? isEmailVerified,
      @JsonKey(name: "is_phone_verified") bool? isPhoneVerified,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "rating_count") int? ratingCount,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "device_id") String? deviceId,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "language") String? language,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "profile_pic") String? profilePic,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fcm_token") String? fcmToken,
      @JsonKey(name: "app_version") String? appVersion,
      @JsonKey(name: "device_type") String? deviceType});

  $LastLocationCopyWith<$Res>? get lastLocation;
}

/// @nodoc
class _$ProviderDetailsCopyWithImpl<$Res>
    implements $ProviderDetailsCopyWith<$Res> {
  _$ProviderDetailsCopyWithImpl(this._self, this._then);

  final ProviderDetails _self;
  final $Res Function(ProviderDetails) _then;

  /// Create a copy of ProviderDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastLocation = freezed,
    Object? id = freezed,
    Object? email = freezed,
    Object? v = freezed,
    Object? createdAt = freezed,
    Object? designation = freezed,
    Object? isBlocked = freezed,
    Object? isCompleted = freezed,
    Object? isDeleted = freezed,
    Object? isEmailVerified = freezed,
    Object? isPhoneVerified = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? role = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
    Object? phone = freezed,
    Object? deviceId = freezed,
    Object? firstName = freezed,
    Object? fullName = freezed,
    Object? language = freezed,
    Object? lastName = freezed,
    Object? profilePic = freezed,
    Object? provider = freezed,
    Object? username = freezed,
    Object? fcmToken = freezed,
    Object? appVersion = freezed,
    Object? deviceType = freezed,
  }) {
    return _then(_self.copyWith(
      lastLocation: freezed == lastLocation
          ? _self.lastLocation
          : lastLocation // ignore: cast_nullable_to_non_nullable
              as LastLocation?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _self.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      designation: freezed == designation
          ? _self.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocked: freezed == isBlocked
          ? _self.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCompleted: freezed == isCompleted
          ? _self.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEmailVerified: freezed == isEmailVerified
          ? _self.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneVerified: freezed == isPhoneVerified
          ? _self.isPhoneVerified
          : isPhoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      rating: freezed == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingCount: freezed == ratingCount
          ? _self.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _self.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _self.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _self.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ProviderDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastLocationCopyWith<$Res>? get lastLocation {
    if (_self.lastLocation == null) {
      return null;
    }

    return $LastLocationCopyWith<$Res>(_self.lastLocation!, (value) {
      return _then(_self.copyWith(lastLocation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProviderDetails].
extension ProviderDetailsPatterns on ProviderDetails {
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
    TResult Function(_ProviderDetails value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderDetails() when $default != null:
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
    TResult Function(_ProviderDetails value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderDetails():
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
    TResult? Function(_ProviderDetails value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderDetails() when $default != null:
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
            @JsonKey(name: "last_location") LastLocation? lastLocation,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "email") String? email,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "designation") String? designation,
            @JsonKey(name: "is_blocked") bool? isBlocked,
            @JsonKey(name: "is_completed") bool? isCompleted,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "is_email_verified") bool? isEmailVerified,
            @JsonKey(name: "is_phone_verified") bool? isPhoneVerified,
            @JsonKey(name: "rating") int? rating,
            @JsonKey(name: "rating_count") int? ratingCount,
            @JsonKey(name: "role") String? role,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "phone") String? phone,
            @JsonKey(name: "device_id") String? deviceId,
            @JsonKey(name: "first_name") String? firstName,
            @JsonKey(name: "full_name") String? fullName,
            @JsonKey(name: "language") String? language,
            @JsonKey(name: "last_name") String? lastName,
            @JsonKey(name: "profile_pic") String? profilePic,
            @JsonKey(name: "provider") String? provider,
            @JsonKey(name: "username") String? username,
            @JsonKey(name: "fcm_token") String? fcmToken,
            @JsonKey(name: "app_version") String? appVersion,
            @JsonKey(name: "device_type") String? deviceType)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderDetails() when $default != null:
        return $default(
            _that.lastLocation,
            _that.id,
            _that.email,
            _that.v,
            _that.createdAt,
            _that.designation,
            _that.isBlocked,
            _that.isCompleted,
            _that.isDeleted,
            _that.isEmailVerified,
            _that.isPhoneVerified,
            _that.rating,
            _that.ratingCount,
            _that.role,
            _that.status,
            _that.updatedAt,
            _that.phone,
            _that.deviceId,
            _that.firstName,
            _that.fullName,
            _that.language,
            _that.lastName,
            _that.profilePic,
            _that.provider,
            _that.username,
            _that.fcmToken,
            _that.appVersion,
            _that.deviceType);
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
            @JsonKey(name: "last_location") LastLocation? lastLocation,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "email") String? email,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "designation") String? designation,
            @JsonKey(name: "is_blocked") bool? isBlocked,
            @JsonKey(name: "is_completed") bool? isCompleted,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "is_email_verified") bool? isEmailVerified,
            @JsonKey(name: "is_phone_verified") bool? isPhoneVerified,
            @JsonKey(name: "rating") int? rating,
            @JsonKey(name: "rating_count") int? ratingCount,
            @JsonKey(name: "role") String? role,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "phone") String? phone,
            @JsonKey(name: "device_id") String? deviceId,
            @JsonKey(name: "first_name") String? firstName,
            @JsonKey(name: "full_name") String? fullName,
            @JsonKey(name: "language") String? language,
            @JsonKey(name: "last_name") String? lastName,
            @JsonKey(name: "profile_pic") String? profilePic,
            @JsonKey(name: "provider") String? provider,
            @JsonKey(name: "username") String? username,
            @JsonKey(name: "fcm_token") String? fcmToken,
            @JsonKey(name: "app_version") String? appVersion,
            @JsonKey(name: "device_type") String? deviceType)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderDetails():
        return $default(
            _that.lastLocation,
            _that.id,
            _that.email,
            _that.v,
            _that.createdAt,
            _that.designation,
            _that.isBlocked,
            _that.isCompleted,
            _that.isDeleted,
            _that.isEmailVerified,
            _that.isPhoneVerified,
            _that.rating,
            _that.ratingCount,
            _that.role,
            _that.status,
            _that.updatedAt,
            _that.phone,
            _that.deviceId,
            _that.firstName,
            _that.fullName,
            _that.language,
            _that.lastName,
            _that.profilePic,
            _that.provider,
            _that.username,
            _that.fcmToken,
            _that.appVersion,
            _that.deviceType);
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
            @JsonKey(name: "last_location") LastLocation? lastLocation,
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "email") String? email,
            @JsonKey(name: "__v") int? v,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "designation") String? designation,
            @JsonKey(name: "is_blocked") bool? isBlocked,
            @JsonKey(name: "is_completed") bool? isCompleted,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "is_email_verified") bool? isEmailVerified,
            @JsonKey(name: "is_phone_verified") bool? isPhoneVerified,
            @JsonKey(name: "rating") int? rating,
            @JsonKey(name: "rating_count") int? ratingCount,
            @JsonKey(name: "role") String? role,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "phone") String? phone,
            @JsonKey(name: "device_id") String? deviceId,
            @JsonKey(name: "first_name") String? firstName,
            @JsonKey(name: "full_name") String? fullName,
            @JsonKey(name: "language") String? language,
            @JsonKey(name: "last_name") String? lastName,
            @JsonKey(name: "profile_pic") String? profilePic,
            @JsonKey(name: "provider") String? provider,
            @JsonKey(name: "username") String? username,
            @JsonKey(name: "fcm_token") String? fcmToken,
            @JsonKey(name: "app_version") String? appVersion,
            @JsonKey(name: "device_type") String? deviceType)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderDetails() when $default != null:
        return $default(
            _that.lastLocation,
            _that.id,
            _that.email,
            _that.v,
            _that.createdAt,
            _that.designation,
            _that.isBlocked,
            _that.isCompleted,
            _that.isDeleted,
            _that.isEmailVerified,
            _that.isPhoneVerified,
            _that.rating,
            _that.ratingCount,
            _that.role,
            _that.status,
            _that.updatedAt,
            _that.phone,
            _that.deviceId,
            _that.firstName,
            _that.fullName,
            _that.language,
            _that.lastName,
            _that.profilePic,
            _that.provider,
            _that.username,
            _that.fcmToken,
            _that.appVersion,
            _that.deviceType);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProviderDetails implements ProviderDetails {
  const _ProviderDetails(
      {@JsonKey(name: "last_location") this.lastLocation,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "designation") this.designation,
      @JsonKey(name: "is_blocked") this.isBlocked,
      @JsonKey(name: "is_completed") this.isCompleted,
      @JsonKey(name: "is_deleted") this.isDeleted,
      @JsonKey(name: "is_email_verified") this.isEmailVerified,
      @JsonKey(name: "is_phone_verified") this.isPhoneVerified,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "rating_count") this.ratingCount,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "device_id") this.deviceId,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "full_name") this.fullName,
      @JsonKey(name: "language") this.language,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "profile_pic") this.profilePic,
      @JsonKey(name: "provider") this.provider,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "fcm_token") this.fcmToken,
      @JsonKey(name: "app_version") this.appVersion,
      @JsonKey(name: "device_type") this.deviceType});
  factory _ProviderDetails.fromJson(Map<String, dynamic> json) =>
      _$ProviderDetailsFromJson(json);

  @override
  @JsonKey(name: "last_location")
  final LastLocation? lastLocation;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "designation")
  final String? designation;
  @override
  @JsonKey(name: "is_blocked")
  final bool? isBlocked;
  @override
  @JsonKey(name: "is_completed")
  final bool? isCompleted;
  @override
  @JsonKey(name: "is_deleted")
  final bool? isDeleted;
  @override
  @JsonKey(name: "is_email_verified")
  final bool? isEmailVerified;
  @override
  @JsonKey(name: "is_phone_verified")
  final bool? isPhoneVerified;
  @override
  @JsonKey(name: "rating")
  final int? rating;
  @override
  @JsonKey(name: "rating_count")
  final int? ratingCount;
  @override
  @JsonKey(name: "role")
  final String? role;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "device_id")
  final String? deviceId;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "full_name")
  final String? fullName;
  @override
  @JsonKey(name: "language")
  final String? language;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "profile_pic")
  final String? profilePic;
  @override
  @JsonKey(name: "provider")
  final String? provider;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "fcm_token")
  final String? fcmToken;
  @override
  @JsonKey(name: "app_version")
  final String? appVersion;
  @override
  @JsonKey(name: "device_type")
  final String? deviceType;

  /// Create a copy of ProviderDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProviderDetailsCopyWith<_ProviderDetails> get copyWith =>
      __$ProviderDetailsCopyWithImpl<_ProviderDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProviderDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProviderDetails &&
            (identical(other.lastLocation, lastLocation) ||
                other.lastLocation == lastLocation) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.isPhoneVerified, isPhoneVerified) ||
                other.isPhoneVerified == isPhoneVerified) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        lastLocation,
        id,
        email,
        v,
        createdAt,
        designation,
        isBlocked,
        isCompleted,
        isDeleted,
        isEmailVerified,
        isPhoneVerified,
        rating,
        ratingCount,
        role,
        status,
        updatedAt,
        phone,
        deviceId,
        firstName,
        fullName,
        language,
        lastName,
        profilePic,
        provider,
        username,
        fcmToken,
        appVersion,
        deviceType
      ]);

  @override
  String toString() {
    return 'ProviderDetails(lastLocation: $lastLocation, id: $id, email: $email, v: $v, createdAt: $createdAt, designation: $designation, isBlocked: $isBlocked, isCompleted: $isCompleted, isDeleted: $isDeleted, isEmailVerified: $isEmailVerified, isPhoneVerified: $isPhoneVerified, rating: $rating, ratingCount: $ratingCount, role: $role, status: $status, updatedAt: $updatedAt, phone: $phone, deviceId: $deviceId, firstName: $firstName, fullName: $fullName, language: $language, lastName: $lastName, profilePic: $profilePic, provider: $provider, username: $username, fcmToken: $fcmToken, appVersion: $appVersion, deviceType: $deviceType)';
  }
}

/// @nodoc
abstract mixin class _$ProviderDetailsCopyWith<$Res>
    implements $ProviderDetailsCopyWith<$Res> {
  factory _$ProviderDetailsCopyWith(
          _ProviderDetails value, $Res Function(_ProviderDetails) _then) =
      __$ProviderDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "last_location") LastLocation? lastLocation,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "designation") String? designation,
      @JsonKey(name: "is_blocked") bool? isBlocked,
      @JsonKey(name: "is_completed") bool? isCompleted,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "is_email_verified") bool? isEmailVerified,
      @JsonKey(name: "is_phone_verified") bool? isPhoneVerified,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "rating_count") int? ratingCount,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "device_id") String? deviceId,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "language") String? language,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "profile_pic") String? profilePic,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fcm_token") String? fcmToken,
      @JsonKey(name: "app_version") String? appVersion,
      @JsonKey(name: "device_type") String? deviceType});

  @override
  $LastLocationCopyWith<$Res>? get lastLocation;
}

/// @nodoc
class __$ProviderDetailsCopyWithImpl<$Res>
    implements _$ProviderDetailsCopyWith<$Res> {
  __$ProviderDetailsCopyWithImpl(this._self, this._then);

  final _ProviderDetails _self;
  final $Res Function(_ProviderDetails) _then;

  /// Create a copy of ProviderDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lastLocation = freezed,
    Object? id = freezed,
    Object? email = freezed,
    Object? v = freezed,
    Object? createdAt = freezed,
    Object? designation = freezed,
    Object? isBlocked = freezed,
    Object? isCompleted = freezed,
    Object? isDeleted = freezed,
    Object? isEmailVerified = freezed,
    Object? isPhoneVerified = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? role = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
    Object? phone = freezed,
    Object? deviceId = freezed,
    Object? firstName = freezed,
    Object? fullName = freezed,
    Object? language = freezed,
    Object? lastName = freezed,
    Object? profilePic = freezed,
    Object? provider = freezed,
    Object? username = freezed,
    Object? fcmToken = freezed,
    Object? appVersion = freezed,
    Object? deviceType = freezed,
  }) {
    return _then(_ProviderDetails(
      lastLocation: freezed == lastLocation
          ? _self.lastLocation
          : lastLocation // ignore: cast_nullable_to_non_nullable
              as LastLocation?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _self.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      designation: freezed == designation
          ? _self.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocked: freezed == isBlocked
          ? _self.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCompleted: freezed == isCompleted
          ? _self.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEmailVerified: freezed == isEmailVerified
          ? _self.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneVerified: freezed == isPhoneVerified
          ? _self.isPhoneVerified
          : isPhoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      rating: freezed == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingCount: freezed == ratingCount
          ? _self.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _self.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _self.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _self.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ProviderDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastLocationCopyWith<$Res>? get lastLocation {
    if (_self.lastLocation == null) {
      return null;
    }

    return $LastLocationCopyWith<$Res>(_self.lastLocation!, (value) {
      return _then(_self.copyWith(lastLocation: value));
    });
  }
}

/// @nodoc
mixin _$LastLocation {
  @JsonKey(name: "coordinates")
  List<dynamic>? get coordinates;

  /// Create a copy of LastLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LastLocationCopyWith<LastLocation> get copyWith =>
      _$LastLocationCopyWithImpl<LastLocation>(
          this as LastLocation, _$identity);

  /// Serializes this LastLocation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LastLocation &&
            const DeepCollectionEquality()
                .equals(other.coordinates, coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(coordinates));

  @override
  String toString() {
    return 'LastLocation(coordinates: $coordinates)';
  }
}

/// @nodoc
abstract mixin class $LastLocationCopyWith<$Res> {
  factory $LastLocationCopyWith(
          LastLocation value, $Res Function(LastLocation) _then) =
      _$LastLocationCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: "coordinates") List<dynamic>? coordinates});
}

/// @nodoc
class _$LastLocationCopyWithImpl<$Res> implements $LastLocationCopyWith<$Res> {
  _$LastLocationCopyWithImpl(this._self, this._then);

  final LastLocation _self;
  final $Res Function(LastLocation) _then;

  /// Create a copy of LastLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = freezed,
  }) {
    return _then(_self.copyWith(
      coordinates: freezed == coordinates
          ? _self.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LastLocation].
extension LastLocationPatterns on LastLocation {
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
    TResult Function(_LastLocation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LastLocation() when $default != null:
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
    TResult Function(_LastLocation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LastLocation():
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
    TResult? Function(_LastLocation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LastLocation() when $default != null:
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
    TResult Function(@JsonKey(name: "coordinates") List<dynamic>? coordinates)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LastLocation() when $default != null:
        return $default(_that.coordinates);
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
    TResult Function(@JsonKey(name: "coordinates") List<dynamic>? coordinates)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LastLocation():
        return $default(_that.coordinates);
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
    TResult? Function(@JsonKey(name: "coordinates") List<dynamic>? coordinates)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LastLocation() when $default != null:
        return $default(_that.coordinates);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LastLocation implements LastLocation {
  const _LastLocation(
      {@JsonKey(name: "coordinates") final List<dynamic>? coordinates})
      : _coordinates = coordinates;
  factory _LastLocation.fromJson(Map<String, dynamic> json) =>
      _$LastLocationFromJson(json);

  final List<dynamic>? _coordinates;
  @override
  @JsonKey(name: "coordinates")
  List<dynamic>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of LastLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LastLocationCopyWith<_LastLocation> get copyWith =>
      __$LastLocationCopyWithImpl<_LastLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LastLocationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LastLocation &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_coordinates));

  @override
  String toString() {
    return 'LastLocation(coordinates: $coordinates)';
  }
}

/// @nodoc
abstract mixin class _$LastLocationCopyWith<$Res>
    implements $LastLocationCopyWith<$Res> {
  factory _$LastLocationCopyWith(
          _LastLocation value, $Res Function(_LastLocation) _then) =
      __$LastLocationCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: "coordinates") List<dynamic>? coordinates});
}

/// @nodoc
class __$LastLocationCopyWithImpl<$Res>
    implements _$LastLocationCopyWith<$Res> {
  __$LastLocationCopyWithImpl(this._self, this._then);

  final _LastLocation _self;
  final $Res Function(_LastLocation) _then;

  /// Create a copy of LastLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coordinates = freezed,
  }) {
    return _then(_LastLocation(
      coordinates: freezed == coordinates
          ? _self._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$Settings {
  @JsonKey(name: "admin_country")
  String? get adminCountry;
  @JsonKey(name: "admin_currency_code")
  String? get adminCurrencyCode;
  @JsonKey(name: "admin_currency")
  String? get adminCurrency;
  @JsonKey(name: "admin_timezone")
  String? get adminTimezone;
  @JsonKey(name: "display_date_timezone")
  String? get displayDateTimezone;
  @JsonKey(name: "admin_phoneNumber")
  String? get adminPhoneNumber;
  @JsonKey(name: "admin_email")
  String? get adminEmail;
  @JsonKey(name: "default_map_load_latitude")
  String? get defaultMapLoadLatitude;
  @JsonKey(name: "default_map_load_longitude")
  String? get defaultMapLoadLongitude;
  @JsonKey(name: "driver_timeout_in_seconds")
  int? get driverTimeoutInSeconds;
  @JsonKey(name: "default_search_radius")
  int? get defaultSearchRadius;
  @JsonKey(name: "Scheduled_request_pre_start_seconds")
  int? get scheduledRequestPreStartSeconds;
  @JsonKey(name: "number_of_loop_for_nearest_driver")
  int? get numberOfLoopForNearestDriver;
  @JsonKey(name: "nearest_driver_type")
  String? get nearestDriverType;
  @JsonKey(name: "nearby_providers_call_time")
  int? get nearbyProvidersCallTime;
  @JsonKey(name: "providers_realtime_location_update")
  int? get providersRealtimeLocationUpdate;
  @JsonKey(name: "send_sms_whatsapp")
  bool? get sendSmsWhatsapp;
  @JsonKey(name: "sms_notification")
  bool? get smsNotification;
  @JsonKey(name: "email_notification")
  bool? get emailNotification;
  @JsonKey(name: "draw_path_user_app")
  bool? get drawPathUserApp;
  @JsonKey(name: "android_user_app_force_update")
  bool? get androidUserAppForceUpdate;
  @JsonKey(name: "android_driver_app_force_update")
  bool? get androidDriverAppForceUpdate;
  @JsonKey(name: "ios_user_app_force_update")
  bool? get iosUserAppForceUpdate;
  @JsonKey(name: "ios_driver_app_force_update")
  bool? get iosDriverAppForceUpdate;
  @JsonKey(name: "show_estimation_driver")
  bool? get showEstimationDriver;
  @JsonKey(name: "show_estimation_user")
  bool? get showEstimationUser;
  @JsonKey(name: "nearby_drivers_limit_count")
  int? get nearbyDriversLimitCount;
  @JsonKey(name: "driver_offline_after_min")
  int? get driverOfflineAfterMin;
  @JsonKey(name: "min_online_hr_per_day")
  int? get minOnlineHrPerDay;
  @JsonKey(name: "vat")
  int? get vat;
  @JsonKey(name: "radius_factor_multiplication")
  int? get radiusFactorMultiplication;
  @JsonKey(name: "increase_bid_count")
  int? get increaseBidCount;
  @JsonKey(name: "increase_bid_show_after_time")
  int? get increaseBidShowAfterTime;
  @JsonKey(name: "retry_fetch_nearby_drivers_after_time")
  int? get retryFetchNearbyDriversAfterTime;
  @JsonKey(name: "retry_fetch_trip_drivers_count")
  int? get retryFetchTripDriversCount;
  @JsonKey(name: "pet_friendly")
  int? get petFriendly;
  @JsonKey(name: "promotion")
  int? get promotion;
  @JsonKey(name: "cancellation_fix_charges")
  int? get cancellationFixCharges;
  @JsonKey(name: "platform_commission")
  int? get platformCommission;
  @JsonKey(name: "assist_charges")
  int? get assistCharges;
  @JsonKey(name: "payment_gateway_charges")
  int? get paymentGatewayCharges;
  @JsonKey(name: "driver_profit")
  int? get driverProfit;
  @JsonKey(name: "ride_cancellation_grace_period")
  int? get rideCancellationGracePeriod;
  @JsonKey(name: "assist_value")
  int? get assistValue;
  @JsonKey(name: "min_online_hr_per_week")
  int? get minOnlineHrPerWeek;
  @JsonKey(name: "driver_weekly_subscription_fee")
  int? get driverWeeklySubscriptionFee;
  @JsonKey(name: "customer_android_app_version")
  String? get customerAndroidAppVersion;
  @JsonKey(name: "customer_android_force_update")
  bool? get customerAndroidForceUpdate;
  @JsonKey(name: "driver_android_app_version")
  String? get driverAndroidAppVersion;
  @JsonKey(name: "driver_android_force_update")
  bool? get driverAndroidForceUpdate;
  @JsonKey(name: "customer_ios_app_version")
  String? get customerIosAppVersion;
  @JsonKey(name: "customer_ios_force_update")
  bool? get customerIosForceUpdate;
  @JsonKey(name: "driver_ios_app_version")
  String? get driverIosAppVersion;
  @JsonKey(name: "driver_ios_force_update")
  bool? get driverIosForceUpdate;
  @JsonKey(name: "maintenance_title")
  String? get maintenanceTitle;
  @JsonKey(name: "maintenance_description")
  String? get maintenanceDescription;
  @JsonKey(name: "is_driver_app_under_maintenance")
  bool? get isDriverAppUnderMaintenance;
  @JsonKey(name: "is_customer_app_under_maintenance")
  bool? get isCustomerAppUnderMaintenance;
  @JsonKey(name: "driver_maintenance_scheduled_until")
  String? get driverMaintenanceScheduledUntil;
  @JsonKey(name: "customer_maintenance_scheduled_until")
  String? get customerMaintenanceScheduledUntil;
  @JsonKey(name: "min_bidding_fare")
  int? get minBiddingFare;
  @JsonKey(name: "max_bidding_fare")
  double? get maxBiddingFare;

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<Settings> get copyWith =>
      _$SettingsCopyWithImpl<Settings>(this as Settings, _$identity);

  /// Serializes this Settings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Settings &&
            (identical(other.adminCountry, adminCountry) ||
                other.adminCountry == adminCountry) &&
            (identical(other.adminCurrencyCode, adminCurrencyCode) ||
                other.adminCurrencyCode == adminCurrencyCode) &&
            (identical(other.adminCurrency, adminCurrency) ||
                other.adminCurrency == adminCurrency) &&
            (identical(other.adminTimezone, adminTimezone) ||
                other.adminTimezone == adminTimezone) &&
            (identical(other.displayDateTimezone, displayDateTimezone) ||
                other.displayDateTimezone == displayDateTimezone) &&
            (identical(other.adminPhoneNumber, adminPhoneNumber) ||
                other.adminPhoneNumber == adminPhoneNumber) &&
            (identical(other.adminEmail, adminEmail) ||
                other.adminEmail == adminEmail) &&
            (identical(other.defaultMapLoadLatitude, defaultMapLoadLatitude) ||
                other.defaultMapLoadLatitude == defaultMapLoadLatitude) &&
            (identical(other.defaultMapLoadLongitude, defaultMapLoadLongitude) ||
                other.defaultMapLoadLongitude == defaultMapLoadLongitude) &&
            (identical(other.driverTimeoutInSeconds, driverTimeoutInSeconds) ||
                other.driverTimeoutInSeconds == driverTimeoutInSeconds) &&
            (identical(other.defaultSearchRadius, defaultSearchRadius) ||
                other.defaultSearchRadius == defaultSearchRadius) &&
            (identical(other.scheduledRequestPreStartSeconds, scheduledRequestPreStartSeconds) ||
                other.scheduledRequestPreStartSeconds ==
                    scheduledRequestPreStartSeconds) &&
            (identical(other.numberOfLoopForNearestDriver, numberOfLoopForNearestDriver) ||
                other.numberOfLoopForNearestDriver ==
                    numberOfLoopForNearestDriver) &&
            (identical(other.nearestDriverType, nearestDriverType) ||
                other.nearestDriverType == nearestDriverType) &&
            (identical(other.nearbyProvidersCallTime, nearbyProvidersCallTime) ||
                other.nearbyProvidersCallTime == nearbyProvidersCallTime) &&
            (identical(other.providersRealtimeLocationUpdate, providersRealtimeLocationUpdate) ||
                other.providersRealtimeLocationUpdate ==
                    providersRealtimeLocationUpdate) &&
            (identical(other.sendSmsWhatsapp, sendSmsWhatsapp) ||
                other.sendSmsWhatsapp == sendSmsWhatsapp) &&
            (identical(other.smsNotification, smsNotification) ||
                other.smsNotification == smsNotification) &&
            (identical(other.emailNotification, emailNotification) ||
                other.emailNotification == emailNotification) &&
            (identical(other.drawPathUserApp, drawPathUserApp) ||
                other.drawPathUserApp == drawPathUserApp) &&
            (identical(other.androidUserAppForceUpdate, androidUserAppForceUpdate) ||
                other.androidUserAppForceUpdate == androidUserAppForceUpdate) &&
            (identical(other.androidDriverAppForceUpdate, androidDriverAppForceUpdate) ||
                other.androidDriverAppForceUpdate ==
                    androidDriverAppForceUpdate) &&
            (identical(other.iosUserAppForceUpdate, iosUserAppForceUpdate) ||
                other.iosUserAppForceUpdate == iosUserAppForceUpdate) &&
            (identical(other.iosDriverAppForceUpdate, iosDriverAppForceUpdate) ||
                other.iosDriverAppForceUpdate == iosDriverAppForceUpdate) &&
            (identical(other.showEstimationDriver, showEstimationDriver) ||
                other.showEstimationDriver == showEstimationDriver) &&
            (identical(other.showEstimationUser, showEstimationUser) || other.showEstimationUser == showEstimationUser) &&
            (identical(other.nearbyDriversLimitCount, nearbyDriversLimitCount) || other.nearbyDriversLimitCount == nearbyDriversLimitCount) &&
            (identical(other.driverOfflineAfterMin, driverOfflineAfterMin) || other.driverOfflineAfterMin == driverOfflineAfterMin) &&
            (identical(other.minOnlineHrPerDay, minOnlineHrPerDay) || other.minOnlineHrPerDay == minOnlineHrPerDay) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.radiusFactorMultiplication, radiusFactorMultiplication) || other.radiusFactorMultiplication == radiusFactorMultiplication) &&
            (identical(other.increaseBidCount, increaseBidCount) || other.increaseBidCount == increaseBidCount) &&
            (identical(other.increaseBidShowAfterTime, increaseBidShowAfterTime) || other.increaseBidShowAfterTime == increaseBidShowAfterTime) &&
            (identical(other.retryFetchNearbyDriversAfterTime, retryFetchNearbyDriversAfterTime) || other.retryFetchNearbyDriversAfterTime == retryFetchNearbyDriversAfterTime) &&
            (identical(other.retryFetchTripDriversCount, retryFetchTripDriversCount) || other.retryFetchTripDriversCount == retryFetchTripDriversCount) &&
            (identical(other.petFriendly, petFriendly) || other.petFriendly == petFriendly) &&
            (identical(other.promotion, promotion) || other.promotion == promotion) &&
            (identical(other.cancellationFixCharges, cancellationFixCharges) || other.cancellationFixCharges == cancellationFixCharges) &&
            (identical(other.platformCommission, platformCommission) || other.platformCommission == platformCommission) &&
            (identical(other.assistCharges, assistCharges) || other.assistCharges == assistCharges) &&
            (identical(other.paymentGatewayCharges, paymentGatewayCharges) || other.paymentGatewayCharges == paymentGatewayCharges) &&
            (identical(other.driverProfit, driverProfit) || other.driverProfit == driverProfit) &&
            (identical(other.rideCancellationGracePeriod, rideCancellationGracePeriod) || other.rideCancellationGracePeriod == rideCancellationGracePeriod) &&
            (identical(other.assistValue, assistValue) || other.assistValue == assistValue) &&
            (identical(other.minOnlineHrPerWeek, minOnlineHrPerWeek) || other.minOnlineHrPerWeek == minOnlineHrPerWeek) &&
            (identical(other.driverWeeklySubscriptionFee, driverWeeklySubscriptionFee) || other.driverWeeklySubscriptionFee == driverWeeklySubscriptionFee) &&
            (identical(other.customerAndroidAppVersion, customerAndroidAppVersion) || other.customerAndroidAppVersion == customerAndroidAppVersion) &&
            (identical(other.customerAndroidForceUpdate, customerAndroidForceUpdate) || other.customerAndroidForceUpdate == customerAndroidForceUpdate) &&
            (identical(other.driverAndroidAppVersion, driverAndroidAppVersion) || other.driverAndroidAppVersion == driverAndroidAppVersion) &&
            (identical(other.driverAndroidForceUpdate, driverAndroidForceUpdate) || other.driverAndroidForceUpdate == driverAndroidForceUpdate) &&
            (identical(other.customerIosAppVersion, customerIosAppVersion) || other.customerIosAppVersion == customerIosAppVersion) &&
            (identical(other.customerIosForceUpdate, customerIosForceUpdate) || other.customerIosForceUpdate == customerIosForceUpdate) &&
            (identical(other.driverIosAppVersion, driverIosAppVersion) || other.driverIosAppVersion == driverIosAppVersion) &&
            (identical(other.driverIosForceUpdate, driverIosForceUpdate) || other.driverIosForceUpdate == driverIosForceUpdate) &&
            (identical(other.maintenanceTitle, maintenanceTitle) || other.maintenanceTitle == maintenanceTitle) &&
            (identical(other.maintenanceDescription, maintenanceDescription) || other.maintenanceDescription == maintenanceDescription) &&
            (identical(other.isDriverAppUnderMaintenance, isDriverAppUnderMaintenance) || other.isDriverAppUnderMaintenance == isDriverAppUnderMaintenance) &&
            (identical(other.isCustomerAppUnderMaintenance, isCustomerAppUnderMaintenance) || other.isCustomerAppUnderMaintenance == isCustomerAppUnderMaintenance) &&
            (identical(other.driverMaintenanceScheduledUntil, driverMaintenanceScheduledUntil) || other.driverMaintenanceScheduledUntil == driverMaintenanceScheduledUntil) &&
            (identical(other.customerMaintenanceScheduledUntil, customerMaintenanceScheduledUntil) || other.customerMaintenanceScheduledUntil == customerMaintenanceScheduledUntil) &&
            (identical(other.minBiddingFare, minBiddingFare) || other.minBiddingFare == minBiddingFare) &&
            (identical(other.maxBiddingFare, maxBiddingFare) || other.maxBiddingFare == maxBiddingFare));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adminCountry,
        adminCurrencyCode,
        adminCurrency,
        adminTimezone,
        displayDateTimezone,
        adminPhoneNumber,
        adminEmail,
        defaultMapLoadLatitude,
        defaultMapLoadLongitude,
        driverTimeoutInSeconds,
        defaultSearchRadius,
        scheduledRequestPreStartSeconds,
        numberOfLoopForNearestDriver,
        nearestDriverType,
        nearbyProvidersCallTime,
        providersRealtimeLocationUpdate,
        sendSmsWhatsapp,
        smsNotification,
        emailNotification,
        drawPathUserApp,
        androidUserAppForceUpdate,
        androidDriverAppForceUpdate,
        iosUserAppForceUpdate,
        iosDriverAppForceUpdate,
        showEstimationDriver,
        showEstimationUser,
        nearbyDriversLimitCount,
        driverOfflineAfterMin,
        minOnlineHrPerDay,
        vat,
        radiusFactorMultiplication,
        increaseBidCount,
        increaseBidShowAfterTime,
        retryFetchNearbyDriversAfterTime,
        retryFetchTripDriversCount,
        petFriendly,
        promotion,
        cancellationFixCharges,
        platformCommission,
        assistCharges,
        paymentGatewayCharges,
        driverProfit,
        rideCancellationGracePeriod,
        assistValue,
        minOnlineHrPerWeek,
        driverWeeklySubscriptionFee,
        customerAndroidAppVersion,
        customerAndroidForceUpdate,
        driverAndroidAppVersion,
        driverAndroidForceUpdate,
        customerIosAppVersion,
        customerIosForceUpdate,
        driverIosAppVersion,
        driverIosForceUpdate,
        maintenanceTitle,
        maintenanceDescription,
        isDriverAppUnderMaintenance,
        isCustomerAppUnderMaintenance,
        driverMaintenanceScheduledUntil,
        customerMaintenanceScheduledUntil,
        minBiddingFare,
        maxBiddingFare
      ]);

  @override
  String toString() {
    return 'Settings(adminCountry: $adminCountry, adminCurrencyCode: $adminCurrencyCode, adminCurrency: $adminCurrency, adminTimezone: $adminTimezone, displayDateTimezone: $displayDateTimezone, adminPhoneNumber: $adminPhoneNumber, adminEmail: $adminEmail, defaultMapLoadLatitude: $defaultMapLoadLatitude, defaultMapLoadLongitude: $defaultMapLoadLongitude, driverTimeoutInSeconds: $driverTimeoutInSeconds, defaultSearchRadius: $defaultSearchRadius, scheduledRequestPreStartSeconds: $scheduledRequestPreStartSeconds, numberOfLoopForNearestDriver: $numberOfLoopForNearestDriver, nearestDriverType: $nearestDriverType, nearbyProvidersCallTime: $nearbyProvidersCallTime, providersRealtimeLocationUpdate: $providersRealtimeLocationUpdate, sendSmsWhatsapp: $sendSmsWhatsapp, smsNotification: $smsNotification, emailNotification: $emailNotification, drawPathUserApp: $drawPathUserApp, androidUserAppForceUpdate: $androidUserAppForceUpdate, androidDriverAppForceUpdate: $androidDriverAppForceUpdate, iosUserAppForceUpdate: $iosUserAppForceUpdate, iosDriverAppForceUpdate: $iosDriverAppForceUpdate, showEstimationDriver: $showEstimationDriver, showEstimationUser: $showEstimationUser, nearbyDriversLimitCount: $nearbyDriversLimitCount, driverOfflineAfterMin: $driverOfflineAfterMin, minOnlineHrPerDay: $minOnlineHrPerDay, vat: $vat, radiusFactorMultiplication: $radiusFactorMultiplication, increaseBidCount: $increaseBidCount, increaseBidShowAfterTime: $increaseBidShowAfterTime, retryFetchNearbyDriversAfterTime: $retryFetchNearbyDriversAfterTime, retryFetchTripDriversCount: $retryFetchTripDriversCount, petFriendly: $petFriendly, promotion: $promotion, cancellationFixCharges: $cancellationFixCharges, platformCommission: $platformCommission, assistCharges: $assistCharges, paymentGatewayCharges: $paymentGatewayCharges, driverProfit: $driverProfit, rideCancellationGracePeriod: $rideCancellationGracePeriod, assistValue: $assistValue, minOnlineHrPerWeek: $minOnlineHrPerWeek, driverWeeklySubscriptionFee: $driverWeeklySubscriptionFee, customerAndroidAppVersion: $customerAndroidAppVersion, customerAndroidForceUpdate: $customerAndroidForceUpdate, driverAndroidAppVersion: $driverAndroidAppVersion, driverAndroidForceUpdate: $driverAndroidForceUpdate, customerIosAppVersion: $customerIosAppVersion, customerIosForceUpdate: $customerIosForceUpdate, driverIosAppVersion: $driverIosAppVersion, driverIosForceUpdate: $driverIosForceUpdate, maintenanceTitle: $maintenanceTitle, maintenanceDescription: $maintenanceDescription, isDriverAppUnderMaintenance: $isDriverAppUnderMaintenance, isCustomerAppUnderMaintenance: $isCustomerAppUnderMaintenance, driverMaintenanceScheduledUntil: $driverMaintenanceScheduledUntil, customerMaintenanceScheduledUntil: $customerMaintenanceScheduledUntil, minBiddingFare: $minBiddingFare, maxBiddingFare: $maxBiddingFare)';
  }
}

/// @nodoc
abstract mixin class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) _then) =
      _$SettingsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "admin_country") String? adminCountry,
      @JsonKey(name: "admin_currency_code") String? adminCurrencyCode,
      @JsonKey(name: "admin_currency") String? adminCurrency,
      @JsonKey(name: "admin_timezone") String? adminTimezone,
      @JsonKey(name: "display_date_timezone") String? displayDateTimezone,
      @JsonKey(name: "admin_phoneNumber") String? adminPhoneNumber,
      @JsonKey(name: "admin_email") String? adminEmail,
      @JsonKey(name: "default_map_load_latitude")
      String? defaultMapLoadLatitude,
      @JsonKey(name: "default_map_load_longitude")
      String? defaultMapLoadLongitude,
      @JsonKey(name: "driver_timeout_in_seconds") int? driverTimeoutInSeconds,
      @JsonKey(name: "default_search_radius") int? defaultSearchRadius,
      @JsonKey(name: "Scheduled_request_pre_start_seconds")
      int? scheduledRequestPreStartSeconds,
      @JsonKey(name: "number_of_loop_for_nearest_driver")
      int? numberOfLoopForNearestDriver,
      @JsonKey(name: "nearest_driver_type") String? nearestDriverType,
      @JsonKey(name: "nearby_providers_call_time") int? nearbyProvidersCallTime,
      @JsonKey(name: "providers_realtime_location_update")
      int? providersRealtimeLocationUpdate,
      @JsonKey(name: "send_sms_whatsapp") bool? sendSmsWhatsapp,
      @JsonKey(name: "sms_notification") bool? smsNotification,
      @JsonKey(name: "email_notification") bool? emailNotification,
      @JsonKey(name: "draw_path_user_app") bool? drawPathUserApp,
      @JsonKey(name: "android_user_app_force_update")
      bool? androidUserAppForceUpdate,
      @JsonKey(name: "android_driver_app_force_update")
      bool? androidDriverAppForceUpdate,
      @JsonKey(name: "ios_user_app_force_update") bool? iosUserAppForceUpdate,
      @JsonKey(name: "ios_driver_app_force_update")
      bool? iosDriverAppForceUpdate,
      @JsonKey(name: "show_estimation_driver") bool? showEstimationDriver,
      @JsonKey(name: "show_estimation_user") bool? showEstimationUser,
      @JsonKey(name: "nearby_drivers_limit_count") int? nearbyDriversLimitCount,
      @JsonKey(name: "driver_offline_after_min") int? driverOfflineAfterMin,
      @JsonKey(name: "min_online_hr_per_day") int? minOnlineHrPerDay,
      @JsonKey(name: "vat") int? vat,
      @JsonKey(name: "radius_factor_multiplication")
      int? radiusFactorMultiplication,
      @JsonKey(name: "increase_bid_count") int? increaseBidCount,
      @JsonKey(name: "increase_bid_show_after_time")
      int? increaseBidShowAfterTime,
      @JsonKey(name: "retry_fetch_nearby_drivers_after_time")
      int? retryFetchNearbyDriversAfterTime,
      @JsonKey(name: "retry_fetch_trip_drivers_count")
      int? retryFetchTripDriversCount,
      @JsonKey(name: "pet_friendly") int? petFriendly,
      @JsonKey(name: "promotion") int? promotion,
      @JsonKey(name: "cancellation_fix_charges") int? cancellationFixCharges,
      @JsonKey(name: "platform_commission") int? platformCommission,
      @JsonKey(name: "assist_charges") int? assistCharges,
      @JsonKey(name: "payment_gateway_charges") int? paymentGatewayCharges,
      @JsonKey(name: "driver_profit") int? driverProfit,
      @JsonKey(name: "ride_cancellation_grace_period")
      int? rideCancellationGracePeriod,
      @JsonKey(name: "assist_value") int? assistValue,
      @JsonKey(name: "min_online_hr_per_week") int? minOnlineHrPerWeek,
      @JsonKey(name: "driver_weekly_subscription_fee")
      int? driverWeeklySubscriptionFee,
      @JsonKey(name: "customer_android_app_version")
      String? customerAndroidAppVersion,
      @JsonKey(name: "customer_android_force_update")
      bool? customerAndroidForceUpdate,
      @JsonKey(name: "driver_android_app_version")
      String? driverAndroidAppVersion,
      @JsonKey(name: "driver_android_force_update")
      bool? driverAndroidForceUpdate,
      @JsonKey(name: "customer_ios_app_version") String? customerIosAppVersion,
      @JsonKey(name: "customer_ios_force_update") bool? customerIosForceUpdate,
      @JsonKey(name: "driver_ios_app_version") String? driverIosAppVersion,
      @JsonKey(name: "driver_ios_force_update") bool? driverIosForceUpdate,
      @JsonKey(name: "maintenance_title") String? maintenanceTitle,
      @JsonKey(name: "maintenance_description") String? maintenanceDescription,
      @JsonKey(name: "is_driver_app_under_maintenance")
      bool? isDriverAppUnderMaintenance,
      @JsonKey(name: "is_customer_app_under_maintenance")
      bool? isCustomerAppUnderMaintenance,
      @JsonKey(name: "driver_maintenance_scheduled_until")
      String? driverMaintenanceScheduledUntil,
      @JsonKey(name: "customer_maintenance_scheduled_until")
      String? customerMaintenanceScheduledUntil,
      @JsonKey(name: "min_bidding_fare") int? minBiddingFare,
      @JsonKey(name: "max_bidding_fare") double? maxBiddingFare});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res> implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._self, this._then);

  final Settings _self;
  final $Res Function(Settings) _then;

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminCountry = freezed,
    Object? adminCurrencyCode = freezed,
    Object? adminCurrency = freezed,
    Object? adminTimezone = freezed,
    Object? displayDateTimezone = freezed,
    Object? adminPhoneNumber = freezed,
    Object? adminEmail = freezed,
    Object? defaultMapLoadLatitude = freezed,
    Object? defaultMapLoadLongitude = freezed,
    Object? driverTimeoutInSeconds = freezed,
    Object? defaultSearchRadius = freezed,
    Object? scheduledRequestPreStartSeconds = freezed,
    Object? numberOfLoopForNearestDriver = freezed,
    Object? nearestDriverType = freezed,
    Object? nearbyProvidersCallTime = freezed,
    Object? providersRealtimeLocationUpdate = freezed,
    Object? sendSmsWhatsapp = freezed,
    Object? smsNotification = freezed,
    Object? emailNotification = freezed,
    Object? drawPathUserApp = freezed,
    Object? androidUserAppForceUpdate = freezed,
    Object? androidDriverAppForceUpdate = freezed,
    Object? iosUserAppForceUpdate = freezed,
    Object? iosDriverAppForceUpdate = freezed,
    Object? showEstimationDriver = freezed,
    Object? showEstimationUser = freezed,
    Object? nearbyDriversLimitCount = freezed,
    Object? driverOfflineAfterMin = freezed,
    Object? minOnlineHrPerDay = freezed,
    Object? vat = freezed,
    Object? radiusFactorMultiplication = freezed,
    Object? increaseBidCount = freezed,
    Object? increaseBidShowAfterTime = freezed,
    Object? retryFetchNearbyDriversAfterTime = freezed,
    Object? retryFetchTripDriversCount = freezed,
    Object? petFriendly = freezed,
    Object? promotion = freezed,
    Object? cancellationFixCharges = freezed,
    Object? platformCommission = freezed,
    Object? assistCharges = freezed,
    Object? paymentGatewayCharges = freezed,
    Object? driverProfit = freezed,
    Object? rideCancellationGracePeriod = freezed,
    Object? assistValue = freezed,
    Object? minOnlineHrPerWeek = freezed,
    Object? driverWeeklySubscriptionFee = freezed,
    Object? customerAndroidAppVersion = freezed,
    Object? customerAndroidForceUpdate = freezed,
    Object? driverAndroidAppVersion = freezed,
    Object? driverAndroidForceUpdate = freezed,
    Object? customerIosAppVersion = freezed,
    Object? customerIosForceUpdate = freezed,
    Object? driverIosAppVersion = freezed,
    Object? driverIosForceUpdate = freezed,
    Object? maintenanceTitle = freezed,
    Object? maintenanceDescription = freezed,
    Object? isDriverAppUnderMaintenance = freezed,
    Object? isCustomerAppUnderMaintenance = freezed,
    Object? driverMaintenanceScheduledUntil = freezed,
    Object? customerMaintenanceScheduledUntil = freezed,
    Object? minBiddingFare = freezed,
    Object? maxBiddingFare = freezed,
  }) {
    return _then(_self.copyWith(
      adminCountry: freezed == adminCountry
          ? _self.adminCountry
          : adminCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      adminCurrencyCode: freezed == adminCurrencyCode
          ? _self.adminCurrencyCode
          : adminCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      adminCurrency: freezed == adminCurrency
          ? _self.adminCurrency
          : adminCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      adminTimezone: freezed == adminTimezone
          ? _self.adminTimezone
          : adminTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
      displayDateTimezone: freezed == displayDateTimezone
          ? _self.displayDateTimezone
          : displayDateTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
      adminPhoneNumber: freezed == adminPhoneNumber
          ? _self.adminPhoneNumber
          : adminPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      adminEmail: freezed == adminEmail
          ? _self.adminEmail
          : adminEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultMapLoadLatitude: freezed == defaultMapLoadLatitude
          ? _self.defaultMapLoadLatitude
          : defaultMapLoadLatitude // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultMapLoadLongitude: freezed == defaultMapLoadLongitude
          ? _self.defaultMapLoadLongitude
          : defaultMapLoadLongitude // ignore: cast_nullable_to_non_nullable
              as String?,
      driverTimeoutInSeconds: freezed == driverTimeoutInSeconds
          ? _self.driverTimeoutInSeconds
          : driverTimeoutInSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultSearchRadius: freezed == defaultSearchRadius
          ? _self.defaultSearchRadius
          : defaultSearchRadius // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduledRequestPreStartSeconds: freezed ==
              scheduledRequestPreStartSeconds
          ? _self.scheduledRequestPreStartSeconds
          : scheduledRequestPreStartSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfLoopForNearestDriver: freezed == numberOfLoopForNearestDriver
          ? _self.numberOfLoopForNearestDriver
          : numberOfLoopForNearestDriver // ignore: cast_nullable_to_non_nullable
              as int?,
      nearestDriverType: freezed == nearestDriverType
          ? _self.nearestDriverType
          : nearestDriverType // ignore: cast_nullable_to_non_nullable
              as String?,
      nearbyProvidersCallTime: freezed == nearbyProvidersCallTime
          ? _self.nearbyProvidersCallTime
          : nearbyProvidersCallTime // ignore: cast_nullable_to_non_nullable
              as int?,
      providersRealtimeLocationUpdate: freezed ==
              providersRealtimeLocationUpdate
          ? _self.providersRealtimeLocationUpdate
          : providersRealtimeLocationUpdate // ignore: cast_nullable_to_non_nullable
              as int?,
      sendSmsWhatsapp: freezed == sendSmsWhatsapp
          ? _self.sendSmsWhatsapp
          : sendSmsWhatsapp // ignore: cast_nullable_to_non_nullable
              as bool?,
      smsNotification: freezed == smsNotification
          ? _self.smsNotification
          : smsNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailNotification: freezed == emailNotification
          ? _self.emailNotification
          : emailNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      drawPathUserApp: freezed == drawPathUserApp
          ? _self.drawPathUserApp
          : drawPathUserApp // ignore: cast_nullable_to_non_nullable
              as bool?,
      androidUserAppForceUpdate: freezed == androidUserAppForceUpdate
          ? _self.androidUserAppForceUpdate
          : androidUserAppForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      androidDriverAppForceUpdate: freezed == androidDriverAppForceUpdate
          ? _self.androidDriverAppForceUpdate
          : androidDriverAppForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      iosUserAppForceUpdate: freezed == iosUserAppForceUpdate
          ? _self.iosUserAppForceUpdate
          : iosUserAppForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      iosDriverAppForceUpdate: freezed == iosDriverAppForceUpdate
          ? _self.iosDriverAppForceUpdate
          : iosDriverAppForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      showEstimationDriver: freezed == showEstimationDriver
          ? _self.showEstimationDriver
          : showEstimationDriver // ignore: cast_nullable_to_non_nullable
              as bool?,
      showEstimationUser: freezed == showEstimationUser
          ? _self.showEstimationUser
          : showEstimationUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      nearbyDriversLimitCount: freezed == nearbyDriversLimitCount
          ? _self.nearbyDriversLimitCount
          : nearbyDriversLimitCount // ignore: cast_nullable_to_non_nullable
              as int?,
      driverOfflineAfterMin: freezed == driverOfflineAfterMin
          ? _self.driverOfflineAfterMin
          : driverOfflineAfterMin // ignore: cast_nullable_to_non_nullable
              as int?,
      minOnlineHrPerDay: freezed == minOnlineHrPerDay
          ? _self.minOnlineHrPerDay
          : minOnlineHrPerDay // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: freezed == vat
          ? _self.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as int?,
      radiusFactorMultiplication: freezed == radiusFactorMultiplication
          ? _self.radiusFactorMultiplication
          : radiusFactorMultiplication // ignore: cast_nullable_to_non_nullable
              as int?,
      increaseBidCount: freezed == increaseBidCount
          ? _self.increaseBidCount
          : increaseBidCount // ignore: cast_nullable_to_non_nullable
              as int?,
      increaseBidShowAfterTime: freezed == increaseBidShowAfterTime
          ? _self.increaseBidShowAfterTime
          : increaseBidShowAfterTime // ignore: cast_nullable_to_non_nullable
              as int?,
      retryFetchNearbyDriversAfterTime: freezed ==
              retryFetchNearbyDriversAfterTime
          ? _self.retryFetchNearbyDriversAfterTime
          : retryFetchNearbyDriversAfterTime // ignore: cast_nullable_to_non_nullable
              as int?,
      retryFetchTripDriversCount: freezed == retryFetchTripDriversCount
          ? _self.retryFetchTripDriversCount
          : retryFetchTripDriversCount // ignore: cast_nullable_to_non_nullable
              as int?,
      petFriendly: freezed == petFriendly
          ? _self.petFriendly
          : petFriendly // ignore: cast_nullable_to_non_nullable
              as int?,
      promotion: freezed == promotion
          ? _self.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as int?,
      cancellationFixCharges: freezed == cancellationFixCharges
          ? _self.cancellationFixCharges
          : cancellationFixCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      platformCommission: freezed == platformCommission
          ? _self.platformCommission
          : platformCommission // ignore: cast_nullable_to_non_nullable
              as int?,
      assistCharges: freezed == assistCharges
          ? _self.assistCharges
          : assistCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentGatewayCharges: freezed == paymentGatewayCharges
          ? _self.paymentGatewayCharges
          : paymentGatewayCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      driverProfit: freezed == driverProfit
          ? _self.driverProfit
          : driverProfit // ignore: cast_nullable_to_non_nullable
              as int?,
      rideCancellationGracePeriod: freezed == rideCancellationGracePeriod
          ? _self.rideCancellationGracePeriod
          : rideCancellationGracePeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      assistValue: freezed == assistValue
          ? _self.assistValue
          : assistValue // ignore: cast_nullable_to_non_nullable
              as int?,
      minOnlineHrPerWeek: freezed == minOnlineHrPerWeek
          ? _self.minOnlineHrPerWeek
          : minOnlineHrPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      driverWeeklySubscriptionFee: freezed == driverWeeklySubscriptionFee
          ? _self.driverWeeklySubscriptionFee
          : driverWeeklySubscriptionFee // ignore: cast_nullable_to_non_nullable
              as int?,
      customerAndroidAppVersion: freezed == customerAndroidAppVersion
          ? _self.customerAndroidAppVersion
          : customerAndroidAppVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      customerAndroidForceUpdate: freezed == customerAndroidForceUpdate
          ? _self.customerAndroidForceUpdate
          : customerAndroidForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      driverAndroidAppVersion: freezed == driverAndroidAppVersion
          ? _self.driverAndroidAppVersion
          : driverAndroidAppVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      driverAndroidForceUpdate: freezed == driverAndroidForceUpdate
          ? _self.driverAndroidForceUpdate
          : driverAndroidForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      customerIosAppVersion: freezed == customerIosAppVersion
          ? _self.customerIosAppVersion
          : customerIosAppVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      customerIosForceUpdate: freezed == customerIosForceUpdate
          ? _self.customerIosForceUpdate
          : customerIosForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      driverIosAppVersion: freezed == driverIosAppVersion
          ? _self.driverIosAppVersion
          : driverIosAppVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      driverIosForceUpdate: freezed == driverIosForceUpdate
          ? _self.driverIosForceUpdate
          : driverIosForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintenanceTitle: freezed == maintenanceTitle
          ? _self.maintenanceTitle
          : maintenanceTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      maintenanceDescription: freezed == maintenanceDescription
          ? _self.maintenanceDescription
          : maintenanceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      isDriverAppUnderMaintenance: freezed == isDriverAppUnderMaintenance
          ? _self.isDriverAppUnderMaintenance
          : isDriverAppUnderMaintenance // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCustomerAppUnderMaintenance: freezed == isCustomerAppUnderMaintenance
          ? _self.isCustomerAppUnderMaintenance
          : isCustomerAppUnderMaintenance // ignore: cast_nullable_to_non_nullable
              as bool?,
      driverMaintenanceScheduledUntil: freezed ==
              driverMaintenanceScheduledUntil
          ? _self.driverMaintenanceScheduledUntil
          : driverMaintenanceScheduledUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      customerMaintenanceScheduledUntil: freezed ==
              customerMaintenanceScheduledUntil
          ? _self.customerMaintenanceScheduledUntil
          : customerMaintenanceScheduledUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      minBiddingFare: freezed == minBiddingFare
          ? _self.minBiddingFare
          : minBiddingFare // ignore: cast_nullable_to_non_nullable
              as int?,
      maxBiddingFare: freezed == maxBiddingFare
          ? _self.maxBiddingFare
          : maxBiddingFare // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Settings].
extension SettingsPatterns on Settings {
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
    TResult Function(_Settings value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Settings() when $default != null:
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
    TResult Function(_Settings value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Settings():
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
    TResult? Function(_Settings value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Settings() when $default != null:
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
            @JsonKey(name: "admin_country") String? adminCountry,
            @JsonKey(name: "admin_currency_code") String? adminCurrencyCode,
            @JsonKey(name: "admin_currency") String? adminCurrency,
            @JsonKey(name: "admin_timezone") String? adminTimezone,
            @JsonKey(name: "display_date_timezone") String? displayDateTimezone,
            @JsonKey(name: "admin_phoneNumber") String? adminPhoneNumber,
            @JsonKey(name: "admin_email") String? adminEmail,
            @JsonKey(name: "default_map_load_latitude")
            String? defaultMapLoadLatitude,
            @JsonKey(name: "default_map_load_longitude")
            String? defaultMapLoadLongitude,
            @JsonKey(name: "driver_timeout_in_seconds")
            int? driverTimeoutInSeconds,
            @JsonKey(name: "default_search_radius") int? defaultSearchRadius,
            @JsonKey(name: "Scheduled_request_pre_start_seconds")
            int? scheduledRequestPreStartSeconds,
            @JsonKey(name: "number_of_loop_for_nearest_driver")
            int? numberOfLoopForNearestDriver,
            @JsonKey(name: "nearest_driver_type") String? nearestDriverType,
            @JsonKey(name: "nearby_providers_call_time")
            int? nearbyProvidersCallTime,
            @JsonKey(name: "providers_realtime_location_update")
            int? providersRealtimeLocationUpdate,
            @JsonKey(name: "send_sms_whatsapp") bool? sendSmsWhatsapp,
            @JsonKey(name: "sms_notification") bool? smsNotification,
            @JsonKey(name: "email_notification") bool? emailNotification,
            @JsonKey(name: "draw_path_user_app") bool? drawPathUserApp,
            @JsonKey(name: "android_user_app_force_update")
            bool? androidUserAppForceUpdate,
            @JsonKey(name: "android_driver_app_force_update")
            bool? androidDriverAppForceUpdate,
            @JsonKey(name: "ios_user_app_force_update")
            bool? iosUserAppForceUpdate,
            @JsonKey(name: "ios_driver_app_force_update")
            bool? iosDriverAppForceUpdate,
            @JsonKey(name: "show_estimation_driver") bool? showEstimationDriver,
            @JsonKey(name: "show_estimation_user") bool? showEstimationUser,
            @JsonKey(name: "nearby_drivers_limit_count")
            int? nearbyDriversLimitCount,
            @JsonKey(name: "driver_offline_after_min")
            int? driverOfflineAfterMin,
            @JsonKey(name: "min_online_hr_per_day") int? minOnlineHrPerDay,
            @JsonKey(name: "vat") int? vat,
            @JsonKey(name: "radius_factor_multiplication")
            int? radiusFactorMultiplication,
            @JsonKey(name: "increase_bid_count") int? increaseBidCount,
            @JsonKey(name: "increase_bid_show_after_time")
            int? increaseBidShowAfterTime,
            @JsonKey(name: "retry_fetch_nearby_drivers_after_time")
            int? retryFetchNearbyDriversAfterTime,
            @JsonKey(name: "retry_fetch_trip_drivers_count")
            int? retryFetchTripDriversCount,
            @JsonKey(name: "pet_friendly") int? petFriendly,
            @JsonKey(name: "promotion") int? promotion,
            @JsonKey(name: "cancellation_fix_charges")
            int? cancellationFixCharges,
            @JsonKey(name: "platform_commission") int? platformCommission,
            @JsonKey(name: "assist_charges") int? assistCharges,
            @JsonKey(name: "payment_gateway_charges")
            int? paymentGatewayCharges,
            @JsonKey(name: "driver_profit") int? driverProfit,
            @JsonKey(name: "ride_cancellation_grace_period")
            int? rideCancellationGracePeriod,
            @JsonKey(name: "assist_value") int? assistValue,
            @JsonKey(name: "min_online_hr_per_week") int? minOnlineHrPerWeek,
            @JsonKey(name: "driver_weekly_subscription_fee")
            int? driverWeeklySubscriptionFee,
            @JsonKey(name: "customer_android_app_version")
            String? customerAndroidAppVersion,
            @JsonKey(name: "customer_android_force_update")
            bool? customerAndroidForceUpdate,
            @JsonKey(name: "driver_android_app_version")
            String? driverAndroidAppVersion,
            @JsonKey(name: "driver_android_force_update")
            bool? driverAndroidForceUpdate,
            @JsonKey(name: "customer_ios_app_version")
            String? customerIosAppVersion,
            @JsonKey(name: "customer_ios_force_update")
            bool? customerIosForceUpdate,
            @JsonKey(name: "driver_ios_app_version")
            String? driverIosAppVersion,
            @JsonKey(name: "driver_ios_force_update")
            bool? driverIosForceUpdate,
            @JsonKey(name: "maintenance_title") String? maintenanceTitle,
            @JsonKey(name: "maintenance_description")
            String? maintenanceDescription,
            @JsonKey(name: "is_driver_app_under_maintenance")
            bool? isDriverAppUnderMaintenance,
            @JsonKey(name: "is_customer_app_under_maintenance")
            bool? isCustomerAppUnderMaintenance,
            @JsonKey(name: "driver_maintenance_scheduled_until")
            String? driverMaintenanceScheduledUntil,
            @JsonKey(name: "customer_maintenance_scheduled_until")
            String? customerMaintenanceScheduledUntil,
            @JsonKey(name: "min_bidding_fare") int? minBiddingFare,
            @JsonKey(name: "max_bidding_fare") double? maxBiddingFare)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Settings() when $default != null:
        return $default(
            _that.adminCountry,
            _that.adminCurrencyCode,
            _that.adminCurrency,
            _that.adminTimezone,
            _that.displayDateTimezone,
            _that.adminPhoneNumber,
            _that.adminEmail,
            _that.defaultMapLoadLatitude,
            _that.defaultMapLoadLongitude,
            _that.driverTimeoutInSeconds,
            _that.defaultSearchRadius,
            _that.scheduledRequestPreStartSeconds,
            _that.numberOfLoopForNearestDriver,
            _that.nearestDriverType,
            _that.nearbyProvidersCallTime,
            _that.providersRealtimeLocationUpdate,
            _that.sendSmsWhatsapp,
            _that.smsNotification,
            _that.emailNotification,
            _that.drawPathUserApp,
            _that.androidUserAppForceUpdate,
            _that.androidDriverAppForceUpdate,
            _that.iosUserAppForceUpdate,
            _that.iosDriverAppForceUpdate,
            _that.showEstimationDriver,
            _that.showEstimationUser,
            _that.nearbyDriversLimitCount,
            _that.driverOfflineAfterMin,
            _that.minOnlineHrPerDay,
            _that.vat,
            _that.radiusFactorMultiplication,
            _that.increaseBidCount,
            _that.increaseBidShowAfterTime,
            _that.retryFetchNearbyDriversAfterTime,
            _that.retryFetchTripDriversCount,
            _that.petFriendly,
            _that.promotion,
            _that.cancellationFixCharges,
            _that.platformCommission,
            _that.assistCharges,
            _that.paymentGatewayCharges,
            _that.driverProfit,
            _that.rideCancellationGracePeriod,
            _that.assistValue,
            _that.minOnlineHrPerWeek,
            _that.driverWeeklySubscriptionFee,
            _that.customerAndroidAppVersion,
            _that.customerAndroidForceUpdate,
            _that.driverAndroidAppVersion,
            _that.driverAndroidForceUpdate,
            _that.customerIosAppVersion,
            _that.customerIosForceUpdate,
            _that.driverIosAppVersion,
            _that.driverIosForceUpdate,
            _that.maintenanceTitle,
            _that.maintenanceDescription,
            _that.isDriverAppUnderMaintenance,
            _that.isCustomerAppUnderMaintenance,
            _that.driverMaintenanceScheduledUntil,
            _that.customerMaintenanceScheduledUntil,
            _that.minBiddingFare,
            _that.maxBiddingFare);
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
            @JsonKey(name: "admin_country") String? adminCountry,
            @JsonKey(name: "admin_currency_code") String? adminCurrencyCode,
            @JsonKey(name: "admin_currency") String? adminCurrency,
            @JsonKey(name: "admin_timezone") String? adminTimezone,
            @JsonKey(name: "display_date_timezone") String? displayDateTimezone,
            @JsonKey(name: "admin_phoneNumber") String? adminPhoneNumber,
            @JsonKey(name: "admin_email") String? adminEmail,
            @JsonKey(name: "default_map_load_latitude")
            String? defaultMapLoadLatitude,
            @JsonKey(name: "default_map_load_longitude")
            String? defaultMapLoadLongitude,
            @JsonKey(name: "driver_timeout_in_seconds")
            int? driverTimeoutInSeconds,
            @JsonKey(name: "default_search_radius") int? defaultSearchRadius,
            @JsonKey(name: "Scheduled_request_pre_start_seconds")
            int? scheduledRequestPreStartSeconds,
            @JsonKey(name: "number_of_loop_for_nearest_driver")
            int? numberOfLoopForNearestDriver,
            @JsonKey(name: "nearest_driver_type") String? nearestDriverType,
            @JsonKey(name: "nearby_providers_call_time")
            int? nearbyProvidersCallTime,
            @JsonKey(name: "providers_realtime_location_update")
            int? providersRealtimeLocationUpdate,
            @JsonKey(name: "send_sms_whatsapp") bool? sendSmsWhatsapp,
            @JsonKey(name: "sms_notification") bool? smsNotification,
            @JsonKey(name: "email_notification") bool? emailNotification,
            @JsonKey(name: "draw_path_user_app") bool? drawPathUserApp,
            @JsonKey(name: "android_user_app_force_update")
            bool? androidUserAppForceUpdate,
            @JsonKey(name: "android_driver_app_force_update")
            bool? androidDriverAppForceUpdate,
            @JsonKey(name: "ios_user_app_force_update")
            bool? iosUserAppForceUpdate,
            @JsonKey(name: "ios_driver_app_force_update")
            bool? iosDriverAppForceUpdate,
            @JsonKey(name: "show_estimation_driver") bool? showEstimationDriver,
            @JsonKey(name: "show_estimation_user") bool? showEstimationUser,
            @JsonKey(name: "nearby_drivers_limit_count")
            int? nearbyDriversLimitCount,
            @JsonKey(name: "driver_offline_after_min")
            int? driverOfflineAfterMin,
            @JsonKey(name: "min_online_hr_per_day") int? minOnlineHrPerDay,
            @JsonKey(name: "vat") int? vat,
            @JsonKey(name: "radius_factor_multiplication")
            int? radiusFactorMultiplication,
            @JsonKey(name: "increase_bid_count") int? increaseBidCount,
            @JsonKey(name: "increase_bid_show_after_time")
            int? increaseBidShowAfterTime,
            @JsonKey(name: "retry_fetch_nearby_drivers_after_time")
            int? retryFetchNearbyDriversAfterTime,
            @JsonKey(name: "retry_fetch_trip_drivers_count")
            int? retryFetchTripDriversCount,
            @JsonKey(name: "pet_friendly") int? petFriendly,
            @JsonKey(name: "promotion") int? promotion,
            @JsonKey(name: "cancellation_fix_charges")
            int? cancellationFixCharges,
            @JsonKey(name: "platform_commission") int? platformCommission,
            @JsonKey(name: "assist_charges") int? assistCharges,
            @JsonKey(name: "payment_gateway_charges")
            int? paymentGatewayCharges,
            @JsonKey(name: "driver_profit") int? driverProfit,
            @JsonKey(name: "ride_cancellation_grace_period")
            int? rideCancellationGracePeriod,
            @JsonKey(name: "assist_value") int? assistValue,
            @JsonKey(name: "min_online_hr_per_week") int? minOnlineHrPerWeek,
            @JsonKey(name: "driver_weekly_subscription_fee")
            int? driverWeeklySubscriptionFee,
            @JsonKey(name: "customer_android_app_version")
            String? customerAndroidAppVersion,
            @JsonKey(name: "customer_android_force_update")
            bool? customerAndroidForceUpdate,
            @JsonKey(name: "driver_android_app_version")
            String? driverAndroidAppVersion,
            @JsonKey(name: "driver_android_force_update")
            bool? driverAndroidForceUpdate,
            @JsonKey(name: "customer_ios_app_version")
            String? customerIosAppVersion,
            @JsonKey(name: "customer_ios_force_update")
            bool? customerIosForceUpdate,
            @JsonKey(name: "driver_ios_app_version")
            String? driverIosAppVersion,
            @JsonKey(name: "driver_ios_force_update")
            bool? driverIosForceUpdate,
            @JsonKey(name: "maintenance_title") String? maintenanceTitle,
            @JsonKey(name: "maintenance_description")
            String? maintenanceDescription,
            @JsonKey(name: "is_driver_app_under_maintenance")
            bool? isDriverAppUnderMaintenance,
            @JsonKey(name: "is_customer_app_under_maintenance")
            bool? isCustomerAppUnderMaintenance,
            @JsonKey(name: "driver_maintenance_scheduled_until")
            String? driverMaintenanceScheduledUntil,
            @JsonKey(name: "customer_maintenance_scheduled_until")
            String? customerMaintenanceScheduledUntil,
            @JsonKey(name: "min_bidding_fare") int? minBiddingFare,
            @JsonKey(name: "max_bidding_fare") double? maxBiddingFare)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Settings():
        return $default(
            _that.adminCountry,
            _that.adminCurrencyCode,
            _that.adminCurrency,
            _that.adminTimezone,
            _that.displayDateTimezone,
            _that.adminPhoneNumber,
            _that.adminEmail,
            _that.defaultMapLoadLatitude,
            _that.defaultMapLoadLongitude,
            _that.driverTimeoutInSeconds,
            _that.defaultSearchRadius,
            _that.scheduledRequestPreStartSeconds,
            _that.numberOfLoopForNearestDriver,
            _that.nearestDriverType,
            _that.nearbyProvidersCallTime,
            _that.providersRealtimeLocationUpdate,
            _that.sendSmsWhatsapp,
            _that.smsNotification,
            _that.emailNotification,
            _that.drawPathUserApp,
            _that.androidUserAppForceUpdate,
            _that.androidDriverAppForceUpdate,
            _that.iosUserAppForceUpdate,
            _that.iosDriverAppForceUpdate,
            _that.showEstimationDriver,
            _that.showEstimationUser,
            _that.nearbyDriversLimitCount,
            _that.driverOfflineAfterMin,
            _that.minOnlineHrPerDay,
            _that.vat,
            _that.radiusFactorMultiplication,
            _that.increaseBidCount,
            _that.increaseBidShowAfterTime,
            _that.retryFetchNearbyDriversAfterTime,
            _that.retryFetchTripDriversCount,
            _that.petFriendly,
            _that.promotion,
            _that.cancellationFixCharges,
            _that.platformCommission,
            _that.assistCharges,
            _that.paymentGatewayCharges,
            _that.driverProfit,
            _that.rideCancellationGracePeriod,
            _that.assistValue,
            _that.minOnlineHrPerWeek,
            _that.driverWeeklySubscriptionFee,
            _that.customerAndroidAppVersion,
            _that.customerAndroidForceUpdate,
            _that.driverAndroidAppVersion,
            _that.driverAndroidForceUpdate,
            _that.customerIosAppVersion,
            _that.customerIosForceUpdate,
            _that.driverIosAppVersion,
            _that.driverIosForceUpdate,
            _that.maintenanceTitle,
            _that.maintenanceDescription,
            _that.isDriverAppUnderMaintenance,
            _that.isCustomerAppUnderMaintenance,
            _that.driverMaintenanceScheduledUntil,
            _that.customerMaintenanceScheduledUntil,
            _that.minBiddingFare,
            _that.maxBiddingFare);
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
            @JsonKey(name: "admin_country") String? adminCountry,
            @JsonKey(name: "admin_currency_code") String? adminCurrencyCode,
            @JsonKey(name: "admin_currency") String? adminCurrency,
            @JsonKey(name: "admin_timezone") String? adminTimezone,
            @JsonKey(name: "display_date_timezone") String? displayDateTimezone,
            @JsonKey(name: "admin_phoneNumber") String? adminPhoneNumber,
            @JsonKey(name: "admin_email") String? adminEmail,
            @JsonKey(name: "default_map_load_latitude")
            String? defaultMapLoadLatitude,
            @JsonKey(name: "default_map_load_longitude")
            String? defaultMapLoadLongitude,
            @JsonKey(name: "driver_timeout_in_seconds")
            int? driverTimeoutInSeconds,
            @JsonKey(name: "default_search_radius") int? defaultSearchRadius,
            @JsonKey(name: "Scheduled_request_pre_start_seconds")
            int? scheduledRequestPreStartSeconds,
            @JsonKey(name: "number_of_loop_for_nearest_driver")
            int? numberOfLoopForNearestDriver,
            @JsonKey(name: "nearest_driver_type") String? nearestDriverType,
            @JsonKey(name: "nearby_providers_call_time")
            int? nearbyProvidersCallTime,
            @JsonKey(name: "providers_realtime_location_update")
            int? providersRealtimeLocationUpdate,
            @JsonKey(name: "send_sms_whatsapp") bool? sendSmsWhatsapp,
            @JsonKey(name: "sms_notification") bool? smsNotification,
            @JsonKey(name: "email_notification") bool? emailNotification,
            @JsonKey(name: "draw_path_user_app") bool? drawPathUserApp,
            @JsonKey(name: "android_user_app_force_update")
            bool? androidUserAppForceUpdate,
            @JsonKey(name: "android_driver_app_force_update")
            bool? androidDriverAppForceUpdate,
            @JsonKey(name: "ios_user_app_force_update")
            bool? iosUserAppForceUpdate,
            @JsonKey(name: "ios_driver_app_force_update")
            bool? iosDriverAppForceUpdate,
            @JsonKey(name: "show_estimation_driver") bool? showEstimationDriver,
            @JsonKey(name: "show_estimation_user") bool? showEstimationUser,
            @JsonKey(name: "nearby_drivers_limit_count")
            int? nearbyDriversLimitCount,
            @JsonKey(name: "driver_offline_after_min")
            int? driverOfflineAfterMin,
            @JsonKey(name: "min_online_hr_per_day") int? minOnlineHrPerDay,
            @JsonKey(name: "vat") int? vat,
            @JsonKey(name: "radius_factor_multiplication")
            int? radiusFactorMultiplication,
            @JsonKey(name: "increase_bid_count") int? increaseBidCount,
            @JsonKey(name: "increase_bid_show_after_time")
            int? increaseBidShowAfterTime,
            @JsonKey(name: "retry_fetch_nearby_drivers_after_time")
            int? retryFetchNearbyDriversAfterTime,
            @JsonKey(name: "retry_fetch_trip_drivers_count")
            int? retryFetchTripDriversCount,
            @JsonKey(name: "pet_friendly") int? petFriendly,
            @JsonKey(name: "promotion") int? promotion,
            @JsonKey(name: "cancellation_fix_charges")
            int? cancellationFixCharges,
            @JsonKey(name: "platform_commission") int? platformCommission,
            @JsonKey(name: "assist_charges") int? assistCharges,
            @JsonKey(name: "payment_gateway_charges")
            int? paymentGatewayCharges,
            @JsonKey(name: "driver_profit") int? driverProfit,
            @JsonKey(name: "ride_cancellation_grace_period")
            int? rideCancellationGracePeriod,
            @JsonKey(name: "assist_value") int? assistValue,
            @JsonKey(name: "min_online_hr_per_week") int? minOnlineHrPerWeek,
            @JsonKey(name: "driver_weekly_subscription_fee")
            int? driverWeeklySubscriptionFee,
            @JsonKey(name: "customer_android_app_version")
            String? customerAndroidAppVersion,
            @JsonKey(name: "customer_android_force_update")
            bool? customerAndroidForceUpdate,
            @JsonKey(name: "driver_android_app_version")
            String? driverAndroidAppVersion,
            @JsonKey(name: "driver_android_force_update")
            bool? driverAndroidForceUpdate,
            @JsonKey(name: "customer_ios_app_version")
            String? customerIosAppVersion,
            @JsonKey(name: "customer_ios_force_update")
            bool? customerIosForceUpdate,
            @JsonKey(name: "driver_ios_app_version")
            String? driverIosAppVersion,
            @JsonKey(name: "driver_ios_force_update")
            bool? driverIosForceUpdate,
            @JsonKey(name: "maintenance_title") String? maintenanceTitle,
            @JsonKey(name: "maintenance_description")
            String? maintenanceDescription,
            @JsonKey(name: "is_driver_app_under_maintenance")
            bool? isDriverAppUnderMaintenance,
            @JsonKey(name: "is_customer_app_under_maintenance")
            bool? isCustomerAppUnderMaintenance,
            @JsonKey(name: "driver_maintenance_scheduled_until")
            String? driverMaintenanceScheduledUntil,
            @JsonKey(name: "customer_maintenance_scheduled_until")
            String? customerMaintenanceScheduledUntil,
            @JsonKey(name: "min_bidding_fare") int? minBiddingFare,
            @JsonKey(name: "max_bidding_fare") double? maxBiddingFare)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Settings() when $default != null:
        return $default(
            _that.adminCountry,
            _that.adminCurrencyCode,
            _that.adminCurrency,
            _that.adminTimezone,
            _that.displayDateTimezone,
            _that.adminPhoneNumber,
            _that.adminEmail,
            _that.defaultMapLoadLatitude,
            _that.defaultMapLoadLongitude,
            _that.driverTimeoutInSeconds,
            _that.defaultSearchRadius,
            _that.scheduledRequestPreStartSeconds,
            _that.numberOfLoopForNearestDriver,
            _that.nearestDriverType,
            _that.nearbyProvidersCallTime,
            _that.providersRealtimeLocationUpdate,
            _that.sendSmsWhatsapp,
            _that.smsNotification,
            _that.emailNotification,
            _that.drawPathUserApp,
            _that.androidUserAppForceUpdate,
            _that.androidDriverAppForceUpdate,
            _that.iosUserAppForceUpdate,
            _that.iosDriverAppForceUpdate,
            _that.showEstimationDriver,
            _that.showEstimationUser,
            _that.nearbyDriversLimitCount,
            _that.driverOfflineAfterMin,
            _that.minOnlineHrPerDay,
            _that.vat,
            _that.radiusFactorMultiplication,
            _that.increaseBidCount,
            _that.increaseBidShowAfterTime,
            _that.retryFetchNearbyDriversAfterTime,
            _that.retryFetchTripDriversCount,
            _that.petFriendly,
            _that.promotion,
            _that.cancellationFixCharges,
            _that.platformCommission,
            _that.assistCharges,
            _that.paymentGatewayCharges,
            _that.driverProfit,
            _that.rideCancellationGracePeriod,
            _that.assistValue,
            _that.minOnlineHrPerWeek,
            _that.driverWeeklySubscriptionFee,
            _that.customerAndroidAppVersion,
            _that.customerAndroidForceUpdate,
            _that.driverAndroidAppVersion,
            _that.driverAndroidForceUpdate,
            _that.customerIosAppVersion,
            _that.customerIosForceUpdate,
            _that.driverIosAppVersion,
            _that.driverIosForceUpdate,
            _that.maintenanceTitle,
            _that.maintenanceDescription,
            _that.isDriverAppUnderMaintenance,
            _that.isCustomerAppUnderMaintenance,
            _that.driverMaintenanceScheduledUntil,
            _that.customerMaintenanceScheduledUntil,
            _that.minBiddingFare,
            _that.maxBiddingFare);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Settings implements Settings {
  const _Settings(
      {@JsonKey(name: "admin_country") this.adminCountry,
      @JsonKey(name: "admin_currency_code") this.adminCurrencyCode,
      @JsonKey(name: "admin_currency") this.adminCurrency,
      @JsonKey(name: "admin_timezone") this.adminTimezone,
      @JsonKey(name: "display_date_timezone") this.displayDateTimezone,
      @JsonKey(name: "admin_phoneNumber") this.adminPhoneNumber,
      @JsonKey(name: "admin_email") this.adminEmail,
      @JsonKey(name: "default_map_load_latitude") this.defaultMapLoadLatitude,
      @JsonKey(name: "default_map_load_longitude") this.defaultMapLoadLongitude,
      @JsonKey(name: "driver_timeout_in_seconds") this.driverTimeoutInSeconds,
      @JsonKey(name: "default_search_radius") this.defaultSearchRadius,
      @JsonKey(name: "Scheduled_request_pre_start_seconds")
      this.scheduledRequestPreStartSeconds,
      @JsonKey(name: "number_of_loop_for_nearest_driver")
      this.numberOfLoopForNearestDriver,
      @JsonKey(name: "nearest_driver_type") this.nearestDriverType,
      @JsonKey(name: "nearby_providers_call_time") this.nearbyProvidersCallTime,
      @JsonKey(name: "providers_realtime_location_update")
      this.providersRealtimeLocationUpdate,
      @JsonKey(name: "send_sms_whatsapp") this.sendSmsWhatsapp,
      @JsonKey(name: "sms_notification") this.smsNotification,
      @JsonKey(name: "email_notification") this.emailNotification,
      @JsonKey(name: "draw_path_user_app") this.drawPathUserApp,
      @JsonKey(name: "android_user_app_force_update")
      this.androidUserAppForceUpdate,
      @JsonKey(name: "android_driver_app_force_update")
      this.androidDriverAppForceUpdate,
      @JsonKey(name: "ios_user_app_force_update") this.iosUserAppForceUpdate,
      @JsonKey(name: "ios_driver_app_force_update")
      this.iosDriverAppForceUpdate,
      @JsonKey(name: "show_estimation_driver") this.showEstimationDriver,
      @JsonKey(name: "show_estimation_user") this.showEstimationUser,
      @JsonKey(name: "nearby_drivers_limit_count") this.nearbyDriversLimitCount,
      @JsonKey(name: "driver_offline_after_min") this.driverOfflineAfterMin,
      @JsonKey(name: "min_online_hr_per_day") this.minOnlineHrPerDay,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "radius_factor_multiplication")
      this.radiusFactorMultiplication,
      @JsonKey(name: "increase_bid_count") this.increaseBidCount,
      @JsonKey(name: "increase_bid_show_after_time")
      this.increaseBidShowAfterTime,
      @JsonKey(name: "retry_fetch_nearby_drivers_after_time")
      this.retryFetchNearbyDriversAfterTime,
      @JsonKey(name: "retry_fetch_trip_drivers_count")
      this.retryFetchTripDriversCount,
      @JsonKey(name: "pet_friendly") this.petFriendly,
      @JsonKey(name: "promotion") this.promotion,
      @JsonKey(name: "cancellation_fix_charges") this.cancellationFixCharges,
      @JsonKey(name: "platform_commission") this.platformCommission,
      @JsonKey(name: "assist_charges") this.assistCharges,
      @JsonKey(name: "payment_gateway_charges") this.paymentGatewayCharges,
      @JsonKey(name: "driver_profit") this.driverProfit,
      @JsonKey(name: "ride_cancellation_grace_period")
      this.rideCancellationGracePeriod,
      @JsonKey(name: "assist_value") this.assistValue,
      @JsonKey(name: "min_online_hr_per_week") this.minOnlineHrPerWeek,
      @JsonKey(name: "driver_weekly_subscription_fee")
      this.driverWeeklySubscriptionFee,
      @JsonKey(name: "customer_android_app_version")
      this.customerAndroidAppVersion,
      @JsonKey(name: "customer_android_force_update")
      this.customerAndroidForceUpdate,
      @JsonKey(name: "driver_android_app_version") this.driverAndroidAppVersion,
      @JsonKey(name: "driver_android_force_update")
      this.driverAndroidForceUpdate,
      @JsonKey(name: "customer_ios_app_version") this.customerIosAppVersion,
      @JsonKey(name: "customer_ios_force_update") this.customerIosForceUpdate,
      @JsonKey(name: "driver_ios_app_version") this.driverIosAppVersion,
      @JsonKey(name: "driver_ios_force_update") this.driverIosForceUpdate,
      @JsonKey(name: "maintenance_title") this.maintenanceTitle,
      @JsonKey(name: "maintenance_description") this.maintenanceDescription,
      @JsonKey(name: "is_driver_app_under_maintenance")
      this.isDriverAppUnderMaintenance,
      @JsonKey(name: "is_customer_app_under_maintenance")
      this.isCustomerAppUnderMaintenance,
      @JsonKey(name: "driver_maintenance_scheduled_until")
      this.driverMaintenanceScheduledUntil,
      @JsonKey(name: "customer_maintenance_scheduled_until")
      this.customerMaintenanceScheduledUntil,
      @JsonKey(name: "min_bidding_fare") this.minBiddingFare,
      @JsonKey(name: "max_bidding_fare") this.maxBiddingFare});
  factory _Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);

  @override
  @JsonKey(name: "admin_country")
  final String? adminCountry;
  @override
  @JsonKey(name: "admin_currency_code")
  final String? adminCurrencyCode;
  @override
  @JsonKey(name: "admin_currency")
  final String? adminCurrency;
  @override
  @JsonKey(name: "admin_timezone")
  final String? adminTimezone;
  @override
  @JsonKey(name: "display_date_timezone")
  final String? displayDateTimezone;
  @override
  @JsonKey(name: "admin_phoneNumber")
  final String? adminPhoneNumber;
  @override
  @JsonKey(name: "admin_email")
  final String? adminEmail;
  @override
  @JsonKey(name: "default_map_load_latitude")
  final String? defaultMapLoadLatitude;
  @override
  @JsonKey(name: "default_map_load_longitude")
  final String? defaultMapLoadLongitude;
  @override
  @JsonKey(name: "driver_timeout_in_seconds")
  final int? driverTimeoutInSeconds;
  @override
  @JsonKey(name: "default_search_radius")
  final int? defaultSearchRadius;
  @override
  @JsonKey(name: "Scheduled_request_pre_start_seconds")
  final int? scheduledRequestPreStartSeconds;
  @override
  @JsonKey(name: "number_of_loop_for_nearest_driver")
  final int? numberOfLoopForNearestDriver;
  @override
  @JsonKey(name: "nearest_driver_type")
  final String? nearestDriverType;
  @override
  @JsonKey(name: "nearby_providers_call_time")
  final int? nearbyProvidersCallTime;
  @override
  @JsonKey(name: "providers_realtime_location_update")
  final int? providersRealtimeLocationUpdate;
  @override
  @JsonKey(name: "send_sms_whatsapp")
  final bool? sendSmsWhatsapp;
  @override
  @JsonKey(name: "sms_notification")
  final bool? smsNotification;
  @override
  @JsonKey(name: "email_notification")
  final bool? emailNotification;
  @override
  @JsonKey(name: "draw_path_user_app")
  final bool? drawPathUserApp;
  @override
  @JsonKey(name: "android_user_app_force_update")
  final bool? androidUserAppForceUpdate;
  @override
  @JsonKey(name: "android_driver_app_force_update")
  final bool? androidDriverAppForceUpdate;
  @override
  @JsonKey(name: "ios_user_app_force_update")
  final bool? iosUserAppForceUpdate;
  @override
  @JsonKey(name: "ios_driver_app_force_update")
  final bool? iosDriverAppForceUpdate;
  @override
  @JsonKey(name: "show_estimation_driver")
  final bool? showEstimationDriver;
  @override
  @JsonKey(name: "show_estimation_user")
  final bool? showEstimationUser;
  @override
  @JsonKey(name: "nearby_drivers_limit_count")
  final int? nearbyDriversLimitCount;
  @override
  @JsonKey(name: "driver_offline_after_min")
  final int? driverOfflineAfterMin;
  @override
  @JsonKey(name: "min_online_hr_per_day")
  final int? minOnlineHrPerDay;
  @override
  @JsonKey(name: "vat")
  final int? vat;
  @override
  @JsonKey(name: "radius_factor_multiplication")
  final int? radiusFactorMultiplication;
  @override
  @JsonKey(name: "increase_bid_count")
  final int? increaseBidCount;
  @override
  @JsonKey(name: "increase_bid_show_after_time")
  final int? increaseBidShowAfterTime;
  @override
  @JsonKey(name: "retry_fetch_nearby_drivers_after_time")
  final int? retryFetchNearbyDriversAfterTime;
  @override
  @JsonKey(name: "retry_fetch_trip_drivers_count")
  final int? retryFetchTripDriversCount;
  @override
  @JsonKey(name: "pet_friendly")
  final int? petFriendly;
  @override
  @JsonKey(name: "promotion")
  final int? promotion;
  @override
  @JsonKey(name: "cancellation_fix_charges")
  final int? cancellationFixCharges;
  @override
  @JsonKey(name: "platform_commission")
  final int? platformCommission;
  @override
  @JsonKey(name: "assist_charges")
  final int? assistCharges;
  @override
  @JsonKey(name: "payment_gateway_charges")
  final int? paymentGatewayCharges;
  @override
  @JsonKey(name: "driver_profit")
  final int? driverProfit;
  @override
  @JsonKey(name: "ride_cancellation_grace_period")
  final int? rideCancellationGracePeriod;
  @override
  @JsonKey(name: "assist_value")
  final int? assistValue;
  @override
  @JsonKey(name: "min_online_hr_per_week")
  final int? minOnlineHrPerWeek;
  @override
  @JsonKey(name: "driver_weekly_subscription_fee")
  final int? driverWeeklySubscriptionFee;
  @override
  @JsonKey(name: "customer_android_app_version")
  final String? customerAndroidAppVersion;
  @override
  @JsonKey(name: "customer_android_force_update")
  final bool? customerAndroidForceUpdate;
  @override
  @JsonKey(name: "driver_android_app_version")
  final String? driverAndroidAppVersion;
  @override
  @JsonKey(name: "driver_android_force_update")
  final bool? driverAndroidForceUpdate;
  @override
  @JsonKey(name: "customer_ios_app_version")
  final String? customerIosAppVersion;
  @override
  @JsonKey(name: "customer_ios_force_update")
  final bool? customerIosForceUpdate;
  @override
  @JsonKey(name: "driver_ios_app_version")
  final String? driverIosAppVersion;
  @override
  @JsonKey(name: "driver_ios_force_update")
  final bool? driverIosForceUpdate;
  @override
  @JsonKey(name: "maintenance_title")
  final String? maintenanceTitle;
  @override
  @JsonKey(name: "maintenance_description")
  final String? maintenanceDescription;
  @override
  @JsonKey(name: "is_driver_app_under_maintenance")
  final bool? isDriverAppUnderMaintenance;
  @override
  @JsonKey(name: "is_customer_app_under_maintenance")
  final bool? isCustomerAppUnderMaintenance;
  @override
  @JsonKey(name: "driver_maintenance_scheduled_until")
  final String? driverMaintenanceScheduledUntil;
  @override
  @JsonKey(name: "customer_maintenance_scheduled_until")
  final String? customerMaintenanceScheduledUntil;
  @override
  @JsonKey(name: "min_bidding_fare")
  final int? minBiddingFare;
  @override
  @JsonKey(name: "max_bidding_fare")
  final double? maxBiddingFare;

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SettingsCopyWith<_Settings> get copyWith =>
      __$SettingsCopyWithImpl<_Settings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Settings &&
            (identical(other.adminCountry, adminCountry) ||
                other.adminCountry == adminCountry) &&
            (identical(other.adminCurrencyCode, adminCurrencyCode) ||
                other.adminCurrencyCode == adminCurrencyCode) &&
            (identical(other.adminCurrency, adminCurrency) ||
                other.adminCurrency == adminCurrency) &&
            (identical(other.adminTimezone, adminTimezone) ||
                other.adminTimezone == adminTimezone) &&
            (identical(other.displayDateTimezone, displayDateTimezone) ||
                other.displayDateTimezone == displayDateTimezone) &&
            (identical(other.adminPhoneNumber, adminPhoneNumber) ||
                other.adminPhoneNumber == adminPhoneNumber) &&
            (identical(other.adminEmail, adminEmail) ||
                other.adminEmail == adminEmail) &&
            (identical(other.defaultMapLoadLatitude, defaultMapLoadLatitude) ||
                other.defaultMapLoadLatitude == defaultMapLoadLatitude) &&
            (identical(other.defaultMapLoadLongitude, defaultMapLoadLongitude) ||
                other.defaultMapLoadLongitude == defaultMapLoadLongitude) &&
            (identical(other.driverTimeoutInSeconds, driverTimeoutInSeconds) ||
                other.driverTimeoutInSeconds == driverTimeoutInSeconds) &&
            (identical(other.defaultSearchRadius, defaultSearchRadius) ||
                other.defaultSearchRadius == defaultSearchRadius) &&
            (identical(other.scheduledRequestPreStartSeconds, scheduledRequestPreStartSeconds) ||
                other.scheduledRequestPreStartSeconds ==
                    scheduledRequestPreStartSeconds) &&
            (identical(other.numberOfLoopForNearestDriver, numberOfLoopForNearestDriver) ||
                other.numberOfLoopForNearestDriver ==
                    numberOfLoopForNearestDriver) &&
            (identical(other.nearestDriverType, nearestDriverType) ||
                other.nearestDriverType == nearestDriverType) &&
            (identical(other.nearbyProvidersCallTime, nearbyProvidersCallTime) ||
                other.nearbyProvidersCallTime == nearbyProvidersCallTime) &&
            (identical(other.providersRealtimeLocationUpdate, providersRealtimeLocationUpdate) ||
                other.providersRealtimeLocationUpdate ==
                    providersRealtimeLocationUpdate) &&
            (identical(other.sendSmsWhatsapp, sendSmsWhatsapp) ||
                other.sendSmsWhatsapp == sendSmsWhatsapp) &&
            (identical(other.smsNotification, smsNotification) ||
                other.smsNotification == smsNotification) &&
            (identical(other.emailNotification, emailNotification) ||
                other.emailNotification == emailNotification) &&
            (identical(other.drawPathUserApp, drawPathUserApp) ||
                other.drawPathUserApp == drawPathUserApp) &&
            (identical(other.androidUserAppForceUpdate, androidUserAppForceUpdate) ||
                other.androidUserAppForceUpdate == androidUserAppForceUpdate) &&
            (identical(other.androidDriverAppForceUpdate, androidDriverAppForceUpdate) ||
                other.androidDriverAppForceUpdate ==
                    androidDriverAppForceUpdate) &&
            (identical(other.iosUserAppForceUpdate, iosUserAppForceUpdate) ||
                other.iosUserAppForceUpdate == iosUserAppForceUpdate) &&
            (identical(other.iosDriverAppForceUpdate, iosDriverAppForceUpdate) ||
                other.iosDriverAppForceUpdate == iosDriverAppForceUpdate) &&
            (identical(other.showEstimationDriver, showEstimationDriver) ||
                other.showEstimationDriver == showEstimationDriver) &&
            (identical(other.showEstimationUser, showEstimationUser) || other.showEstimationUser == showEstimationUser) &&
            (identical(other.nearbyDriversLimitCount, nearbyDriversLimitCount) || other.nearbyDriversLimitCount == nearbyDriversLimitCount) &&
            (identical(other.driverOfflineAfterMin, driverOfflineAfterMin) || other.driverOfflineAfterMin == driverOfflineAfterMin) &&
            (identical(other.minOnlineHrPerDay, minOnlineHrPerDay) || other.minOnlineHrPerDay == minOnlineHrPerDay) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.radiusFactorMultiplication, radiusFactorMultiplication) || other.radiusFactorMultiplication == radiusFactorMultiplication) &&
            (identical(other.increaseBidCount, increaseBidCount) || other.increaseBidCount == increaseBidCount) &&
            (identical(other.increaseBidShowAfterTime, increaseBidShowAfterTime) || other.increaseBidShowAfterTime == increaseBidShowAfterTime) &&
            (identical(other.retryFetchNearbyDriversAfterTime, retryFetchNearbyDriversAfterTime) || other.retryFetchNearbyDriversAfterTime == retryFetchNearbyDriversAfterTime) &&
            (identical(other.retryFetchTripDriversCount, retryFetchTripDriversCount) || other.retryFetchTripDriversCount == retryFetchTripDriversCount) &&
            (identical(other.petFriendly, petFriendly) || other.petFriendly == petFriendly) &&
            (identical(other.promotion, promotion) || other.promotion == promotion) &&
            (identical(other.cancellationFixCharges, cancellationFixCharges) || other.cancellationFixCharges == cancellationFixCharges) &&
            (identical(other.platformCommission, platformCommission) || other.platformCommission == platformCommission) &&
            (identical(other.assistCharges, assistCharges) || other.assistCharges == assistCharges) &&
            (identical(other.paymentGatewayCharges, paymentGatewayCharges) || other.paymentGatewayCharges == paymentGatewayCharges) &&
            (identical(other.driverProfit, driverProfit) || other.driverProfit == driverProfit) &&
            (identical(other.rideCancellationGracePeriod, rideCancellationGracePeriod) || other.rideCancellationGracePeriod == rideCancellationGracePeriod) &&
            (identical(other.assistValue, assistValue) || other.assistValue == assistValue) &&
            (identical(other.minOnlineHrPerWeek, minOnlineHrPerWeek) || other.minOnlineHrPerWeek == minOnlineHrPerWeek) &&
            (identical(other.driverWeeklySubscriptionFee, driverWeeklySubscriptionFee) || other.driverWeeklySubscriptionFee == driverWeeklySubscriptionFee) &&
            (identical(other.customerAndroidAppVersion, customerAndroidAppVersion) || other.customerAndroidAppVersion == customerAndroidAppVersion) &&
            (identical(other.customerAndroidForceUpdate, customerAndroidForceUpdate) || other.customerAndroidForceUpdate == customerAndroidForceUpdate) &&
            (identical(other.driverAndroidAppVersion, driverAndroidAppVersion) || other.driverAndroidAppVersion == driverAndroidAppVersion) &&
            (identical(other.driverAndroidForceUpdate, driverAndroidForceUpdate) || other.driverAndroidForceUpdate == driverAndroidForceUpdate) &&
            (identical(other.customerIosAppVersion, customerIosAppVersion) || other.customerIosAppVersion == customerIosAppVersion) &&
            (identical(other.customerIosForceUpdate, customerIosForceUpdate) || other.customerIosForceUpdate == customerIosForceUpdate) &&
            (identical(other.driverIosAppVersion, driverIosAppVersion) || other.driverIosAppVersion == driverIosAppVersion) &&
            (identical(other.driverIosForceUpdate, driverIosForceUpdate) || other.driverIosForceUpdate == driverIosForceUpdate) &&
            (identical(other.maintenanceTitle, maintenanceTitle) || other.maintenanceTitle == maintenanceTitle) &&
            (identical(other.maintenanceDescription, maintenanceDescription) || other.maintenanceDescription == maintenanceDescription) &&
            (identical(other.isDriverAppUnderMaintenance, isDriverAppUnderMaintenance) || other.isDriverAppUnderMaintenance == isDriverAppUnderMaintenance) &&
            (identical(other.isCustomerAppUnderMaintenance, isCustomerAppUnderMaintenance) || other.isCustomerAppUnderMaintenance == isCustomerAppUnderMaintenance) &&
            (identical(other.driverMaintenanceScheduledUntil, driverMaintenanceScheduledUntil) || other.driverMaintenanceScheduledUntil == driverMaintenanceScheduledUntil) &&
            (identical(other.customerMaintenanceScheduledUntil, customerMaintenanceScheduledUntil) || other.customerMaintenanceScheduledUntil == customerMaintenanceScheduledUntil) &&
            (identical(other.minBiddingFare, minBiddingFare) || other.minBiddingFare == minBiddingFare) &&
            (identical(other.maxBiddingFare, maxBiddingFare) || other.maxBiddingFare == maxBiddingFare));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adminCountry,
        adminCurrencyCode,
        adminCurrency,
        adminTimezone,
        displayDateTimezone,
        adminPhoneNumber,
        adminEmail,
        defaultMapLoadLatitude,
        defaultMapLoadLongitude,
        driverTimeoutInSeconds,
        defaultSearchRadius,
        scheduledRequestPreStartSeconds,
        numberOfLoopForNearestDriver,
        nearestDriverType,
        nearbyProvidersCallTime,
        providersRealtimeLocationUpdate,
        sendSmsWhatsapp,
        smsNotification,
        emailNotification,
        drawPathUserApp,
        androidUserAppForceUpdate,
        androidDriverAppForceUpdate,
        iosUserAppForceUpdate,
        iosDriverAppForceUpdate,
        showEstimationDriver,
        showEstimationUser,
        nearbyDriversLimitCount,
        driverOfflineAfterMin,
        minOnlineHrPerDay,
        vat,
        radiusFactorMultiplication,
        increaseBidCount,
        increaseBidShowAfterTime,
        retryFetchNearbyDriversAfterTime,
        retryFetchTripDriversCount,
        petFriendly,
        promotion,
        cancellationFixCharges,
        platformCommission,
        assistCharges,
        paymentGatewayCharges,
        driverProfit,
        rideCancellationGracePeriod,
        assistValue,
        minOnlineHrPerWeek,
        driverWeeklySubscriptionFee,
        customerAndroidAppVersion,
        customerAndroidForceUpdate,
        driverAndroidAppVersion,
        driverAndroidForceUpdate,
        customerIosAppVersion,
        customerIosForceUpdate,
        driverIosAppVersion,
        driverIosForceUpdate,
        maintenanceTitle,
        maintenanceDescription,
        isDriverAppUnderMaintenance,
        isCustomerAppUnderMaintenance,
        driverMaintenanceScheduledUntil,
        customerMaintenanceScheduledUntil,
        minBiddingFare,
        maxBiddingFare
      ]);

  @override
  String toString() {
    return 'Settings(adminCountry: $adminCountry, adminCurrencyCode: $adminCurrencyCode, adminCurrency: $adminCurrency, adminTimezone: $adminTimezone, displayDateTimezone: $displayDateTimezone, adminPhoneNumber: $adminPhoneNumber, adminEmail: $adminEmail, defaultMapLoadLatitude: $defaultMapLoadLatitude, defaultMapLoadLongitude: $defaultMapLoadLongitude, driverTimeoutInSeconds: $driverTimeoutInSeconds, defaultSearchRadius: $defaultSearchRadius, scheduledRequestPreStartSeconds: $scheduledRequestPreStartSeconds, numberOfLoopForNearestDriver: $numberOfLoopForNearestDriver, nearestDriverType: $nearestDriverType, nearbyProvidersCallTime: $nearbyProvidersCallTime, providersRealtimeLocationUpdate: $providersRealtimeLocationUpdate, sendSmsWhatsapp: $sendSmsWhatsapp, smsNotification: $smsNotification, emailNotification: $emailNotification, drawPathUserApp: $drawPathUserApp, androidUserAppForceUpdate: $androidUserAppForceUpdate, androidDriverAppForceUpdate: $androidDriverAppForceUpdate, iosUserAppForceUpdate: $iosUserAppForceUpdate, iosDriverAppForceUpdate: $iosDriverAppForceUpdate, showEstimationDriver: $showEstimationDriver, showEstimationUser: $showEstimationUser, nearbyDriversLimitCount: $nearbyDriversLimitCount, driverOfflineAfterMin: $driverOfflineAfterMin, minOnlineHrPerDay: $minOnlineHrPerDay, vat: $vat, radiusFactorMultiplication: $radiusFactorMultiplication, increaseBidCount: $increaseBidCount, increaseBidShowAfterTime: $increaseBidShowAfterTime, retryFetchNearbyDriversAfterTime: $retryFetchNearbyDriversAfterTime, retryFetchTripDriversCount: $retryFetchTripDriversCount, petFriendly: $petFriendly, promotion: $promotion, cancellationFixCharges: $cancellationFixCharges, platformCommission: $platformCommission, assistCharges: $assistCharges, paymentGatewayCharges: $paymentGatewayCharges, driverProfit: $driverProfit, rideCancellationGracePeriod: $rideCancellationGracePeriod, assistValue: $assistValue, minOnlineHrPerWeek: $minOnlineHrPerWeek, driverWeeklySubscriptionFee: $driverWeeklySubscriptionFee, customerAndroidAppVersion: $customerAndroidAppVersion, customerAndroidForceUpdate: $customerAndroidForceUpdate, driverAndroidAppVersion: $driverAndroidAppVersion, driverAndroidForceUpdate: $driverAndroidForceUpdate, customerIosAppVersion: $customerIosAppVersion, customerIosForceUpdate: $customerIosForceUpdate, driverIosAppVersion: $driverIosAppVersion, driverIosForceUpdate: $driverIosForceUpdate, maintenanceTitle: $maintenanceTitle, maintenanceDescription: $maintenanceDescription, isDriverAppUnderMaintenance: $isDriverAppUnderMaintenance, isCustomerAppUnderMaintenance: $isCustomerAppUnderMaintenance, driverMaintenanceScheduledUntil: $driverMaintenanceScheduledUntil, customerMaintenanceScheduledUntil: $customerMaintenanceScheduledUntil, minBiddingFare: $minBiddingFare, maxBiddingFare: $maxBiddingFare)';
  }
}

/// @nodoc
abstract mixin class _$SettingsCopyWith<$Res>
    implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) _then) =
      __$SettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "admin_country") String? adminCountry,
      @JsonKey(name: "admin_currency_code") String? adminCurrencyCode,
      @JsonKey(name: "admin_currency") String? adminCurrency,
      @JsonKey(name: "admin_timezone") String? adminTimezone,
      @JsonKey(name: "display_date_timezone") String? displayDateTimezone,
      @JsonKey(name: "admin_phoneNumber") String? adminPhoneNumber,
      @JsonKey(name: "admin_email") String? adminEmail,
      @JsonKey(name: "default_map_load_latitude")
      String? defaultMapLoadLatitude,
      @JsonKey(name: "default_map_load_longitude")
      String? defaultMapLoadLongitude,
      @JsonKey(name: "driver_timeout_in_seconds") int? driverTimeoutInSeconds,
      @JsonKey(name: "default_search_radius") int? defaultSearchRadius,
      @JsonKey(name: "Scheduled_request_pre_start_seconds")
      int? scheduledRequestPreStartSeconds,
      @JsonKey(name: "number_of_loop_for_nearest_driver")
      int? numberOfLoopForNearestDriver,
      @JsonKey(name: "nearest_driver_type") String? nearestDriverType,
      @JsonKey(name: "nearby_providers_call_time") int? nearbyProvidersCallTime,
      @JsonKey(name: "providers_realtime_location_update")
      int? providersRealtimeLocationUpdate,
      @JsonKey(name: "send_sms_whatsapp") bool? sendSmsWhatsapp,
      @JsonKey(name: "sms_notification") bool? smsNotification,
      @JsonKey(name: "email_notification") bool? emailNotification,
      @JsonKey(name: "draw_path_user_app") bool? drawPathUserApp,
      @JsonKey(name: "android_user_app_force_update")
      bool? androidUserAppForceUpdate,
      @JsonKey(name: "android_driver_app_force_update")
      bool? androidDriverAppForceUpdate,
      @JsonKey(name: "ios_user_app_force_update") bool? iosUserAppForceUpdate,
      @JsonKey(name: "ios_driver_app_force_update")
      bool? iosDriverAppForceUpdate,
      @JsonKey(name: "show_estimation_driver") bool? showEstimationDriver,
      @JsonKey(name: "show_estimation_user") bool? showEstimationUser,
      @JsonKey(name: "nearby_drivers_limit_count") int? nearbyDriversLimitCount,
      @JsonKey(name: "driver_offline_after_min") int? driverOfflineAfterMin,
      @JsonKey(name: "min_online_hr_per_day") int? minOnlineHrPerDay,
      @JsonKey(name: "vat") int? vat,
      @JsonKey(name: "radius_factor_multiplication")
      int? radiusFactorMultiplication,
      @JsonKey(name: "increase_bid_count") int? increaseBidCount,
      @JsonKey(name: "increase_bid_show_after_time")
      int? increaseBidShowAfterTime,
      @JsonKey(name: "retry_fetch_nearby_drivers_after_time")
      int? retryFetchNearbyDriversAfterTime,
      @JsonKey(name: "retry_fetch_trip_drivers_count")
      int? retryFetchTripDriversCount,
      @JsonKey(name: "pet_friendly") int? petFriendly,
      @JsonKey(name: "promotion") int? promotion,
      @JsonKey(name: "cancellation_fix_charges") int? cancellationFixCharges,
      @JsonKey(name: "platform_commission") int? platformCommission,
      @JsonKey(name: "assist_charges") int? assistCharges,
      @JsonKey(name: "payment_gateway_charges") int? paymentGatewayCharges,
      @JsonKey(name: "driver_profit") int? driverProfit,
      @JsonKey(name: "ride_cancellation_grace_period")
      int? rideCancellationGracePeriod,
      @JsonKey(name: "assist_value") int? assistValue,
      @JsonKey(name: "min_online_hr_per_week") int? minOnlineHrPerWeek,
      @JsonKey(name: "driver_weekly_subscription_fee")
      int? driverWeeklySubscriptionFee,
      @JsonKey(name: "customer_android_app_version")
      String? customerAndroidAppVersion,
      @JsonKey(name: "customer_android_force_update")
      bool? customerAndroidForceUpdate,
      @JsonKey(name: "driver_android_app_version")
      String? driverAndroidAppVersion,
      @JsonKey(name: "driver_android_force_update")
      bool? driverAndroidForceUpdate,
      @JsonKey(name: "customer_ios_app_version") String? customerIosAppVersion,
      @JsonKey(name: "customer_ios_force_update") bool? customerIosForceUpdate,
      @JsonKey(name: "driver_ios_app_version") String? driverIosAppVersion,
      @JsonKey(name: "driver_ios_force_update") bool? driverIosForceUpdate,
      @JsonKey(name: "maintenance_title") String? maintenanceTitle,
      @JsonKey(name: "maintenance_description") String? maintenanceDescription,
      @JsonKey(name: "is_driver_app_under_maintenance")
      bool? isDriverAppUnderMaintenance,
      @JsonKey(name: "is_customer_app_under_maintenance")
      bool? isCustomerAppUnderMaintenance,
      @JsonKey(name: "driver_maintenance_scheduled_until")
      String? driverMaintenanceScheduledUntil,
      @JsonKey(name: "customer_maintenance_scheduled_until")
      String? customerMaintenanceScheduledUntil,
      @JsonKey(name: "min_bidding_fare") int? minBiddingFare,
      @JsonKey(name: "max_bidding_fare") double? maxBiddingFare});
}

/// @nodoc
class __$SettingsCopyWithImpl<$Res> implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(this._self, this._then);

  final _Settings _self;
  final $Res Function(_Settings) _then;

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? adminCountry = freezed,
    Object? adminCurrencyCode = freezed,
    Object? adminCurrency = freezed,
    Object? adminTimezone = freezed,
    Object? displayDateTimezone = freezed,
    Object? adminPhoneNumber = freezed,
    Object? adminEmail = freezed,
    Object? defaultMapLoadLatitude = freezed,
    Object? defaultMapLoadLongitude = freezed,
    Object? driverTimeoutInSeconds = freezed,
    Object? defaultSearchRadius = freezed,
    Object? scheduledRequestPreStartSeconds = freezed,
    Object? numberOfLoopForNearestDriver = freezed,
    Object? nearestDriverType = freezed,
    Object? nearbyProvidersCallTime = freezed,
    Object? providersRealtimeLocationUpdate = freezed,
    Object? sendSmsWhatsapp = freezed,
    Object? smsNotification = freezed,
    Object? emailNotification = freezed,
    Object? drawPathUserApp = freezed,
    Object? androidUserAppForceUpdate = freezed,
    Object? androidDriverAppForceUpdate = freezed,
    Object? iosUserAppForceUpdate = freezed,
    Object? iosDriverAppForceUpdate = freezed,
    Object? showEstimationDriver = freezed,
    Object? showEstimationUser = freezed,
    Object? nearbyDriversLimitCount = freezed,
    Object? driverOfflineAfterMin = freezed,
    Object? minOnlineHrPerDay = freezed,
    Object? vat = freezed,
    Object? radiusFactorMultiplication = freezed,
    Object? increaseBidCount = freezed,
    Object? increaseBidShowAfterTime = freezed,
    Object? retryFetchNearbyDriversAfterTime = freezed,
    Object? retryFetchTripDriversCount = freezed,
    Object? petFriendly = freezed,
    Object? promotion = freezed,
    Object? cancellationFixCharges = freezed,
    Object? platformCommission = freezed,
    Object? assistCharges = freezed,
    Object? paymentGatewayCharges = freezed,
    Object? driverProfit = freezed,
    Object? rideCancellationGracePeriod = freezed,
    Object? assistValue = freezed,
    Object? minOnlineHrPerWeek = freezed,
    Object? driverWeeklySubscriptionFee = freezed,
    Object? customerAndroidAppVersion = freezed,
    Object? customerAndroidForceUpdate = freezed,
    Object? driverAndroidAppVersion = freezed,
    Object? driverAndroidForceUpdate = freezed,
    Object? customerIosAppVersion = freezed,
    Object? customerIosForceUpdate = freezed,
    Object? driverIosAppVersion = freezed,
    Object? driverIosForceUpdate = freezed,
    Object? maintenanceTitle = freezed,
    Object? maintenanceDescription = freezed,
    Object? isDriverAppUnderMaintenance = freezed,
    Object? isCustomerAppUnderMaintenance = freezed,
    Object? driverMaintenanceScheduledUntil = freezed,
    Object? customerMaintenanceScheduledUntil = freezed,
    Object? minBiddingFare = freezed,
    Object? maxBiddingFare = freezed,
  }) {
    return _then(_Settings(
      adminCountry: freezed == adminCountry
          ? _self.adminCountry
          : adminCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      adminCurrencyCode: freezed == adminCurrencyCode
          ? _self.adminCurrencyCode
          : adminCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      adminCurrency: freezed == adminCurrency
          ? _self.adminCurrency
          : adminCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      adminTimezone: freezed == adminTimezone
          ? _self.adminTimezone
          : adminTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
      displayDateTimezone: freezed == displayDateTimezone
          ? _self.displayDateTimezone
          : displayDateTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
      adminPhoneNumber: freezed == adminPhoneNumber
          ? _self.adminPhoneNumber
          : adminPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      adminEmail: freezed == adminEmail
          ? _self.adminEmail
          : adminEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultMapLoadLatitude: freezed == defaultMapLoadLatitude
          ? _self.defaultMapLoadLatitude
          : defaultMapLoadLatitude // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultMapLoadLongitude: freezed == defaultMapLoadLongitude
          ? _self.defaultMapLoadLongitude
          : defaultMapLoadLongitude // ignore: cast_nullable_to_non_nullable
              as String?,
      driverTimeoutInSeconds: freezed == driverTimeoutInSeconds
          ? _self.driverTimeoutInSeconds
          : driverTimeoutInSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultSearchRadius: freezed == defaultSearchRadius
          ? _self.defaultSearchRadius
          : defaultSearchRadius // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduledRequestPreStartSeconds: freezed ==
              scheduledRequestPreStartSeconds
          ? _self.scheduledRequestPreStartSeconds
          : scheduledRequestPreStartSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfLoopForNearestDriver: freezed == numberOfLoopForNearestDriver
          ? _self.numberOfLoopForNearestDriver
          : numberOfLoopForNearestDriver // ignore: cast_nullable_to_non_nullable
              as int?,
      nearestDriverType: freezed == nearestDriverType
          ? _self.nearestDriverType
          : nearestDriverType // ignore: cast_nullable_to_non_nullable
              as String?,
      nearbyProvidersCallTime: freezed == nearbyProvidersCallTime
          ? _self.nearbyProvidersCallTime
          : nearbyProvidersCallTime // ignore: cast_nullable_to_non_nullable
              as int?,
      providersRealtimeLocationUpdate: freezed ==
              providersRealtimeLocationUpdate
          ? _self.providersRealtimeLocationUpdate
          : providersRealtimeLocationUpdate // ignore: cast_nullable_to_non_nullable
              as int?,
      sendSmsWhatsapp: freezed == sendSmsWhatsapp
          ? _self.sendSmsWhatsapp
          : sendSmsWhatsapp // ignore: cast_nullable_to_non_nullable
              as bool?,
      smsNotification: freezed == smsNotification
          ? _self.smsNotification
          : smsNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailNotification: freezed == emailNotification
          ? _self.emailNotification
          : emailNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      drawPathUserApp: freezed == drawPathUserApp
          ? _self.drawPathUserApp
          : drawPathUserApp // ignore: cast_nullable_to_non_nullable
              as bool?,
      androidUserAppForceUpdate: freezed == androidUserAppForceUpdate
          ? _self.androidUserAppForceUpdate
          : androidUserAppForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      androidDriverAppForceUpdate: freezed == androidDriverAppForceUpdate
          ? _self.androidDriverAppForceUpdate
          : androidDriverAppForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      iosUserAppForceUpdate: freezed == iosUserAppForceUpdate
          ? _self.iosUserAppForceUpdate
          : iosUserAppForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      iosDriverAppForceUpdate: freezed == iosDriverAppForceUpdate
          ? _self.iosDriverAppForceUpdate
          : iosDriverAppForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      showEstimationDriver: freezed == showEstimationDriver
          ? _self.showEstimationDriver
          : showEstimationDriver // ignore: cast_nullable_to_non_nullable
              as bool?,
      showEstimationUser: freezed == showEstimationUser
          ? _self.showEstimationUser
          : showEstimationUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      nearbyDriversLimitCount: freezed == nearbyDriversLimitCount
          ? _self.nearbyDriversLimitCount
          : nearbyDriversLimitCount // ignore: cast_nullable_to_non_nullable
              as int?,
      driverOfflineAfterMin: freezed == driverOfflineAfterMin
          ? _self.driverOfflineAfterMin
          : driverOfflineAfterMin // ignore: cast_nullable_to_non_nullable
              as int?,
      minOnlineHrPerDay: freezed == minOnlineHrPerDay
          ? _self.minOnlineHrPerDay
          : minOnlineHrPerDay // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: freezed == vat
          ? _self.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as int?,
      radiusFactorMultiplication: freezed == radiusFactorMultiplication
          ? _self.radiusFactorMultiplication
          : radiusFactorMultiplication // ignore: cast_nullable_to_non_nullable
              as int?,
      increaseBidCount: freezed == increaseBidCount
          ? _self.increaseBidCount
          : increaseBidCount // ignore: cast_nullable_to_non_nullable
              as int?,
      increaseBidShowAfterTime: freezed == increaseBidShowAfterTime
          ? _self.increaseBidShowAfterTime
          : increaseBidShowAfterTime // ignore: cast_nullable_to_non_nullable
              as int?,
      retryFetchNearbyDriversAfterTime: freezed ==
              retryFetchNearbyDriversAfterTime
          ? _self.retryFetchNearbyDriversAfterTime
          : retryFetchNearbyDriversAfterTime // ignore: cast_nullable_to_non_nullable
              as int?,
      retryFetchTripDriversCount: freezed == retryFetchTripDriversCount
          ? _self.retryFetchTripDriversCount
          : retryFetchTripDriversCount // ignore: cast_nullable_to_non_nullable
              as int?,
      petFriendly: freezed == petFriendly
          ? _self.petFriendly
          : petFriendly // ignore: cast_nullable_to_non_nullable
              as int?,
      promotion: freezed == promotion
          ? _self.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as int?,
      cancellationFixCharges: freezed == cancellationFixCharges
          ? _self.cancellationFixCharges
          : cancellationFixCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      platformCommission: freezed == platformCommission
          ? _self.platformCommission
          : platformCommission // ignore: cast_nullable_to_non_nullable
              as int?,
      assistCharges: freezed == assistCharges
          ? _self.assistCharges
          : assistCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentGatewayCharges: freezed == paymentGatewayCharges
          ? _self.paymentGatewayCharges
          : paymentGatewayCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      driverProfit: freezed == driverProfit
          ? _self.driverProfit
          : driverProfit // ignore: cast_nullable_to_non_nullable
              as int?,
      rideCancellationGracePeriod: freezed == rideCancellationGracePeriod
          ? _self.rideCancellationGracePeriod
          : rideCancellationGracePeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      assistValue: freezed == assistValue
          ? _self.assistValue
          : assistValue // ignore: cast_nullable_to_non_nullable
              as int?,
      minOnlineHrPerWeek: freezed == minOnlineHrPerWeek
          ? _self.minOnlineHrPerWeek
          : minOnlineHrPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      driverWeeklySubscriptionFee: freezed == driverWeeklySubscriptionFee
          ? _self.driverWeeklySubscriptionFee
          : driverWeeklySubscriptionFee // ignore: cast_nullable_to_non_nullable
              as int?,
      customerAndroidAppVersion: freezed == customerAndroidAppVersion
          ? _self.customerAndroidAppVersion
          : customerAndroidAppVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      customerAndroidForceUpdate: freezed == customerAndroidForceUpdate
          ? _self.customerAndroidForceUpdate
          : customerAndroidForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      driverAndroidAppVersion: freezed == driverAndroidAppVersion
          ? _self.driverAndroidAppVersion
          : driverAndroidAppVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      driverAndroidForceUpdate: freezed == driverAndroidForceUpdate
          ? _self.driverAndroidForceUpdate
          : driverAndroidForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      customerIosAppVersion: freezed == customerIosAppVersion
          ? _self.customerIosAppVersion
          : customerIosAppVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      customerIosForceUpdate: freezed == customerIosForceUpdate
          ? _self.customerIosForceUpdate
          : customerIosForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      driverIosAppVersion: freezed == driverIosAppVersion
          ? _self.driverIosAppVersion
          : driverIosAppVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      driverIosForceUpdate: freezed == driverIosForceUpdate
          ? _self.driverIosForceUpdate
          : driverIosForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintenanceTitle: freezed == maintenanceTitle
          ? _self.maintenanceTitle
          : maintenanceTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      maintenanceDescription: freezed == maintenanceDescription
          ? _self.maintenanceDescription
          : maintenanceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      isDriverAppUnderMaintenance: freezed == isDriverAppUnderMaintenance
          ? _self.isDriverAppUnderMaintenance
          : isDriverAppUnderMaintenance // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCustomerAppUnderMaintenance: freezed == isCustomerAppUnderMaintenance
          ? _self.isCustomerAppUnderMaintenance
          : isCustomerAppUnderMaintenance // ignore: cast_nullable_to_non_nullable
              as bool?,
      driverMaintenanceScheduledUntil: freezed ==
              driverMaintenanceScheduledUntil
          ? _self.driverMaintenanceScheduledUntil
          : driverMaintenanceScheduledUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      customerMaintenanceScheduledUntil: freezed ==
              customerMaintenanceScheduledUntil
          ? _self.customerMaintenanceScheduledUntil
          : customerMaintenanceScheduledUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      minBiddingFare: freezed == minBiddingFare
          ? _self.minBiddingFare
          : minBiddingFare // ignore: cast_nullable_to_non_nullable
              as int?,
      maxBiddingFare: freezed == maxBiddingFare
          ? _self.maxBiddingFare
          : maxBiddingFare // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
