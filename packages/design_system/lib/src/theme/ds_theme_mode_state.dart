import 'package:flutter/material.dart';

import 'ds_theme_mode.dart';

class DSThemeModeState {
  DSThemeModeState({
    required this.selected,
    this.effectiveBrightness,
  });
  final DSThemeMode selected;
  final Brightness? effectiveBrightness;
}
