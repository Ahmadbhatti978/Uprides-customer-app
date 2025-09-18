import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import '../../util/variable.dart';

class NavigatorObserverx extends NavigatorObserver {
  @override
  void didPush(final Route route, final Route? previousRoute) {
    currentRoute = route.settings.name ?? currentRoute;
    log(route.settings.name ?? "NO Route Name Found!", name: 'Pushed');
  }

  @override
  void didPop(final Route route, final Route? previousRoute) {
    currentRoute = previousRoute?.settings.name ?? currentRoute;
    log(route.settings.name ?? "NO Route Name Found!", name: "Popped", zone: Zone.root,level: 1000);
  }
}
