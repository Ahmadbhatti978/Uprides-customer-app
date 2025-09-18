import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../model/options.dart';
import '../../../model/ride.dart';
import '../../../model/ride_type_images.dart';
import '../../../provider/get_type.dart';
import '../../../provider/selected_ride.dart';
import '../switch_config.dart';
import 'ride_tile.dart';

class RList extends ConsumerStatefulWidget {
  const RList({required this.rides, required this.scrollController, super.key});

  final Options rides;
  final ScrollController scrollController;

  @override
  ConsumerState<RList> createState() => _RListState();
}

class _RListState extends ConsumerState<RList> {
  late final List<GlobalKey> _itemKeys;

  @override
  void initState() {
    super.initState();
    _itemKeys = List.generate(widget.rides.data?.options?.length ?? 0, (_) => GlobalKey());
  }

  @override
  Widget build(BuildContext context) {
    final bool isPetFriendly = ref.watch(petProvider);
    final bool isAssistive = ref.watch(assistProvider);
    final List<Ride> options = widget.rides.data?.options ?? [];

    return Column(
      children: List.generate(options.length, (index) {
        final Ride? sCar = ref.watch(selectedRideProvider);
        final AsyncValue<RideTypeImages> rideType = ref.watch(getRideTypeImagesProvider);
        final Ride ride = options[index];

        return Visibility(
          visible: _checkForVisibility(ride, pet: isPetFriendly, assist: isAssistive),
          child: GestureDetector(
            key: _itemKeys[index], // Assign the key
            onTap: () {
              // 1. Update state
              ref.read(selectedRideProvider.notifier).updateState(ride);

              // 2. Scroll to center
              Scrollable.ensureVisible(
                _itemKeys[index].currentContext!,
                duration: Durations.medium2,
                curve: Curves.easeInOut,
                alignment: 0.5, // Center alignment
              );
              //     widget.scrollController.animateTo(widget.scrollController.offset + 20, duration: Durations.medium4, curve: Curves.easeInOut);
            },
            // ✨ IMPROVEMENT: Pass only the necessary data to RideTile.
            child: RideTile(
              ride: ride,
              isLoading: rideType.isLoading,
              s: sCar == ride,
              rideCategory: (rideType.valueOrNull?.data?.rideTypes?.results ?? <RideType>[]).firstWhere(
                (final RideType type) => type.id == ride.rideTypeId,
                orElse: () => const RideType(),
              ),
            ),
          ),
        );
      }),
    );
  }
}

// ✨ IMPROVEMENT: Make this a pure, top-level function.
bool _checkForVisibility(Ride? ride, {bool pet = false, bool assist = false}) {
  if (ride == null) return false;
  if (ride.rideTypeId == petTypeID && !pet) return false;
  if (ride.rideTypeId == assistTypeID && !assist) return false;
  return true;
}
