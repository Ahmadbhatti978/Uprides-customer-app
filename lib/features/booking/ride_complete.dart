import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/constants/constants.dart';
import '../../core/router/route.dart';
import '../../core/widgets/align/title_subtitle.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../core/widgets/loading_error/error.dart';
import '../../core/widgets/loading_error/loading.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../activity/provider/get_invoice.dart';
import '../home/model/ride_data.dart';
import 'book_ride/provider/ride_data.dart';

class RideCompletionDialog extends StatelessWidget {
  const RideCompletionDialog({required this.id, super.key});
  final String id;

  @override
  Widget build(final BuildContext context) => Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: contentBox(context),
  );

  Widget contentBox(final BuildContext context) => Container(
    padding: const EdgeInsets.fromLTRB(p24, 26, p24, 33),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: const <BoxShadow>[BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 10))],
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      spacing: padding,
      children: <Widget>[
        // SVG Image
        SvgPicture.asset(suceessRightCheckMark, semanticsLabel: 'Success Check Mark', height: 60, width: 60),

        // Bold Text
        const TitleSubtitle(
          spacing: p12,
          heading: true,

          crossAxisAlignment: CrossAxisAlignment.center,
          title: "You've completed your ride!",
          subTitle: 'Your ride is over. Review your e-bill below. You can download the receipt from the activity section in the app',
        ),
        Consumer(
          builder: (context, ref, child) {
            final AsyncValue<RideData> x = ref.read(RideDataProvider(id));
            return ref
                .watch(GetInvoiceProvider(id, seen: true))
                .when(
                  data: (data) => Text('€ ${data.data?.total ?? x.valueOrNull?.data?.ride?.capturedAmount}', style: Default.displayVeryLarge),
                  error: (Object error, StackTrace stackTrace) => Err(error: error, showFull: false),
                  loading: () => loading,
                );
          },
        ),
        // Rate Us Button
        BlackButton(onPressed: () => Navigator.popAndPushNamed(context, AppRoutes.reveiwRating), text: 'Rate Us'),
      ],
    ),
  );
}
