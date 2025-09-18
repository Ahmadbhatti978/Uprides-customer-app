import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/router/route.dart';
import '../../../../util/image_assets.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(final BuildContext context) => SliverToBoxAdapter(
    child: SizedBox(
      height: 104,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: <Widget>[
          GestureDetector(onTap: () => Navigator.pushNamed(context, AppRoutes.inviteAFriendView), child: Image.asset(homeReward)),
          const Gap(padding * 2),
          GestureDetector(onTap: () => Navigator.pushNamed(context, AppRoutes.promotion), child: Image.asset(homeReward2)),
        ],
      ),
    ),
  );
}
// class Bottom extends StatelessWidget {
//   const Bottom({super.key});

//   @override
//   Widget build(final BuildContext context) => SliverToBoxAdapter(
//     child: SizedBox(
//       height: 104,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         children: <Widget>[
//           Card.filled(
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             margin: const EdgeInsets.only(right: 16),
//             color: const Color(0xFFE8E5FE),
//             child: SizedBox(
//               width: 288,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.only(top: padding, bottom: 10),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(left: 8),
//                           child: Text(l10n.budget_friendlyn_rides, style: Primary.title, textAlign: TextAlign.left),
//                         ),
//                         TextButton.icon(
//                           onPressed: () {},
//                           iconAlignment: IconAlignment.end,
//                           label: Text(l10n.learn_more, style: Default.body),
//                           icon: SvgPicture.asset(arrow, height: 10, colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcATop)),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Image.asset(package),
//                 ],
//               ),
//             ),
//           ),
//           Card.filled(
//             margin: const EdgeInsets.only(right: 6),
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             color: const Color(0xFFFAFEE5),
//             child: SizedBox(
//               width: 288,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.only(top: padding, bottom: 6),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Text(l10n.budget_friendlyn_rides, style: Primary.title),
//                         TextButton.icon(
//                           onPressed: () {},
//                           iconAlignment: IconAlignment.end,
//                           label: Text(l10n.learn_more, style: Default.body),
//                           icon: SvgPicture.asset(arrow, height: 10, colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcATop)),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Image.asset(package),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
