import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/constants.dart';

class CloseBar extends StatelessWidget implements PreferredSizeWidget {
  const CloseBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * .8);
  @override
  Widget build(final BuildContext context) => const Align(
      alignment: Alignment.bottomLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Gap(horizontalSpacing - 5),
          CloseButton(),
        ],
      ),
    );
}
