import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/extensions/date.dart';
import '../../core/failure/failure.dart';
import '../../core/widgets/align/icon_text.dart';
import '../../core/widgets/align/title_subtitle.dart';
import '../../core/widgets/loading_error/error.dart';
import '../../core/widgets/loading_error/loading.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import 'component/card.dart';
import 'model/intercity_rides.dart';
import 'model/iride.dart';
import 'model/select_trip.dart';
import 'provider/get_intercity_ride.dart';

class ListOfIntercity extends ConsumerWidget {
  const ListOfIntercity({super.key});
  static const List<String> types = <String>['Filter', 'Popular', '0-10 km', 'SUV', 'Electronics'];
  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    String stype = 'All';
    final SelectTrip selectTrip = ModalRoute.of(context)!.settings.arguments! as SelectTrip;
    return Material(
      color: grey,
      child: ref
          .watch(getIntercityRideProvider)
          .when(
            data: (final IntercityRides data) {
              final List<IRide> rides = <IRide>[...(data.exactDateRides ?? <IRide>[]), ...(data.matchingRides ?? <IRide>[])];
              return CustomScrollView(
                //physics: const BouncingScrollPhysics(),
                //scrollBehavior: const CupertinoScrollBehavior(),
                slivers: <Widget>[
                  SliverAppBar(
                    floating: true,
                    pinned: true,
                    centerTitle: true,
                    forceElevated: true,
                    backgroundColor: Colors.white,
                    surfaceTintColor: Colors.white,
                    shadowColor: Colors.black38,
                    elevation: 8,
                    leading: const BackButton(),
                    title: Text(l10n.intercity, textAlign: TextAlign.center, style: Primary.heading),
                    bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(193),
                      child: Padding(
                        padding: const EdgeInsets.all(padding),
                        child: Column(
                          children: <Widget>[
                            Card.filled(
                              color: grey,
                              child: Padding(
                                padding: const EdgeInsets.all(padding),
                                child: Row(
                                  children: <Widget>[
                                    const Icon(Icons.search),
                                    const Gap(16),
                                    ConstrainedBox(
                                      constraints: BoxConstraints.loose(Size(mediaQuery.size.width * .2, 40)),
                                      child: Text(selectTrip.pickName ?? '', softWrap: true, style: Primary.headingSmalll, maxLines: 1),
                                    ),
                                    Padding(padding: const EdgeInsets.symmetric(horizontal: padding), child: SvgPicture.asset(road)),
                                    ConstrainedBox(
                                      constraints: BoxConstraints.loose(Size(mediaQuery.size.width * .2, 40)),
                                      child: Text(selectTrip.dropoffName ?? '', textAlign: TextAlign.center, style: Primary.headingSmalll, maxLines: 1),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      'Filter',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Color(0xFF086EE5), fontSize: 14, fontFamily: 'Open', fontWeight: FontWeight.w600, height: 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconText(text: selectTrip.on!.toFormattedDayMonthday(), icon: Icons.calendar_today_outlined),
                                  Text('${selectTrip.seats!} Travellers', textAlign: TextAlign.center, style: Secondary.title),
                                ],
                              ),
                            ),
                            StatefulBuilder(
                              builder:
                                  (final BuildContext context, final setState) => Row(
                                    children: <String>['All', 'Joint trips', 'Bus']
                                        .map(
                                          (final String type) => GestureDetector(
                                            onTap: () => setState(() => stype = type),
                                            child: Padding(
                                              padding: const EdgeInsets.only(right: padding * 2),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    type,
                                                    style: TextStyle(
                                                      color: stype == type ? Colors.black : darkgrey,
                                                      fontSize: 14,
                                                      fontFamily: 'Open',
                                                      fontVariations:
                                                          stype == type
                                                              ? <FontVariation>[const FontVariation('wght', 700)]
                                                              : <FontVariation>[const FontVariation('wght', 400)],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 18,
                                                    height: 3,
                                                    decoration: ShapeDecoration(
                                                      shape: const StadiumBorder(),
                                                      color: stype == type ? Colorx.primary : Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(growable: false),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SliverPadding(
                    padding: EdgeInsets.only(left: padding, top: padding, bottom: 8),
                    sliver: SliverToBoxAdapter(
                      child: TitleSubtitle(title: 'Lorem ipsum', subTitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do', heading: true),
                    ),
                  ),
                  SliverList.builder(
                    itemCount: rides.length, // specify the number of items
                    itemBuilder: (final BuildContext context, final int index) => InterCard(ride: rides.elementAt(index)),
                  ),
                  const SliverGap(32),
                ],
              );
            },
            error: (final Object error, final StackTrace stackTrace) => Err(error: error as ErrorDetails, stackTrace: stackTrace),
            loading: () => const Loading(),
          ),
    );
  }
}
