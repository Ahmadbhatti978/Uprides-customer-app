import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/appbar/name_bar.dart';
import '../../util/style/typo.dart';
import 'tile.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  final PageController pageController = PageController();
  ValueNotifier<int> valueNotifier = ValueNotifier(0);
  // @override
  // void initState() {
  //   super.initState();
  //   pageController.addListener(() => setState(() {}));
  // }

  @override
  Widget build(final BuildContext context) => Scaffold(
      appBar: const NameBar(title: 'Messages'),
      body: Column(
        children: <Widget>[
          const Gap(22),
          ValueListenableBuilder(
            valueListenable: valueNotifier,
            builder: (final BuildContext context, final int vlue, final Widget? child) => Row(children: <Widget>[
              const Gap(padding),
              TextButton(
                  onPressed: () => pageController.jumpToPage(0),
                  child: Text('Newest', style: vlue == 1 ? Secondary.heading : Default.heading),),
              const Gap(24),
              TextButton(
                onPressed: () => pageController.jumpToPage(1),
                child: Text(
                  'Archived',
                  style: vlue == 0 ? Secondary.heading : Default.heading,
                ),
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
              const Gap(padding),
            ],),
          ),
          Expanded(
              child: PageView(
                  onPageChanged: (final int value) => valueNotifier.value = value,
                  controller: pageController,
                  children: <Widget>[
                ListView.builder(
                  padding: const EdgeInsets.only(top: padding),
                  itemBuilder: (final BuildContext context, final int index) => const MessageTile(),
                  itemCount: 10,
                ),
                ListView.builder(
                  padding: const EdgeInsets.only(top: padding),
                  itemBuilder: (final BuildContext context, final int index) => const MessageTile(),
                  itemCount: 10,
                ),
              ],),),
        ],
      ),
    );
}
