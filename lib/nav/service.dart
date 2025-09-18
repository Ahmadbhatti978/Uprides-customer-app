import 'package:flutter/material.dart';

import '../../../../util/style/typo.dart';
import '../core/constants/constants.dart';
import '../core/helper_fun.dart';
import '../util/image_assets.dart';
import '../util/variable.dart';

class Services extends StatelessWidget {
  const Services({super.key});
  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: Align(alignment: AlignmentDirectional.bottomStart, child: Text(l10n.services, textAlign: TextAlign.center, style: Default.headingLarge)),
      ),
    ),
    body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      children:
          suggestions1.entries
              .map(
                (final MapEntry<String, String> entry) => Card(
                  clipBehavior: Clip.hardEdge,
                  margin: const EdgeInsets.only(bottom: 24),
                  elevation: 6,
                  shadowColor: const Color.fromARGB(47, 125, 125, 125),
                  child: ListTile(
                    splashColor: Colors.black26,
                    onTap: () => navigate(context, entry.key),
                    leading: ClipRRect(borderRadius: BorderRadius.circular(8), child: Image.asset(entry.value, width: 80, height: 64, fit: BoxFit.cover)),
                    title: Text(entry.key, style: Bold.titleSmall),
                    subtitle: Text(serviceSubtitles[entry.key]!, style: Secondary.title),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
                  ),
                ),
              )
              .toList(),
    ),
  );
}
