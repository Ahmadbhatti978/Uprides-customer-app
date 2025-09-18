import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../util/colors.dart';
import '../../constants/constants.dart';

class Back extends StatelessWidget {
  const Back({super.key, this.isMarging = true});
  final bool isMarging;
  @override
  Widget build(BuildContext context) => InkWell(
    radius: 50,
    borderRadius: BorderRadius.circular(36),
    onTap: () => Navigator.pop(context),
    child: Container(
      width: 46,
      height: 46,
      margin: const EdgeInsets.all(4),
      decoration: const ShapeDecoration(color: grey, shape: CircleBorder()),
      child: const Icon(Icons.arrow_back_ios_rounded),
    ),
  );
}

class FilledBackBar extends StatelessWidget implements PreferredSizeWidget {
  const FilledBackBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(final BuildContext context) => const Align(
    alignment: Alignment.bottomLeft,
    child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[Gap(horizontalSpacing - 5), Back()]),
  );
}
