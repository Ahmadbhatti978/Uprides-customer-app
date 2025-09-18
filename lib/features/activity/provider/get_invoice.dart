import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart';
import '../model/invoice.dart';

part 'get_invoice.g.dart';

@Riverpod(keepAlive: true)
Future<Invoice> getInvoice(final Ref ref, final String id, {final bool seen = false}) async {
  if (seen) {
    unawaited(
      Request.put(
        path: Api.invoice(id),
        payload: {},
        onSuccess: (json) {
       //   log(json.toString());
        },
      ),
    );
  }
  return (await Request.get(path: Api.invoice(id), onSuccess: (final json) => json)).fold(
    Future.error,
    //  (await ref.read(authRemoteRepositoryProvider).updateAccessToken()).fold(
    //   (final ErrorDetails error) => Future.error(handleTokenRefreshAndLogout(ref, error)),
    //   (final UserDetail data) => Future.error(data),
    // ),
    (final data) => Future.value(Invoice.fromJson(data)),
  );
}
