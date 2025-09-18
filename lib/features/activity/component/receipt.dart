import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/constants.dart';
import '../../../core/widgets/align/icon_text.dart';
import '../../../core/widgets/align/pickup_drop_location.dart';
import '../../../core/widgets/align/title_subtitle.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../core/widgets/loading_error/error.dart';
import '../../../core/widgets/loading_error/loading.dart';
import '../../../util/colors.dart';
import '../../../util/ride_type_svg.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';
import '../../booking/addlocation/model/place.dart';
import '../model/invoice.dart';
import '../provider/get_invoice.dart';

class Receipt extends ConsumerWidget {
  const Receipt({super.key});

  @override
  Widget build(final BuildContext context, WidgetRef ref) {
    final String data = ModalRoute.of(context)!.settings.arguments! as String;

    return Scaffold(
      appBar: NameBackBar(title: l10n.receipt),
      body: ref.watch(GetInvoiceProvider(data)).when(
            error: (error, stackTrace) => Err(error: error),
            loading: () => const Loading(isBack: false),
            data: (Invoice ride) {
              final Vehicle? vehical = ride.data?.vehicleDetails?.vehicle;

              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: padding),
                children: <Widget>[
                  Text(l10n.invoice, style: Default.heading),
                  const Gap(padding * 2),
                  Row(
                    spacing: padding,
                    children: <Widget>[
                      if (vehical?.rideTypeCategory?.typeId != null)
                        CircleAvatar(radius: 24, backgroundColor: grey, child: RideTypeSvg(vehical?.rideTypeCategory?.typeId)),
                      TitleSubtitle(title: ride.data?.driverName ?? '', subTitle: "${vehical?.brandName ?? ''}.${vehical?.vehicleModel ?? ''}"),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: <Widget>[
                      //     Text(ride.data?.driverName ?? '', style: Primary.title),
                      //     Text("${vehical?.brandName ?? ''}.${vehical?.vehicleModel ?? ''}", style: Primary.titleSmall),
                      //   ],
                      // ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.bottomRight,
                        color: grey,
                        padding: const EdgeInsets.only(top: 2, left: 12, right: 12, bottom: 3),
                        child: Text(vehical?.rideTypeCategory?.type ?? '', style: Secondary.title),
                      ),
                    ],
                  ),
                  const Gap(48),
                  Locations(places: [Place(mainText: ride.data?.pickupAddress ?? ""), Place(mainText: ride.data?.dropoffAddress ?? "")], showDivider: false),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: padding * 2),
                    decoration: BoxDecoration(border: Border.all(color: const Color(0xFFEEEEEE))),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(l10n.base_fair, style: Primary.titleSmall),
                              IconText(text: ride.data?.fare?.toString() ?? "", icon: Icons.euro_outlined, size: 16),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(l10n.vat_amount, style: Primary.titleSmall),
                              IconText(icon: Icons.euro_outlined, size: 16, text: (ride.data!.vat ?? 0).toStringAsFixed(2)),
                            ],
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(vertical: 6),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: <Widget>[Text(l10n.promotion, style: Primary.titleSmall), const Text('-00', style: Primary.titleSmall)],
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(l10n.total_amount, style: Primary.titleSmall),
                              IconText(icon: Icons.euro_outlined, size: 16, text: ride.data?.total?.toString() ?? ""),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(l10n.amount_paid, style: Bold.headingSmall),
                      IconText(text: (ride.data?.amountPaid ?? 0).toStringAsFixed(2), icon: Icons.euro, isBold: true, size: 24, textSize: 24),
                      //Text(((ride.data?.amountPaid ?? 0) / 100).toStringAsFixed(2), style: Bold.headingSmall),
                    ],
                  ),
                  const Gap(padding),
                  // Row(
                  //   children: <Widget>[
                  //     SvgPicture.asset(logo, alignment: Alignment.topLeft, height: 22),
                  //     Container(
                  //       margin: const EdgeInsets.only(left: 16),
                  //       height: 22,
                  //       alignment: Alignment.center,
                  //       child: Text(l10n.bold_pay, style: Bold.titleBig),
                  //     ),
                  //   ],
                  // ),
                  const Gap(48),
                  // if (data.$2 ?? false)
                  //   BlackButton(
                  //     onPressed: () {
                  //       Navigator.popAndPushNamed(context, AppRoutes.reveiwRating);
                  //     },
                  //     text: 'Rate Us',
                  //   )
                  // else
                  BlackButton(text: l10n.download_invoice, onPressed: () {}),
                ],
              );
            },
          ),
    );
  }
}
