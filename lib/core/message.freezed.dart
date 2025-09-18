// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Messages {
  @JsonKey(name: 'results')
  List<Message>? get results;
  @JsonKey(name: 'page')
  int? get page;
  @JsonKey(name: 'limit')
  int? get limit;
  @JsonKey(name: 'totalPages')
  int? get totalPages;
  @JsonKey(name: 'totalResults')
  int? get totalResults;
  @JsonKey(name: 'isNextPage')
  bool? get isNextPage;
  @JsonKey(name: 'isPreviousPage')
  bool? get isPreviousPage;

  /// Create a copy of Messages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessagesCopyWith<Messages> get copyWith =>
      _$MessagesCopyWithImpl<Messages>(this as Messages, _$identity);

  /// Serializes this Messages to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Messages &&
            const DeepCollectionEquality().equals(other.results, results) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.isNextPage, isNextPage) ||
                other.isNextPage == isNextPage) &&
            (identical(other.isPreviousPage, isPreviousPage) ||
                other.isPreviousPage == isPreviousPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(results),
      page,
      limit,
      totalPages,
      totalResults,
      isNextPage,
      isPreviousPage);

  @override
  String toString() {
    return 'Messages(results: $results, page: $page, limit: $limit, totalPages: $totalPages, totalResults: $totalResults, isNextPage: $isNextPage, isPreviousPage: $isPreviousPage)';
  }
}

/// @nodoc
abstract mixin class $MessagesCopyWith<$Res> {
  factory $MessagesCopyWith(Messages value, $Res Function(Messages) _then) =
      _$MessagesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<Message>? results,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'limit') int? limit,
      @JsonKey(name: 'totalPages') int? totalPages,
      @JsonKey(name: 'totalResults') int? totalResults,
      @JsonKey(name: 'isNextPage') bool? isNextPage,
      @JsonKey(name: 'isPreviousPage') bool? isPreviousPage});
}

/// @nodoc
class _$MessagesCopyWithImpl<$Res> implements $MessagesCopyWith<$Res> {
  _$MessagesCopyWithImpl(this._self, this._then);

  final Messages _self;
  final $Res Function(Messages) _then;

  /// Create a copy of Messages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? isNextPage = freezed,
    Object? isPreviousPage = freezed,
  }) {
    return _then(_self.copyWith(
      results: freezed == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _self.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      isNextPage: freezed == isNextPage
          ? _self.isNextPage
          : isNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPreviousPage: freezed == isPreviousPage
          ? _self.isPreviousPage
          : isPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Messages].
extension MessagesPatterns on Messages {
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
    TResult Function(_Messages value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Messages() when $default != null:
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
    TResult Function(_Messages value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Messages():
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
    TResult? Function(_Messages value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Messages() when $default != null:
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
            @JsonKey(name: 'results') List<Message>? results,
            @JsonKey(name: 'page') int? page,
            @JsonKey(name: 'limit') int? limit,
            @JsonKey(name: 'totalPages') int? totalPages,
            @JsonKey(name: 'totalResults') int? totalResults,
            @JsonKey(name: 'isNextPage') bool? isNextPage,
            @JsonKey(name: 'isPreviousPage') bool? isPreviousPage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Messages() when $default != null:
        return $default(
            _that.results,
            _that.page,
            _that.limit,
            _that.totalPages,
            _that.totalResults,
            _that.isNextPage,
            _that.isPreviousPage);
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
            @JsonKey(name: 'results') List<Message>? results,
            @JsonKey(name: 'page') int? page,
            @JsonKey(name: 'limit') int? limit,
            @JsonKey(name: 'totalPages') int? totalPages,
            @JsonKey(name: 'totalResults') int? totalResults,
            @JsonKey(name: 'isNextPage') bool? isNextPage,
            @JsonKey(name: 'isPreviousPage') bool? isPreviousPage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Messages():
        return $default(
            _that.results,
            _that.page,
            _that.limit,
            _that.totalPages,
            _that.totalResults,
            _that.isNextPage,
            _that.isPreviousPage);
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
            @JsonKey(name: 'results') List<Message>? results,
            @JsonKey(name: 'page') int? page,
            @JsonKey(name: 'limit') int? limit,
            @JsonKey(name: 'totalPages') int? totalPages,
            @JsonKey(name: 'totalResults') int? totalResults,
            @JsonKey(name: 'isNextPage') bool? isNextPage,
            @JsonKey(name: 'isPreviousPage') bool? isPreviousPage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Messages() when $default != null:
        return $default(
            _that.results,
            _that.page,
            _that.limit,
            _that.totalPages,
            _that.totalResults,
            _that.isNextPage,
            _that.isPreviousPage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Messages implements Messages {
  const _Messages(
      {@JsonKey(name: 'results') final List<Message>? results,
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'limit') this.limit,
      @JsonKey(name: 'totalPages') this.totalPages,
      @JsonKey(name: 'totalResults') this.totalResults,
      @JsonKey(name: 'isNextPage') this.isNextPage,
      @JsonKey(name: 'isPreviousPage') this.isPreviousPage})
      : _results = results;
  factory _Messages.fromJson(Map<String, dynamic> json) =>
      _$MessagesFromJson(json);

  final List<Message>? _results;
  @override
  @JsonKey(name: 'results')
  List<Message>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'page')
  final int? page;
  @override
  @JsonKey(name: 'limit')
  final int? limit;
  @override
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @override
  @JsonKey(name: 'totalResults')
  final int? totalResults;
  @override
  @JsonKey(name: 'isNextPage')
  final bool? isNextPage;
  @override
  @JsonKey(name: 'isPreviousPage')
  final bool? isPreviousPage;

  /// Create a copy of Messages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessagesCopyWith<_Messages> get copyWith =>
      __$MessagesCopyWithImpl<_Messages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessagesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Messages &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.isNextPage, isNextPage) ||
                other.isNextPage == isNextPage) &&
            (identical(other.isPreviousPage, isPreviousPage) ||
                other.isPreviousPage == isPreviousPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      page,
      limit,
      totalPages,
      totalResults,
      isNextPage,
      isPreviousPage);

  @override
  String toString() {
    return 'Messages(results: $results, page: $page, limit: $limit, totalPages: $totalPages, totalResults: $totalResults, isNextPage: $isNextPage, isPreviousPage: $isPreviousPage)';
  }
}

/// @nodoc
abstract mixin class _$MessagesCopyWith<$Res>
    implements $MessagesCopyWith<$Res> {
  factory _$MessagesCopyWith(_Messages value, $Res Function(_Messages) _then) =
      __$MessagesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<Message>? results,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'limit') int? limit,
      @JsonKey(name: 'totalPages') int? totalPages,
      @JsonKey(name: 'totalResults') int? totalResults,
      @JsonKey(name: 'isNextPage') bool? isNextPage,
      @JsonKey(name: 'isPreviousPage') bool? isPreviousPage});
}

/// @nodoc
class __$MessagesCopyWithImpl<$Res> implements _$MessagesCopyWith<$Res> {
  __$MessagesCopyWithImpl(this._self, this._then);

  final _Messages _self;
  final $Res Function(_Messages) _then;

  /// Create a copy of Messages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? results = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? isNextPage = freezed,
    Object? isPreviousPage = freezed,
  }) {
    return _then(_Messages(
      results: freezed == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _self.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      isNextPage: freezed == isNextPage
          ? _self.isNextPage
          : isNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPreviousPage: freezed == isPreviousPage
          ? _self.isPreviousPage
          : isPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$Message {
  @JsonKey(name: 'conversation_id')
  String? get conversationId;
  @JsonKey(name: 'text')
  String? get text;
  @JsonKey(name: 'sender')
  String? get sender;
  @JsonKey(name: 'receiver')
  String? get receiver;
  @JsonKey(name: 'send_at')
  DateTime? get sendAt;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'attachment', includeIfNull: false, toJson: attachmentToJson)
  Attachment? get attachment;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageCopyWith<Message> get copyWith =>
      _$MessageCopyWithImpl<Message>(this as Message, _$identity);

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Message &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.sendAt, sendAt) || other.sendAt == sendAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, conversationId, text, sender,
      receiver, sendAt, deletedAt, createdAt, updatedAt, id, attachment);

  @override
  String toString() {
    return 'Message(conversationId: $conversationId, text: $text, sender: $sender, receiver: $receiver, sendAt: $sendAt, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, id: $id, attachment: $attachment)';
  }
}

/// @nodoc
abstract mixin class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) _then) =
      _$MessageCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation_id') String? conversationId,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'sender') String? sender,
      @JsonKey(name: 'receiver') String? receiver,
      @JsonKey(name: 'send_at') DateTime? sendAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'id') String? id,
      @JsonKey(
          name: 'attachment', includeIfNull: false, toJson: attachmentToJson)
      Attachment? attachment});

  $AttachmentCopyWith<$Res>? get attachment;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._self, this._then);

  final Message _self;
  final $Res Function(Message) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = freezed,
    Object? text = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? sendAt = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
    Object? attachment = freezed,
  }) {
    return _then(_self.copyWith(
      conversationId: freezed == conversationId
          ? _self.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _self.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      receiver: freezed == receiver
          ? _self.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAt: freezed == sendAt
          ? _self.sendAt
          : sendAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      attachment: freezed == attachment
          ? _self.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
    ));
  }

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get attachment {
    if (_self.attachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_self.attachment!, (value) {
      return _then(_self.copyWith(attachment: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Message].
extension MessagePatterns on Message {
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
    TResult Function(_Message value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Message() when $default != null:
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
    TResult Function(_Message value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Message():
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
    TResult? Function(_Message value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Message() when $default != null:
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
            @JsonKey(name: 'conversation_id') String? conversationId,
            @JsonKey(name: 'text') String? text,
            @JsonKey(name: 'sender') String? sender,
            @JsonKey(name: 'receiver') String? receiver,
            @JsonKey(name: 'send_at') DateTime? sendAt,
            @JsonKey(name: 'deleted_at') DateTime? deletedAt,
            @JsonKey(name: 'createdAt') DateTime? createdAt,
            @JsonKey(name: 'updatedAt') DateTime? updatedAt,
            @JsonKey(name: 'id') String? id,
            @JsonKey(
                name: 'attachment',
                includeIfNull: false,
                toJson: attachmentToJson)
            Attachment? attachment)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Message() when $default != null:
        return $default(
            _that.conversationId,
            _that.text,
            _that.sender,
            _that.receiver,
            _that.sendAt,
            _that.deletedAt,
            _that.createdAt,
            _that.updatedAt,
            _that.id,
            _that.attachment);
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
            @JsonKey(name: 'conversation_id') String? conversationId,
            @JsonKey(name: 'text') String? text,
            @JsonKey(name: 'sender') String? sender,
            @JsonKey(name: 'receiver') String? receiver,
            @JsonKey(name: 'send_at') DateTime? sendAt,
            @JsonKey(name: 'deleted_at') DateTime? deletedAt,
            @JsonKey(name: 'createdAt') DateTime? createdAt,
            @JsonKey(name: 'updatedAt') DateTime? updatedAt,
            @JsonKey(name: 'id') String? id,
            @JsonKey(
                name: 'attachment',
                includeIfNull: false,
                toJson: attachmentToJson)
            Attachment? attachment)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Message():
        return $default(
            _that.conversationId,
            _that.text,
            _that.sender,
            _that.receiver,
            _that.sendAt,
            _that.deletedAt,
            _that.createdAt,
            _that.updatedAt,
            _that.id,
            _that.attachment);
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
            @JsonKey(name: 'conversation_id') String? conversationId,
            @JsonKey(name: 'text') String? text,
            @JsonKey(name: 'sender') String? sender,
            @JsonKey(name: 'receiver') String? receiver,
            @JsonKey(name: 'send_at') DateTime? sendAt,
            @JsonKey(name: 'deleted_at') DateTime? deletedAt,
            @JsonKey(name: 'createdAt') DateTime? createdAt,
            @JsonKey(name: 'updatedAt') DateTime? updatedAt,
            @JsonKey(name: 'id') String? id,
            @JsonKey(
                name: 'attachment',
                includeIfNull: false,
                toJson: attachmentToJson)
            Attachment? attachment)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Message() when $default != null:
        return $default(
            _that.conversationId,
            _that.text,
            _that.sender,
            _that.receiver,
            _that.sendAt,
            _that.deletedAt,
            _that.createdAt,
            _that.updatedAt,
            _that.id,
            _that.attachment);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Message implements Message {
  const _Message(
      {@JsonKey(name: 'conversation_id') this.conversationId,
      @JsonKey(name: 'text') this.text,
      @JsonKey(name: 'sender') this.sender,
      @JsonKey(name: 'receiver') this.receiver,
      @JsonKey(name: 'send_at') this.sendAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      @JsonKey(name: 'id') this.id,
      @JsonKey(
          name: 'attachment', includeIfNull: false, toJson: attachmentToJson)
      this.attachment});
  factory _Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  @override
  @JsonKey(name: 'conversation_id')
  final String? conversationId;
  @override
  @JsonKey(name: 'text')
  final String? text;
  @override
  @JsonKey(name: 'sender')
  final String? sender;
  @override
  @JsonKey(name: 'receiver')
  final String? receiver;
  @override
  @JsonKey(name: 'send_at')
  final DateTime? sendAt;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'attachment', includeIfNull: false, toJson: attachmentToJson)
  final Attachment? attachment;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Message &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.sendAt, sendAt) || other.sendAt == sendAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, conversationId, text, sender,
      receiver, sendAt, deletedAt, createdAt, updatedAt, id, attachment);

  @override
  String toString() {
    return 'Message(conversationId: $conversationId, text: $text, sender: $sender, receiver: $receiver, sendAt: $sendAt, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, id: $id, attachment: $attachment)';
  }
}

/// @nodoc
abstract mixin class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) _then) =
      __$MessageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation_id') String? conversationId,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'sender') String? sender,
      @JsonKey(name: 'receiver') String? receiver,
      @JsonKey(name: 'send_at') DateTime? sendAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'id') String? id,
      @JsonKey(
          name: 'attachment', includeIfNull: false, toJson: attachmentToJson)
      Attachment? attachment});

  @override
  $AttachmentCopyWith<$Res>? get attachment;
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(this._self, this._then);

  final _Message _self;
  final $Res Function(_Message) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? conversationId = freezed,
    Object? text = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? sendAt = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
    Object? attachment = freezed,
  }) {
    return _then(_Message(
      conversationId: freezed == conversationId
          ? _self.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _self.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      receiver: freezed == receiver
          ? _self.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAt: freezed == sendAt
          ? _self.sendAt
          : sendAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      attachment: freezed == attachment
          ? _self.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
    ));
  }

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get attachment {
    if (_self.attachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_self.attachment!, (value) {
      return _then(_self.copyWith(attachment: value));
    });
  }
}

/// @nodoc
mixin _$Attachment {
  @JsonKey(name: 'conversation_id')
  String? get conversationId;
  @JsonKey(name: 'file_name')
  String? get fileName;
  @JsonKey(name: 'attachment')
  String? get attachment;
  @JsonKey(name: 'sender')
  String? get sender;
  @JsonKey(name: 'attachment_type')
  String? get attachmentType;
  @JsonKey(name: 'is_deleted')
  bool? get isDeleted;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<Attachment> get copyWith =>
      _$AttachmentCopyWithImpl<Attachment>(this as Attachment, _$identity);

  /// Serializes this Attachment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Attachment &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.attachmentType, attachmentType) ||
                other.attachmentType == attachmentType) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, conversationId, fileName,
      attachment, sender, attachmentType, isDeleted, createdAt, updatedAt, id);

  @override
  String toString() {
    return 'Attachment(conversationId: $conversationId, fileName: $fileName, attachment: $attachment, sender: $sender, attachmentType: $attachmentType, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class $AttachmentCopyWith<$Res> {
  factory $AttachmentCopyWith(
          Attachment value, $Res Function(Attachment) _then) =
      _$AttachmentCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation_id') String? conversationId,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'attachment') String? attachment,
      @JsonKey(name: 'sender') String? sender,
      @JsonKey(name: 'attachment_type') String? attachmentType,
      @JsonKey(name: 'is_deleted') bool? isDeleted,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$AttachmentCopyWithImpl<$Res> implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._self, this._then);

  final Attachment _self;
  final $Res Function(Attachment) _then;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = freezed,
    Object? fileName = freezed,
    Object? attachment = freezed,
    Object? sender = freezed,
    Object? attachmentType = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_self.copyWith(
      conversationId: freezed == conversationId
          ? _self.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: freezed == attachment
          ? _self.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _self.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentType: freezed == attachmentType
          ? _self.attachmentType
          : attachmentType // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// Adds pattern-matching-related methods to [Attachment].
extension AttachmentPatterns on Attachment {
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
    TResult Function(_Attachment value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Attachment() when $default != null:
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
    TResult Function(_Attachment value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Attachment():
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
    TResult? Function(_Attachment value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Attachment() when $default != null:
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
            @JsonKey(name: 'conversation_id') String? conversationId,
            @JsonKey(name: 'file_name') String? fileName,
            @JsonKey(name: 'attachment') String? attachment,
            @JsonKey(name: 'sender') String? sender,
            @JsonKey(name: 'attachment_type') String? attachmentType,
            @JsonKey(name: 'is_deleted') bool? isDeleted,
            @JsonKey(name: 'createdAt') DateTime? createdAt,
            @JsonKey(name: 'updatedAt') DateTime? updatedAt,
            @JsonKey(name: 'id') String? id)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Attachment() when $default != null:
        return $default(
            _that.conversationId,
            _that.fileName,
            _that.attachment,
            _that.sender,
            _that.attachmentType,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.id);
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
            @JsonKey(name: 'conversation_id') String? conversationId,
            @JsonKey(name: 'file_name') String? fileName,
            @JsonKey(name: 'attachment') String? attachment,
            @JsonKey(name: 'sender') String? sender,
            @JsonKey(name: 'attachment_type') String? attachmentType,
            @JsonKey(name: 'is_deleted') bool? isDeleted,
            @JsonKey(name: 'createdAt') DateTime? createdAt,
            @JsonKey(name: 'updatedAt') DateTime? updatedAt,
            @JsonKey(name: 'id') String? id)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Attachment():
        return $default(
            _that.conversationId,
            _that.fileName,
            _that.attachment,
            _that.sender,
            _that.attachmentType,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.id);
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
            @JsonKey(name: 'conversation_id') String? conversationId,
            @JsonKey(name: 'file_name') String? fileName,
            @JsonKey(name: 'attachment') String? attachment,
            @JsonKey(name: 'sender') String? sender,
            @JsonKey(name: 'attachment_type') String? attachmentType,
            @JsonKey(name: 'is_deleted') bool? isDeleted,
            @JsonKey(name: 'createdAt') DateTime? createdAt,
            @JsonKey(name: 'updatedAt') DateTime? updatedAt,
            @JsonKey(name: 'id') String? id)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Attachment() when $default != null:
        return $default(
            _that.conversationId,
            _that.fileName,
            _that.attachment,
            _that.sender,
            _that.attachmentType,
            _that.isDeleted,
            _that.createdAt,
            _that.updatedAt,
            _that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Attachment implements Attachment {
  const _Attachment(
      {@JsonKey(name: 'conversation_id') this.conversationId,
      @JsonKey(name: 'file_name') this.fileName,
      @JsonKey(name: 'attachment') this.attachment,
      @JsonKey(name: 'sender') this.sender,
      @JsonKey(name: 'attachment_type') this.attachmentType,
      @JsonKey(name: 'is_deleted') this.isDeleted,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      @JsonKey(name: 'id') this.id});
  factory _Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  @override
  @JsonKey(name: 'conversation_id')
  final String? conversationId;
  @override
  @JsonKey(name: 'file_name')
  final String? fileName;
  @override
  @JsonKey(name: 'attachment')
  final String? attachment;
  @override
  @JsonKey(name: 'sender')
  final String? sender;
  @override
  @JsonKey(name: 'attachment_type')
  final String? attachmentType;
  @override
  @JsonKey(name: 'is_deleted')
  final bool? isDeleted;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'id')
  final String? id;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttachmentCopyWith<_Attachment> get copyWith =>
      __$AttachmentCopyWithImpl<_Attachment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AttachmentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Attachment &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.attachmentType, attachmentType) ||
                other.attachmentType == attachmentType) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, conversationId, fileName,
      attachment, sender, attachmentType, isDeleted, createdAt, updatedAt, id);

  @override
  String toString() {
    return 'Attachment(conversationId: $conversationId, fileName: $fileName, attachment: $attachment, sender: $sender, attachmentType: $attachmentType, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$AttachmentCopyWith<$Res>
    implements $AttachmentCopyWith<$Res> {
  factory _$AttachmentCopyWith(
          _Attachment value, $Res Function(_Attachment) _then) =
      __$AttachmentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation_id') String? conversationId,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'attachment') String? attachment,
      @JsonKey(name: 'sender') String? sender,
      @JsonKey(name: 'attachment_type') String? attachmentType,
      @JsonKey(name: 'is_deleted') bool? isDeleted,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$AttachmentCopyWithImpl<$Res> implements _$AttachmentCopyWith<$Res> {
  __$AttachmentCopyWithImpl(this._self, this._then);

  final _Attachment _self;
  final $Res Function(_Attachment) _then;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? conversationId = freezed,
    Object? fileName = freezed,
    Object? attachment = freezed,
    Object? sender = freezed,
    Object? attachmentType = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_Attachment(
      conversationId: freezed == conversationId
          ? _self.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: freezed == attachment
          ? _self.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _self.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentType: freezed == attachmentType
          ? _self.attachmentType
          : attachmentType // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

// dart format on
