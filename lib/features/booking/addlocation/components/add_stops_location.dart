import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/constants.dart';
import '../../../../util/colors.dart';
import '../../../../util/image_assets.dart';
import '../../../../util/style/typo.dart';
import '../model/place.dart';
import '../notifier/pickedlocation.dart';
import 'fill_location.dart';

class AddStopsLocation extends ConsumerStatefulWidget {
  const AddStopsLocation({required this.myVoidCallback, required this.onTextChanged, super.key});
  final VoidCallback myVoidCallback;
  final OnTextChangedCallback onTextChanged;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddStopsLocationState();
}

class _AddStopsLocationState extends ConsumerState<AddStopsLocation> {
  bool addingstop = false;
  FocusNode focusNode = FocusNode();
  late Pickedlocation placesNotifier;
  late List<Place> places;
  late List<TextEditingController> controllers;

  @override
  void initState() {
    super.initState();
    placesNotifier = ref.read(pickedlocationProvider.notifier);
    places = ref.read(pickedlocationProvider);
    controllers = places.map((final Place place) => TextEditingController(text: place.mainText)).toList();
  }

  @override
  void didUpdateWidget(final AddStopsLocation oldWidget) {
    super.didUpdateWidget(oldWidget);
    places = ref.read(pickedlocationProvider);
    while (controllers.length < places.length) {
      controllers.add(TextEditingController(text: places[controllers.length].mainText));
    }
    while (controllers.length > places.length) {
      controllers.removeLast().dispose();
    }
    for (int i = 0; i < places.length; i++) {
      if (controllers[i].text != places[i].mainText) {
        controllers[i].text = places[i].mainText ?? '';
      }
    }
  }

  @override
  void dispose() {
    focusNode.dispose();
    for (final TextEditingController controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  Key _listKey = UniqueKey();
  @override
  Widget build(final BuildContext context) {
    places = ref.watch(pickedlocationProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(padding / 2),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(color: const Color.fromARGB(255, 246, 246, 246), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 16,
                      width: 16,
                      margin: const EdgeInsets.only(top: 13.5),
                      decoration: BoxDecoration(border: Border.all(width: 5.5), color: Colors.transparent, shape: BoxShape.circle),
                    ),

                    ...List.generate(
                      places.length - 2,
                      (final int index) => Column(
                        children: <Widget>[
                          Container(height: 22, width: 1, color: Colors.black),
                          Container(
                            height: 18,
                            width: 16,
                            color: Colors.black,
                            alignment: Alignment.center,
                            child: Text(
                              (index + 1).toString(),
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                textBaseline: TextBaseline.ideographic,
                                color: Colors.white,
                                height: 1,
                                fontSize: 11,
                                fontVariations: <FontVariation>[FontVariation('wght', 520)],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    StatefulBuilder(
                      builder: (final BuildContext context, final setState) {
                        focusNode.addListener(() {
                          if (addingstop) {
                            if (!focusNode.hasFocus && mounted) {
                              setState(() => addingstop = false);
                            }
                          } else {
                            if (focusNode.hasFocus && mounted) {
                              setState(() => addingstop = true);
                            }
                          }
                        });
                        return addingstop
                            ? Column(
                              children: <Widget>[
                                Container(height: 24, width: 1, color: Colors.black),
                                Container(
                                  height: 16,
                                  width: 16,
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(border: Border.all(width: 5), color: Colors.transparent),
                                ),
                              ],
                            )
                            : const Padding(
                              padding: EdgeInsets.only(top: 24, bottom: 12),
                              child: SizedBox.square(dimension: 16, child: Icon(Icons.add, color: Color.fromRGBO(153, 153, 153, 1))),
                            );
                      },
                    ),
                  ],
                ),
                const Gap(4),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Material(
                        color: Colors.transparent,
                        shadowColor: Colors.transparent,
                        child: ReorderableListView(
                          physics: const NeverScrollableScrollPhysics(),
                          // onReorderStart:
                          //     (index) => // First, dismiss any open menus/overlays
                          //         FocusScope.of(context).unfocus(),
                          shrinkWrap: true,
                          key: _listKey,
                          children: List.generate(
                            places.length - 1,
                            (final int index) => SizedBox(
                              height: 40,

                              key: ValueKey('$index'),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const SizedBox.shrink(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: TextField(
                                          onChanged: (final String value) => widget.onTextChanged(value, index),
                                          controller: controllers[index],
                                          onTap: () => widget.onTextChanged('', index),
                                          keyboardType: TextInputType.streetAddress,
                                          style: Primary.titleLarge,
                                          cursorRadius: const Radius.circular(5),
                                          decoration: const InputDecoration(
                                            isDense: true,
                                            hintText: 'Add a stop point',
                                            hintStyle: TextStyle(
                                              color: darkgrey,
                                              fontSize: 15,
                                              wordSpacing: 0.1,
                                              letterSpacing: 0.1,
                                              fontWeight: FontWeight.w500,
                                              fontVariations: <FontVariation>[FontVariation('wght', 520)],
                                              fontFamily: 'Open',
                                              height: 0,
                                            ),
                                            contentPadding: EdgeInsets.fromLTRB(4, 0, 8, 0),
                                            border: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onPanStart: (final DragStartDetails details) => FocusScope.of(context).unfocus(),
                                        onTap:
                                            () => // First, dismiss any open menus/overlays
                                                FocusScope.of(context).unfocus(),
                                        onSecondaryLongPress: () {
                                          FocusScope.of(context).unfocus();
                                        },

                                        child: SvgPicture.asset(
                                          drag,
                                          width: 18,
                                          colorFilter: const ColorFilter.mode(Color.fromARGB(255, 119, 119, 119), BlendMode.srcIn),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(height: 1, color: Color.fromARGB(255, 235, 235, 233)),
                                ],
                              ),
                            ),
                          ),
                          onReorder: (final int oldIndex, int newIndex) {
                            // First, dismiss any open menus/overlays
                            FocusScope.of(context).unfocus();
                            Future.microtask(() {
                              if (mounted) {
                                if (newIndex > oldIndex) newIndex -= 1;
                                final TextEditingController controller = controllers.removeAt(oldIndex);
                                controllers.insert(newIndex, controller);
                                placesNotifier.reOrder(oldIndex, newIndex);
                                _listKey = UniqueKey();
                              }
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: TextField(
                          autofocus: true,
                          showCursor: true,
                          onChanged: (final String value) => widget.onTextChanged(value.isEmpty ? "Delete" : value, places.length - 1),
                          onTap: () => widget.onTextChanged('', places.length - 1),
                          controller: controllers.last,
                          focusNode: focusNode,
                          style: Primary.titleLarge,
                          cursorRadius: const Radius.circular(5),
                          decoration: const InputDecoration(
                            hintText: 'Add a stop point',
                            hintStyle: Secondary.titleLarge,
                            contentPadding: EdgeInsets.fromLTRB(6, 0, 10, 0),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: <Widget>[
            ...List.generate(
              places.length - 2,
              (final int index) => SizedBox(
                height: 40,
                child: IconButton(
                  onPressed: () {
                    if (places.length < 4) {
                      widget.myVoidCallback();
                    }
                    placesNotifier.removePlaces(index + 1);
                  },
                  icon: const Icon(Icons.close_rounded, color: Color.fromRGBO(119, 119, 119, 1)),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
