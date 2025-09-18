import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/location_validator/naviagation_service.dart';
import '../../../../core/widgets/buttons/filled_black_button.dart';
import '../../../../util/variable.dart';
import '../../provider/config_provider.dart';
import '../model/config.dart';

class Done extends StatelessWidget {
  const Done({required this.isLoading, required bool isDoneButtonEnabled, required this.ref, super.key}) : _isDoneButtonEnabled = isDoneButtonEnabled;
  final ValueNotifier<bool> isLoading;
  final bool _isDoneButtonEnabled;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) => SafeArea(
    top: false,
    maintainBottomViewPadding: true,
    minimum: const EdgeInsets.only(bottom: p12),
    child: Padding(
      padding: const EdgeInsets.all(padding),
      child: ValueListenableBuilder(
        valueListenable: isLoading,
        builder:
            (context, value, child) => BlackButton(
              isLoading: value,
              text: l10n.done,
              onPressed:
                  _isDoneButtonEnabled
                      ? () async {
                        isLoading.value = true;
                        rideRequest = null;
                        ref.read(configPProvider.notifier).changeBookingType(BookingType.manual);

                        await navigateToConfirmScreen(context, ref);
                        // await LocationValidator(ref).navigateToConfirmScreen();
                        isLoading.value = false;
                      }
                      : null,
            ),
      ),
    ),
  );
}
