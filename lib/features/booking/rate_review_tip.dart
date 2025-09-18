import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../core/constants/constants.dart';
import '../../core/failure/failure.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../core/widgets/loading_error/error.dart';
import '../../core/widgets/loading_error/loading.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../activity/provider/get_invoice.dart';
import 'book_ride/provider/ride_data.dart';
import 'book_ride/socket/ride_socket.dart';
import 'booking_repo.dart/booking_repo.dart';

final tipProvider = AutoDisposeStateProvider<double>((ref) => 0);
final rateProvider = AutoDisposeStateProvider<int>((ref) => 0);
// Separate providers for positive and negative feedback
final selectedPositiveFeedbackProvider = AutoDisposeStateProvider<List<String>>((ref) => []);
final selectedNegativeFeedbackProvider = AutoDisposeStateProvider<List<String>>((ref) => []);
final moreProvider = AutoDisposeStateProvider<bool>((ref) => false);

List<String> negativeFeedback = [
  l10n.talkingOnPhone,
  l10n.unsafeRide,
  l10n.smoking,
  l10n.ridingVeryFast,
  l10n.missedTurn,
  l10n.unhygienic,
  l10n.badAttitude,
  l10n.poorCommunication,
  l10n.noAc,
  l10n.phoneUsage,
  l10n.unsafeLane,
  l10n.noSeatbelt,
  l10n.other,
];

List<String> poativeFeedback = [
  l10n.veryProfessional,
  l10n.cleanCar,
  l10n.safeDriving,
  l10n.greatService,
  l10n.highlyPunctual,
  l10n.politeBehavior,
  l10n.wellMannered,
  l10n.other,
];

class RateReviewTip extends ConsumerStatefulWidget {
  const RateReviewTip({this.id, super.key});
  final String? id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RateReviewTipState();
}

class _RateReviewTipState extends ConsumerState<RateReviewTip> {
  @override
  Widget build(final BuildContext context) {
    //  ref.watch(rateProvider.notifier).state = 0;
    //final double x = ref.watch(tipProvider);
    final int rate = ref.watch(rateProvider);
    final String? id = ModalRoute.settingsOf(context)?.arguments as String?;
    final List<String> feedBack = rate >= 5 ? poativeFeedback : negativeFeedback;

    // Use appropriate provider based on rating
    final List<String> selected = rate >= 5 ? ref.watch(selectedPositiveFeedbackProvider) : ref.watch(selectedNegativeFeedbackProvider);

    final bool more = ref.watch(moreProvider);

    // Assuming l10n is accessible here, likely imported from your generated localization file

    return ref
        .watch(RideDataProvider(id ?? rideId!))
        .when(
          data:
              (data) => SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: p12, vertical: padding * 2),
                child: Column(
                  spacing: p12,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(radius: 46, backgroundImage: CachedNetworkImageProvider(data.data?.driverInfo?.profilePic ?? "")),
                    Text(l10n.rateYourTrip),
                    RatingBar.builder(
                      updateOnDrag: true,
                      initialRating: rate.toDouble(),
                      minRating: 1,
                      itemSize: 48,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                      itemBuilder:
                          (final BuildContext context, final int q) =>
                              Icon(q < rate ? Icons.star_rounded : Icons.star_border_rounded, color: Colors.amber, size: 20),
                      onRatingUpdate: (final double rating) {
                        ref.read(rateProvider.notifier).state = rating.toInt();
                        // Clear selections when rating changes between positive/negative
                        ref.read(selectedPositiveFeedbackProvider.notifier).state = [];
                        ref.read(selectedNegativeFeedbackProvider.notifier).state = [];
                        ref.read(moreProvider.notifier).state = false;
                      },
                    ),
                    const Gap(p12),
                    Visibility(
                      visible: rate != 0,
                      child: Column(
                        spacing: p12,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (rate < 5)
                            Column(
                              spacing: 4,
                              children: [Text(l10n.selectOneOrMoreIssues, style: Secondary.titleSmall), Text(l10n.selectUpTo5Issues, style: Cyan.title)],
                            )
                          else
                            Text(rate < 5 ? l10n.selectOneOrMoreIssues : l10n.selectOneOrMoreCompliments, style: Secondary.titleSmall),
                          Wrap(
                            alignment: WrapAlignment.center,
                            runSpacing: 9,
                            spacing: 12,
                            children: List.generate(feedBack.length.clamp(0, more ? 100 : 8), (final int index) {
                              final bool contains = selected.contains(feedBack[index]);

                              return OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: contains ? Colors.black : Colors.white,
                                  foregroundColor: contains ? Colors.white : Colors.black,
                                  side: const BorderSide(),
                                  visualDensity: VisualDensity.compact,
                                  padding: const EdgeInsets.symmetric(horizontal: p12),
                                ),
                                onPressed: () {
                                  // Get the appropriate provider based on rating
                                  final AutoDisposeStateProvider<List<String>> provider =
                                      rate >= 5 ? selectedPositiveFeedbackProvider : selectedNegativeFeedbackProvider;

                                  final List<String> currentSelected = ref.read(provider.notifier).state;

                                  if (contains) {
                                    // Remove item if already selected
                                    ref.read(provider.notifier).state = currentSelected.where((element) => element != feedBack[index]).toList();
                                  } else {
                                    // Add item only if less than 5 are selected
                                    if (currentSelected.length < 5) {
                                      ref.read(provider.notifier).state = [...currentSelected, feedBack[index]];
                                    }
                                  }
                                },
                                child: Text(feedBack[index], style: const TextStyle(fontSize: 14)),
                              );
                            }, growable: false),
                          ),

                          Visibility(
                            visible: !more,
                            child: TextButton(
                              onPressed: () => ref.read(moreProvider.notifier).state = true,
                              child: Text(rate < 5 ? l10n.moreIssues : l10n.moreCompliments, style: Cyan.body),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      spacing: 3,
                      children: [
                        //   Text(l10n.addTipTo(data.data?.driverInfo?.fullName ?? ""), style: Default.headingSmall),
                        ref
                            .watch(GetInvoiceProvider(id ?? rideId!, seen: true))
                            .when(
                              data: (data) => Text(l10n.yourTripWas(data.data?.total ?? data.data?.amountPaid ?? 0.00), style: Secondary.titleBig),
                              error: (Object error, StackTrace stackTrace) => Err(error: error, showFull: false),
                              loading: () => loading,
                            ),
                      ],
                    ),

                    //TODO: Implement tip selection logic
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children:
                    //       tips
                    //           .map(
                    //             (final int tip) => InkWell(
                    //               radius: 80,
                    //               borderRadius: BorderRadius.circular(8),
                    //               onTap: () => ref.read(tipProvider.notifier).state = tip.toDouble(),
                    //               child: Container(
                    //                 width: 40,
                    //                 height: 40,
                    //                 alignment: Alignment.center,
                    //                 margin: const EdgeInsets.all(8),
                    //                 decoration: BoxDecoration(color: x == tip.toDouble() ? primary : grey, borderRadius: BorderRadius.circular(8)),
                    //                 child: Text('\$$tip', textAlign: TextAlign.center, style: x == tip.toDouble() ? White.titleSmall : Default.titleSmall),
                    //               ),
                    //             ),
                    //           )
                    //           .toList(),
                    // ),
                    const Gap(padding * 2),
                    Consumer(
                      builder:
                          (final BuildContext context, final WidgetRef ref, final Widget? child) => BlackButton(
                            text: l10n.submit,
                            onPressed:
                                rate == 0
                                    ? null
                                    : () {
                                      final List<String> selectedFeedback =
                                          rate >= 5 ? ref.read(selectedPositiveFeedbackProvider) : ref.read(selectedNegativeFeedbackProvider);
                                      final String comment = selectedFeedback.join(', ');
                                      ref.read(bookingRepoProvider).addRatingComment(rideID: rideId, rating: rate, comment: comment);
                                      if (ref.exists(ridSocketProvider(rideId!))) {
                                        ref.invalidate(ridSocketProvider(rideId!));
                                        rideRequest = null;
                                        rideId = null;
                                      }

                                      while (Navigator.canPop(context)) {
                                        Navigator.pop(context);
                                      }
                                    },
                          ),
                    ),
                  ],
                ),
              ),
          error: (Object error, StackTrace stackTrace) => Err(error: error as ErrorDetails),
          loading: () => const Loading(),
        );
  }
}
