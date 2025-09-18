import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/constants.dart';
import '../../../core/widgets/align/title_subtitle.dart';
import '../../booking/model/ride_type_images.dart';

import '../component/tile.dart';
import '../model/activity.dart';
import '../model/type.dart';
import '../provider/get_activity_provider.dart';

class ListOfActivity extends StatelessWidget {
  const ListOfActivity({required this.car, required this.data, required this.onRefresh, required this.type, super.key});
  final Activity data;
  final AsyncValue<RideTypeImages> car;
  final RideStatusType type;
  final Future<void> Function() onRefresh;

  @override
  Widget build(final BuildContext context) {
    final EmptyStateText text = emptyStateFor(type);
    return RefreshIndicator(
      onRefresh: onRefresh,
      child:
          (data.data?.rides?.results?.length ?? 0) == 0
              ? CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(padding),
                        child: TitleSubtitle(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          largeheading: true,
                          spacing: 8,
                          //     bold: true,
                          title: text.title,
                          subTitle: text.subtitle,
                        ),
                      ),
                    ),
                  ),
                ],
              )
              : ListView.separated(
                primary: true,
                itemCount: data.data?.rides?.results?.length ?? 0,
                cacheExtent: 21,
                padding: const EdgeInsets.only(top: 20),
                itemBuilder:
                    (final BuildContext context, final int index) =>
                        data.data?.rides?.results?.elementAt(index) == null
                            ? const SizedBox.shrink()
                            : Tile(
                              type: type,
                              rides: data.data!.rides!.results!.elementAt(index),
                              car:
                                  car.value?.data?.rideTypes?.results
                                      ?.where((final RideType dat) => dat.id == data.data!.rides!.results!.elementAt(index).rideTypeId?.id)
                                      .firstOrNull ??
                                  car.value!.data!.rideTypes!.results!.first,
                            ),
                separatorBuilder:
                    (final BuildContext context, final int index) => const Divider(height: 0, endIndent: 16, color: Color(0xFFEEEEEE), indent: 16),
              ),
    );
  }
}
