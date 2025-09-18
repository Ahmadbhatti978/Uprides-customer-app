import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/router/route.dart';
import '../../../../core/widgets/align/icon_text.dart';
import '../../../../util/style/typo.dart';
import '../../../home/model/ride_data.dart';

class DriverDetailAndContact extends StatelessWidget {
  const DriverDetailAndContact({required this.ride, super.key});

  final RideData? ride;

  @override
  Widget build(BuildContext context) => Row(
    spacing: padding,
    children: <Widget>[
      CircleAvatar(
        radius: 26,
        backgroundColor: const Color.fromARGB(26, 158, 145, 145),
        backgroundImage: ride?.data?.driverInfo?.profilePic != null ? CachedNetworkImageProvider(ride!.data!.driverInfo!.profilePic!) : null,
      ),
      Column(
        spacing: p12 / 2,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(ride?.data?.driverInfo?.fullName ?? ' ', style: Default.titleLarge),

          Visibility(
            visible: ride?.data?.driverInfo?.ratings != null && ride!.data!.driverInfo!.ratings! > 0,
            child: IconText(text: (ride?.data?.driverInfo?.ratings ?? 1).toString(), size: 20, iconColor: Colors.amberAccent, icon: Icons.star_rounded),
          ),
          //    Text(ride?.data?.payload?.vehicle?.name ?? ' ', style: Default.title),
        ],
      ),
      const Spacer(),

      // IconButton.filled(
      //   style: IconButton.styleFrom(backgroundColor: const Color(0xFFE1E1E1)),
      //   onPressed: () => Navigator.pushNamed(context, AppRoutes.reveiwRating, arguments: ride),
      //   icon: const Icon(Icons.phone, color: Color(0xFF111111)),
      // ),
      IconButton(
        style: IconButton.styleFrom(backgroundColor: const Color(0xFFE1E1E1)),
        onPressed: () => Navigator.pushNamed(context, AppRoutes.chat, arguments: ride),
        icon: const Icon(Icons.sms_outlined),
      ),
    ],
  );
}
