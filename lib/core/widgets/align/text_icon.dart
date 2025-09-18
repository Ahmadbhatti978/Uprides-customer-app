import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../util/style/typo.dart';

class TextIcon extends StatelessWidget {

  const TextIcon({required this.text, super.key, this.icon, this.isSecondary = false, this.iconColor, this.isWhite = false, this.size, this.gap = 8});
  final IconData? icon;
  final String text;
  final bool isSecondary;
  final Color? iconColor;
  final bool isWhite;
  final double? size;
  final double gap;

  @override
  Widget build(final BuildContext context) => Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          text,
          style:
              isWhite
                  ? White.titleSmall
                  : isSecondary
                  ? Secondary.title
                  : Primary.titleSmall,
        ),
        Gap(gap),
        Icon(icon, size: size, color: isWhite ? Colors.white : iconColor),
      ],
    );
}
