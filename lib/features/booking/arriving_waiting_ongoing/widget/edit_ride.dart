import 'package:flutter/material.dart';

import '../../../../util/style/typo.dart';
import '../../../home/model/ride_data.dart';

class EditRide extends StatelessWidget {
  const EditRide({required this.ride, super.key});
  final RideData? ride;

  @override
  Widget build(BuildContext context) => ListTile(
    leading: Container(height: 20, width: 20, decoration: BoxDecoration(border: Border.all(width: 6.2), color: Colors.transparent)),
    title: Text(ride?.data?.ride?.rideRequest?.dropoffAddress ?? "", maxLines: 1, style: Primary.title),
    //    subtitle: const Text('', maxLines: 1, style: Secondary.titleLarge),
    //   trailing: cyanTextButton(() {},  l10n.edit_ride),
  );
}
