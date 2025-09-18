import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/constants.dart';
import '../../../core/extensions/date.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/dotted_line.dart';
import '../../../util/colors.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../model/iride.dart';

class InterCard extends StatelessWidget {
  const InterCard({required this.ride, super.key});
  final IRide ride;

  @override
  Widget build(final BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding / 2),
      child: InkWell(
        radius: 24,
        borderRadius: BorderRadius.circular(18),
        onTap: () => Navigator.pushNamed(context, AppRoutes.intercityDetail, arguments: ride.id),
        child: Card(
          color: Colors.white,
          shadowColor: Colors.black26,
          margin: const EdgeInsets.symmetric(horizontal: padding / 2, vertical: 8),
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xFF18C4B8)),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 17, 14, 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(ride.pickupat!.toTime(), style: Primary.title),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 21),
                            child: Text(formatDuration(Duration(seconds: ride.expectedDuration!)),
                                style: Secondary.bodySmallBold,),
                          ),
                          Text(ride.pickupat!.add(Duration(seconds: ride.expectedDuration!)).toTime(),
                              style: Primary.title,),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                width: 12,
                                height: 12,
                                margin: const EdgeInsets.only(bottom: 5, top: 4),
                                decoration: const BoxDecoration(shape: BoxShape.circle, color: Colorx.primary),
                              ),
                              CustomPaint(
                                size: const Size(4, 50),
                                painter: DottedVerticalLinePainter(
                                    color: Colors.black, dashWidth: 6.5, thickness: 1.4,),
                              ),
                              Container(
                                width: 12,
                                height: 12,
                                margin: const EdgeInsets.only(top: 5, bottom: padding),
                                decoration: const BoxDecoration(shape: BoxShape.circle, color: Colorx.primary),
                              ),
                            ],
                          ),
                          const Gap(8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(ride.pickupCity?.name ?? '', style: Primary.title),
                              const Gap(4),
                              Row(
                                  children: List.generate(
                                      (ride.totalSeats ?? 0).clamp(0, 5),
                                      (final int i) => Padding(
                                            padding: const EdgeInsets.only(left: spacing / 2),
                                            child: i < (ride.totalPassengers ?? 0)
                                                ? const CircleAvatar(
                                                    radius: 8,
                                                    backgroundColor: Colorx.primary,
                                                    child: Icon(
                                                      Icons.boy_outlined,
                                                      size: 12,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                : const CircleAvatar(
                                                    radius: 8,
                                                    backgroundColor: Color(0xFFEEEEEE),
                                                    child: Icon(
                                                      Icons.boy_outlined,
                                                      color: darkgrey,
                                                      size: 12,
                                                    ),
                                                  ),
                                          ),),),
                              const Gap(30),
                              Text(ride.dropoffCity?.name ?? '', style: Primary.title),
                              const Gap(4),
                              Row(
                                  children: List.generate(
                                      (ride.totalSeats ?? 0).clamp(0, 5),
                                      (final int i) => Padding(
                                            padding: const EdgeInsets.only(left: spacing / 2),
                                            child: i < (ride.totalPassengers ?? 0)
                                                ? const CircleAvatar(
                                                    radius: 8,
                                                    backgroundColor: Colorx.primary,
                                                    child: Icon(
                                                      Icons.boy_outlined,
                                                      size: 12,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                : const CircleAvatar(
                                                    radius: 8,
                                                    backgroundColor: Color(0xFFEEEEEE),
                                                    child: Icon(
                                                      Icons.boy_outlined,
                                                      color: darkgrey,
                                                      size: 12,
                                                    ),
                                                  ),
                                          ),),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        margin: const EdgeInsets.only(top: 12),
                        child: Text('\$ ${ride.chargePerSeat}', style: Bold.heading),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 0,
                color: Color(0xFFEEEEEE),
                thickness: 1.4,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 16, 2),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset(carIcon),
                    const Gap(8),
                    Text(ride.vehicleType?.name ?? ' ', textAlign: TextAlign.center, style: Primary.bodySmall),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'View details',
                          style: TextStyle(
                            color: Color(0xFF18C4B8),
                            fontSize: 11,
                            fontFamily: 'Open',
                            fontWeight: FontWeight.w600,
                          ),
                        ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
}
