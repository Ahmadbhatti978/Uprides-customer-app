import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/custom_page_scroll_physics.dart';
import '../../../../../core/router/route.dart';
import '../../../../../util/colors.dart';
import '../../../../../util/image_assets.dart';
import '../../../../../util/style/typo.dart';
import '../../../../../util/variable.dart';
import '../../../../account/wallet/wallet.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  ScrollController scrollController = ScrollController();
  Timer? _timer;
  bool _userIsInteracting = false;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 8), (timer) {
      if (scrollController.hasClients && !_userIsInteracting) {
        final double maxScroll = scrollController.position.maxScrollExtent;
        final double currentScroll = scrollController.position.pixels;
        if (currentScroll < maxScroll * 0.9) {
          scrollController.animateTo(currentScroll + (mediaQuery.size.width - padding) / 1.2, duration: Durations.medium3, curve: Curves.linear);
        } else {
          scrollController.jumpTo(0);
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
    height: mediaQuery.size.width * 0.523,
    child: NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollStartNotification) {
          _userIsInteracting = true;
        } else if (notification is ScrollEndNotification) {
          _userIsInteracting = false;
        }
        return false;
      },
      child: ListView(
        physics: PagingScrollPhysics(itemDimension: (mediaQuery.size.width - 18) / 1.2),
        controller: scrollController,
        padding: const EdgeInsets.symmetric(horizontal: padding),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ServCard(image: wsoym1, title: l10n.refer_friends_credit_title, onTap: () => Navigator.pushNamed(context, AppRoutes.inviteAFriendView)),
          ServCard(image: wsoym2, title: l10n.send_link_get5_title, onTap: () => Navigator.pushNamed(context, AppRoutes.inviteAFriendView)),
          ServCard(image: wsoym3, title: l10n.refer_friends_earn100_title, onTap: () => Navigator.pushNamed(context, AppRoutes.inviteAFriendView)),
          ServCard(image: wsoym4, title: l10n.explore_cool_spots_title, onTap: () => Navigator.pushNamed(context, AppRoutes.trendingLocations)),
          Consumer(
            builder:
                (context, ref, child) => ServCard(
                  image: wsoym5,
                  title: l10n.generous_friend_title,
                  onTap: () {
                    ref.read(isRequestPaymentMethodDefault.notifier).state = true;
                    return Navigator.pushNamed(context, AppRoutes.addLocation);
                  },
                ),
          ),
          Consumer(
            builder:
                (context, ref, child) => ServCard(
                  image: wsoym6,
                  title: l10n.go_xl_more_seats_title,
                  onTap: () {
                    ref.read(isRequestPaymentMethodDefault.notifier).state = false;
                    Navigator.pushNamed(context, AppRoutes.addLocation);
                  },
                ),
          ),
          Consumer(
            builder:
                (context, ref, child) => ServCard(
                  image: wsoym7,
                  title: l10n.request_payment_no_cash_title,
                  onTap: () {
                    ref.read(isRequestPaymentMethodDefault.notifier).state = true;
                    return Navigator.pushNamed(context, AppRoutes.addLocation);
                  },
                ),
          ),

          // ServCard(
          //   button: 'Book XL',
          //   image: dropoff,
          //   title: 'Do you need more seats ?',
          //   subtitle: const {"XL ": true, "for group travels": false},
          //   onTap: () {},
          // ),
          // ServCard(
          //   button: 'Book Rentals',
          //   image: dropoff,
          //   title: 'Looking for a self drive?',
          //   subtitle: const {"Book any car and drive yourself.": false},
          //   onTap: () {},
          // ),
          // ServCard(
          //   button: 'Send package now',
          //   image: dropoff,
          //   title: 'Send packages',
          //   subtitle: const {"Send your package faster & safer on Uprides": false},
          //   onTap: () {},
          // ),
          // ServCard(
          //   button: 'Book your seat',
          //   image: dropoff,
          //   title: 'Want to travel far? ',
          //   subtitle: const {"Book your seat ": false, " BOLD Miles": true},
          //   onTap: () {},
          // ),
        ],
      ),
    ),
  );
}

class ServCard extends StatelessWidget {
  const ServCard({required this.image, required this.title, super.key, this.onTap});

  final String image;
  final Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    child: Container(
      clipBehavior: Clip.hardEdge,
      width: (mediaQuery.size.width - padding * 2) / 1.2,

      decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(right: padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(image, fit: BoxFit.cover, width: (mediaQuery.size.width - padding * 2) / 1.2, height: mediaQuery.size.width * .28),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(padding),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 6,
                children: [Expanded(child: Text(title, style: Default.title)), const Icon(Icons.arrow_forward_rounded, color: Colorx.primary)],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// class ServCard extends StatelessWidget {
//   const ServCard({required this.button, required this.image, required this.title, required this.subtitle, super.key, this.onTap});
//   final String button;
//   final String image;
//   final Function()? onTap;
//   final String title;
//   final Map<String, bool> subtitle;
//   @override
//   Widget build(BuildContext context) => Container(
//     clipBehavior: Clip.hardEdge,
//     width: (mediaQuery.size.width - padding * 2) / 1.2,

//     decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(8)),
//     margin: const EdgeInsets.only(right: padding),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Image.asset(image, fit: BoxFit.cover, width: (mediaQuery.size.width - padding * 2) / 1.2, height: mediaQuery.size.width * .28),

//         Padding(padding: const EdgeInsets.only(left: padding, top: padding / 2, right: 8), child: Text(title, style: Bold.titleLarge)),
//         Padding(
//           padding: const EdgeInsets.only(left: padding, top: 2, right: 2),
//           child: Text.rich(
//             maxLines: 1,
//             TextSpan(
//               children:
//                   subtitle.entries
//                       .map((entry) => TextSpan(text: entry.key, style: entry.value ? Secondary.titleLargeExtraBold : Secondary.titleLarge))
//                       .toList(),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 8, top: 10, bottom: 10),
//           child: TextButton.icon(
//             onPressed: onTap,
//             iconAlignment: IconAlignment.end,
//             label: Text(button, style: Primary.titleLarge),
//             icon: SvgPicture.asset(arrow, height: 10, colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcATop)),
//           ),
//         ),
//       ],
//     ),
//   );
// }
