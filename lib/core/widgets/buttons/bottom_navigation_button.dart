import 'package:flutter/material.dart';

import 'filled_black_button.dart';

class BottomNavigationButton extends StatelessWidget {
  const BottomNavigationButton({required this.text, super.key, this.onPressed, this.isLoading = false});
  final VoidCallback? onPressed;
  final String text;
  final bool isLoading;

  @override
  Widget build(final BuildContext context) => Container(
    //  height: 90,
    decoration: const BoxDecoration(
      color: Colors.white,
      boxShadow: <BoxShadow>[BoxShadow(color: Color.fromARGB(30, 117, 117, 117), spreadRadius: 2, blurRadius: 16, offset: Offset(0, -5))],
    ),
    padding: const EdgeInsets.only(bottom: 24, top: 14, left: 14, right: 14),
    child: SafeArea(child: BlackButton(text: text, onPressed: onPressed, isLoading: isLoading)),
  );
}
