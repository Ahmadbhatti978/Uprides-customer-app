import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../constants/constants.dart';

class NameBackBar extends StatelessWidget implements PreferredSizeWidget {
  const NameBackBar({required this.title, this.transparent = false, super.key});
  final String title;
  final bool transparent;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(final BuildContext context) =>
      transparent
          ? ClipRect(
            child: BackdropFilter(
              enabled: transparent,
              filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
              child: ColoredBox(color: const Color.fromARGB(210, 255, 255, 255), child: Content(title: title)),
            ),
          )
          : Content(title: title);
}

class Content extends StatelessWidget {
  const Content({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(top: mediaQuery.viewPadding.top, bottom: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                const Gap(2),
                IconButton(
                  splashRadius: 25,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(right: 2),
                  icon: const Icon(Icons.arrow_back_ios_rounded),
                  onPressed: () => Navigator.pop(context),
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Text(title, textAlign: TextAlign.center, style: Primary.heading),
          const Spacer(),
        ],
      ),
    );
  }
}
