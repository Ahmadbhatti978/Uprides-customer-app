// To parse this JSON data, do
//
//     final notification = notificationFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
abstract class Notification with _$Notification {
  const factory Notification({
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") List<Datum>? data,
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "totalPages") int? totalPages,
    @JsonKey(name: "hasNextPage") bool? hasNextPage,
    @JsonKey(name: "hasPrevPage") bool? hasPrevPage,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "notification_type") String? notificationType,
    @JsonKey(name: "notification_content_type") String? notificationContentType,
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
    @JsonKey(name: "id") String? datumId,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
