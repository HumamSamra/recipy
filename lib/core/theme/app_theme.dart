import 'package:flutter/material.dart';

class AppTheme {
  static light({
    required String fontFamily,
    required Color color,
  }) =>
      ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: color,
          ),
          fontFamily: fontFamily,
          splashFactory: InkRipple.splashFactory,
          brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.white,
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          }));

  static dark({
    required String fontFamily,
    required Color color,
  }) =>
      ThemeData(
          colorScheme: ColorScheme.dark(
            primary: color,
          ).copyWith(
            brightness: Brightness.dark,
          ),
          fontFamily: fontFamily,
          splashFactory: InkRipple.splashFactory,
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          }));
}
