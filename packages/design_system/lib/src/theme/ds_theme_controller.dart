import 'package:flutter/material.dart';

import 'base/ds_theme.dart';
import 'ds_theme_mode.dart';
import 'ds_theme_mode_state.dart';

class DSThemeController extends ChangeNotifier {
  DSThemeController();

  DSThemeMode get appThemeMode => _appThemeMode;
  ThemeMode get themeMode => _themeMode;
  ThemeData get themeData => _themeData;
  bool get isDark => _effectiveBrightness == Brightness.dark;

  DSThemeMode _appThemeMode = DSThemeMode.system;
  ThemeMode _themeMode = ThemeMode.system;
  ThemeData _themeData = DSTheme.darkThemeData;
  Brightness? _effectiveBrightness = Brightness.dark;

  void updateTheme(DSThemeModeState state) {
    _appThemeMode = state.selected;
    _effectiveBrightness = state.effectiveBrightness;
    _toggleThemeMode(_appThemeMode, _effectiveBrightness);
    _toggleThemeData();
    notifyListeners();
  }

  void _toggleThemeMode(DSThemeMode newMode, Brightness? effectiveBrightness) =>
      _themeMode = switch (newMode) {
        DSThemeMode.light => ThemeMode.light,
        DSThemeMode.dark => ThemeMode.dark,
        DSThemeMode.system =>
          effectiveBrightness == Brightness.dark
              ? ThemeMode.dark
              : ThemeMode.light,
      };

  void _toggleThemeData() =>
      _themeData = isDark ? DSTheme.darkThemeData : DSTheme.lightThemeData;
}
