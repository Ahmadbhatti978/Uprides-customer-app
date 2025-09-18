import 'dart:developer';

import 'package:flutter/material.dart';

Future<T?> safeShowDialog<T>({required BuildContext context, required WidgetBuilder builder, bool barrierDismissible = true, RouteSettings? routeSettings}) {
  // Use ModalRoute.isCurrentOf to check if the route for the provided context
  // is the top-most route in the navigator stack.
  // The '?? false' handles the case where ModalRoute.of(context) returns null.
  if (ModalRoute.isCurrentOf(context) ?? false) {
    // If the route is current, proceed to show the dialog.
    return showDialog<T>(context: context, barrierDismissible: barrierDismissible, routeSettings: routeSettings, builder: builder);
  } else {
    // If the route is not current, log a message and do not show the dialog.
    // This prevents the dialog from appearing on a different screen.
    log("Attempted to show dialog on a background route. Dialog was not shown.");
    // Return a completed Future with a null value to satisfy the function's return type.
    return Future.value();
  }
}
