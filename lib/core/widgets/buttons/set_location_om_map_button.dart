import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

class SetLocationOnMap extends StatelessWidget {
  const SetLocationOnMap({required this.onPressed, super.key});
  final VoidCallback onPressed;

  @override
  Widget build(final BuildContext context) =>
      TextButton.icon(onPressed: onPressed, label: Text(l10n.set_location_on_map, style: Bold.titleSmall), icon: SvgPicture.asset(pin, width: 24, height: 24));
}
