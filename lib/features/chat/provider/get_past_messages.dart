import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/message.dart';
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart';

part 'get_past_messages.g.dart';

@riverpod
Future<List<Message>> getPastChat(final Ref ref, final String id) async => (await Request.get(
    path: Api.chat(id),
    onSuccess: (final json) => json,
  )).fold(Future.error, (final r) => Future.value(Messages.fromJson(r['data']['messages']).results));
