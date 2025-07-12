import 'package:flutter/material.dart';

enum DSThemeMode {
  system,
  dark,
  light;

  static DSThemeMode fromName(String name) => values.firstWhere(
    (mode) => mode.name == name,
  );

  Brightness? get effectiveBrightness => switch (this) {
    DSThemeMode.system => null,
    DSThemeMode.dark => Brightness.dark,
    DSThemeMode.light => Brightness.light,
  };

  T map<T>({
    required T Function() light,
    required T Function() dark,
    required T Function() system,
  }) => switch (this) {
    DSThemeMode.light => light(),
    DSThemeMode.dark => dark(),
    DSThemeMode.system => system(),
  };
}
