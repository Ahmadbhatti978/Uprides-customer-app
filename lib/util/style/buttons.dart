import 'package:flutter/material.dart';

import '../colors.dart';

const ButtonStyle greyRound = ButtonStyle(
  padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 12)),
  shape: WidgetStatePropertyAll<OutlinedBorder>(StadiumBorder()),
  backgroundColor: WidgetStatePropertyAll<Color>(grey),
  textStyle: WidgetStatePropertyAll<TextStyle>(TextStyle(color: Colors.black)),
  surfaceTintColor: WidgetStatePropertyAll<Color>(Colors.black),
  foregroundColor: WidgetStatePropertyAll<Color>(Colors.black),
  minimumSize: WidgetStatePropertyAll<Size>(Size(60, 32)),
);
const ButtonStyle blackRound = ButtonStyle(  
  padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 12)),
  shape: WidgetStatePropertyAll<OutlinedBorder>(StadiumBorder()),
  textStyle: WidgetStatePropertyAll<TextStyle>(TextStyle(color: Colors.white)),
  surfaceTintColor: WidgetStatePropertyAll<Color>(Colors.white),
  foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
  backgroundColor: WidgetStatePropertyAll<Color>(Colorx.primary),
  iconColor: WidgetStatePropertyAll<Color>(Colors.white),
  minimumSize: WidgetStatePropertyAll<Size>(Size(60, 35)),
);
