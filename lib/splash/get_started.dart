import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../core/router/route.dart';
import '../core/widgets/buttons/filled_black_button.dart';
import '../util/variable.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(final BuildContext context) => ColoredBox(
    color: Colors.white,
    child: Column(
      children: <Widget>[
        Expanded(
          child: Image.asset(
            "", //   getStarted,
            filterQuality: FilterQuality.high,
            alignment: Alignment.bottomCenter,
            width: mediaQuery.size.width,
            fit: BoxFit.fitWidth,
          ),
        ),
        Gap(mediaQuery.size.height * .056),
        BlackButton(text: l10n.ontinue, onPressed: () => Navigator.pushNamed(context, AppRoutes.sign)),
        Gap(mediaQuery.size.height * .07),
      ],
    ),
  );
}
