import 'package:flutter/material.dart';

class AppColors {

  static const Color yellowLight = Color(0xFFfcd07d);
  static const Color yellowDark = Color(0xFF895e0b);
  static const Color yellow = Color(0xFFfaaa15);
  static const Color orangeLight = Color(0xFFf2a285);
  static const Color orangeDark = Color(0xFF7f3013);
  static const Color orange = Color(0xFFe65621);
  static const Color redLight = Color(0xFFf07299);
  static const Color redDark = Color(0xFF7e0026);
  static const Color red = Color(0xFFe00045);
  static const Color purpleLight = Color(0xFFd176c8);
  static const Color purpleDark = Color(0xFF5f0356);
  static const Color purple = Color(0xFFa50494);
  static const Color blueLight = Color(0xFF9172cc);
  static const Color blueDark = Color(0xFF1f005a);
  static const Color blue = Color(0xFF33009a);

  static const MaterialColor gray = MaterialColor(
    0xFF607d8b,
    <int, Color>{
      50: Color(0xFFeceff1),
      100: Color(0xFFcfd8dc),
      200: Color(0xFFb0bec5),
      300: Color(0xFF90a4ae),
      400: Color(0xFF78909c),
      500: Color(0xFF607d8b),
      600: Color(0xFF546e7a),
      700: Color(0xFF455a64),
      800: Color(0xFF37474f),
      900: Color(0xFF263238),
    },
  );

  static ColorScheme get colorScheme => ColorScheme.fromSeed(seedColor: gray);
}