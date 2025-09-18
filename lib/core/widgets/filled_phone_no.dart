import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

import '../../util/colors.dart';
import '../../util/variable.dart';
import '../constants/constants.dart';
import 'buttons/buttons.dart';

typedef OnTextChangedCallback = void Function(String text);

class FilledPhoneNo extends StatefulWidget {
  const FilledPhoneNo({required this.onTextChanged, required this.readOnly, super.key, this.e164, this.suffix, this.icon, this.hintText});
  final OnTextChangedCallback onTextChanged;
  final String? e164;
  final Widget? suffix;
  final IconData? icon;
  final String? hintText;
  final bool readOnly;

  @override
  State<FilledPhoneNo> createState() => _FilledPhoneNoState();
}

class _FilledPhoneNoState extends State<FilledPhoneNo> {
  String phone = '';
  String code = slocal?.countryCode ?? "PT";
  String initialCode = 'PT';
  @override
  void initState() {
    //code = myLocale.countryCode ?? code;

    if (widget.e164 != null && widget.e164!.isNotEmpty) {
      final PhoneNumber phoneNumber = PhoneNumber.parse(widget.e164!);
      code = phoneNumber.isoCode.name;
      phone = phoneNumber.nsn;
    }
    initialCode = code;
    super.initState();
  }

  @override
  Widget build(final BuildContext context) => SizedBox(
        height: 56,
        child: TextFormField(
          enabled: true,
          autofocus: true,
          initialValue: phone,
          readOnly: widget.readOnly,
          keyboardType: TextInputType.phone,
          onChanged: (final String value) {
            phone = value;
            widget.onTextChanged("+${countrymap[code]}$phone");
          },
          decoration: InputDecoration(
            prefixIconConstraints: BoxConstraints.loose(const Size(110, 60)),
            prefixIcon: InkWell(
              onTap: widget.readOnly
                  ? null
                  : () {
                      FocusScope.of(context).unfocus();
                      _showDialog(
                        CupertinoPicker(
                          offAxisFraction: .05,
                          magnification: 1.05,
                          squeeze: 1,
                          diameterRatio: 2.4,
                          useMagnifier: true,
                          itemExtent: 40,
                          selectionOverlay: const CupertinoPickerDefaultSelectionOverlay(background: Color.fromARGB(14, 0, 0, 10)),
                          // This sets the initial item.
                          scrollController: FixedExtentScrollController(initialItem: countries.indexWhere((final Map<String, String> e) => e['code'] == code)),
                          // This is called when selected item is changed.
                          onSelectedItemChanged: (final int selectedItem) {
                            if (!widget.readOnly) {
                              code = countries.elementAt(selectedItem)['code'] ?? code;
                              widget.onTextChanged("${countries.elementAt(selectedItem)["dial_code"]}$phone");
                            }
                            HapticFeedback.selectionClick();
                            SystemSound.play(SystemSoundType.click);
                          },

                          children: List<Widget>.generate(
                            countries.length,
                            (final int index) => Padding(
                              padding: const EdgeInsets.symmetric(horizontal: padding * 2),
                              child: Row(
                                children: <Widget>[
                                  ColoredBox(
                                    color: Colors.white,
                                    child: SvgPicture.network(
                                      "https://flagcdn.com/${(countries.elementAt(index)["code"] ?? "").toLowerCase()}.svg",
                                      width: 32,
                                      alignment: Alignment.centerLeft,
                                      fit: BoxFit.fill,
                                      //      colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcATop),
                                      // Colored overlay with blend mode
                                    ),
                                  ),
                                  const Gap(12),
                                  SizedBox(width: mediaQuery.size.width * .46, child: Text(countries.elementAt(index)['name'] ?? '', maxLines: 1)),
                                  const Spacer(),
                                  Text(countries.elementAt(index)['dial_code'] ?? ''),
                                ],
                              ),
                            ),
                          ),
                        ),
                        context,
                      );
                    },
              child: Padding(
                padding: const EdgeInsets.only(left: 13, right: padding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: SvgPicture.network('https://flagcdn.com/${code.toLowerCase()}.svg', height: 30, alignment: Alignment.centerLeft),
                ),
              ),
              // // This displays the selected fruit name.
              // child: Text(_fruitNames[_selectedFruit], style: const TextStyle(fontSize: 22.0)),
            ),
            hintText: widget.hintText,
            fillColor: grey,
            filled: true,
            focusColor: Colors.black,
            border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
            iconColor: primary,
            suffixIconColor: primary,
            suffix: widget.icon == null ? widget.suffix : null,
            suffixIcon: widget.icon == null ? null : Icon(widget.icon),
          ),
        ),
      );

  void _showDialog(final Widget child, final BuildContext context) {
    initialCode = code;
    showCupertinoModalPopup<void>(
      routeSettings: const RouteSettings(name: 'Phone Code Picker'),
      context: context,
      builder: (final BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            color: CupertinoColors.secondarySystemBackground,
            padding: const EdgeInsets.symmetric(horizontal: spacing, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    code = initialCode;
                    Navigator.pop(context);
                  },
                  child: Text(l10n.cancel, style: const TextStyle(color: Color.fromRGBO(96, 97, 102, 1))),
                ),
                cyanTextButton(() => Navigator.pop(context), l10n.done, isUnderline: false, isBold: true),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: mediaQuery.size.height * .4,
            child: Stack(
              children: <Widget>[
                child,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: mediaQuery.size.width,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[Colors.white, Color.fromARGB(220, 255, 255, 255), Color.fromARGB(0, 255, 255, 255)],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: mediaQuery.size.width,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: <Color>[Colors.white, Color.fromARGB(220, 255, 255, 255), Color.fromARGB(0, 255, 255, 255)],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ).whenComplete(() => setState(() {}));
  }
}
