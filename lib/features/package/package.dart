import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../core/constants/constants.dart';
import '../../core/router/route.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../booking/addlocation/model/place.dart';
import 'component/receive.dart';
import 'component/send.dart';
import 'model/package.dart';
import 'provider/package_provider.dart';

bool send = true;

class Packages extends StatelessWidget {
  const Packages({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    resizeToAvoidBottomInset: true,
    body: Stack(
      children: <Widget>[
        Image.asset(package, fit: BoxFit.fitWidth, alignment: Alignment.topCenter, height: mediaQuery.size.height * .45),
        Card.filled(
          color: Colors.white,
          margin: EdgeInsets.only(top: mediaQuery.size.height * (mediaQuery.viewInsets.bottom > 0 ? 0.229 : 0.39)),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(32))),
          child: ListView(
            padding: const EdgeInsets.fromLTRB(padding, padding * 1.8, padding, padding * 6),
            children: <Widget>[
              Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(text: l10n.welcome_to, style: Primary.heading),
                    const TextSpan(text: "UPrides", style: TextStyle(color: Color(0xFF18C4B8), fontSize: 20, fontFamily: 'Open', fontWeight: FontWeight.w700)),
                    TextSpan(text: l10n.packages, style: Primary.heading),
                  ],
                ),
              ),
              const Gap(4),
              Text(l10n.now_its_more_easy_to_send_your_package, style: Secondary.title),
              const Gap(padding),
              StatefulBuilder(
                builder:
                    (final BuildContext context, final setState) => Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            InkWell(
                              borderRadius: BorderRadius.circular(14),
                              splashFactory: InkSparkle.splashFactory,
                              splashColor: const Color.fromARGB(12, 0, 0, 0),
                              onTap: () => send ? null : setState(() => send = true),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8, top: 2, bottom: 4),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(l10n.send, style: send ? Bold.titleLarge : Secondary.headingSmall),
                                    Container(
                                      width: 28,
                                      height: 3,
                                      decoration: ShapeDecoration(shape: const StadiumBorder(), color: send ? Colorx.primary : Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: const Color.fromARGB(12, 0, 0, 0),
                              borderRadius: BorderRadius.circular(24),
                              splashFactory: InkSparkle.splashFactory,
                              onTap: () => send ? setState(() => send = false) : null,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(l10n.receive, style: send ? Secondary.headingSmall : Bold.titleLarge),
                                    Container(
                                      width: 28,
                                      height: 3,
                                      decoration: ShapeDecoration(shape: const StadiumBorder(), color: !send ? Colorx.primary : Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(padding * 1.6),
                        Builder(builder: (final BuildContext context) => Visibility(visible: send, replacement: const Receive(), child: const Send())),
                      ],
                    ),
              ),
            ],
          ),
        ),
        Positioned(top: 24, left: 8, child: CloseButton(color: Colors.white, onPressed: () => Navigator.pop(context))),
      ],
    ),
    bottomSheet: Container(
      color: Colors.white,
      padding: const EdgeInsets.only(bottom: 25, left: padding, right: padding),
      child: Consumer(
        // The builder now takes the child as an argument
        builder: (final BuildContext context, final WidgetRef ref, final Widget? child) {
          // This part of the code is executed on every state change.
          // The onPressed logic depends on 'send' which isn't in the provided code,
          // but the onPressed function's logic is what is dynamic.
          final List<MapEntry<Place, ReceiverDetails?>> locations = ref.read(locationProvider);

          return FilledButton(
            onPressed:
                send
                    ? () {
                      if (locations.length > 1) {
                        ref.read(packageProvider.notifier).update((final Package state) => state.copyWith(pickupLocation: locations.first.key.location));
                        Navigator.pushNamed(context, AppRoutes.receiversDetail);
                      }
                    }
                    : () => Navigator.pushNamed(context, AppRoutes.receiveDetail),
            style: FilledButton.styleFrom(
              backgroundColor: Colors.black,
              visualDensity: VisualDensity.compact,
              minimumSize: Size(mediaQuery.size.width * .35, 50),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              foregroundColor: Colors.white,
              fixedSize: Size.fromWidth(mediaQuery.size.width - horizontalSpacing * 2),
            ),
            child: child, // <-- Pass the child here
          );
        },
        // The child widget is built only once.
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              l10n.ontinue,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontFamily: 'Red Hat Display',
                letterSpacing: 0.1,
                height: 1.33,
                color: Colors.white,
                fontVariations: <FontVariation>[FontVariation('wght', 650)],
                textBaseline: TextBaseline.alphabetic,
                leadingDistribution: TextLeadingDistribution.even,
              ),
            ),
            SvgPicture.asset(arrow, height: 14),
          ],
        ),
      ),
    ),
  );
}
