part of 'splash_bloc.dart';

@freezed
sealed class SplashState with _$SplashState {
  const factory SplashState.initial() = SplashInitial;
  const factory SplashState.loading() = SplashLoading;
  const factory SplashState.ready() = SplashReady;
  const factory SplashState.finished() = SplashFinished;
}
