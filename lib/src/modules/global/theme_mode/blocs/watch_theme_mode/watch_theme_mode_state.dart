part of 'watch_theme_mode_bloc.dart';

@freezed
sealed class WatchThemeModeState with _$WatchThemeModeState {
  const factory WatchThemeModeState.initial() = WatchThemeModeInitial;
  const factory WatchThemeModeState.loading() = WatchThemeModeLoading;
  const factory WatchThemeModeState.success(
    DSThemeModeState themeMode,
    DateTime dateTime,
  ) = WatchThemeModeSuccess;
  const factory WatchThemeModeState.failure(Failure failure) =
      WatchThemeModeFailure;
}
