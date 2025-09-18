import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../util/colors.dart';
import '../../../../../util/style/typo.dart';
import '../../../../../util/variable.dart';
import '../../../model/options.dart';
import '../../../model/ride.dart';
import '../../../provider/selected_ride.dart';
import '../switch_config.dart';

enum RideType { petFriendly, assist }

class Switches extends ConsumerWidget {
  const Switches({required this.controller, required this.scrollController, required this.options, super.key});
  final ScrollController scrollController;
  final DraggableScrollableController controller;
  final AsyncValue<Options> options;

  (int, Ride?) _getIndex(RideType type, WidgetRef ref) {
    if (options.hasValue) {
      final List<Ride>? optionsList = options.value?.data?.options;
      if (optionsList == null) return (-1, null);

      final String typeId = type == RideType.petFriendly ? petTypeID : assistTypeID;
      final int index = optionsList.indexWhere((e) => e.rideTypeId == typeId);
      final Ride? ride = index != -1 ? optionsList.elementAt(index) : null;
      return (index, ride);
    }
    return (-1, null);
  }

  Widget _buildSwitch({required String label, required bool value, required ValueChanged<bool> onChanged}) => SizedBox(
    height: 20,
    child: Row(
      children: [
        Text(label, style: Primary.titleLarge),
        Transform.scale(
          scale: switchScale,
          child: Switch(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            trackOutlineWidth: const WidgetStatePropertyAll(2),
            padding: EdgeInsets.zero,
            activeThumbColor: Colors.white,
            activeTrackColor: primary,
            value: value,
            onChanged: onChanged,
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) => Row(
      spacing: p24,
      children: <Widget>[
        Visibility(
          visible: _getIndex(RideType.petFriendly, ref).$1 != -1 && _getIndex(RideType.petFriendly, ref).$2 != null,
          child: _buildSwitch(
            label: l10n.pet_friendly,
            value: ref.watch(petProvider),
            onChanged: (bool isEnabled) {
              if (isEnabled) {
                final (int index, Ride? ride) = _getIndex(RideType.petFriendly, ref);
                if (index != -1 && ride != null) {
                  ref.read(petProvider.notifier).state = true;
                  controller.animateTo(
                    1, // target size
                    duration: Durations.medium1,
                    curve: Curves.easeInOut,
                  );
                  scrollController.animateTo((index * itemHeight) - 100, duration: Durations.medium1, curve: Curves.easeInOut);
                  ref.read(selectedRideProvider.notifier).updateState(ride);
                }
              } else {
                ref.read(petProvider.notifier).state = false;
              }
            },
          ),
        ),

        Visibility(
          visible: _getIndex(RideType.assist, ref).$1 != -1 && _getIndex(RideType.assist, ref).$2 != null,
          child: _buildSwitch(
            label: l10n.assist,
            value: ref.watch(assistProvider),
            onChanged: (bool isEnabled) {
              if (isEnabled) {
                final (int index, Ride? ride) = _getIndex(RideType.assist, ref);
                if (index != -1 && ride != null) {
                  ref.read(assistProvider.notifier).state = true;
                  controller.animateTo(
                    1, // target size
                    duration: Durations.medium1,
                    curve: Curves.easeInOut,
                  );
                  scrollController.animateTo((index * itemHeight) - 100, duration: Durations.medium1, curve: Curves.easeInOut);
                  ref.read(selectedRideProvider.notifier).updateState(ride);
                }
              } else {
                ref.read(assistProvider.notifier).state = false;
              }
            },
          ),
        ),
      ],
    );
}
