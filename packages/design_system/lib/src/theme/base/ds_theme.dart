import 'package:design_system/src/const/ds_property.dart';
import 'package:design_system/src/const/ds_size.dart';
import 'package:design_system/src/const/ds_space.dart';
import 'package:flutter/material.dart';

import '../extensions/ds_color.dart';
import '../extensions/ds_typography.dart';
import 'ds_base_typography.dart';
import 'ds_pallete.dart';

part 'ds_dark_theme.dart';
part 'ds_light_theme.dart';
part 'ds_theme_properties.dart';

// ignore: avoid_classes_with_only_static_members
abstract class DSTheme {
  static ThemeData get lightThemeData => _dsLightThemeData;
  static ThemeData get darkThemeData => _dsDarkThemeData;
}
