import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/failure/failure.dart';
import '../../../../../core/widgets/loading_error/error.dart';
import '../../../model/options.dart';
import 'ride_sliver_list.dart';

// ... other imports

// ✨ IMPROVEMENT: Decoupled from ModalRoute by passing the scroll controller.
class RideList extends StatelessWidget {
  const RideList({required this.options, required this.scrollController, super.key});
  final ScrollController scrollController;
  final AsyncValue<Options> options;

  @override
  Widget build(final BuildContext context) => options.when(
    data:
        (final Options rides) => RList(
          rides: rides,
          scrollController: scrollController, // Pass controller down
        ),
    error: (final Object er, final StackTrace c) => ErrorW(error: er as ErrorDetails?, stackTrace: c),
    // ✨ IMPROVEMENT: A centered indicator is more robust than a sized box with a percentage height.
    loading: () => const Center(child: CircularProgressIndicator()),
  );
}
