import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../util/api/api_routes.dart';
import '../../../../util/api/call.dart';
import '../../../../util/utils.dart';
import '../../../auth/model/user.dart';

part 'get_by_username.g.dart';

@Riverpod(keepAlive: true)
Future<User> getByUsername(final Ref ref, final String username) async => (await Request.get(
  path: Api.getByUserName(username),
  onSuccess: (final json) {
    if (json['message'] != 'Success') showSnackBar(json['message']);
    return User.fromJson(json['user']);
  },
)).fold(Future.error, Future.value);
