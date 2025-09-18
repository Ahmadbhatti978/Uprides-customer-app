import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

class AllVouchers extends StatelessWidget {
  const AllVouchers({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(l10n.vouchers)),
    body: Padding(
      padding: const EdgeInsets.all(padding),
      child: Column(
        spacing: padding,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.all(p24), child: Center(child: Image.asset(vouchers, width: mediaQuery.size.width * 0.6))),
          Text(l10n.no_vouchers_available, style: Default.headingSmall),
          Text(l10n.you_dont_have_any_available_voucher, style: const TextStyle(color: Colors.red)),
        ],
      ),
    ),
  );
}
