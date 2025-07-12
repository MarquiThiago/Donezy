part of 'watch_theme_mode_bloc.dart';

@freezed
sealed class WatchThemeModeEvent with _$WatchThemeModeEvent {
  const factory WatchThemeModeEvent.start() = _Start;
  const factory WatchThemeModeEvent.update(
    Either<Failure<dynamic>, DSThemeModeState> result,
  ) = _Update;
}
