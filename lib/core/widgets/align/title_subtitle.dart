import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../util/style/typo.dart';
import '../../extensions/string.dart';

class TitleSubtitle extends StatelessWidget {
  const TitleSubtitle({
    required this.title,
    required this.subTitle,
    super.key,
    this.heading = false,
    this.reverse = false,
    this.lowersizeSubtitle = false,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.cyan = false,
    this.spacing = 0,
    this.subtitleicon,
    this.bold = false, // <-- Added parameter
    this.largeheading = false,
  });

  final String title;
  final String? subTitle;
  final bool heading;
  final bool reverse;
  final CrossAxisAlignment crossAxisAlignment;
  final bool lowersizeSubtitle;
  final bool cyan;
  final double spacing;
  final Widget? subtitleicon;
  final bool bold; // <-- Added field
  final bool largeheading;

  @override
  Widget build(final BuildContext context) {
    final TextStyle textStyle =
        (cyan
            ? Cyan.title
            : heading
            ? Primary.heading
            : Primary.title);
    final UnmodifiableListView<Widget> list = UnmodifiableListView(<Widget>[
      Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: largeheading ? textStyle.copyWith(fontVariations: <FontVariation>[const FontVariation('wght', 700)], fontSize: 24) : textStyle, // <-- Apply bold
      ),
      if (subTitle.isBlank)
        const SizedBox.shrink()
      else
        subtitleicon == null
            ? Text(
              subTitle!,
              style: (lowersizeSubtitle ? Secondary.titleSmall : Secondary.title).copyWith(
                fontWeight: bold ? FontWeight.bold : null,
              ), // <-- Apply bold to subtitle
              textAlign: crossAxisAlignment == CrossAxisAlignment.center ? TextAlign.center : TextAlign.start,
            )
            : Row(
              spacing: 6,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  subTitle!,
                  style: (lowersizeSubtitle ? Secondary.titleSmall : Secondary.title).copyWith(
                    fontWeight: bold ? FontWeight.bold : null,
                  ), // <-- Apply bold to subtitle
                  textAlign: crossAxisAlignment == CrossAxisAlignment.center ? TextAlign.center : TextAlign.start,
                ),
                subtitleicon ?? const SizedBox.shrink(),
              ],
            ),
    ]);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      spacing: spacing,
      crossAxisAlignment: crossAxisAlignment,
      children: reverse ? list.reversed.toList() : list,
    );
  }
}

class SvgText extends StatelessWidget {
  const SvgText({required this.url, required this.title, super.key, this.reverse = false, this.lowersizeSubtitle = false, this.width = 32, this.height = 32});
  final String url;
  final String title;
  final double width;
  final double height;
  final bool reverse;

  final bool lowersizeSubtitle;

  @override
  Widget build(final BuildContext context) {
    final UnmodifiableListView<Widget> list = UnmodifiableListView(<Widget>[
      SizedBox.square(dimension: width, child: SvgPicture.asset(url, width: width, height: height)),
      Text(title, style: lowersizeSubtitle ? Secondary.titleSmall : Default.titleLarge),
    ]);
    return Row(spacing: 8, children: reverse ? list.reversed.toList() : list);
  }
}
