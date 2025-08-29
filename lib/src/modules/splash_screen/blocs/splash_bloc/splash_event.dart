part of 'splash_bloc.dart';

@freezed
sealed class SplashEvent with _$SplashEvent {
  const factory SplashEvent.started() = _SplashStarted;
  const factory SplashEvent.completed() = _SplashCompleted;
  const factory SplashEvent.reset() = _SplashReset;
}
