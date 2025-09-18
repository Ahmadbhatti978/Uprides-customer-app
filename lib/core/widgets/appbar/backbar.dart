import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/constants.dart';

class BackBar extends StatelessWidget implements PreferredSizeWidget {
  const BackBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(final BuildContext context) => Align(
    alignment: Alignment.bottomLeft,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[const Gap(horizontalSpacing - 5), IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios_rounded))],
    ),
  );
}
