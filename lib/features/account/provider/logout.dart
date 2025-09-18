import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/failure/failure.dart';
import '../../auth/repositories/auth_local.dart';
import '../../auth/repositories/auth_remote.dart';

part 'logout.g.dart';

@riverpod
Future<bool> logOutofApp(final Ref ref) async => (await ref.read(authRemoteRepositoryProvider).logOut()).fold(
  (final ErrorDetails l) {
    AuthLocalRepo.removeUser();
    invalidateProviders(ref);
    return false;
  },
  (final bool r) {
    AuthLocalRepo.removeUser();
    invalidateProviders(ref);
    return true;
  },
);

void invalidateProviders(Ref ref) {
  if (ref.exists(authRemoteRepositoryProvider)) ref.invalidate(authRemoteRepositoryProvider);
}
