import 'package:flutter/material.dart';

class NameBar extends StatelessWidget implements PreferredSizeWidget {
  const NameBar({required this.title, super.key});
  final String title;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * .8);
  @override
  Widget build(final BuildContext context) => Align(
      alignment: Alignment.bottomCenter,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          textBaseline: TextBaseline.alphabetic,
          fontSize: 21,
          fontFamily: 'Open',
          color: Colors.black,
          fontVariations: <FontVariation>[FontVariation('wght', 650)],
          letterSpacing: -0.1,
        ),
      ),
    );
}
