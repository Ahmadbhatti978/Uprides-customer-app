import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/extensions/date.dart';
import '../../../util/api/api_routes.dart';
import '../../../util/api/call.dart';
import '../model/notification.dart';
part 'notification_provider.g.dart';

Future<Notification> fetchNotificationPage({required int page, int limit = 10}) async => (await Request.get<Notification>(
  path: Api.getAllNotification(page, limit),
  onSuccess: (json) => Notification.fromJson(json),
)).fold(Future.error, Future.value);

/// Groups notification data by date
/// Returns a Map where key is date string (yyyy-MM-dd) and value is list of Datum objects

/// Alternative version using sentAt field for grouping
Map<String, List<Datum>> groupNotificationsBySentDate(Notification notification) {
  if (notification.data == null || notification.data!.isEmpty) {
    return {};
  }

  final Map<String, List<Datum>> groupedData = {};
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd');

  for (final Datum datum in notification.data!) {
    if (datum.sentAt != null) {
      final String dateKey = dateFormat.format(datum.sentAt!);

      if (!groupedData.containsKey(dateKey)) {
        groupedData[dateKey] = [];
      }

      groupedData[dateKey]!.add(datum);
    }
  }

  return groupedData;
}

Map<String, List<Datum>> groupNotificationsByDate(List<Datum>? data) {
  final Map<String, List<Datum>> groupedData = {};

  for (final Datum datum in data!) {
    if (datum.createdAt != null) {
      // Format the date to get only the date part (yyyy-MM-dd)
      final String dateKey = datum.createdAt!.toRelativeFormat;

      // If the date key doesn't exist, create a new list
      if (!groupedData.containsKey(dateKey)) {
        groupedData[dateKey] = [];
      }

      // Add the datum to the appropriate date group
      groupedData[dateKey]!.add(datum);
    }
  }

  return groupedData;
}

/// Usage example with your provider
// @riverpod
// Future<Map<String, List<Datum>>> fetchGroupedNotifications(Ref ref) async {
//   final Notification notification = await fetchNotification();
//   return groupNotificationsByDate(notification);
// }

/// Extension method for easier access

@riverpod
class NotificationPager extends _$NotificationPager {
  // ---- internal state ------------------------------------------------------
 
  int _page = 1;
  bool hasNext = true;

  @override
  Future<List<Datum>> build() async {
    // Called once for the first load
    final Notification first = await _fetchPage(_page);
    _page = first.page! + 1;
    hasNext = first.hasNextPage ?? false;
    return first.data ?? [];
  }

  /* ---------------- public API ---------------- */

  /// Refreshes from page 1 and replaces the list.
  Future<void> refresh() async {
    state = const AsyncLoading();
    final Notification first = await _fetchPage(1);
    _page = first.page! + 1;
    hasNext = first.hasNextPage ?? false;
    state = AsyncData(first.data ?? []);
  }

  /// Loads the next page and appends to the list, if any.
  Future<void> loadMore() async {
    // Don’t spam extra calls
    if (!hasNext || state.isLoading) return;

    // optimistic‑update pattern
    state = AsyncData([...?state.value]);

    final Notification next = await _fetchPage(_page);
    _page = next.page! + 1;
    hasNext = next.hasNextPage ?? false;

    state = AsyncData([...?state.value, ...?next.data]);
  }

  /* ---------------- helpers ---------------- */

  Future<Notification> _fetchPage(int page) => fetchNotificationPage(page: page);
}
