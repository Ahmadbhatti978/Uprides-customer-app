import 'package:flutter/material.dart';
import 'colors.dart';
import 'variable.dart';

final ThemeData theme = ThemeData(
  useMaterial3: true,
//  sliderTheme: SliderThemeData(year2023: false),
  brightness: Brightness.light,
  //primarySwatch: MaterialColor(primary, swatch),
  primaryColor: Colors.black,
     visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: Colors.white,
  //useMaterial3: true,
  fontFamily: 'Red Hat Display',
  fontFamilyFallback: const <String>['Red Hat Display', 'Open'],
  bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
  dividerColor: grey,
  dividerTheme: const DividerThemeData(color: grey, thickness: 1.2),
  // typography: Typography.material2021(
  //     white: Typography.englishLike2021.apply(fontFamily: 'Red Hat Display'),
  //     black: Typography.englishLike2021.apply(fontFamily: 'Red Hat Display'),
  //     englishLike: Typography.englishLike2021.apply(fontFamily: 'Red Hat Display')),
  // textTheme: Typography.englishLike2021.apply(
  //   fontFamily: 'Red Hat Display',
  // ),
  iconTheme: const IconThemeData(color: Colors.black),

  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      enableFeedback: true,
      iconColor: Colors.black,
      maximumSize: const Size(400, 56),
      minimumSize: const Size(100, 56),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      textStyle: const TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontFamily: 'Red Hat Display',
        fontVariations: <FontVariation>[FontVariation('wght', 660)],
        letterSpacing: 0.1,
      ),
    ),
  ),

  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black, fontVariations: <FontVariation>[FontVariation('wght', 450)]),
    bodyLarge: TextStyle(color: Colors.black, fontVariations: <FontVariation>[FontVariation('wght', 450)]),
    labelMedium: TextStyle(color: Colors.black, fontVariations: <FontVariation>[FontVariation('wght', 450)]),
    labelLarge: TextStyle(color: Colors.black, fontVariations: <FontVariation>[FontVariation('wght', 450)]),
    labelSmall: TextStyle(color: Colors.black, fontVariations: <FontVariation>[FontVariation('wght', 450)]),
    titleLarge: TextStyle(color: Colors.black, fontVariations: <FontVariation>[FontVariation('wght', 450)]),
    titleMedium: TextStyle(color: Colors.black, fontVariations: <FontVariation>[FontVariation('wght', 450)]),
    titleSmall: TextStyle(color: Colors.black, fontVariations: <FontVariation>[FontVariation('wght', 450)]),
  ),
  
 
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: const TextStyle(fontSize: 16, fontFamily: 'Open', fontVariations: <FontVariation>[FontVariation('wght', 500)], color: Color(0xFF999999)),
    border: OutlineInputBorder(borderSide: const BorderSide(color: Color.fromARGB(255, 170, 170, 170)), borderRadius: BorderRadius.circular(8)),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color.fromARGB(255, 221, 221, 221), width: 1.2),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(borderSide: const BorderSide(width: 1.2), borderRadius: BorderRadius.circular(10)),
  ),
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      // overlayColor: WidgetStatePropertyAll(Colors.black),
      // backgroundColor: WidgetStatePropertyAll(grey),
      foregroundColor: WidgetStatePropertyAll<Color>(Colors.black),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      maximumSize: Size(mediaQuery.size.width - 15, 52),
      //  minimumSize: Size(mediaQuery.size.width * .6, 50),
      textStyle: const TextStyle(
        fontSize: 16,
        fontFamily: 'Red Hat Display',
        color: Color(0xFF1E293B),
        fontVariations: <FontVariation>[FontVariation('wght', 520)],
      ),
      shape: const StadiumBorder(),
      foregroundColor: Colors.black,
      side: const BorderSide(color: grey),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      visualDensity: VisualDensity.compact,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      foregroundColor: Colors.black,
      textStyle: const TextStyle(fontSize: 16, fontVariations: <FontVariation>[FontVariation('wght', 450)], fontFamily: 'Red Hat Display'),
    ),
  ),
  colorScheme: const ColorScheme.highContrastLight(primary: Color(0xFF1B1C1E), secondary: grey),
  //     useMaterial3: true,
);
