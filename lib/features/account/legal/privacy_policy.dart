import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../util/variable.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  late WebViewController controller;
  int loadingPercentage = 0;
  @override
  void initState() {
    super.initState();
    controller =
        WebViewController()
          ..setNavigationDelegate(
            NavigationDelegate(
              onPageStarted: (url) {
                setState(() {
                  loadingPercentage = 0;
                });
              },
              onProgress: (progress) {
                setState(() {
                  loadingPercentage = progress;
                });
              },
              onPageFinished: (url) {
                setState(() {
                  loadingPercentage = 100;
                });
              },
            ),
          )
          ..loadRequest(Uri.parse('https://www.uprides.eu/privacy'));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: NameBackBar(title: l10n.privacy_policy),
    body: Stack(
      children: [
        WebViewWidget(controller: controller),
        if (loadingPercentage < 100) LinearProgressIndicator(color: Colors.red, value: loadingPercentage / 100.0) else const SizedBox.shrink(),
      ],
    ),
  );
}
