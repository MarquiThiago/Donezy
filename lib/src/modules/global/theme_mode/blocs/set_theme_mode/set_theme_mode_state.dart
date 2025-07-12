part of 'set_theme_mode_bloc.dart';

@freezed
sealed class SetThemeModeState with _$SetThemeModeState {
  const factory SetThemeModeState.initial() = SetThemeModeInitial;
  const factory SetThemeModeState.loading() = SetThemeModeLoading;
  const factory SetThemeModeState.success() = SetThemeModeSuccess;
  const factory SetThemeModeState.failure(Failure failure) =
      SetThemeModeFailure;
}
