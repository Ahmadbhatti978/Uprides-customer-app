import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart';
import '../model/activity.dart';

part 'get_activity_provider.g.dart';

// ignore: constant_identifier_names
enum RideStatusType { CREATED, BOOKED, REQUESTING, ACCEPTED, VALIDATED, ARRIVED, ONROUTE, CANCELED, REJECTED, WAITING, ONGOING, COMPLETED, UPCOMMING }

Activity activityFromJson(final String str) => Activity.fromJson(jsonDecode(str));

@Riverpod(keepAlive: true)
Future<Activity> getAcitivites(final Ref ref, {final RideStatusType? ridestatus}) async => (await Request.get<String>(
  path: Api.history,
  //+ (ridestatus == null ? "" : "/status=${ridestatus.name}"),
  queryParameters: <String, String?>{'status': ridestatus?.name},
  jsonAsString: true,

  onSuccess: (final json) => json,
)).fold(
  Future.error,
  //  (await ref.read(authRemoteRepositoryProvider).updateAccessToken()).fold(
  //   (final ErrorDetails error) => Future.error(handleTokenRefreshAndLogout(ref, error)),
  //   (final UserDetail data) => Future.error(data),
  // ),
  (final String data) => compute(activityFromJson, data),
);
