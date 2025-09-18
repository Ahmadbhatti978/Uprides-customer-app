import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../util/style/typo.dart';
import '../../failure/failure.dart';

class Err extends StatelessWidget {
  const Err({super.key, this.error, this.stackTrace, this.iconData, this.icon, this.showFull = true});
  final dynamic error;
  final StackTrace? stackTrace;
  final IconData? iconData;
  final String? icon;
  final bool showFull;

  @override
  Widget build(final BuildContext context) =>
      showFull
          ? Material(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ErrorW(
                error: error is ErrorDetails ? error : null,
                stackTrace: stackTrace,
                custom: error is ErrorDetails ? null : error.toString(),
                iconData: iconData,
                icon: icon,
              ),
            ),
          )
          : Text(error.toString());
}

class ErrorW extends StatelessWidget {
  const ErrorW({required this.error, super.key, this.stackTrace, this.custom, this.iconData, this.icon});
  final ErrorDetails? error;
  final StackTrace? stackTrace;
  final String? custom;
  final IconData? iconData;
  final String? icon;

  @override
  Widget build(final BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const SizedBox(width: 1000),
      Visibility(visible: icon != null, replacement: Icon(iconData ?? CupertinoIcons.exclamationmark_circle, size: 36), child: Image.asset(icon ?? '')),
      const Gap(36),
      Text(custom ?? error.toString(), style: Bold.headingSmall),
      // Visibility(
      //   visible: stackTrace.,

      //   child:
      // Text(
      //   'error orginated at ${stackTrace.toString()}',
      //   style: Secondary.hintText,
      // ))
    ],
  );
}

// String error({required String path, String? payload, required String responsebody}) {


//   return 'Erorr is cominng UP :(  \n\n $responsebody';
// }
// String error({String? payload, required Response response}) {
//   final responsebody = response.body.toString();
//   final path = response.request?.url.toString();
//   log(
//     payload == null
//         ? '☠️💀 Error GET  \n\n Path: $path \n\n Response: $responsebody n\n StatusCode: ${response.statusCode}'
//         : '☠️💀 Error POST \n\n Path: $path \n \n Payload: $payload \n\n Response: $responsebody n\n StatusCode: ${response.statusCode}',
//   );

//   return 'Erorr is cominng UP :(  \n URL: $path \n $responsebody';
// }

const String phoneError = 'Please enter a valid phone number';
