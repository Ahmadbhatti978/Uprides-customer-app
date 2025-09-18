import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/failure/failure.dart';
import '../../../core/widgets/loading_error/error.dart';
import '../../../core/widgets/loading_error/loading.dart';
import '../../booking/model/ride_type_images.dart';
import '../../booking/provider/get_type.dart';
import '../model/activity.dart' as activity;
import '../provider/get_activity_provider.dart';
import 'list_activity.dart';

class ActivityType extends ConsumerWidget {
  const ActivityType(this.type, {super.key});
  final RideStatusType type;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final AsyncValue<RideTypeImages> car = ref.read(getRideTypeImagesProvider);

    return ref
        .watch(getAcitivitesProvider(ridestatus: type))
        .when(
          data:
              (final activity.Activity data) =>
                  ListOfActivity(car: car, data: data, onRefresh: () => ref.refresh(getAcitivitesProvider(ridestatus: type).future), type: type),
          error: (final Object error, final StackTrace stackTrace) => Err(error: error as ErrorDetails, stackTrace: stackTrace),
          loading: () => const Loading(isBack: false),
        );
  }
}
