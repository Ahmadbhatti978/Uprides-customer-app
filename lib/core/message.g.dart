// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Messages _$MessagesFromJson(Map<String, dynamic> json) => _Messages(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalResults: (json['totalResults'] as num?)?.toInt(),
      isNextPage: json['isNextPage'] as bool?,
      isPreviousPage: json['isPreviousPage'] as bool?,
    );

Map<String, dynamic> _$MessagesToJson(_Messages instance) => <String, dynamic>{
      'results': instance.results,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
      'isNextPage': instance.isNextPage,
      'isPreviousPage': instance.isPreviousPage,
    };

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
      conversationId: json['conversation_id'] as String?,
      text: json['text'] as String?,
      sender: json['sender'] as String?,
      receiver: json['receiver'] as String?,
      sendAt: json['send_at'] == null
          ? null
          : DateTime.parse(json['send_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      id: json['id'] as String?,
      attachment: json['attachment'] == null
          ? null
          : Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
      'conversation_id': instance.conversationId,
      'text': instance.text,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'send_at': instance.sendAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'id': instance.id,
      if (attachmentToJson(instance.attachment) case final value?)
        'attachment': value,
    };

_Attachment _$AttachmentFromJson(Map<String, dynamic> json) => _Attachment(
      conversationId: json['conversation_id'] as String?,
      fileName: json['file_name'] as String?,
      attachment: json['attachment'] as String?,
      sender: json['sender'] as String?,
      attachmentType: json['attachment_type'] as String?,
      isDeleted: json['is_deleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$AttachmentToJson(_Attachment instance) =>
    <String, dynamic>{
      'conversation_id': instance.conversationId,
      'file_name': instance.fileName,
      'attachment': instance.attachment,
      'sender': instance.sender,
      'attachment_type': instance.attachmentType,
      'is_deleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'id': instance.id,
    };
