import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/router/route.dart';
import '../../../../main.dart';
import '../../../../util/colors.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';



class LocationBanner extends StatelessWidget implements PreferredSizeWidget {
  const LocationBanner({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 16);
  @override
  Widget build(BuildContext context) => FutureBuilder<bool>(
    future: Geolocator.isLocationServiceEnabled(),
    builder:
        (context, snapshot) =>
            snapshot.connectionState == ConnectionState.done
                ? StreamBuilder<ServiceStatus>(
                  initialData: (snapshot.data ?? true) ? ServiceStatus.enabled : ServiceStatus.disabled,
                  stream: Geolocator.getServiceStatusStream(),
                  builder: (context, snapshot) {
                    final disabled = snapshot.data == ServiceStatus.disabled;

                    if (disabled == darkStatusBar) {
                      if (disabled) {
                        darkStatusBar = false;
                        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
                      } else {
                        darkStatusBar = true;
                        SystemChrome.setSystemUIOverlayStyle(
                          const SystemUiOverlayStyle(
                            statusBarColor: Colors.transparent,
                            statusBarIconBrightness: Brightness.dark,
                            systemNavigationBarIconBrightness: Brightness.light,
                            systemNavigationBarColor: Colors.white,
                          ),
                        );
                      }
                    }

                    return Visibility(
                      visible: disabled,
                      child: Container(
                        width: double.infinity,
                        color: Colorx.primary,
                        alignment: Alignment.bottomCenter,
                        padding: const EdgeInsets.symmetric(vertical: padding, horizontal: padding),
                        child: InkWell(
                          onTap: Geolocator.openLocationSettings,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.location_pin, color: Colors.white),
                              const SizedBox(width: padding / 2),
                              Expanded(child: Text(l10n.location_sharing_off, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                              const SizedBox(width: padding / 2),
                              const Icon(Icons.arrow_forward_ios_sharp, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
                : const SizedBox.shrink(),
  );
}

void checkForLanguage(WidgetRef ref) {
  if (slocal?.languageCode != guser?.language) {
    ref.read(locale.notifier).state = Locale(guser?.language ?? '');
    slocal = Locale(guser?.language ?? '');
    
  }
}

Widget searching(final BuildContext context) => SliverPadding(
  padding: const EdgeInsets.all(horizontalSpacing),
  sliver: SliverToBoxAdapter(
    child: FilledButton.icon(
      onPressed: () => Navigator.pushNamed(context, AppRoutes.addLocation),
      style: FilledButton.styleFrom(
        alignment: Alignment.centerLeft,
        fixedSize: Size.fromWidth(mediaQuery.size.width),
        backgroundColor: grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      label: Text(l10n.where_do_you_want_to_go, style: Secondary.hintText),
      icon: const Icon(CupertinoIcons.search, color: Colors.black, size: 24),
    ),
  ),
);
