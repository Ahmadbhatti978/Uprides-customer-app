import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'socket_p.dart';
part 'send_p.g.dart';

@riverpod
void send(final Ref ref, final String message, final String conversationId, final String receiver) =>
    ref.read(socketProvider).sendMessage(message, conversationId, receiver, null);
