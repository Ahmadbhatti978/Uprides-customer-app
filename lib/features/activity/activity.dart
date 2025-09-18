import 'package:flutter/material.dart';
import '../../core/widgets/appbar/name_bar.dart';
import '../../util/variable.dart';
import 'provider/get_activity_provider.dart';
import 'widgets/activity_type.dart';
import 'widgets/tabs.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: NameBar(title: l10n.previous_ride),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(8), child: Text(l10n.recent_trip, style: const TextStyle(fontSize: 20))),
        //   Container(height: 120, color: grey, margin: EdgeInsets.all(padding)),
        const Expanded(
          child: DefaultTabController(
            length: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Tabs(),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[ActivityType(RideStatusType.COMPLETED), ActivityType(RideStatusType.CANCELED), ActivityType(RideStatusType.UPCOMMING)],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}



