import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/constants.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../util/colors.dart';
import '../../../util/style/typo.dart';

class ReportIssue extends StatelessWidget {
  const ReportIssue({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const NameBackBar(
        title: 'Report Issue',
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: horizontalSpacing),
            decoration: BoxDecoration(border: Border.all(color: const Color(0xFFEEEEEE), width: 1.2)),
            child: const Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter yor email address',
                      filled: true,
                      focusedBorder: InputBorder.none,
                      fillColor: grey,
                      enabledBorder: InputBorder.none,),
                ),
                Divider(
                  color: Colors.white,
                  height: 1,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'What is your issue related to?',
                      filled: true,
                      focusedBorder: InputBorder.none,
                      fillColor: grey,
                      enabledBorder: InputBorder.none,),
                ),
                TextField(
                  maxLines: 12,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type here...',
                      contentPadding: EdgeInsets.fromLTRB(horizontalSpacing, 18, 8, 8),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,),
                ),
                Divider(
                  color: Color(0xFFEEEEEE),
                  thickness: 1.2,
                ),
                Padding(
                  padding: EdgeInsets.all(horizontalSpacing),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.camera_alt),
                      Gap(padding),
                      Text('Take a screenshot', textAlign: TextAlign.center, style: Primary.titleSmall),
                    ],
                  ),
                ),
                Divider(
                  color: Color(0xFFEEEEEE),
                  thickness: 1.2,
                ),
                Padding(
                  padding: EdgeInsets.all(horizontalSpacing),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.video_camera_solid,
                        size: 28,
                      ),
                      Gap(horizontalSpacing),
                      Text('Take a screen recording', textAlign: TextAlign.center, style: Primary.titleSmall),
                    ],
                  ),
                ),
                Divider(
                  color: Color(0xFFEEEEEE),
                  thickness: 1.2,
                ),
                Padding(
                  padding: EdgeInsets.all(horizontalSpacing),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.photo_fill_on_rectangle_fill,
                      ),
                      Gap(padding),
                      Text('Select from gallery', textAlign: TextAlign.center, style: Primary.titleSmall),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: BlackButton(
        text: 'Submit',
        onPressed: () {},
      ),
    );
}
