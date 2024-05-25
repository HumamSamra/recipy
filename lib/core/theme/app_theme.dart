import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static get light => ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(),
      splashFactory: InkRipple.splashFactory,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }));

  static get dark => ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: Colors.green,
      ).copyWith(
        brightness: Brightness.dark,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(),
      splashFactory: InkRipple.splashFactory,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }));
}
