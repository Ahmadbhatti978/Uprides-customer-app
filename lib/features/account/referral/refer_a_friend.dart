import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/constants.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../util/colors.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

class ReferAFriend extends StatelessWidget {
  const ReferAFriend({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: NameBackBar(title: l10n.referral),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.refer_a_friend, style: Primary.headingSmalll),
          Text(l10n.get_euros_directly_in_your_wallet("100"), style: Secondary.title),
          Center(child: Image.asset(referAfriend, width: mediaQuery.size.width * 0.8)),
          Text(l10n.refer_via, style: Primary.headingSmalll),
          Container(
            padding: const EdgeInsets.fromLTRB(padding, 2, 6, 2),
            decoration: ShapeDecoration(
              color: lightgrey,
              shape: RoundedSuperellipseBorder(borderRadius: BorderRadiusGeometry.circular(12), side: const BorderSide(color: boarder)),
            ),
            child: Row(
              spacing: p12,
              children: [
                Text(l10n.link, style: Primary.titleNormal),
                Expanded(child: Text(l10n.referral_link)),
                IconButton(icon: const Icon(CupertinoIcons.square_on_square), onPressed: () => Clipboard.setData(ClipboardData(text: guser?.username ?? ''))),
              ],
            ),
          ),
          const Gap(padding),
            Text(l10n.share_to  , style: Primary.headingSmalll),
          const Gap(padding / 2),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
                socialImages.entries
                    .map((e) => Column(spacing: padding / 2, children: [Image.asset(e.value), Text(e.key, style: Primary.titleNormal)]))
                    .toList(),
          ),
        ],
      ),
    ),
  );
}
