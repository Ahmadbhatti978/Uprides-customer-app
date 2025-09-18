import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/global_loading_provider.dart';
import '../../../../core/widgets/buttons/grey.dart';
import '../../../../core/widgets/loading_error/error.dart';
import '../../../../core/widgets/loading_error/loading.dart' as load;
import '../../../../util/aimations/simple_ripple_animation.dart';
import '../../../../util/image_assets.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';
import '../../../../util/widget/widgets.dart';
import '../../booking_repo.dart/booking_repo.dart';
import '../provider/cancel_ride.dart';
import '../provider/ride_data.dart';
import 'animation.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(final BuildContext context) {
    final String? id = (ModalRoute.settingsOf(context)?.arguments as String?) ?? rideId;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: horizontalSpacing),
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          buildHandle,
          Align(alignment: Alignment.topLeft, child: Text(l10n.searching_nearby_rides, textAlign: TextAlign.left, style: Default.headingSmall)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: RippleAnimation(
              color: const Color.fromRGBO(66, 207, 198, 1),
              repeat: true,
              minRadius: 40,
              ripplesCount: 3,
              duration: const Duration(milliseconds: 6000),
              child: RotationTransition(turns: const AlwaysStoppedAnimation<double>(245 / 360), child: Image.asset(topcar, height: 80)),
            ),
          ),

          const TweenLoading(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Consumer(
              builder:
                  (context, ref, child) => ref
                      .watch(rideDataProvider((id)!))
                      .when(
                        loading: () => const load.Loading(isBack: false),
                        error: (error, stackTrace) => Err(error: error as ErrorDetails),
                        data:
                            (data) => ListTile(
                              leading: Container(height: 20, width: 20, decoration: BoxDecoration(border: Border.all(width: 6.2), color: Colors.transparent)),
                              title: Text(data.data!.ride!.rideRequest?.dropoffAddress ?? "", maxLines: 1, style: Primary.title),
                              subtitle: Text("Trip ID: ${data.data!.ride!.nanoId}", maxLines: 1, style: Secondary.titleLarge),

                              //   subtitle: const Text('', maxLines: 1, style: Secondary.titleLarge),
                            ),
                      ),
            ),
          ),

          Consumer(
            builder:
                (final BuildContext context, final WidgetRef ref, final Widget? child) => GreyButton(
                  isLoading: ref.watch(gloading),
                  onPressed: () {
                    if (id != null) {
                      ref.read(gloading.notifier).state = true;
                      ref.read(cancelRideProvider(id, RideCancelReasonType.I_CHANGED_MY_MIND.name).future).whenComplete(() {
                        ref.read(gloading.notifier).state = false;
                        // ignore: use_build_context_synchronously
                        if (Navigator.canPop(context)) Navigator.pop(context);
                      });
                    }
                  },
                  text: l10n.cancel_request,
                ),
          ),
          const Gap(p24),
        ],
      ),
    );
  }
}
