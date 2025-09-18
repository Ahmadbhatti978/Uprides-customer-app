import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import '../../../core/constants/constants.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/align/title_subtitle.dart';
import '../../../util/colors.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../booking/model/ride_type_images.dart';
import '../model/activity.dart';
import '../provider/get_activity_provider.dart';
import '../provider/rebook.dart';

class Tile extends StatelessWidget {
  const Tile({required this.rides, required this.car, required this.type, super.key});
  final Result rides;
  final RideType car;
  final RideStatusType type;

  @override
  Widget build(final BuildContext context) => ListTile(
    contentPadding: const EdgeInsets.fromLTRB(p12, 8, 8, 10),
    onTap: () => Navigator.pushNamed(context, AppRoutes.tripDetail, arguments: MapEntry(rides, car)),
    // leadingSize: 48,
    leading: CircleAvatar(
      radius: 24,
      backgroundColor: grey,
      child: Padding(padding: const EdgeInsets.all(8), child: car.rideImage == null ? null : SvgPicture.network(car.rideImage ?? '')),
    ),
    title: Text(rides.rideRequest?.dropoffAddress ?? '', style: Primary.title),
    horizontalTitleGap: 16,
    visualDensity: VisualDensity.compact,
    //   dense: true,
    subtitle: TitleSubtitle(
      lowersizeSubtitle: true,
      title: car.name ?? '',
      subTitle:
          (rides.acceptedAt ?? rides.createdAt) == null
              ? 'time Empty'
              : DateFormat('dd MMMM, yyyy, hh:mm a').format((rides.scheduledAt ?? rides.createdAt ?? rides.acceptedAt)!.toLocal()),
    ),
    trailing: Consumer(
      builder:
          (context, ref, child) =>
              type == RideStatusType.UPCOMMING
                  ? const SizedBox.shrink()
                  // TODO: Add a message button here to notify users they can't ed
                  //   TextButton.icon(
                  //   onPressed: () {
                  //     showSnackBar("Sorry, you can't Edit rides ");
                  //   },
                  //   icon: const Icon(Icons.refresh, size: 20),
                  //   label: Text(
                  //     l10n.edit,
                  //     style: const TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 14,
                  //       fontFamily: 'Open',
                  //       fontWeight: FontWeight.w600,
                  //       decoration: TextDecoration.underline,
                  //     ),
                  //   ),
                  // )
                  : TextButton.icon(
                    onPressed: () {
                      if (rides.rideRequest != null) rebook(ref, ride: rides.rideRequest!);
                    },
                    style: ButtonStyle(maximumSize: WidgetStatePropertyAll(Size(mediaQuery.size.width * 0.35, 350))),
                    icon: const Icon(Icons.refresh, size: 20),
                    label: Text(
                      l10n.rebook,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Open',
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
    ),
  );
}
