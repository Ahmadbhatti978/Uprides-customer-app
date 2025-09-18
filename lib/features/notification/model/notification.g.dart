// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Notification _$NotificationFromJson(Map<String, dynamic> json) =>
    _Notification(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPrevPage: json['hasPrevPage'] as bool?,
    );

Map<String, dynamic> _$NotificationToJson(_Notification instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'total': instance.total,
      'page': instance.page,
      'totalPages': instance.totalPages,
      'hasNextPage': instance.hasNextPage,
      'hasPrevPage': instance.hasPrevPage,
    };

_Datum _$DatumFromJson(Map<String, dynamic> json) => _Datum(
      id: json['_id'] as String?,
      notificationType: json['notification_type'] as String?,
      notificationContentType: json['notification_content_type'] as String?,
      userId: json['user_id'] as String?,
      jobId: json['job_id'] as String?,
      priority: json['priority'] as String?,
      status: json['status'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      body: json['body'] as String?,
      readAt: json['read_at'],
      sentAt: json['sent_at'] == null
          ? null
          : DateTime.parse(json['sent_at'] as String),
      deliveredAt: json['delivered_at'],
      isDeleted: json['is_deleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      datumId: json['id'] as String?,
    );

Map<String, dynamic> _$DatumToJson(_Datum instance) => <String, dynamic>{
      '_id': instance.id,
      'notification_type': instance.notificationType,
      'notification_content_type': instance.notificationContentType,
      'user_id': instance.userId,
      'job_id': instance.jobId,
      'priority': instance.priority,
      'status': instance.status,
      'title': instance.title,
      'content': instance.content,
      'body': instance.body,
      'read_at': instance.readAt,
      'sent_at': instance.sentAt?.toIso8601String(),
      'delivered_at': instance.deliveredAt,
      'is_deleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'id': instance.datumId,
    };
