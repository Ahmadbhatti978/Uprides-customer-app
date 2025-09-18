// notification/notification_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/extensions/date.dart';
import '../../core/widgets/loading_error/error.dart';
import '../../core/widgets/loading_error/loading.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import 'model/notification.dart';
import 'provider/notification_provider.dart';

class NotificationPage extends ConsumerStatefulWidget {
  const NotificationPage({super.key});

  @override
  ConsumerState<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends ConsumerState<NotificationPage> {
  late final ScrollController _scroll;

  @override
  void initState() {
    super.initState();
    _scroll = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (_scroll.position.pixels >= _scroll.position.maxScrollExtent - 250) {
      // within 250 px of bottom ‑‑ fetch next
      ref.read(notificationPagerProvider.notifier).loadMore();
    }
  }

  @override
  void dispose() {
    _scroll
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Datum>> pager = ref.watch(notificationPagerProvider);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
      appBar: AppBar(title: Text(l10n.notification)),
      body:
          true
              ? const Center(child: Text("No Notification Found !", style: Secondary.headingSmall))
              : pager.when(
                //    skipLoadingOnReload: true,
                data: (items) {
                  final Map<String, List<Datum>> grouped = groupNotificationsByDate(items);
                  // +1 for bottom loader
                  final int itemCount = grouped.length + 1;

                  return RefreshIndicator(
                    onRefresh: () => ref.read(notificationPagerProvider.notifier).refresh(),
                    child: ListView.builder(
                      controller: _scroll,
                      padding: const EdgeInsets.symmetric(horizontal: padding, vertical: p12),
                      itemCount: itemCount,
                      itemBuilder: (context, index) {
                        // bottom loader slot
                        if (index == itemCount - 1) {
                          final bool hasNext = ref.read(notificationPagerProvider.notifier).hasNext;
                          return hasNext
                              ? const Padding(padding: EdgeInsets.symmetric(vertical: 16), child: Center(child: CircularProgressIndicator()))
                              : const SizedBox.shrink();
                        }

                        final String date = grouped.keys.elementAt(index);
                        final List<Datum> list = grouped[date]!;
                        return Column(
                          spacing: p12,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text(date, style: Secondary.titleBig), ...list.map(_notificationTile), const Gap(p12)],
                        );
                      },
                    ),
                  );
                },
                loading: () => const Loading(isBack: false),
                error: (err, _) => Err(error: err),
              ),
    );
  }

  /* ----------------─ tile ---------------- */

  Widget _notificationTile(Datum n) => DecoratedBox(
    decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(side: const BorderSide(color: Color(0xFFEEEEEE)), borderRadius: BorderRadius.circular(8)),
    ),
    child: ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      leading: Container(
        width: 48,
        height: 48,
        decoration: const ShapeDecoration(color: Colors.white, shape: OvalBorder(side: BorderSide(color: Color(0xFFEEEEEE)))),
        child: const Icon(Icons.notifications, size: 24),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(n.title ?? ' ', style: Primary.titleNormal), Text(n.createdAt?.toTime() ?? '', style: Secondary.title)],
      ),
    ),
  );
}
