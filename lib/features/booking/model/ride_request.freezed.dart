// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RideRequest {
// Fields from Model 1
  @JsonKey(name: "pickup_location")
  Location? get pickupLocation;
  @JsonKey(name: "dropoff_location")
  Location? get dropoffLocation;
  @JsonKey(name: "country_id")
  String? get countryId;
  @JsonKey(name: "city_id")
  String? get cityId;
  @JsonKey(name: "zone_id")
  String? get zoneId;
  @JsonKey(name: "customer_id")
  String? get customerId;
  @JsonKey(name: "pickup_address")
  String? get pickupAddress;
  @JsonKey(name: "dropoff_address")
  String? get dropoffAddress;
  @JsonKey(name: "stops")
  List<Stop>? get stops;
  @JsonKey(name: "booked_for")
  String? get bookedFor;
  @JsonKey(name: "accessiblity")
  String? get accessiblity;
  @JsonKey(name: "type")
  String? get type;
  @JsonKey(name: "distance_in_meters")
  int? get distanceInMeters;
  @JsonKey(name: "scheduled_at")
  DateTime? get scheduledAt;
  @JsonKey(name: "server_scheduled_at")
  DateTime? get serverScheduledAt;
  @JsonKey(name: "is_deleted")
  bool? get isDeleted;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @JsonKey(name: "id")
  String? get id; // Fields from Model 2
  @JsonKey(name: 'ride_id')
  String? get rideId;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<LatLng>? get route;
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get polyline;
  @JsonKey(name: "pickup_area")
  Area? get pickupArea;
  @JsonKey(name: "dropoff_area")
  Area? get dropoffArea; // Shared / Conflicting Fields (Resolved)
  @JsonKey(name: "total_eta")
  int? get totalEta;
  @JsonKey(name: "stops_eta")
  List<StopsEta>?
      get stopsEta; // **CONFLICT RESOLVED**: Chose List<StopsEta> as the type for the merged model.
  @JsonKey(name: "optimized_stops")
  List<OptimizedStop>? get optimizedStops;

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideRequestCopyWith<RideRequest> get copyWith =>
      _$RideRequestCopyWithImpl<RideRequest>(this as RideRequest, _$identity);

  /// Serializes this RideRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideRequest &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.dropoffLocation, dropoffLocation) ||
                other.dropoffLocation == dropoffLocation) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.dropoffAddress, dropoffAddress) ||
                other.dropoffAddress == dropoffAddress) &&
            const DeepCollectionEquality().equals(other.stops, stops) &&
            (identical(other.bookedFor, bookedFor) ||
                other.bookedFor == bookedFor) &&
            (identical(other.accessiblity, accessiblity) ||
                other.accessiblity == accessiblity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.distanceInMeters, distanceInMeters) ||
                other.distanceInMeters == distanceInMeters) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.serverScheduledAt, serverScheduledAt) ||
                other.serverScheduledAt == serverScheduledAt) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            const DeepCollectionEquality().equals(other.route, route) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline) &&
            (identical(other.pickupArea, pickupArea) ||
                other.pickupArea == pickupArea) &&
            (identical(other.dropoffArea, dropoffArea) ||
                other.dropoffArea == dropoffArea) &&
            (identical(other.totalEta, totalEta) ||
                other.totalEta == totalEta) &&
            const DeepCollectionEquality().equals(other.stopsEta, stopsEta) &&
            const DeepCollectionEquality()
                .equals(other.optimizedStops, optimizedStops));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        pickupLocation,
        dropoffLocation,
        countryId,
        cityId,
        zoneId,
        customerId,
        pickupAddress,
        dropoffAddress,
        const DeepCollectionEquality().hash(stops),
        bookedFor,
        accessiblity,
        type,
        distanceInMeters,
        scheduledAt,
        serverScheduledAt,
        isDeleted,
        createdAt,
        updatedAt,
        id,
        rideId,
        const DeepCollectionEquality().hash(route),
        polyline,
        pickupArea,
        dropoffArea,
        totalEta,
        const DeepCollectionEquality().hash(stopsEta),
        const DeepCollectionEquality().hash(optimizedStops)
      ]);

  @override
  String toString() {
    return 'RideRequest(pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, countryId: $countryId, cityId: $cityId, zoneId: $zoneId, customerId: $customerId, pickupAddress: $pickupAddress, dropoffAddress: $dropoffAddress, stops: $stops, bookedFor: $bookedFor, accessiblity: $accessiblity, type: $type, distanceInMeters: $distanceInMeters, scheduledAt: $scheduledAt, serverScheduledAt: $serverScheduledAt, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, id: $id, rideId: $rideId, route: $route, polyline: $polyline, pickupArea: $pickupArea, dropoffArea: $dropoffArea, totalEta: $totalEta, stopsEta: $stopsEta, optimizedStops: $optimizedStops)';
  }
}

/// @nodoc
abstract mixin class $RideRequestCopyWith<$Res> {
  factory $RideRequestCopyWith(
          RideRequest value, $Res Function(RideRequest) _then) =
      _$RideRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "pickup_location") Location? pickupLocation,
      @JsonKey(name: "dropoff_location") Location? dropoffLocation,
      @JsonKey(name: "country_id") String? countryId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "zone_id") String? zoneId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "pickup_address") String? pickupAddress,
      @JsonKey(name: "dropoff_address") String? dropoffAddress,
      @JsonKey(name: "stops") List<Stop>? stops,
      @JsonKey(name: "booked_for") String? bookedFor,
      @JsonKey(name: "accessiblity") String? accessiblity,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "distance_in_meters") int? distanceInMeters,
      @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
      @JsonKey(name: "server_scheduled_at") DateTime? serverScheduledAt,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: 'ride_id') String? rideId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<LatLng>? route,
      @JsonKey(includeFromJson: false, includeToJson: false) String? polyline,
      @JsonKey(name: "pickup_area") Area? pickupArea,
      @JsonKey(name: "dropoff_area") Area? dropoffArea,
      @JsonKey(name: "total_eta") int? totalEta,
      @JsonKey(name: "stops_eta") List<StopsEta>? stopsEta,
      @JsonKey(name: "optimized_stops") List<OptimizedStop>? optimizedStops});

  $LocationCopyWith<$Res>? get pickupLocation;
  $LocationCopyWith<$Res>? get dropoffLocation;
  $AreaCopyWith<$Res>? get pickupArea;
  $AreaCopyWith<$Res>? get dropoffArea;
}

/// @nodoc
class _$RideRequestCopyWithImpl<$Res> implements $RideRequestCopyWith<$Res> {
  _$RideRequestCopyWithImpl(this._self, this._then);

  final RideRequest _self;
  final $Res Function(RideRequest) _then;

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = freezed,
    Object? dropoffLocation = freezed,
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? zoneId = freezed,
    Object? customerId = freezed,
    Object? pickupAddress = freezed,
    Object? dropoffAddress = freezed,
    Object? stops = freezed,
    Object? bookedFor = freezed,
    Object? accessiblity = freezed,
    Object? type = freezed,
    Object? distanceInMeters = freezed,
    Object? scheduledAt = freezed,
    Object? serverScheduledAt = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
    Object? rideId = freezed,
    Object? route = freezed,
    Object? polyline = freezed,
    Object? pickupArea = freezed,
    Object? dropoffArea = freezed,
    Object? totalEta = freezed,
    Object? stopsEta = freezed,
    Object? optimizedStops = freezed,
  }) {
    return _then(_self.copyWith(
      pickupLocation: freezed == pickupLocation
          ? _self.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      dropoffLocation: freezed == dropoffLocation
          ? _self.dropoffLocation
          : dropoffLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      countryId: freezed == countryId
          ? _self.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId: freezed == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: freezed == pickupAddress
          ? _self.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropoffAddress: freezed == dropoffAddress
          ? _self.dropoffAddress
          : dropoffAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      stops: freezed == stops
          ? _self.stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<Stop>?,
      bookedFor: freezed == bookedFor
          ? _self.bookedFor
          : bookedFor // ignore: cast_nullable_to_non_nullable
              as String?,
      accessiblity: freezed == accessiblity
          ? _self.accessiblity
          : accessiblity // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceInMeters: freezed == distanceInMeters
          ? _self.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduledAt: freezed == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      serverScheduledAt: freezed == serverScheduledAt
          ? _self.serverScheduledAt
          : serverScheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      route: freezed == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as List<LatLng>?,
      polyline: freezed == polyline
          ? _self.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupArea: freezed == pickupArea
          ? _self.pickupArea
          : pickupArea // ignore: cast_nullable_to_non_nullable
              as Area?,
      dropoffArea: freezed == dropoffArea
          ? _self.dropoffArea
          : dropoffArea // ignore: cast_nullable_to_non_nullable
              as Area?,
      totalEta: freezed == totalEta
          ? _self.totalEta
          : totalEta // ignore: cast_nullable_to_non_nullable
              as int?,
      stopsEta: freezed == stopsEta
          ? _self.stopsEta
          : stopsEta // ignore: cast_nullable_to_non_nullable
              as List<StopsEta>?,
      optimizedStops: freezed == optimizedStops
          ? _self.optimizedStops
          : optimizedStops // ignore: cast_nullable_to_non_nullable
              as List<OptimizedStop>?,
    ));
  }

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get pickupLocation {
    if (_self.pickupLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.pickupLocation!, (value) {
      return _then(_self.copyWith(pickupLocation: value));
    });
  }

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get dropoffLocation {
    if (_self.dropoffLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.dropoffLocation!, (value) {
      return _then(_self.copyWith(dropoffLocation: value));
    });
  }

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res>? get pickupArea {
    if (_self.pickupArea == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_self.pickupArea!, (value) {
      return _then(_self.copyWith(pickupArea: value));
    });
  }

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res>? get dropoffArea {
    if (_self.dropoffArea == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_self.dropoffArea!, (value) {
      return _then(_self.copyWith(dropoffArea: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RideRequest].
extension RideRequestPatterns on RideRequest {
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
    TResult Function(_RideRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideRequest() when $default != null:
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
    TResult Function(_RideRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideRequest():
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
    TResult? Function(_RideRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideRequest() when $default != null:
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
            @JsonKey(name: "pickup_location") Location? pickupLocation,
            @JsonKey(name: "dropoff_location") Location? dropoffLocation,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "pickup_address") String? pickupAddress,
            @JsonKey(name: "dropoff_address") String? dropoffAddress,
            @JsonKey(name: "stops") List<Stop>? stops,
            @JsonKey(name: "booked_for") String? bookedFor,
            @JsonKey(name: "accessiblity") String? accessiblity,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "distance_in_meters") int? distanceInMeters,
            @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
            @JsonKey(name: "server_scheduled_at") DateTime? serverScheduledAt,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "id") String? id,
            @JsonKey(name: 'ride_id') String? rideId,
            @JsonKey(includeFromJson: false, includeToJson: false)
            List<LatLng>? route,
            @JsonKey(includeFromJson: false, includeToJson: false)
            String? polyline,
            @JsonKey(name: "pickup_area") Area? pickupArea,
            @JsonKey(name: "dropoff_area") Area? dropoffArea,
            @JsonKey(name: "total_eta") int? totalEta,
            @JsonKey(name: "stops_eta") List<StopsEta>? stopsEta,
            @JsonKey(name: "optimized_stops")
            List<OptimizedStop>? optimizedStops)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RideRequest() when $default != null:
        return $default(
            _that.pickupLocation,
            _that.dropoffLocation,
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.customerId,
            _that.pickupAddress,
            _that.dropoffAddress,
            _that.stops,
            _that.bookedFor,
            _that.accessiblity,
            _that.type,
            _that.distanceInMeters,
            _that.scheduledAt,
            _that.serverScheduledAt,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.id,
            _that.rideId,
            _that.route,
            _that.polyline,
            _that.pickupArea,
            _that.dropoffArea,
            _that.totalEta,
            _that.stopsEta,
            _that.optimizedStops);
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
            @JsonKey(name: "pickup_location") Location? pickupLocation,
            @JsonKey(name: "dropoff_location") Location? dropoffLocation,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "pickup_address") String? pickupAddress,
            @JsonKey(name: "dropoff_address") String? dropoffAddress,
            @JsonKey(name: "stops") List<Stop>? stops,
            @JsonKey(name: "booked_for") String? bookedFor,
            @JsonKey(name: "accessiblity") String? accessiblity,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "distance_in_meters") int? distanceInMeters,
            @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
            @JsonKey(name: "server_scheduled_at") DateTime? serverScheduledAt,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "id") String? id,
            @JsonKey(name: 'ride_id') String? rideId,
            @JsonKey(includeFromJson: false, includeToJson: false)
            List<LatLng>? route,
            @JsonKey(includeFromJson: false, includeToJson: false)
            String? polyline,
            @JsonKey(name: "pickup_area") Area? pickupArea,
            @JsonKey(name: "dropoff_area") Area? dropoffArea,
            @JsonKey(name: "total_eta") int? totalEta,
            @JsonKey(name: "stops_eta") List<StopsEta>? stopsEta,
            @JsonKey(name: "optimized_stops")
            List<OptimizedStop>? optimizedStops)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideRequest():
        return $default(
            _that.pickupLocation,
            _that.dropoffLocation,
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.customerId,
            _that.pickupAddress,
            _that.dropoffAddress,
            _that.stops,
            _that.bookedFor,
            _that.accessiblity,
            _that.type,
            _that.distanceInMeters,
            _that.scheduledAt,
            _that.serverScheduledAt,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.id,
            _that.rideId,
            _that.route,
            _that.polyline,
            _that.pickupArea,
            _that.dropoffArea,
            _that.totalEta,
            _that.stopsEta,
            _that.optimizedStops);
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
            @JsonKey(name: "pickup_location") Location? pickupLocation,
            @JsonKey(name: "dropoff_location") Location? dropoffLocation,
            @JsonKey(name: "country_id") String? countryId,
            @JsonKey(name: "city_id") String? cityId,
            @JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "customer_id") String? customerId,
            @JsonKey(name: "pickup_address") String? pickupAddress,
            @JsonKey(name: "dropoff_address") String? dropoffAddress,
            @JsonKey(name: "stops") List<Stop>? stops,
            @JsonKey(name: "booked_for") String? bookedFor,
            @JsonKey(name: "accessiblity") String? accessiblity,
            @JsonKey(name: "type") String? type,
            @JsonKey(name: "distance_in_meters") int? distanceInMeters,
            @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
            @JsonKey(name: "server_scheduled_at") DateTime? serverScheduledAt,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "id") String? id,
            @JsonKey(name: 'ride_id') String? rideId,
            @JsonKey(includeFromJson: false, includeToJson: false)
            List<LatLng>? route,
            @JsonKey(includeFromJson: false, includeToJson: false)
            String? polyline,
            @JsonKey(name: "pickup_area") Area? pickupArea,
            @JsonKey(name: "dropoff_area") Area? dropoffArea,
            @JsonKey(name: "total_eta") int? totalEta,
            @JsonKey(name: "stops_eta") List<StopsEta>? stopsEta,
            @JsonKey(name: "optimized_stops")
            List<OptimizedStop>? optimizedStops)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RideRequest() when $default != null:
        return $default(
            _that.pickupLocation,
            _that.dropoffLocation,
            _that.countryId,
            _that.cityId,
            _that.zoneId,
            _that.customerId,
            _that.pickupAddress,
            _that.dropoffAddress,
            _that.stops,
            _that.bookedFor,
            _that.accessiblity,
            _that.type,
            _that.distanceInMeters,
            _that.scheduledAt,
            _that.serverScheduledAt,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.id,
            _that.rideId,
            _that.route,
            _that.polyline,
            _that.pickupArea,
            _that.dropoffArea,
            _that.totalEta,
            _that.stopsEta,
            _that.optimizedStops);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RideRequest extends RideRequest {
  const _RideRequest(
      {@JsonKey(name: "pickup_location") this.pickupLocation,
      @JsonKey(name: "dropoff_location") this.dropoffLocation,
      @JsonKey(name: "country_id") this.countryId,
      @JsonKey(name: "city_id") this.cityId,
      @JsonKey(name: "zone_id") this.zoneId,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "pickup_address") this.pickupAddress,
      @JsonKey(name: "dropoff_address") this.dropoffAddress,
      @JsonKey(name: "stops") final List<Stop>? stops,
      @JsonKey(name: "booked_for") this.bookedFor,
      @JsonKey(name: "accessiblity") this.accessiblity,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "distance_in_meters") this.distanceInMeters,
      @JsonKey(name: "scheduled_at") this.scheduledAt,
      @JsonKey(name: "server_scheduled_at") this.serverScheduledAt,
      @JsonKey(name: "is_deleted") this.isDeleted,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: 'ride_id') this.rideId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<LatLng>? route,
      @JsonKey(includeFromJson: false, includeToJson: false) this.polyline,
      @JsonKey(name: "pickup_area") this.pickupArea,
      @JsonKey(name: "dropoff_area") this.dropoffArea,
      @JsonKey(name: "total_eta") this.totalEta,
      @JsonKey(name: "stops_eta") final List<StopsEta>? stopsEta,
      @JsonKey(name: "optimized_stops")
      final List<OptimizedStop>? optimizedStops})
      : _stops = stops,
        _route = route,
        _stopsEta = stopsEta,
        _optimizedStops = optimizedStops,
        super._();
  factory _RideRequest.fromJson(Map<String, dynamic> json) =>
      _$RideRequestFromJson(json);

// Fields from Model 1
  @override
  @JsonKey(name: "pickup_location")
  final Location? pickupLocation;
  @override
  @JsonKey(name: "dropoff_location")
  final Location? dropoffLocation;
  @override
  @JsonKey(name: "country_id")
  final String? countryId;
  @override
  @JsonKey(name: "city_id")
  final String? cityId;
  @override
  @JsonKey(name: "zone_id")
  final String? zoneId;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "pickup_address")
  final String? pickupAddress;
  @override
  @JsonKey(name: "dropoff_address")
  final String? dropoffAddress;
  final List<Stop>? _stops;
  @override
  @JsonKey(name: "stops")
  List<Stop>? get stops {
    final value = _stops;
    if (value == null) return null;
    if (_stops is EqualUnmodifiableListView) return _stops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "booked_for")
  final String? bookedFor;
  @override
  @JsonKey(name: "accessiblity")
  final String? accessiblity;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "distance_in_meters")
  final int? distanceInMeters;
  @override
  @JsonKey(name: "scheduled_at")
  final DateTime? scheduledAt;
  @override
  @JsonKey(name: "server_scheduled_at")
  final DateTime? serverScheduledAt;
  @override
  @JsonKey(name: "is_deleted")
  final bool? isDeleted;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "id")
  final String? id;
// Fields from Model 2
  @override
  @JsonKey(name: 'ride_id')
  final String? rideId;
  final List<LatLng>? _route;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<LatLng>? get route {
    final value = _route;
    if (value == null) return null;
    if (_route is EqualUnmodifiableListView) return _route;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? polyline;
  @override
  @JsonKey(name: "pickup_area")
  final Area? pickupArea;
  @override
  @JsonKey(name: "dropoff_area")
  final Area? dropoffArea;
// Shared / Conflicting Fields (Resolved)
  @override
  @JsonKey(name: "total_eta")
  final int? totalEta;
  final List<StopsEta>? _stopsEta;
  @override
  @JsonKey(name: "stops_eta")
  List<StopsEta>? get stopsEta {
    final value = _stopsEta;
    if (value == null) return null;
    if (_stopsEta is EqualUnmodifiableListView) return _stopsEta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// **CONFLICT RESOLVED**: Chose List<StopsEta> as the type for the merged model.
  final List<OptimizedStop>? _optimizedStops;
// **CONFLICT RESOLVED**: Chose List<StopsEta> as the type for the merged model.
  @override
  @JsonKey(name: "optimized_stops")
  List<OptimizedStop>? get optimizedStops {
    final value = _optimizedStops;
    if (value == null) return null;
    if (_optimizedStops is EqualUnmodifiableListView) return _optimizedStops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideRequestCopyWith<_RideRequest> get copyWith =>
      __$RideRequestCopyWithImpl<_RideRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RideRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideRequest &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.dropoffLocation, dropoffLocation) ||
                other.dropoffLocation == dropoffLocation) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.dropoffAddress, dropoffAddress) ||
                other.dropoffAddress == dropoffAddress) &&
            const DeepCollectionEquality().equals(other._stops, _stops) &&
            (identical(other.bookedFor, bookedFor) ||
                other.bookedFor == bookedFor) &&
            (identical(other.accessiblity, accessiblity) ||
                other.accessiblity == accessiblity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.distanceInMeters, distanceInMeters) ||
                other.distanceInMeters == distanceInMeters) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.serverScheduledAt, serverScheduledAt) ||
                other.serverScheduledAt == serverScheduledAt) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            const DeepCollectionEquality().equals(other._route, _route) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline) &&
            (identical(other.pickupArea, pickupArea) ||
                other.pickupArea == pickupArea) &&
            (identical(other.dropoffArea, dropoffArea) ||
                other.dropoffArea == dropoffArea) &&
            (identical(other.totalEta, totalEta) ||
                other.totalEta == totalEta) &&
            const DeepCollectionEquality().equals(other._stopsEta, _stopsEta) &&
            const DeepCollectionEquality()
                .equals(other._optimizedStops, _optimizedStops));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        pickupLocation,
        dropoffLocation,
        countryId,
        cityId,
        zoneId,
        customerId,
        pickupAddress,
        dropoffAddress,
        const DeepCollectionEquality().hash(_stops),
        bookedFor,
        accessiblity,
        type,
        distanceInMeters,
        scheduledAt,
        serverScheduledAt,
        isDeleted,
        createdAt,
        updatedAt,
        id,
        rideId,
        const DeepCollectionEquality().hash(_route),
        polyline,
        pickupArea,
        dropoffArea,
        totalEta,
        const DeepCollectionEquality().hash(_stopsEta),
        const DeepCollectionEquality().hash(_optimizedStops)
      ]);

  @override
  String toString() {
    return 'RideRequest(pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, countryId: $countryId, cityId: $cityId, zoneId: $zoneId, customerId: $customerId, pickupAddress: $pickupAddress, dropoffAddress: $dropoffAddress, stops: $stops, bookedFor: $bookedFor, accessiblity: $accessiblity, type: $type, distanceInMeters: $distanceInMeters, scheduledAt: $scheduledAt, serverScheduledAt: $serverScheduledAt, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, id: $id, rideId: $rideId, route: $route, polyline: $polyline, pickupArea: $pickupArea, dropoffArea: $dropoffArea, totalEta: $totalEta, stopsEta: $stopsEta, optimizedStops: $optimizedStops)';
  }
}

/// @nodoc
abstract mixin class _$RideRequestCopyWith<$Res>
    implements $RideRequestCopyWith<$Res> {
  factory _$RideRequestCopyWith(
          _RideRequest value, $Res Function(_RideRequest) _then) =
      __$RideRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "pickup_location") Location? pickupLocation,
      @JsonKey(name: "dropoff_location") Location? dropoffLocation,
      @JsonKey(name: "country_id") String? countryId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "zone_id") String? zoneId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "pickup_address") String? pickupAddress,
      @JsonKey(name: "dropoff_address") String? dropoffAddress,
      @JsonKey(name: "stops") List<Stop>? stops,
      @JsonKey(name: "booked_for") String? bookedFor,
      @JsonKey(name: "accessiblity") String? accessiblity,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "distance_in_meters") int? distanceInMeters,
      @JsonKey(name: "scheduled_at") DateTime? scheduledAt,
      @JsonKey(name: "server_scheduled_at") DateTime? serverScheduledAt,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: 'ride_id') String? rideId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<LatLng>? route,
      @JsonKey(includeFromJson: false, includeToJson: false) String? polyline,
      @JsonKey(name: "pickup_area") Area? pickupArea,
      @JsonKey(name: "dropoff_area") Area? dropoffArea,
      @JsonKey(name: "total_eta") int? totalEta,
      @JsonKey(name: "stops_eta") List<StopsEta>? stopsEta,
      @JsonKey(name: "optimized_stops") List<OptimizedStop>? optimizedStops});

  @override
  $LocationCopyWith<$Res>? get pickupLocation;
  @override
  $LocationCopyWith<$Res>? get dropoffLocation;
  @override
  $AreaCopyWith<$Res>? get pickupArea;
  @override
  $AreaCopyWith<$Res>? get dropoffArea;
}

/// @nodoc
class __$RideRequestCopyWithImpl<$Res> implements _$RideRequestCopyWith<$Res> {
  __$RideRequestCopyWithImpl(this._self, this._then);

  final _RideRequest _self;
  final $Res Function(_RideRequest) _then;

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pickupLocation = freezed,
    Object? dropoffLocation = freezed,
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? zoneId = freezed,
    Object? customerId = freezed,
    Object? pickupAddress = freezed,
    Object? dropoffAddress = freezed,
    Object? stops = freezed,
    Object? bookedFor = freezed,
    Object? accessiblity = freezed,
    Object? type = freezed,
    Object? distanceInMeters = freezed,
    Object? scheduledAt = freezed,
    Object? serverScheduledAt = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
    Object? rideId = freezed,
    Object? route = freezed,
    Object? polyline = freezed,
    Object? pickupArea = freezed,
    Object? dropoffArea = freezed,
    Object? totalEta = freezed,
    Object? stopsEta = freezed,
    Object? optimizedStops = freezed,
  }) {
    return _then(_RideRequest(
      pickupLocation: freezed == pickupLocation
          ? _self.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      dropoffLocation: freezed == dropoffLocation
          ? _self.dropoffLocation
          : dropoffLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      countryId: freezed == countryId
          ? _self.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId: freezed == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: freezed == pickupAddress
          ? _self.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropoffAddress: freezed == dropoffAddress
          ? _self.dropoffAddress
          : dropoffAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      stops: freezed == stops
          ? _self._stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<Stop>?,
      bookedFor: freezed == bookedFor
          ? _self.bookedFor
          : bookedFor // ignore: cast_nullable_to_non_nullable
              as String?,
      accessiblity: freezed == accessiblity
          ? _self.accessiblity
          : accessiblity // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceInMeters: freezed == distanceInMeters
          ? _self.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduledAt: freezed == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      serverScheduledAt: freezed == serverScheduledAt
          ? _self.serverScheduledAt
          : serverScheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: freezed == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rideId: freezed == rideId
          ? _self.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      route: freezed == route
          ? _self._route
          : route // ignore: cast_nullable_to_non_nullable
              as List<LatLng>?,
      polyline: freezed == polyline
          ? _self.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupArea: freezed == pickupArea
          ? _self.pickupArea
          : pickupArea // ignore: cast_nullable_to_non_nullable
              as Area?,
      dropoffArea: freezed == dropoffArea
          ? _self.dropoffArea
          : dropoffArea // ignore: cast_nullable_to_non_nullable
              as Area?,
      totalEta: freezed == totalEta
          ? _self.totalEta
          : totalEta // ignore: cast_nullable_to_non_nullable
              as int?,
      stopsEta: freezed == stopsEta
          ? _self._stopsEta
          : stopsEta // ignore: cast_nullable_to_non_nullable
              as List<StopsEta>?,
      optimizedStops: freezed == optimizedStops
          ? _self._optimizedStops
          : optimizedStops // ignore: cast_nullable_to_non_nullable
              as List<OptimizedStop>?,
    ));
  }

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get pickupLocation {
    if (_self.pickupLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.pickupLocation!, (value) {
      return _then(_self.copyWith(pickupLocation: value));
    });
  }

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get dropoffLocation {
    if (_self.dropoffLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.dropoffLocation!, (value) {
      return _then(_self.copyWith(dropoffLocation: value));
    });
  }

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res>? get pickupArea {
    if (_self.pickupArea == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_self.pickupArea!, (value) {
      return _then(_self.copyWith(pickupArea: value));
    });
  }

  /// Create a copy of RideRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res>? get dropoffArea {
    if (_self.dropoffArea == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_self.dropoffArea!, (value) {
      return _then(_self.copyWith(dropoffArea: value));
    });
  }
}

/// @nodoc
mixin _$Area {
  @JsonKey(name: "zone_id")
  String? get zoneId;
  @JsonKey(name: "city_id")
  String? get cityId;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AreaCopyWith<Area> get copyWith =>
      _$AreaCopyWithImpl<Area>(this as Area, _$identity);

  /// Serializes this Area to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Area &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, zoneId, cityId);

  @override
  String toString() {
    return 'Area(zoneId: $zoneId, cityId: $cityId)';
  }
}

/// @nodoc
abstract mixin class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) _then) =
      _$AreaCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "zone_id") String? zoneId,
      @JsonKey(name: "city_id") String? cityId});
}

/// @nodoc
class _$AreaCopyWithImpl<$Res> implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._self, this._then);

  final Area _self;
  final $Res Function(Area) _then;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoneId = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_self.copyWith(
      zoneId: freezed == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Area].
extension AreaPatterns on Area {
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
    TResult Function(_Area value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Area() when $default != null:
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
    TResult Function(_Area value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Area():
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
    TResult? Function(_Area value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Area() when $default != null:
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
    TResult Function(@JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "city_id") String? cityId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Area() when $default != null:
        return $default(_that.zoneId, _that.cityId);
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
    TResult Function(@JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "city_id") String? cityId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Area():
        return $default(_that.zoneId, _that.cityId);
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
    TResult? Function(@JsonKey(name: "zone_id") String? zoneId,
            @JsonKey(name: "city_id") String? cityId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Area() when $default != null:
        return $default(_that.zoneId, _that.cityId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Area implements Area {
  const _Area(
      {@JsonKey(name: "zone_id") this.zoneId,
      @JsonKey(name: "city_id") this.cityId});
  factory _Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);

  @override
  @JsonKey(name: "zone_id")
  final String? zoneId;
  @override
  @JsonKey(name: "city_id")
  final String? cityId;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AreaCopyWith<_Area> get copyWith =>
      __$AreaCopyWithImpl<_Area>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AreaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Area &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, zoneId, cityId);

  @override
  String toString() {
    return 'Area(zoneId: $zoneId, cityId: $cityId)';
  }
}

/// @nodoc
abstract mixin class _$AreaCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$AreaCopyWith(_Area value, $Res Function(_Area) _then) =
      __$AreaCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "zone_id") String? zoneId,
      @JsonKey(name: "city_id") String? cityId});
}

/// @nodoc
class __$AreaCopyWithImpl<$Res> implements _$AreaCopyWith<$Res> {
  __$AreaCopyWithImpl(this._self, this._then);

  final _Area _self;
  final $Res Function(_Area) _then;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? zoneId = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_Area(
      zoneId: freezed == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
