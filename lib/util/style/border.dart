import 'package:flutter/material.dart';

const OutlineInputBorder inputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Color.fromRGBO(170, 170, 170, 0.1)),
  borderRadius: BorderRadius.all(Radius.circular(8)),
);
const OutlineInputBorder enabledBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Color.fromRGBO(170, 170, 170, 1)),
  borderRadius: BorderRadius.all(Radius.circular(8)),
);
const OutlineInputBorder secondaryBorder =
    OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFEEEEEE), width: 2), borderRadius: BorderRadius.all(Radius.circular(8)));
