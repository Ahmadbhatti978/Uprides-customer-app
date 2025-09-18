import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/constants.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';

class OutlinedButtonIcon extends StatelessWidget {
  const OutlinedButtonIcon({required this.label, super.key, this.onTap, this.icon, this.svgPath});
  final Function()? onTap;
  final String? svgPath;
  final String label;
  final Icon? icon;

  @override
  Widget build(final BuildContext context) => InkWell(
    splashFactory: InkSparkle.splashFactory,
    customBorder: const StadiumBorder(),
    onTap: onTap,
    child: Ink(
      width: mediaQuery.size.width - padding * 2,
      padding: EdgeInsets.symmetric(horizontal: p12 * 2, vertical: mediaQuery.size.height * 0.018),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: StadiumBorder(side: BorderSide(color: Color(0xFFdddddd), width: 2)),
        shadows: <BoxShadow>[BoxShadow(color: Color(0x0F000000), blurRadius: 34, offset: Offset(4, 4))],
      ),
      child: Row(
        spacing: p12,
        children: <Widget>[icon ?? SvgPicture.asset(svgPath!, width: 32, height: 32), Expanded(child: Text(label, style: Default.headingLarge))],
      ),
    ),
  );
}
