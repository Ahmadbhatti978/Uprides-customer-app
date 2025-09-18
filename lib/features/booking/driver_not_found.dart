import 'package:flutter/material.dart';

import '../../core/widgets/buttons/filled_black_button.dart';
import '../../util/variable.dart';

class DriverNotFound extends StatelessWidget {
  const DriverNotFound({super.key});

  @override
  Widget build(BuildContext context) => AlertDialog(
    icon: const Icon(Icons.car_crash_outlined, color: Colors.redAccent, size: 48),
    title: Text(l10n.no_drivers_found_title),
    content: Text(l10n.no_drivers_found_content),
    actions: [BlackButton(text: l10n.okay, onPressed: () => Navigator.pop(context))],
  );
}
