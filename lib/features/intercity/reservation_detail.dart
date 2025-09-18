import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../core/constants/constants.dart';
import '../../core/extensions/date.dart';
import '../../core/failure/failure.dart';
import '../../core/widgets/align/title_subtitle.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/dotted_line.dart';
import '../../core/widgets/loading_error/error.dart';
import '../../core/widgets/loading_error/loading.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import 'model/reservation_detail.dart' as r;
import 'provider/reservation_detail.dart';

class ReservationDetail extends ConsumerWidget {
  const ReservationDetail({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final String rideID = ModalRoute.of(context)!.settings.arguments! as String;
    return ref
        .watch(GetResevationDetailProvider(rideID))
        .when(
          data:
              (final r.ReservationDetail data) => Scaffold(
                appBar: const NameBackBar(title: 'Reservation details'),
                body: Card(
                  clipBehavior: Clip.hardEdge,
                  borderOnForeground: false,
                  color: Colors.white,
                  elevation: 12,
                  shadowColor: const Color.fromARGB(190, 142, 210, 206),
                  margin: const EdgeInsets.fromLTRB(padding, 40, padding, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(padding, 24, padding, 39),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                TitleSubtitle(
                                  title: "${data.details?.ride?.pickupCity?.name ?? ""}  -  ${data.details?.ride?.dropoffCity?.name ?? ""}",
                                  subTitle: data.details!.ride!.pickupat!.toALl(),
                                  heading: true,
                                ),
                                IconButton(onPressed: () {}, icon: const Icon(Icons.share), color: const Color(0xFF18C4B8)),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: padding, bottom: 24),
                              child: CustomPaint(
                                size: const Size.fromHeight(4),
                                painter: DottedLinePainter(color: const Color(0xFFEEEEEE), dashWidth: 8, gapWidth: 7, thickness: 1.4),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                TitleSubtitle(
                                  title: guser!.fullName! + ((data.details?.plusPassnegers ?? 0) == 0 ? '' : '  +${data.details?.plusPassnegers}'),
                                  subTitle: 'Passenger',
                                  heading: true,
                                  reverse: true,
                                ),
                                const TitleSubtitle(
                                  title: '02',
                                  subTitle: 'Seat number',
                                  heading: true,
                                  reverse: true,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: padding * 2),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  TitleSubtitle(title: data.details!.ticketId!, subTitle: 'Ticket ID', heading: true, reverse: true),
                                  TitleSubtitle(
                                    title: data.details!.ride!.vehicleType!.id!.substring(8),
                                    subTitle: 'Car number',
                                    heading: true,
                                    reverse: true,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                TitleSubtitle(
                                  title: data.details!.ride!.pickupat!.toTime(),
                                  subTitle: 'Pick up at',
                                  // heading: true,
                                  reverse: true,
                                ),
                                TitleSubtitle(
                                  title: data.details!.ride!.pickupat!.add(Duration(minutes: data.details!.ride!.expectedDuration ?? 0)).toTime(),
                                  subTitle: 'Drop off by',
                                  reverse: true,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: padding, bottom: 24),
                              child: CustomPaint(
                                size: const Size.fromHeight(4),
                                painter: DottedLinePainter(color: const Color(0xFFEEEEEE), dashWidth: 8, gapWidth: 7, thickness: 1.4),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[Text(l10n.payment, style: Primary.heading), Text(l10n.success, style: Cyan.heading)],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.zero,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        decoration: const BoxDecoration(
                          color: grey,
                          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
                          border: Border(bottom: BorderSide(color: Color(0xFF18C4B8), width: 2)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              l10n.scan_me,
                              //     style: GoogleFonts.reenieBeanie(fontSize: 32)
                            ),
                            Padding(padding: const EdgeInsets.symmetric(horizontal: padding), child: SvgPicture.asset(arrowSwirl, width: 50)),
                            SizedBox.square(
                              dimension: 64,
                              child: QrImageView(
                                eyeStyle: const QrEyeStyle(color: Colors.black87, eyeShape: QrEyeShape.square),
                                data: <String, String?>{'ride_id': data.details!.ride!.id, 'user_id': guser!.id}.toString(),
                                size: 64,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          error: (final Object error, final StackTrace stackTrace) => Err(error: error as ErrorDetails, stackTrace: stackTrace),
          loading: () => const Loading(),
        );
  }
}
