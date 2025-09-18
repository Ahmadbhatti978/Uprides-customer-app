import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';

class TermCondition extends StatefulWidget {
  const TermCondition({super.key});

  @override
  State<TermCondition> createState() => _TermConditionState();
}

class _TermConditionState extends State<TermCondition> {
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
          ..loadRequest(Uri.parse('https://www.uprides.eu/termsandcondition'));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const NameBackBar(title: "Terms & Conditions"),
    body: Stack(children: [WebViewWidget(controller: controller), if (loadingPercentage < 100) LinearProgressIndicator(value: loadingPercentage / 100.0)]),
  );
}
