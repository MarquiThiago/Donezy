import 'package:flutter/material.dart';

/// Wrapper for all the app properties that are not directly theme related.
///
/// Use this class to store properties such as aspect ratios, [Radius],
/// [BoxConstraints], etc.
abstract class DSProperty {
  static const double squareAspectRatio = 1;
  static const double wideAspectRatio = 16 / 9;

  static const int fullScreenBlockerOpacity = 212;

  static const Radius radiusXXSmall = Radius.circular(2);
  static const Radius radiusXSmall = Radius.circular(4);
  static const Radius radiusSmall = Radius.circular(8);
  static const Radius radius = Radius.circular(12);
  static const Radius radiusLarge = Radius.circular(16);
  static const Radius radiusXLarge = Radius.circular(24);
  static const Radius radiusXXLarge = Radius.circular(32);
  static const Radius radiusXXXLarge = Radius.circular(40);
}
