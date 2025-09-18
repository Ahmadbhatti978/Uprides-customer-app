import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/message.dart';
import '../../../core/socket/socket_manager.dart';

import 'get_past_messages.dart';
import 'socket_p.dart';

part 'chat_stream.g.dart';

@riverpod
Stream<List<Message>> chatStream(final Ref ref, final String conversationId) async* {
  final SocketManager socketManager = ref.watch(socketProvider);
  socketManager.statusStream.listen(log);

  final List<Message> pastChats =
  //<Message>[];
  await ref.watch(getPastChatProvider(conversationId).future);

  final List<Message> allMessages = List.of(pastChats.reversed);
  yield allMessages;
  await for (final Message message in socketManager.messageStream) {
    allMessages.add(message);
    yield allMessages;
  }
}
