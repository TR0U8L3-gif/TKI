import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/extensions/num_extension.dart';

class AppColors {
  static const Color greenLight = Color(0xFF69F0AE);
  static const Color greenDark = Color(0xFF1B5E20);
  static const Color green = Color(0xFF4CAF50);
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

  static const Color grey50 = Color(0xFFeceff1);
  static const Color grey100 = Color(0xFFcfd8dc);
  static const Color grey200 = Color(0xFFb0bec5);
  static const Color grey300 = Color(0xFF90a4ae);
  static const Color grey400 = Color(0xFF78909c);
  static const Color grey500 = Color(0xFF607d8b);
  static const Color grey600 = Color(0xFF546e7a);
  static const Color grey700 = Color(0xFF455a64);
  static const Color grey800 = Color(0xFF37474f);
  static const Color grey900 = Color(0xFF263238);

  static const MaterialColor gray = MaterialColor(
    0xFF607d8b,
    <int, Color>{
      50: grey50,
      100: grey100,
      200: grey200,
      300: grey300,
      400: grey400,
      500: grey500,
      600: grey600,
      700: grey700,
      800: grey800,
      900: grey900,
    },
  );

  static ColorScheme get colorScheme =>
      ColorScheme.fromSeed(seedColor: gray, brightness: Brightness.light);

  static ThemeData get theme => ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true,
      ).copyWith(
          textTheme: ThemeData().textTheme.apply(
                bodyColor: gray[50],
              ),
          appBarTheme: AppBarTheme(
            backgroundColor: gray[800],
            foregroundColor: gray[50],
            centerTitle: true,
            actionsIconTheme: IconThemeData(color: gray[50]),
            iconTheme: IconThemeData(color: gray[50]),
            shape: ShapeBorder.lerp(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.l),
              ),
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.l),
              ),
              AppSize.one,
            ),
          ),
          scrollbarTheme: ScrollbarThemeData(
              thumbColor: WidgetStateProperty.all(
                grey400.withOpacity(AppSize.xl.fraction),
              ),
              thickness: WidgetStateProperty.all(AppSize.s)));
}
