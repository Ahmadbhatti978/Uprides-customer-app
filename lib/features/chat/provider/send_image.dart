import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/message.dart';
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart';
import 'socket_p.dart';

part 'send_image.g.dart';

@riverpod
Future<Attachment> uploadAttachments(final Ref ref, {required final String conversationId, required final String receiver, final File? pic}) async =>
    (await Request.upload(
      path: Api.attachmentINChat,
      payload: <String, String>{'conversation_id': conversationId, 'attachment_type': 'DOCUMENT'},
      file: pic,
      fileField: 'attachment',
      mediaType: 'document',
      onSuccess: (final json) => Attachment.fromJson(json['data']['attachment']),
    )).fold(Future.error, (final Attachment r) {
      ref.read(socketProvider).sendMessage(r.fileName ?? '', conversationId, receiver, r);
      return Future.value(r);
    });
