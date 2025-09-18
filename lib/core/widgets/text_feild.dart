import 'package:flutter/material.dart';

import '../../util/colors.dart';

class FilledTextField extends StatelessWidget {
  /// {@macro flutter.widgets.editableText.readOnly}

  const FilledTextField({
    super.key,
    this.onChanged,
    this.controller,
    this.hintText,
    this.suffix,
    this.icon,
    this.focusNode,
    this.readOnly = false,
    this.keyboardType = TextInputType.text,
    this.onTap,
    this.isVisible = true,
    this.validator,
  });
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? hintText;
  final bool readOnly;
  final FocusNode? focusNode;
  final Widget? suffix;
  final IconData? icon;
  final TextInputType keyboardType;
  final bool isVisible;
  final void Function()? onTap;
  final String? Function(String?)? validator;

  @override
  Widget build(final BuildContext context) => SizedBox(
    height: 70,
    child: TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      focusNode: focusNode,
      onTap: onTap,
      keyboardType: keyboardType,
      readOnly: readOnly,
      enabled: !readOnly,
      onChanged: onChanged,
      obscureText: !isVisible,
      controller: controller,
      scrollPadding: const EdgeInsets.symmetric(horizontal: 20),
      validator: validator,
      decoration: InputDecoration(
        //   contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        fillColor: textgrey,
        filled: true,
        iconColor: primary,
        suffixIconColor: primary,
        helperText: '',
        hintText: hintText,
        errorStyle: const TextStyle(color: Colors.red, fontSize: 14),
        suffix: icon == null ? suffix : null,
        suffixIcon: icon == null ? null : Icon(icon),
        border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
      ),
    ),
  );
}
