import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/router/route.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';

class NotificationAndTrending extends StatelessWidget {
  const NotificationAndTrending({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: kToolbarHeight, right: p12, left: p12),
    child: Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: IconButton.filled(
            onPressed: () => Navigator.pushNamed(context, AppRoutes.notification),
            color: Colors.white70,
            iconSize: 24,
            icon: const Icon(CupertinoIcons.bell_fill, color: Colors.white),
            style: IconButton.styleFrom(backgroundColor: Colors.white24),
          ),
        ),

        Text.rich(
          TextSpan(
            children: <InlineSpan>[
              TextSpan(text: "${l10n.whats} ", style: reggaeOneWhite),
              TextSpan(
                text: l10n.trending,
                style: reggaeOneUnderline,
                recognizer:
                    TapGestureRecognizer()
                      ..onTap = () {

                        Navigator.pushNamed(context, AppRoutes.trendingLocations);
                      },
              ),
              TextSpan(text: " ${l10n.around_you}", style: reggaeOneWhite),
            ],
          ),
        ),
      ],
    ),
  );
}
