import 'package:flutter/material.dart';

import '../../../util/colors.dart';

TextButton cyanTextButton(
  final void Function()? onPressed,
  final String text, {
  final bool isUnderline = true,
  final Alignment? alignment,
  final bool isBold = false,
  final bool disabled = false,
}) => TextButton(
  style: TextButton.styleFrom(
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    foregroundColor: primary,
    visualDensity: VisualDensity.compact,
    alignment: alignment,
    splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
    textStyle: TextStyle(
      color: primary,
      fontFamily: 'Open',
      fontSize: isBold ? 18 : 16,
      fontVariations: <FontVariation>[FontVariation('wght', isBold ? 650 : 600.0)],
      decoration: isUnderline ? TextDecoration.underline : null,
    ),
  ),
  onPressed: disabled ? () {} : onPressed,
  child: Text(text),
);
