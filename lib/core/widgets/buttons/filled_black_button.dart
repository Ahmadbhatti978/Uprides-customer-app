import 'package:flutter/material.dart';

import '../../../util/colors.dart';
import '../../../util/variable.dart';

class BlackButton extends StatelessWidget {
  const BlackButton({required this.text, super.key, this.onPressed, this.expand = true, this.isLoading = false, this.isBold = true, this.isSmall = false});
  final String text;
  final VoidCallback? onPressed;
  final bool expand;
  final bool isLoading;
  final bool isBold;
  final bool isSmall;

  @override
  Widget build(final BuildContext context) => SizedBox(
    height: 50,
    width: (expand && !isLoading) ? mediaQuery.size.width - 32 : null,
    child: FilledButton(
      onPressed: isLoading ? () {} : onPressed, // Handle null onPressed
      style: FilledButton.styleFrom(
        enableFeedback: true,
        backgroundColor: Colorx.primary,
        visualDensity: VisualDensity.compact,
        minimumSize: const Size(150, 50),
        maximumSize: Size(mediaQuery.size.width - 32, 60),
        padding: EdgeInsets.zero,
        foregroundColor: Colors.white,
      ),
      child:
          isLoading
              ? CircularProgressIndicator(
                color: Colors.white,
                padding: EdgeInsets.zero,
                strokeWidth: 2,
                constraints: BoxConstraints.tight(const Size.square(25)),
              )
              : Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isSmall ? 14 : 18,
                  fontFamily: 'Red Hat Display',
                  letterSpacing: 0.6,
                  height: 1.33,
                  color: Colors.white,
                  fontVariations: <FontVariation>[FontVariation('wght', isBold ? 650 : 400)],
                  textBaseline: TextBaseline.alphabetic,
                  leadingDistribution: TextLeadingDistribution.even,
                ),
              ),
    ),
  );
}
