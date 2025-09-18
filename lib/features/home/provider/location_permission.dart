// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import '../../../util/utils.dart';
// import '../../../util/variable.dart';
// import 'current_location_notifier.dart';
// import 'location_state.dart';

// bool? checkLocation;
// void checkLocattionService(WidgetRef ref) {
//   final AsyncValue<LocationState> loca = ref.watch(currentLocationProvider);
//   if (loca.hasValue) {
//     if (loca.value!.position == null) action(loca.value!, ref);
//   } else {
//     loca.whenData((final LocationState data) {
//       if (loca.value!.position == null) action(loca.value!, ref);
//       action(data, ref);
//     });
//   }
// }

// void action(LocationState data, WidgetRef ref) {
//   if (!(checkLocation ?? false)) {
//     WidgetsBinding.instance.addPostFrameCallback((_) => showSnackBar(data.error.message));
//     switch (data.error) {
//       case PermissionState.granted:
//         ref.refresh(currentLocationProvider);
//         checkLocation = true;

//       case PermissionState.serviceDisabled:
//         //   ref.refresh(currentLocationProvider);
//         checkLocation == null ? checkLocation = false : checkLocation = true;
//       case PermissionState.permissionDenied:
//         checkLocation == null ? checkLocation = false : checkLocation = true;
//       case PermissionState.permissionDeniedForever:
//         checkLocation == null ? checkLocation = false : checkLocation = true;
//       case PermissionState.unknown:
//         ref.refresh(currentLocationProvider);

//         checkLocation == null ? checkLocation = false : checkLocation = true;
//     }
//   } else {
//     ref.refresh(currentLocationProvider);
//   }
// }

// void showLocationDialog(LocationState data, WidgetRef ref) {
//   WidgetsBinding.instance.addPostFrameCallback(
//     (_) => showCupertinoDialog<void>(
//       context: navigatorKey.currentContext!,
//       builder:
//           (BuildContext context) => CupertinoAlertDialog(
//             title: const Text("Allow “Uprides” to access your location even when you are not using the app?"),
//             content: const Text(
//               'Uprides collects your location data from the time of trip request through five minutes after the trip ends, including when the app is in the background. We do this to improve pickups, drop-offs, customer service, and to enhance safety. You can turn off location data any time in your phone’s device.',
//             ),
//             actions: <CupertinoDialogAction>[
//               CupertinoDialogAction(
//                 /// This parameter indicates this action is the default,
//                 /// and turns the action's text to bold text.
//                 isDestructiveAction: true,
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text("Don't Allow"),
//               ),
//               CupertinoDialogAction(
//                 isDefaultAction: true,

//                 /// This parameter indicates the action would perform
//                 /// a destructive action such as deletion, and turns
//                 /// the action's text color to red.
//                 //  isDefaultAction: true,
//                 onPressed: () async {
//                   switch (data.error) {
//                     case PermissionState.permissionDenied:
//                     case PermissionState.serviceDisabled:
//                       await Geolocator.openLocationSettings();
//                     case PermissionState.permissionDeniedForever:
//                       await Geolocator.openAppSettings();

//                     default:
//                       Geolocator.openAppSettings();
//                   }
//                   ref.refresh(currentLocationProvider);

//                   Navigator.pop(context);
//                 },
//                 child: const Text('Allow', style: TextStyle(color: Colors.blue)),
//               ),
//             ],
//           ),
//     ),
//   );
// }
