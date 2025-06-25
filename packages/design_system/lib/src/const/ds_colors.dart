import 'package:flutter/material.dart';

class DSColors {
  static const int _orangeStdValue = 0xFFE75B06;
  static const MaterialColor orange = MaterialColor(
    _orangeStdValue,
    <int, Color>{
      500: Color(_orangeStdValue),
      700: Color(0xFFFE8137),
      900: Color(0xFF9D4201),
    },
  );

  static const int _blueStdValue = 0xFF236BD7;
  static const MaterialColor blue = MaterialColor(
    _blueStdValue,
    <int, Color>{
      500: Color(_blueStdValue),
    },
  );

  static const int _greenStdValue = 0xFF65FF87;
  static const MaterialColor green = MaterialColor(
    _greenStdValue,
    <int, Color>{
      300: Color(0xFFB2FFC3),
      500: Color(_greenStdValue),
      700: Color(0xFF208108),
    },
  );

  static const int _redStdValue = 0xFFF20D0D;
  static const red10percentOp = Color(0x1AF20D0D);
  static const red50percentOp = Color(0x80F20D0D);
  static const MaterialColor red = MaterialColor(
    _redStdValue,
    <int, Color>{
      300: Color(0xFFF76E6E),
      500: Color(_redStdValue),
      700: Color(0xFF910808),
    },
  );

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF111214);

  static const Color overlayScrim = Color.fromARGB(128, 0, 0, 0);
}
