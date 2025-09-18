import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../util/colors.dart';
import '../../../util/style/typo.dart';

final Map<String, String> vouchers = {"All vouchers": AppRoutes.allVouchers, "+ Add a voucher": AppRoutes.addVoucher};

class VoucherPage extends StatelessWidget {
  const VoucherPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const NameBackBar(title: 'Vouchers'),
    body: Column(
      spacing: 2,
      children: vouchers.entries.map((entry) => ReferralContainer(title: entry.key, onTap: () => Navigator.pushNamed(context, entry.value))).toList(),
    ),
  );
}

class ReferralContainer extends StatelessWidget {
  const ReferralContainer({required this.title, required this.onTap, super.key});
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: padding),
      padding: const EdgeInsets.symmetric(horizontal: padding, vertical: p12),
      color: grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title, style: Primary.headingSmalllThin), const Icon(Icons.arrow_forward_ios_rounded)],
      ),
    ),
  );
}
