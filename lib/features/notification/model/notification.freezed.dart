// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Notification {
  @JsonKey(name: "message")
  String? get message;
  @JsonKey(name: "data")
  List<Datum>? get data;
  @JsonKey(name: "total")
  int? get total;
  @JsonKey(name: "page")
  int? get page;
  @JsonKey(name: "totalPages")
  int? get totalPages;
  @JsonKey(name: "hasNextPage")
  bool? get hasNextPage;
  @JsonKey(name: "hasPrevPage")
  bool? get hasPrevPage;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationCopyWith<Notification> get copyWith =>
      _$NotificationCopyWithImpl<Notification>(
          this as Notification, _$identity);

  /// Serializes this Notification to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Notification &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPrevPage, hasPrevPage) ||
                other.hasPrevPage == hasPrevPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(data),
      total,
      page,
      totalPages,
      hasNextPage,
      hasPrevPage);

  @override
  String toString() {
    return 'Notification(message: $message, data: $data, total: $total, page: $page, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage)';
  }
}

/// @nodoc
abstract mixin class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) _then) =
      _$NotificationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Datum>? data,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "totalPages") int? totalPages,
      @JsonKey(name: "hasNextPage") bool? hasNextPage,
      @JsonKey(name: "hasPrevPage") bool? hasPrevPage});
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._self, this._then);

  final Notification _self;
  final $Res Function(Notification) _then;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? hasNextPage = freezed,
    Object? hasPrevPage = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _self.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPrevPage: freezed == hasPrevPage
          ? _self.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Notification].
extension NotificationPatterns on Notification {
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
    TResult Function(_Notification value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Notification() when $default != null:
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
    TResult Function(_Notification value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Notification():
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
    TResult? Function(_Notification value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Notification() when $default != null:
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
            @JsonKey(name: "message") String? message,
            @JsonKey(name: "data") List<Datum>? data,
            @JsonKey(name: "total") int? total,
            @JsonKey(name: "page") int? page,
            @JsonKey(name: "totalPages") int? totalPages,
            @JsonKey(name: "hasNextPage") bool? hasNextPage,
            @JsonKey(name: "hasPrevPage") bool? hasPrevPage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Notification() when $default != null:
        return $default(_that.message, _that.data, _that.total, _that.page,
            _that.totalPages, _that.hasNextPage, _that.hasPrevPage);
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
            @JsonKey(name: "message") String? message,
            @JsonKey(name: "data") List<Datum>? data,
            @JsonKey(name: "total") int? total,
            @JsonKey(name: "page") int? page,
            @JsonKey(name: "totalPages") int? totalPages,
            @JsonKey(name: "hasNextPage") bool? hasNextPage,
            @JsonKey(name: "hasPrevPage") bool? hasPrevPage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Notification():
        return $default(_that.message, _that.data, _that.total, _that.page,
            _that.totalPages, _that.hasNextPage, _that.hasPrevPage);
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
            @JsonKey(name: "message") String? message,
            @JsonKey(name: "data") List<Datum>? data,
            @JsonKey(name: "total") int? total,
            @JsonKey(name: "page") int? page,
            @JsonKey(name: "totalPages") int? totalPages,
            @JsonKey(name: "hasNextPage") bool? hasNextPage,
            @JsonKey(name: "hasPrevPage") bool? hasPrevPage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Notification() when $default != null:
        return $default(_that.message, _that.data, _that.total, _that.page,
            _that.totalPages, _that.hasNextPage, _that.hasPrevPage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Notification implements Notification {
  const _Notification(
      {@JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<Datum>? data,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "page") this.page,
      @JsonKey(name: "totalPages") this.totalPages,
      @JsonKey(name: "hasNextPage") this.hasNextPage,
      @JsonKey(name: "hasPrevPage") this.hasPrevPage})
      : _data = data;
  factory _Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;
  final List<Datum>? _data;
  @override
  @JsonKey(name: "data")
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "page")
  final int? page;
  @override
  @JsonKey(name: "totalPages")
  final int? totalPages;
  @override
  @JsonKey(name: "hasNextPage")
  final bool? hasNextPage;
  @override
  @JsonKey(name: "hasPrevPage")
  final bool? hasPrevPage;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationCopyWith<_Notification> get copyWith =>
      __$NotificationCopyWithImpl<_Notification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Notification &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPrevPage, hasPrevPage) ||
                other.hasPrevPage == hasPrevPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_data),
      total,
      page,
      totalPages,
      hasNextPage,
      hasPrevPage);

  @override
  String toString() {
    return 'Notification(message: $message, data: $data, total: $total, page: $page, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage)';
  }
}

/// @nodoc
abstract mixin class _$NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(
          _Notification value, $Res Function(_Notification) _then) =
      __$NotificationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Datum>? data,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "totalPages") int? totalPages,
      @JsonKey(name: "hasNextPage") bool? hasNextPage,
      @JsonKey(name: "hasPrevPage") bool? hasPrevPage});
}

/// @nodoc
class __$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(this._self, this._then);

  final _Notification _self;
  final $Res Function(_Notification) _then;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? hasNextPage = freezed,
    Object? hasPrevPage = freezed,
  }) {
    return _then(_Notification(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _self.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPrevPage: freezed == hasPrevPage
          ? _self.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "_id")
  String? get id;
  @JsonKey(name: "notification_type")
  String? get notificationType;
  @JsonKey(name: "notification_content_type")
  String? get notificationContentType;
  @JsonKey(name: "user_id")
  String? get userId;
  @JsonKey(name: "job_id")
  String? get jobId;
  @JsonKey(name: "priority")
  String? get priority;
  @JsonKey(name: "status")
  String? get status;
  @JsonKey(name: "title")
  String? get title;
  @JsonKey(name: "content")
  String? get content;
  @JsonKey(name: "body")
  String? get body;
  @JsonKey(name: "read_at")
  dynamic get readAt;
  @JsonKey(name: "sent_at")
  DateTime? get sentAt;
  @JsonKey(name: "delivered_at")
  dynamic get deliveredAt;
  @JsonKey(name: "is_deleted")
  bool? get isDeleted;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @JsonKey(name: "id")
  String? get datumId;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DatumCopyWith<Datum> get copyWith =>
      _$DatumCopyWithImpl<Datum>(this as Datum, _$identity);

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Datum &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(
                    other.notificationContentType, notificationContentType) ||
                other.notificationContentType == notificationContentType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other.readAt, readAt) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            const DeepCollectionEquality()
                .equals(other.deliveredAt, deliveredAt) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.datumId, datumId) || other.datumId == datumId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      notificationType,
      notificationContentType,
      userId,
      jobId,
      priority,
      status,
      title,
      content,
      body,
      const DeepCollectionEquality().hash(readAt),
      sentAt,
      const DeepCollectionEquality().hash(deliveredAt),
      isDeleted,
      createdAt,
      updatedAt,
      datumId);

  @override
  String toString() {
    return 'Datum(id: $id, notificationType: $notificationType, notificationContentType: $notificationContentType, userId: $userId, jobId: $jobId, priority: $priority, status: $status, title: $title, content: $content, body: $body, readAt: $readAt, sentAt: $sentAt, deliveredAt: $deliveredAt, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, datumId: $datumId)';
  }
}

/// @nodoc
abstract mixin class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) _then) =
      _$DatumCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "notification_type") String? notificationType,
      @JsonKey(name: "notification_content_type")
      String? notificationContentType,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "job_id") String? jobId,
      @JsonKey(name: "priority") String? priority,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "body") String? body,
      @JsonKey(name: "read_at") dynamic readAt,
      @JsonKey(name: "sent_at") DateTime? sentAt,
      @JsonKey(name: "delivered_at") dynamic deliveredAt,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "id") String? datumId});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res> implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._self, this._then);

  final Datum _self;
  final $Res Function(Datum) _then;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? notificationType = freezed,
    Object? notificationContentType = freezed,
    Object? userId = freezed,
    Object? jobId = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? body = freezed,
    Object? readAt = freezed,
    Object? sentAt = freezed,
    Object? deliveredAt = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? datumId = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationType: freezed == notificationType
          ? _self.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationContentType: freezed == notificationContentType
          ? _self.notificationContentType
          : notificationContentType // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _self.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      readAt: freezed == readAt
          ? _self.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveredAt: freezed == deliveredAt
          ? _self.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      datumId: freezed == datumId
          ? _self.datumId
          : datumId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Datum].
extension DatumPatterns on Datum {
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
    TResult Function(_Datum value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Datum() when $default != null:
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
    TResult Function(_Datum value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Datum():
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
    TResult? Function(_Datum value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Datum() when $default != null:
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
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "notification_type") String? notificationType,
            @JsonKey(name: "notification_content_type")
            String? notificationContentType,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "job_id") String? jobId,
            @JsonKey(name: "priority") String? priority,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "title") String? title,
            @JsonKey(name: "content") String? content,
            @JsonKey(name: "body") String? body,
            @JsonKey(name: "read_at") dynamic readAt,
            @JsonKey(name: "sent_at") DateTime? sentAt,
            @JsonKey(name: "delivered_at") dynamic deliveredAt,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "id") String? datumId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Datum() when $default != null:
        return $default(
            _that.id,
            _that.notificationType,
            _that.notificationContentType,
            _that.userId,
            _that.jobId,
            _that.priority,
            _that.status,
            _that.title,
            _that.content,
            _that.body,
            _that.readAt,
            _that.sentAt,
            _that.deliveredAt,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.datumId);
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
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "notification_type") String? notificationType,
            @JsonKey(name: "notification_content_type")
            String? notificationContentType,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "job_id") String? jobId,
            @JsonKey(name: "priority") String? priority,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "title") String? title,
            @JsonKey(name: "content") String? content,
            @JsonKey(name: "body") String? body,
            @JsonKey(name: "read_at") dynamic readAt,
            @JsonKey(name: "sent_at") DateTime? sentAt,
            @JsonKey(name: "delivered_at") dynamic deliveredAt,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "id") String? datumId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Datum():
        return $default(
            _that.id,
            _that.notificationType,
            _that.notificationContentType,
            _that.userId,
            _that.jobId,
            _that.priority,
            _that.status,
            _that.title,
            _that.content,
            _that.body,
            _that.readAt,
            _that.sentAt,
            _that.deliveredAt,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.datumId);
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
            @JsonKey(name: "_id") String? id,
            @JsonKey(name: "notification_type") String? notificationType,
            @JsonKey(name: "notification_content_type")
            String? notificationContentType,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "job_id") String? jobId,
            @JsonKey(name: "priority") String? priority,
            @JsonKey(name: "status") String? status,
            @JsonKey(name: "title") String? title,
            @JsonKey(name: "content") String? content,
            @JsonKey(name: "body") String? body,
            @JsonKey(name: "read_at") dynamic readAt,
            @JsonKey(name: "sent_at") DateTime? sentAt,
            @JsonKey(name: "delivered_at") dynamic deliveredAt,
            @JsonKey(name: "is_deleted") bool? isDeleted,
            @JsonKey(name: "createdAt") DateTime? createdAt,
            @JsonKey(name: "updatedAt") DateTime? updatedAt,
            @JsonKey(name: "id") String? datumId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Datum() when $default != null:
        return $default(
            _that.id,
            _that.notificationType,
            _that.notificationContentType,
            _that.userId,
            _that.jobId,
            _that.priority,
            _that.status,
            _that.title,
            _that.content,
            _that.body,
            _that.readAt,
            _that.sentAt,
            _that.deliveredAt,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.datumId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Datum implements Datum {
  const _Datum(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "notification_type") this.notificationType,
      @JsonKey(name: "notification_content_type") this.notificationContentType,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "job_id") this.jobId,
      @JsonKey(name: "priority") this.priority,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "body") this.body,
      @JsonKey(name: "read_at") this.readAt,
      @JsonKey(name: "sent_at") this.sentAt,
      @JsonKey(name: "delivered_at") this.deliveredAt,
      @JsonKey(name: "is_deleted") this.isDeleted,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "id") this.datumId});
  factory _Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "notification_type")
  final String? notificationType;
  @override
  @JsonKey(name: "notification_content_type")
  final String? notificationContentType;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "job_id")
  final String? jobId;
  @override
  @JsonKey(name: "priority")
  final String? priority;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "body")
  final String? body;
  @override
  @JsonKey(name: "read_at")
  final dynamic readAt;
  @override
  @JsonKey(name: "sent_at")
  final DateTime? sentAt;
  @override
  @JsonKey(name: "delivered_at")
  final dynamic deliveredAt;
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
  final String? datumId;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DatumCopyWith<_Datum> get copyWith =>
      __$DatumCopyWithImpl<_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DatumToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Datum &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(
                    other.notificationContentType, notificationContentType) ||
                other.notificationContentType == notificationContentType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other.readAt, readAt) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            const DeepCollectionEquality()
                .equals(other.deliveredAt, deliveredAt) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.datumId, datumId) || other.datumId == datumId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      notificationType,
      notificationContentType,
      userId,
      jobId,
      priority,
      status,
      title,
      content,
      body,
      const DeepCollectionEquality().hash(readAt),
      sentAt,
      const DeepCollectionEquality().hash(deliveredAt),
      isDeleted,
      createdAt,
      updatedAt,
      datumId);

  @override
  String toString() {
    return 'Datum(id: $id, notificationType: $notificationType, notificationContentType: $notificationContentType, userId: $userId, jobId: $jobId, priority: $priority, status: $status, title: $title, content: $content, body: $body, readAt: $readAt, sentAt: $sentAt, deliveredAt: $deliveredAt, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, datumId: $datumId)';
  }
}

/// @nodoc
abstract mixin class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) _then) =
      __$DatumCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "notification_type") String? notificationType,
      @JsonKey(name: "notification_content_type")
      String? notificationContentType,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "job_id") String? jobId,
      @JsonKey(name: "priority") String? priority,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "body") String? body,
      @JsonKey(name: "read_at") dynamic readAt,
      @JsonKey(name: "sent_at") DateTime? sentAt,
      @JsonKey(name: "delivered_at") dynamic deliveredAt,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "id") String? datumId});
}

/// @nodoc
class __$DatumCopyWithImpl<$Res> implements _$DatumCopyWith<$Res> {
  __$DatumCopyWithImpl(this._self, this._then);

  final _Datum _self;
  final $Res Function(_Datum) _then;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? notificationType = freezed,
    Object? notificationContentType = freezed,
    Object? userId = freezed,
    Object? jobId = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? body = freezed,
    Object? readAt = freezed,
    Object? sentAt = freezed,
    Object? deliveredAt = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? datumId = freezed,
  }) {
    return _then(_Datum(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationType: freezed == notificationType
          ? _self.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationContentType: freezed == notificationContentType
          ? _self.notificationContentType
          : notificationContentType // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _self.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      readAt: freezed == readAt
          ? _self.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveredAt: freezed == deliveredAt
          ? _self.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      datumId: freezed == datumId
          ? _self.datumId
          : datumId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
