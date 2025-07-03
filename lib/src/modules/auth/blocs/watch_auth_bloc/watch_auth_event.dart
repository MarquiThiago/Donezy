part of 'watch_auth_bloc.dart';

@freezed
sealed class WatchAuthEvent with _$WatchAuthEvent {
  const factory WatchAuthEvent.watchAuthStatus() = _WatchAuthStatus;
}
