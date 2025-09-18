import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../util/image_assets.dart';
import '../util/style/typo.dart';
import 'widgets/appbar/backbar.dart';

class ServiceNotAvailable extends StatelessWidget {
  const ServiceNotAvailable({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const  BackBar(),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        SvgPicture.asset(ourServiceNotAvailable),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
          child: Text('Sorry, Our Services are not available on your location.', style: Default.titleLarge),
        ),
      ],
    ),
  );
}
