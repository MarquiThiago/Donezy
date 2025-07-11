part of 'watch_auth_bloc.dart';

@freezed
sealed class WatchAuthEvent with _$WatchAuthEvent {
  const factory WatchAuthEvent.start() = _Start;
  const factory WatchAuthEvent.update(Either<Failure, AuthStatus> result) =
      _Update;
}
