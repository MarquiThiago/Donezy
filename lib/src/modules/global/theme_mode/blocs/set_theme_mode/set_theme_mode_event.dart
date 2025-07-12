part of 'set_theme_mode_bloc.dart';

@freezed
sealed class SetThemeModeEvent with _$SetThemeModeEvent {
  const factory SetThemeModeEvent.setThemeMode(DSThemeMode newThemeMode) =
      _SetThemeMode;
}
