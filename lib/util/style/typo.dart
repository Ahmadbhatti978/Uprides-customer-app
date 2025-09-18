import 'package:flutter/material.dart';

import '../colors.dart';

const TextStyle hintStyle = TextStyle(fontSize: 16, fontVariations: <FontVariation>[FontVariation('wght', 520)], color: Color.fromRGBO(170, 170, 170, 1));

class Primary {
  static const TextStyle displaySmall = TextStyle(
    fontSize: 24,
    fontFamily: 'Open',
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 610)],
    letterSpacing: -0.2,
  );
  static const TextStyle headingBig = TextStyle(
    fontSize: 24,
    fontFamily: 'Open',
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 610)],
    letterSpacing: -0.2,
  );
  static const TextStyle headingLarge = TextStyle(
    fontSize: 22,
    fontFamily: 'Open',
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 700)],
    letterSpacing: -0.2,
  );
  static const TextStyle heading = TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontSize: 20,
    fontFamily: 'Open',
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 600)],
    letterSpacing: -0.2,
  );
  static const TextStyle headingSmalll = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 620)],
  );
  static const TextStyle headingSmalllThin = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 500)],
  );
  static const TextStyle titleLarge = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 550)],
    letterSpacing: -0.2,
  );
  static const TextStyle titleSmall = TextStyle(
    fontSize: 13.8,
    color: Colors.black,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 500)],
    letterSpacing: -0.2,
  );
  static const TextStyle title = TextStyle(
    fontSize: 15,
    color: Colors.black,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 620)],
    letterSpacing: -0.1,
    //height: 1,
  );
  static const TextStyle titleNormal = TextStyle(
    fontSize: 14.8,
    color: Colors.black,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 500)],
    letterSpacing: -0.1,
    //height: 1,
  );
  static const TextStyle bodyLarge = TextStyle(
    color: Colors.black,
    fontSize: 13,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 600)],
  );
  static const TextStyle body = TextStyle(color: Colors.black, fontSize: 12, fontFamily: 'Open', fontVariations: <FontVariation>[FontVariation('wght', 600)]);
  static const TextStyle bodySmall = TextStyle(
    color: Colors.black,
    fontSize: 11,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 650)],
  );
}

class Default {
  static const TextStyle displayVeryLarge = TextStyle(
    fontSize: 40,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 700)],
    letterSpacing: 0.32,
  );

  static const TextStyle displayLarge = TextStyle(
    fontSize: 36,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 600)],
    letterSpacing: 0.32,
  );
  static const TextStyle displayMedium = TextStyle(
    fontSize: 32,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 550)],
    letterSpacing: 0.32,
  );

  static const TextStyle displaySmall = TextStyle(
    fontSize: 28,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 550)],
    letterSpacing: 0.32,
  );
  static const TextStyle headingBig = TextStyle(
    fontSize: 24,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 640)],
    letterSpacing: 0.48,
  );
  static const TextStyle headingLarge = TextStyle(
    fontSize: 21,
    letterSpacing: -0.2,
    wordSpacing: 0,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 630)],
  );
  static const TextStyle heading = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 600)],
    letterSpacing: -0.2,
  );
  static const TextStyle headingSmall = TextStyle(
    fontSize: 18,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 620)],
    letterSpacing: -0.1,
  );
  static const TextStyle headingSmallThin = TextStyle(fontSize: 19, color: Colors.black, fontWeight: FontWeight.w500);
  static const TextStyle titleLarge = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 650)],
    letterSpacing: -0.2,
  );
  static const TextStyle title = TextStyle(
    fontSize: 15,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 600)],
    letterSpacing: 0.2,
    wordSpacing: 0.12,
  );
  static const TextStyle titleSmall = TextStyle(
    fontSize: 14,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 500)],
    letterSpacing: -0.2,
  );
  static const TextStyle titleSmallThin = TextStyle(fontSize: 14, color: Colors.black, fontVariations: <FontVariation>[FontVariation('wght', 400)]);
  static const TextStyle bodymedium = TextStyle(
    fontSize: 13,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 500)],
    letterSpacing: -0.2,
  );
  static const TextStyle body = TextStyle(fontSize: 12, color: Colors.black, fontVariations: <FontVariation>[FontVariation('wght', 500)], letterSpacing: -0.2);
  static const TextStyle titleSmallSecondary = TextStyle(
    fontSize: 14,
    color: darkgrey,
    fontVariations: <FontVariation>[FontVariation('wght', 460)],
    // letterSpacing: -0.12,
  );
}

class Secondary {
  static const TextStyle headingBold = TextStyle(
    fontSize: 20,
    color: darkgrey,

    fontVariations: <FontVariation>[FontVariation('wght', 500)],
    // letterSpacing: -0.5,
  );
  static const TextStyle hintText = TextStyle(color: darkgrey, fontSize: 18, fontFamily: 'Open', fontVariations: <FontVariation>[FontVariation('wght', 420)]);
  static const TextStyle heading = TextStyle(
    fontSize: 20,
    color: darkgrey,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 400)],
    // letterSpacing: -0.5,
  );
  static const TextStyle headingSmall = TextStyle(
    fontSize: 18,
    color: darkgrey,

    fontVariations: <FontVariation>[FontVariation('wght', 400)],
    // letterSpacing: -0.5,
  );
  static const TextStyle titleBig = TextStyle(
    fontSize: 16,
    color: darkgrey,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 400)],
    letterSpacing: -0.2,
  );
  static const TextStyle titleLargeExtraBold = TextStyle(
    fontSize: 15,
    color: darkgrey,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 750)],
  );

  static const TextStyle titleLargeBold = TextStyle(
    fontSize: 15,
    color: darkgrey,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 600)],
  );
  static const TextStyle titleLarge = TextStyle(
    fontSize: 15,
    color: darkgrey,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 480)],
    letterSpacing: -0.2,
  );
  static const TextStyle title = TextStyle(
    fontSize: 14,
    color: darkgrey,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 400)],
    wordSpacing: -0.22,
    letterSpacing: -0.18,
  );
  static const TextStyle titleSmall = TextStyle(
    fontSize: 13.6,
    color: darkgrey,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 500)],
    wordSpacing: -0.38,
    letterSpacing: -0.2,
  );
  static const TextStyle body = TextStyle(
    fontSize: 12,
    color: darkgrey,
    fontFamily: 'Open',
    letterSpacing: -0.2,
    fontVariations: <FontVariation>[FontVariation('wght', 500)],
  );
  static const TextStyle bodyThin = TextStyle(
    fontSize: 12.6,
    color: darkgrey,
    fontFamily: 'Open',
    letterSpacing: -0.2,
    fontVariations: <FontVariation>[FontVariation('wght', 360)],
  );
  static const TextStyle bodySmll = TextStyle(
    fontSize: 11,
    color: darkgrey,
    fontFamily: 'Open',
    height: 1.3,
    fontVariations: <FontVariation>[FontVariation('wght', 400)],
    letterSpacing: -0.2,
    wordSpacing: -0.6,
  );
  static const TextStyle bodySmallBold = TextStyle(
    fontSize: 11,
    color: darkgrey,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 600)],
  );
}

class Bold {
  static const TextStyle small = TextStyle(color: Colors.white, fontSize: 8, fontFamily: 'Open', fontVariations: <FontVariation>[FontVariation('wght', 700)]);
  static const TextStyle titleBig = TextStyle(
    fontSize: 16,
    height: 1,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 700)],
    letterSpacing: -0.1,
  );
  static const TextStyle title17 = TextStyle(
    fontSize: 17,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 700)],
    fontFamily: 'Red Hat Display',
    letterSpacing: -0.1,
  );

  static const TextStyle title = TextStyle(fontSize: 15, color: Colors.black, fontVariations: <FontVariation>[FontVariation('wght', 700)]);

  static const TextStyle titleSmall = TextStyle(
    fontSize: 14,
    color: Colors.black,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 650)],
    letterSpacing: -0.1,
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 18,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 700)],
    wordSpacing: -0.22,
    letterSpacing: -0.12,
  );
  static const TextStyle headingSmall = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 700)],
    letterSpacing: 0.1,
  );
  static const TextStyle heading = TextStyle(
    fontSize: 22,
    letterSpacing: -0.1,
    fontWeight: FontWeight.w700,
    fontVariations: <FontVariation>[FontVariation('wght', 700)],
    color: Colors.black,
  );

  static const TextStyle headingBig = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontVariations: <FontVariation>[FontVariation('wght', 700)],
    color: Colors.black,
  );

  static const TextStyle displaySmall = TextStyle(
    fontSize: 32,
    color: Colors.black,
    fontVariations: <FontVariation>[FontVariation('wght', 700)],
    letterSpacing: 0.32,
  );
}

class White {
  static const TextStyle heading = TextStyle(
    fontSize: 20,
    fontFamily: 'Open',
    //   fontWeight: FontWeight.bold,
    fontVariations: <FontVariation>[FontVariation('wght', 750)],
    color: Colors.white,
  );
  static const TextStyle headingSmall = TextStyle(
    fontSize: 18,
    letterSpacing: 0.1,
    height: 1.33,
    color: Colors.white,
    fontVariations: <FontVariation>[FontVariation('wght', 650)],
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  );
  static const TextStyle titleLarge = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontVariations: <FontVariation>[FontVariation('wght', 600)],
    letterSpacing: -0.2,
    //   wordSpacing: -0.2,
    height: 1.2,
  );
  static const TextStyle title = TextStyle(fontSize: 15.6, color: Colors.white, fontVariations: <FontVariation>[FontVariation('wght', 600)]);
  static const TextStyle titleSmall = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 600)],
  );
  static const TextStyle bodyLarge = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 550)],
  );
  //  static const TextStyle body = TextStyle(color: Colors.white, fontSize: 10, fontFamily: 'Open', fontVariations: <FontVariation>[FontVariation('wght', 600)]);
  static const TextStyle bodySmall = TextStyle(
    color: Colors.white,
    fontSize: 8,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 600)],
  );
}

const TextStyle reggaeOneUnderline = TextStyle(
  color: Color(0xFF18C4B8),
  fontSize: 14,
  fontFamily: 'ReggaeOne',
  decoration: TextDecoration.underline,
  decorationColor: Color(0xFF18C4B8),
  fontVariations: <FontVariation>[FontVariation('wght', 630)],
);
const TextStyle reggaeOneWhite = TextStyle(
  color: Colors.white,
  fontSize: 14,
  fontFamily: 'ReggaeOne',

  fontVariations: <FontVariation>[FontVariation('wght', 630)],
);

class Cyan {
  static const TextStyle body = TextStyle(color: Color(0xFF18C4B8), fontSize: 10, fontVariations: <FontVariation>[FontVariation('wght', 500)]);
  static const TextStyle titleLarge = TextStyle(
    color: Color(0xFF18C4B8),
    fontSize: 15,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 600)],
  );

  static const TextStyle title = TextStyle(
    color: Color(0xFF18C4B8),
    fontSize: 14,
    fontFamily: 'Open',
    fontVariations: <FontVariation>[FontVariation('wght', 630)],
  );

  static const TextStyle underline = TextStyle(
    color: Color(0xFF18C4B8),
    fontSize: 14,
    fontFamily: 'Open',
    decoration: TextDecoration.underline,
    fontVariations: <FontVariation>[FontVariation('wght', 630)],
  );
  static const TextStyle headingSmall = TextStyle(
    color: Color(0xFF18C4B8),
    fontSize: 16,
    fontFamily: 'Open',

    fontVariations: <FontVariation>[FontVariation('wght', 650)],
  );
  static const TextStyle headingl = TextStyle(
    color: Color(0xFF18C4B8),
    fontSize: 17,
    fontFamily: 'Open',

    fontVariations: <FontVariation>[FontVariation('wght', 500)],
  );

  static const TextStyle heading = TextStyle(
    fontSize: 20,
    color: Color(0xFF18C4B8),
    fontVariations: <FontVariation>[FontVariation('wght', 700)],
    letterSpacing: 0.1,
  );
}
