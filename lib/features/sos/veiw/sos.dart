import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/variable.dart';

class Sos extends StatefulWidget {
  const Sos({super.key});

  @override
  State<Sos> createState() => _SosState();
}

class _SosState extends State<Sos> {
  int index = 0;
  @override
  Widget build(final BuildContext context) => Scaffold(
    extendBodyBehindAppBar: true,
    appBar: const NameBackBar(title: 'SoS'),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: padding), child: Image.asset(msos)),
          Text(l10n.select_an_option, textAlign: TextAlign.center, style: Default.heading),
          Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap:
                      () => setState(() {
                        index = 0;
                      }),
                  overlayColor: const WidgetStatePropertyAll(Color.fromARGB(9, 200, 200, 200)),
                  child: Card.outlined(
                    margin: const EdgeInsets.fromLTRB(0, 32, 8, 8),
                    shape:
                        index == 0
                            ? null
                            : const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              side: BorderSide(color: Color(0xFFEEEEEE), width: 1.2),
                            ),
                    shadowColor: const Color.fromARGB(32, 125, 125, 125),
                    elevation: 32,
                    child: SizedBox(
                      height: 158,
                      child: Column(
                        children: <Widget>[
                          Expanded(flex: 10, child: Image.asset(vdbsn)),
                          Expanded(
                            flex: 8,
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: <Widget>[
                                  Text(l10n.stuck_in_the_parking, textAlign: TextAlign.center, style: Primary.title),
                                  Text(l10n.report_nearby_vehicle, textAlign: TextAlign.center, style: Secondary.body),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  overlayColor: const WidgetStatePropertyAll(Color.fromARGB(9, 200, 200, 200)),
                  onTap:
                      () => setState(() {
                        index = 1;
                      }),
                  child: Card.outlined(
                    margin: const EdgeInsets.fromLTRB(8, 32, 0, 8),
                    shape:
                        index == 1
                            ? null
                            : const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              side: BorderSide(color: Color(0xFFEEEEEE), width: 1.2),
                            ),
                    shadowColor: const Color.fromARGB(32, 125, 125, 125),
                    elevation: 32,
                    child: SizedBox(
                      height: 158,
                      child: Column(
                        children: <Widget>[
                          Expanded(flex: 10, child: Image.asset(vdbsn)),
                          const Expanded(
                            flex: 8,
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Text('Got scratch in your vehicle', textAlign: TextAlign.center, style: Primary.title),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap:
                      () => setState(() {
                        index = 2;
                      }),
                  overlayColor: const WidgetStatePropertyAll(Color.fromARGB(9, 200, 200, 200)),
                  child: Card.outlined(
                    margin: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                    shape:
                        index == 2
                            ? null
                            : const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              side: BorderSide(color: Color(0xFFEEEEEE), width: 1.2),
                            ),
                    shadowColor: const Color.fromARGB(32, 125, 125, 125),
                    elevation: 32,
                    child: SizedBox(
                      height: 158,
                      child: Column(
                        children: <Widget>[
                          Expanded(flex: 10, child: Image.asset(vdbsn)),
                          Expanded(
                            flex: 8,
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(l10n.vehicle_damaged_by_someone_nearby, textAlign: TextAlign.center, style: Primary.title),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap:
                      () => setState(() {
                        index = 3;
                      }),
                  overlayColor: const WidgetStatePropertyAll(Color.fromARGB(9, 200, 200, 200)),
                  child: Card.outlined(
                    margin: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                    shape:
                        index == 3
                            ? null
                            : const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              side: BorderSide(color: Color(0xFFEEEEEE), width: 1.2),
                            ),
                    shadowColor: const Color.fromARGB(32, 125, 125, 125),
                    elevation: 32,
                    child: SizedBox(
                      height: 158,
                      child: Column(
                        children: <Widget>[
                          Expanded(flex: 10, child: Image.asset(vdbsn)),
                          Expanded(
                            flex: 8,
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(l10n.report_other_issue, textAlign: TextAlign.center, style: Primary.title),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    floatingActionButton: BlackButton(text: l10n.ontinue, onPressed: () => Navigator.pushNamed(context, AppRoutes.parkinSoS)),
  );
}
