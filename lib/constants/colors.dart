import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // this basically makes it so you can't instantiate this class

  static const black = Colors.black;
  static const white = Colors.white;

  static const textColor = Colors.white;

  static const secondaryTextColor = Color(0xFF8d8d8d);

  static const backgroundColor = Color(0xFF1e1e1f);

  static const primaryColor = Color(0xFF0588FA);

  static const Map<int, Color> orange = <int, Color>{
    50: Color(0xFFFCF2E7),
    100: Color(0xFFF8DEC3),
    200: Color(0xFFF3C89C),
    300: Color(0xFFEEB274),
    400: Color(0xFFEAA256),
    500: Color(0xFFE69138),
    600: Color(0xFFE38932),
    700: Color(0xFFDF7E2B),
    800: Color(0xFFDB7424),
    900: Color(0xFFD56217)
  };
}
