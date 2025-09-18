import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../../core/constants/constants.dart';
import '../../../../util/colors.dart';
import '../../../../util/style/typo.dart';
import '../../../../util/variable.dart';
import '../model/place.dart';
import '../notifier/pickedlocation.dart';

//final addStops = AutoDisposeStateProvider<bool>((ref) => false);
typedef OnTextChangedCallback = void Function(String text, int additionalValue);

class FillLocation extends ConsumerWidget {
  const FillLocation(this.node, {required this.myVoidCallback, required this.onTextChanged, super.key});
  final VoidCallback myVoidCallback;
  final OnTextChangedCallback onTextChanged;

  final int node;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final List<Place> places = ref.watch(pickedlocationProvider);

    return Container(
      margin: const EdgeInsets.only(right: horizontalSpacing),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color.fromARGB(255, 246, 246, 246),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        // shadows: const [
        //   BoxShadow(
        //     color: Color(0x12000000),
        //     blurRadius: 0.8,
        //     offset: Offset(1, 1),
        //     spreadRadius: 0.5,
        //   )
        //  ],
      ),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(height: 14, width: 14, decoration: BoxDecoration(border: Border.all(width: 4), color: Colors.transparent, shape: BoxShape.circle)),
              Container(height: 20, width: 1, color: Colors.black),
              Container(height: 14, width: 14, decoration: BoxDecoration(border: Border.all(width: 4), color: Colors.transparent)),
            ],
          ),
          const Gap(12),
          Expanded(
            child: Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      //   height: 25,
                      child: TextFormField(
                        // errorBuilder: (context, errorText) => ,
                        //   restorationId: places[0].mainText,
                        key: ValueKey(places[0].mainText),
                        //  controller: TextEditingController(text: places[0].mainText),
                        //  restorationId: places[0].mainText ?? "",
                        initialValue: places[0].mainText ?? "",

                        ///:  focusNode: node,
                        autofocus: node == 0,
                        onTap: () => onTextChanged('', 0),

                        cursorOpacityAnimates: true,
                        cursorColor: darkgrey,
                        showCursor: true,
                        onChanged: (final String value) => onTextChanged(value.isEmpty ? "Delete" : value, 0),
                        style: Primary.titleSmall,

                        cursorRadius: const Radius.circular(5),
                        decoration: const InputDecoration(
                          isDense: true,

                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),

                    const Divider(height: spacing, color: Color.fromARGB(255, 235, 235, 233)),
                    TextFormField(
                      //  restorationId: places[1].mainText,
                      initialValue: places[1].mainText ?? "",

                      autofocus: node == 1,
                      key: ValueKey(places[1].mainText),
                      cursorOpacityAnimates: true,
                      //     controller: TextEditingController(text: places[1].mainText),
                      onTap: () => onTextChanged('', 1),
                      cursorColor: darkgrey,
                      showCursor: true,

                      onChanged: (final String value) => onTextChanged(value.isEmpty ? "Delete" : value, 1),
                      style: Primary.titleSmall,
                      cursorRadius: const Radius.circular(5),
                      decoration: const InputDecoration(
                        hintText: 'Where do you want to go?',
                        isDense: true,
                        hintStyle: TextStyle(
                          color: darkgrey,
                          fontSize: 15,
                          wordSpacing: 0.1,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w500,
                          fontVariations: <FontVariation>[FontVariation('wght', 520)],
                          fontFamily: 'Open',
                        ),
                        contentPadding: EdgeInsets.zero,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: places.length > 2 || places.last.location != null,
                  //         visible:,
                  child: Column(
                    spacing: 10,
                    children: <Widget>[
                      Text(l10n.add_stop, textAlign: TextAlign.center, style: const TextStyle(color: darkgrey, fontSize: 12, fontFamily: 'Open', height: 0.11)),

                      InkWell(
                        radius: 50,
                        borderRadius: BorderRadius.circular(36),
                        onTap: myVoidCallback,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                          child: const Icon(Icons.add_rounded, size: 22, color: Colors.white),
                        ),
                      ),

                      const Gap(4),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
