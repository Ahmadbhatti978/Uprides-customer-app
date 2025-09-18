import 'package:flutter/material.dart';

import '../colors.dart';

final   Widget buildHandle = Container(
  decoration: const BoxDecoration(color: grey, borderRadius: BorderRadius.all(Radius.circular(10))),
  height: 4,
  width: 50,
  margin: const EdgeInsets.symmetric(vertical: 12),
);
final Widget sbuildHandle = Center(
  child: Container(
    decoration: const BoxDecoration(color: grey, borderRadius: BorderRadius.all(Radius.circular(10))),
    height: 4,
    width: 50,
    margin: const EdgeInsets.only(top: 10, bottom: 8),
  ),
);
