import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../repositories/auth_remote.dart';
part 'suggestion.g.dart';

@Riverpod(keepAlive: true)
//)
Future<List<String>> suggestion(final Ref ref, final String fullName) async =>
    (await ref.read(authRemoteRepositoryProvider).suggestUserName(fullName))
        .fold(Future.error, Future.value);
