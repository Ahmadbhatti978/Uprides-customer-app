import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'socket_p.dart';
part 'get_online_status.g.dart';

@riverpod
Stream<bool> getOnlineStatus(final Ref ref, final String receiver) {
  ref.read(socketProvider).getOnlineStatus(receiver);
  return ref.read(socketProvider).onlineStatusStream;
}
