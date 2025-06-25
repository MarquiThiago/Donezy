import 'package:flutter/material.dart';

abstract class DSBaseTypography {
  static const String fontInter = 'Inter';
  static const String fontExo2 = 'Exo2';
  static const String fontPoppins = 'Poppins';

  static const TextTheme baseTextTheme = TextTheme(
    /// [DISPLAY] (Big titles – using Exo2)
    displayLarge: TextStyle(
      fontFamily: fontExo2,
      fontSize: 48,
      fontWeight: FontWeight.w800,
      letterSpacing: 1.25,
    ),
    displayMedium: TextStyle(
      fontFamily: fontExo2,
      fontSize: 36,
      fontWeight: FontWeight.w800,
      letterSpacing: 1,
    ),
    displaySmall: TextStyle(
      fontFamily: fontExo2,
      fontSize: 24,
      fontWeight: FontWeight.w800,
      letterSpacing: 0.5,
    ),

    /// [TITLE] (Styled titles – contrast, using Inter)
    titleLarge: TextStyle(
      fontFamily: fontInter,
      fontSize: 32,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
      letterSpacing: 1,
    ),
    titleMedium: TextStyle(
      fontFamily: fontInter,
      fontSize: 24,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
      letterSpacing: 0.25,
    ),
    titleSmall: TextStyle(
      fontFamily: fontInter,
      fontSize: 20,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
      letterSpacing: 0.25,
    ),

    /// [HEADLINE] (Normal headlines – using Inter)
    headlineLarge: TextStyle(
      fontFamily: fontInter,
      fontSize: 24,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.75,
    ),
    headlineMedium: TextStyle(
      fontFamily: fontInter,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
    ),
    headlineSmall: TextStyle(
      fontFamily: fontInter,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
    ),

    /// [BODY] (Normal text – using Inter)
    bodyLarge: TextStyle(
      fontFamily: fontInter,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      fontFamily: fontInter,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      fontFamily: fontInter,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),

    /// [LABEL] (Labels, captions – using Poppins)
    labelLarge: TextStyle(
      fontFamily: fontPoppins,
      fontWeight: FontWeight.w700,
      fontSize: 12,
    ),
    labelMedium: TextStyle(
      fontFamily: fontPoppins,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    ),
    labelSmall: TextStyle(
      fontFamily: fontPoppins,
      fontWeight: FontWeight.w300,
      fontSize: 10,
    ),
  );

  static const exampleText = TextStyle(
    fontFamily: fontExo2,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );
}
