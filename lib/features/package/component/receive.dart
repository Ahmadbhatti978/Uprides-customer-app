import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/router/route.dart';
import '../../../util/colors.dart';
import '../../../util/image_assets.dart';
import '../../../util/variable.dart';

class Receive extends StatefulWidget {
  const Receive({super.key});

  @override
  State<Receive> createState() => _ReceiveState();
}

class _ReceiveState extends State<Receive> {
  bool isSelected = false;
  @override
  Widget build(final BuildContext context) => Column(
    children: <Widget>[
      const TextField(
        textAlignVertical: TextAlignVertical.center,

        ///onChanged: (value) => value.trim().isNotEmpty ? ref.read(placesProvider.notifier).fetchPlaces(value) : null,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(8))),
          hintText: 'Enter your tracking ID',
          filled: true,
          prefixIconConstraints: BoxConstraints.tightFor(height: 18, width: 46),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(8))),
          fillColor: grey,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(8))),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: CheckboxListTile(
          splashRadius: 16,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          side: BorderSide(color: isSelected ? const Color.fromRGBO(24, 196, 184, 1) : const Color(0xFFD0D5DD), width: 2),
          checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          activeColor: const Color.fromRGBO(24, 196, 184, 1),
          dense: true,
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          visualDensity: VisualDensity.compact,
          value: isSelected,
          onChanged: (final bool? value) => setState(() => isSelected = value ?? true),
          title: Text.rich(
            TextSpan(
              children: <InlineSpan>[
                TextSpan(
                  text: l10n.by_clicking_this_you_agree_our,
                  style: const TextStyle(color: Colors.black, fontSize: 12, fontFamily: 'Open', fontWeight: FontWeight.w600),
                ),
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, AppRoutes.privicyPolicy),
                  text: 'Terms and Conditions',
                  style: const TextStyle(
                    color: Color(0xFF18C4B8),
                    fontSize: 12,
                    fontFamily: 'Open',
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Image.asset(intercityh, width: mediaQuery.size.width, height: mediaQuery.size.width * .5, fit: BoxFit.cover),
    ],
  );
}
