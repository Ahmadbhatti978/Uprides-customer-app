import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../image_assets.dart';
import '../variable.dart';

class NoInternetView extends StatelessWidget {
  const NoInternetView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(noInternetImage),
            const Gap(32),
            const Text(
              'No Internet Connection',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 24, fontFamily: 'Open', fontVariations: [FontVariation('wght', 600)]),
            ),
            const Gap(4),
            const Text(
              'You’re not connected to the internet.Please check your connection and try again.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF535862), fontSize: 14, fontFamily: 'Open', fontVariations: [FontVariation('wght', 400)]),
            ),
            const Gap(60),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(fixedSize: Size(mediaQuery.size.width, 56)),
              child: const Text('Try again', style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Open', fontVariations: [FontVariation('wght', 600)])),
            ),
          ],
        ),
      ),
    );
}
