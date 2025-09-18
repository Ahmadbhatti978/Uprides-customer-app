import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
// ignore: depend_on_referenced_packages
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';

class Loading extends StatelessWidget {
  const Loading({super.key, this.text, this.isBack = true});
  final String? text;
  final bool isBack;

  @override
  Widget build(final BuildContext context) => ColoredBox(
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (isBack) ...<Widget>[const Gap(kToolbarHeight), const Align(alignment: Alignment.topLeft, child: BackButton())],
        const Spacer(),
        Image.asset(cyanLogo),
        loading,
        if (text != null) ...<Widget>[const Gap(64), Text(text!, textAlign: TextAlign.center, style: Primary.titleSmall)],
        const Spacer(),
      ],
    ),
  );
}

const Widget loading = Center(
  child: SizedBox.square(dimension: 30, child: CircularProgressIndicator(strokeCap: StrokeCap.round, backgroundColor: Color(0xFFE6E6E6))),
);
