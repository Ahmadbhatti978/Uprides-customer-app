import 'package:flutter/material.dart';

import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../constants/constants.dart';

class GreyButton extends StatelessWidget {
  const GreyButton({required this.text, super.key, this.onPressed, this.expand = true, this.textColor, this.isBold = false, this.isLoading = false});
  final String text;
  final VoidCallback? onPressed;
  final bool expand;
  final Color? textColor;
  final bool isBold;
  final bool isLoading;

  @override
  Widget build(final BuildContext context) => FilledButton(
    onPressed: isLoading ? null : onPressed,
    style: FilledButton.styleFrom(
      backgroundColor: const Color(0xFFEEEEEE),
      overlayColor: const Color(0xFFEEEEEE),
      foregroundColor: const Color(0xFFEEEEEE),
      visualDensity: VisualDensity.compact,
      minimumSize: Size(mediaQuery.size.width * .35, 50),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      fixedSize: expand ? Size.fromWidth(mediaQuery.size.width - horizontalSpacing * 2) : null,
    ),
    child:
        isLoading
            ? const SizedBox.square(dimension: 30, child: CircularProgressIndicator(color: Colors.black, padding: EdgeInsets.zero, strokeWidth: 2))
            : Text(text, textAlign: TextAlign.center, style: (isBold ? Bold.titleBig : Primary.title).copyWith(color: textColor)),
  );
}
