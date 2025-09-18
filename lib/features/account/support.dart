import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/align/form_row.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const NameBackBar(
        title: 'Your profile',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          children: <Widget>[
            Image.asset(support, width: 233, height: 233),
            const Gap(48),
              Text( l10n.hello_how_can_we_help_you  , textAlign: TextAlign.center, style: Bold.headingSmall),
            const Gap(padding * 2),
            const Divider(),
              FormRow(
              title: l10n.call_customer_support  ,
              icon: Icons.call,
            ),
            const Divider(),
              FormRow(
              title: l10n.contact_chat_support  ,
              icon: Icons.message,
            ),
            const Divider(),
              FormRow(
              title:l10n.send_us_an_email  ,
              icon: Icons.mail,
            ),
            const Divider(),
          ],
        ),
      ),
    );
}
