import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import '../../core/extensions/string.dart';
import '../../core/router/route.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../util/image_assets.dart';
import '../../util/variable.dart';

class UpdateView extends StatelessWidget {
  const UpdateView({super.key, this.time});
  final String? time;

  String _formatScheduledTime(DateTime scheduledUntil) {
    try {
      final DateTime dateTime = scheduledUntil.toLocal();

      return DateFormat.jm().format(dateTime);
    } catch (e) {
      return ''; // fallback in case of parse error
    }
  }

  @override
  Widget build(BuildContext context) {
    final String? dateTime = ModalRoute.settingsOf(context)?.arguments as String?;
    final String formattedTime = _formatScheduledTime(dateTime != null ? DateTime.tryParse(dateTime) ?? DateTime.now() : DateTime.now());

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              Image.asset(settingsImage),
              const Gap(40),
              Text(
                (setting?.data?.settings?.maintenanceTitle.isBlank ?? true) ? 'We’re Updating Things!' : setting!.data!.settings!.maintenanceTitle!,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black, fontSize: 24, fontFamily: 'Open', fontVariations: [FontVariation('wght', 700)]),
              ),

              if (setting?.data?.settings?.maintenanceDescription.isBlank ?? true)
                Text(
                  formattedTime.isNotEmpty
                      ? l10n.upridesMaintenanceMessageTime(formattedTime)
                      : 'We’re making some improvements to give you a smoother experience. Uprides will be back soon.',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Color(0xFF777777), fontSize: 14, fontFamily: 'Open', fontVariations: [FontVariation('wght', 400)]),
                )
              else
                Text(
                  setting!.data!.settings!.maintenanceDescription!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Color(0xFF777777), fontSize: 14, fontFamily: 'Open', fontVariations: [FontVariation('wght', 400)]),
                ),
              const Gap(48),
              BlackButton(onPressed: () => Navigator.pushNamedAndRemoveUntil(context, AppRoutes.splash, ModalRoute.withName('/')), text: 'Retry'),
            ],
          ),
        ),
      ),
    );
  }
}
