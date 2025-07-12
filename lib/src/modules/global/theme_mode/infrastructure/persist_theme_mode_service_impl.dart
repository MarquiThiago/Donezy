import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/infrastructure/exception_handle.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../domain/persist_theme_mode_service.dart';
import 'shared_preferences_keys.dart';

import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: PersistThemeModeService)
class PersistThemeModeServiceImpl implements PersistThemeModeService {
  PersistThemeModeServiceImpl(this._sharedPreferences) {
    unawaited(_init());
    _setupSystemThemeListener();
  }
  final SharedPreferences _sharedPreferences;
  final _streamController =
      StreamController<Either<Failure, DSThemeModeState>>();

  @override
  Stream<Either<Failure, DSThemeModeState>> get stream =>
      _streamController.stream;

  @override
  Future<Either<Failure, DSThemeModeState>> saveThemeMode(
    DSThemeMode themeMode,
  ) async {
    final result = await exceptionHandler(
      execute: () async {
        await _sharedPreferences.setString(
          SharedPreferencesKeys.appTheme,
          themeMode.name,
        );
        return DSThemeModeState(
          selected: themeMode,
          effectiveBrightness: themeMode.effectiveBrightness,
        );
      },
    );
    if (!_streamController.isClosed) {
      _streamController.add(result);
    }
    return result;
  }

  Future<void> _init() async => _streamController.add(
    await exceptionHandler<DSThemeModeState>(
      execute: () async {
        final themeChoiceString = _sharedPreferences.getString(
          SharedPreferencesKeys.appTheme,
        );

        if (themeChoiceString == null) {
          await _sharedPreferences.setString(
            SharedPreferencesKeys.appTheme,
            DSThemeMode.system.name,
          );
          return DSThemeModeState(
            selected: DSThemeMode.system,
            effectiveBrightness:
                WidgetsBinding.instance.platformDispatcher.platformBrightness,
          );
        }

        return _getThemeModeState();
      },
    ),
  );

  void _setupSystemThemeListener() =>
      WidgetsBinding.instance.platformDispatcher.onPlatformBrightnessChanged =
          () async {
            final themeMode = _sharedPreferences.getString(
              SharedPreferencesKeys.appTheme,
            );
            if (themeMode != DSThemeMode.system.name) {
              return;
            }
            final themeModeState = await _getThemeModeState();
            _streamController.add(Right(themeModeState));
          };

  Future<DSThemeModeState> _getThemeModeState() async {
    final brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    return DSThemeModeState(
      selected: DSThemeMode.system,
      effectiveBrightness: brightness,
    );
  }
}
