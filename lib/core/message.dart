import 'package:freezed_annotation/freezed_annotation.dart';
part 'message.freezed.dart';
part 'message.g.dart';

@freezed
abstract class Messages with _$Messages {
  const factory Messages({
    @JsonKey(name: 'results') List<Message>? results,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'limit') int? limit,
    @JsonKey(name: 'totalPages') int? totalPages,
    @JsonKey(name: 'totalResults') int? totalResults,
    @JsonKey(name: 'isNextPage') bool? isNextPage,
    @JsonKey(name: 'isPreviousPage') bool? isPreviousPage,
  }) = _Messages;

  factory Messages.fromJson(Map<String, dynamic> json) => _$MessagesFromJson(json);
}

@freezed
abstract class Message with _$Message {
  const factory Message({
    @JsonKey(name: 'conversation_id') String? conversationId,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'sender') String? sender,
    @JsonKey(name: 'receiver') String? receiver,
    @JsonKey(name: 'send_at') DateTime? sendAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'attachment', includeIfNull: false, toJson: attachmentToJson) Attachment? attachment,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

// Custom function to handle Attachment to JSON
String? attachmentToJson(Attachment? attachment) => attachment?.id;

@freezed
abstract class Attachment with _$Attachment {
  const factory Attachment({
    @JsonKey(name: 'conversation_id') String? conversationId,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'attachment') String? attachment,
    @JsonKey(name: 'sender') String? sender,
    @JsonKey(name: 'attachment_type') String? attachmentType,
    @JsonKey(name: 'is_deleted') bool? isDeleted,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'id') String? id,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) => _$AttachmentFromJson(json);
}
