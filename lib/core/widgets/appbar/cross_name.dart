import 'package:flutter/material.dart';

import '../../../util/style/typo.dart';

class CrossName extends StatelessWidget implements PreferredSizeWidget {
  const CrossName({required this.title, super.key});
  final String title;
  @override
  Size get preferredSize => const Size.fromHeight(40);
  @override
  Widget build(final BuildContext context) => Stack(
      fit: StackFit.expand,
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        const Positioned(bottom: 0, left: 10, child: CloseButton()),
        Positioned(bottom: 10, child: Text(title, textAlign: TextAlign.center, style: Default.heading)),
      ],
    );
}
