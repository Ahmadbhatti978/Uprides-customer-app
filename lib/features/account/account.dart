import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/actions/open_intercom.dart';
import '../../core/constants/constants.dart';
import '../../core/router/route.dart';
import '../../core/widgets/align/form_row.dart';
import '../../core/widgets/appbar/name_bar.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: NameBar(title: l10n.account),
    body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      children: <Widget>[
        const Gap(padding),
        const UserDetail(),
        Container(
          color: grey,
          margin: const EdgeInsets.only(top: 24),
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(l10n.user_payment_id(guser?.username ?? ""), style: Secondary.titleBig),
                ),
              ),
              IconButton(onPressed: () => Clipboard.setData(ClipboardData(text: guser?.username ?? '')), icon: const Icon(Icons.copy_rounded, color: darkgrey)),
            ],
          ),
        ),
        const Gap(p24),
        // GestureDetector(
        //   onTap: () => Navigator.pushNamed(context, AppRoutes.reward),
        //   child: Container(
        //     margin: const EdgeInsets.symmetric(vertical: 24),
        //     decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(8)),
        //     padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        //     child: Row(
        //       children: <Widget>[
        //         Expanded(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: <Widget>[
        //               Text(l10n.view_your_earned_rewards, style: Default.headingSmall),
        //               const Gap(8),
        //               Text(l10n.reedem_our_reward_points_to_enjoy_great_discounts_and_offers, style: Secondary.body),
        //             ],
        //           ),
        //         ),
        //         Image.asset(gift, width: 75, height: 61),
        //       ],
        //     ),
        //   ),
        // ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, AppRoutes.wallet),
          child: Container(
            margin: const EdgeInsets.only(bottom: 24),
            decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.all(horizontalSpacing),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(l10n.add_money_to_bold_wallet, style: Default.headingSmall),
                      const Gap(8),
                      Text(l10n.complete_your_payment_faster_with_wallet, style: Secondary.body),
                    ],
                  ),
                ),
                Image.asset(wallet, width: 85),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 80,
          child: Row(
            spacing: p24,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, AppRoutes.promotion),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(8)),
                    //     padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 6),
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[const Icon(Icons.privacy_tip, color: Colorx.primary), Text(l10n.promos, style: Default.title)],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, AppRoutes.safetySplash),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(8)),
                    //   padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 6),
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[const Icon(Icons.verified_user, color: Colorx.primary), Text(l10n.safety, style: Default.title)],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: openIntercom, // Navigator.pushNamed(context, '/support'),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(8)),
                    //   padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 6),
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[const Icon(Icons.support_agent_outlined, color: Colorx.primary), Text(l10n.support, style: Default.title)],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Gap(36),
        Text(l10n.account_services, style: Default.heading),
        const Gap(8), FormRow(title: l10n.legal, icon: Icons.lock_outlined, onTap: () => Navigator.pushNamed(context, AppRoutes.legal)),

        FormRow(title: l10n.report_issue, icon: Icons.report_outlined, onTap: () => Navigator.pushNamed(context, AppRoutes.report)),

        // FormRow(title: l10n.privacy, icon: Icons.lock_outlined, onTap: () => Navigator.pushNamed(context, AppRoutes.privicyPolicy)),
        FormRow(title: l10n.saved_location, icon: Icons.favorite_border_outlined, onTap: () => Navigator.pushNamed(context, AppRoutes.savedLocation)),
        //  FormRow(title: l10n.help, icon: Icons.help_outline_outlined, onTap: () => Navigator.pushNamed(context, AppRoutes.help)),
        const Gap(p24),
        Text(l10n.offers, style: Default.heading),
        const Gap(8),
        FormRow(title: l10n.invite_a_friend, image: refreal, onTap: () => Navigator.pushNamed(context, AppRoutes.inviteAFriendView)),
        FormRow(title: l10n.vouchers, image: voucher, onTap: () => Navigator.pushNamed(context, AppRoutes.voucher)),

        InkWell(
          onTap: openStoreLink,
          splashColor: const Color.fromARGB(61, 178, 247, 244),
          //      splashColor: Color.fromARGB(65, 24, 196, 185),
          borderRadius: BorderRadius.circular(20),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: p12),
            padding: const EdgeInsets.all(p12),
            decoration: const ShapeDecoration(
              color: Color(0x1618C4B8),
              shape: RoundedSuperellipseBorder(borderRadius: BorderRadiusGeometry.all(Radius.circular(20))),
            ),

            child: Row(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.directions_car, color: Colorx.primary, size: 32),
                IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(l10n.become_a_driver, style: Cyan.heading), const Divider(thickness: 2, height: 0.5, color: Colorx.primary)],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Gap(24),
      ],
    ),
  );
}

class UserDetail extends StatefulWidget {
  const UserDetail({super.key});

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  @override
  Widget build(BuildContext context) => Row(
    spacing: padding,
    children: <Widget>[
      SizedBox(
        width: 72,

        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: padding),
              child: InkWell(
                onTap: () async {
                  await Navigator.pushNamed(context, AppRoutes.profile);

                  // Check if the widget is still in the tree before calling setState
                  if (mounted) {
                    setState(() {
                      // The UI will be rebuilt here
                    });
                  }
                },
                child: CircleAvatar(
                  key: ValueKey(guser?.profilePic ?? ''),
                  radius: 36,
                  backgroundImage: guser?.profilePic == null ? null : CachedNetworkImageProvider(guser!.profilePic!),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 4, right: 8, top: 4, bottom: 4),
              //      margin: const EdgeInsets.only(top: 4),
              decoration: BoxDecoration(color: const Color.fromRGBO(240, 239, 239, 1), borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  const Icon(Icons.star_rounded, color: Color.fromRGBO(255, 2022, 40, 1)),
                  Text((guser?.rating ?? 0).toStringAsFixed(1), style: Bold.title),
                ],
              ),
            ),

            // Positioned(
            //   right: -4,
            //   bottom: 0,
            //   child: IconButton.filled(
            //     onPressed: () async {
            //       await Navigator.pushNamed(context, AppRoutes.profile);

            //       Future.delayed(Durations.short2, () => setState(() {}));
            //     },
            //     icon: const Icon(Icons.edit),
            //     iconSize: 16,
            //     visualDensity: VisualDensity.compact,
            //     style: const ButtonStyle(
            //       backgroundColor: WidgetStatePropertyAll(Color(0xFF18C4B8)),
            //       side: WidgetStatePropertyAll(BorderSide(color: Colors.white)),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 6,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              //    '${(guser?.firstName).capitalizeFirst()} ${(guser?.lastName?.isNotEmpty ?? false) ? '${guser!.lastName![0].toUpperCase()}.' : ''}'
              (guser?.fullName ?? "").trim(),
              style: Bold.headingBig,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            //    Text(guser?.phone ?? '', style: Secondary.heading),
          ],
        ),
      ),
    ],
  );
}

Future<void> openStoreLink() async {
  const String appStoreLink = "https://apps.apple.com/us/app/uprides-driver/id6633440648";
  const String playStoreLink = "https://play.google.com/store/apps/details?id=com.app.bold_driver";
  final String url = Platform.isIOS ? appStoreLink : playStoreLink;
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }
}
