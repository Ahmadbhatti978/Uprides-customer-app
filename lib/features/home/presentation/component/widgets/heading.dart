import 'package:flutter/material.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../util/style/typo.dart';

class Heading extends StatelessWidget {
  const Heading({required this.heading, super.key});
  final String heading;

  @override
  Widget build(final BuildContext context) => SliverPadding(
    padding: const EdgeInsets.only(bottom: padding, top: padding * 2, left: padding),
    sliver: SliverToBoxAdapter(child: Text(heading, style: Default.heading)),
  );
}