import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../util/style/typo.dart';

class IconText extends StatelessWidget {

  const IconText({
    required this.text, super.key,
    this.icon,
    this.isSecondary = false,
    this.iconColor,
    this.isWhite = false,
    this.size,
    this.color,
    this.isBold = false,
    this.textStyle,
    this.gap = 5,
    this.textSize,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final IconData? icon;
  final String text;
  final bool isSecondary;
  final Color? iconColor;
  final bool isWhite;
  final double? size;
  final Color? color;
  final bool isBold;
  final TextStyle? textStyle;
  final double gap;
  final double? textSize;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(final BuildContext context) => Row(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon, size: size, color: isWhite ? Colors.white : iconColor),
        Gap(gap),
        Text(
          text,
          style:
              textStyle ??
              (isSecondary ? Secondary.title : Primary.titleSmall).copyWith(
                color: isWhite ? Colors.white : color,
                fontSize: textSize,
                fontVariations: isBold ? <FontVariation>[const FontVariation('wght', 680)] : null,
              ),
        ),
      ],
    );
}
