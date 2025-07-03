part of 'watch_auth_bloc.dart';

@freezed
sealed class WatchAuthState with _$WatchAuthState {
  const factory WatchAuthState.initial() = WatchAuthInitial;
  const factory WatchAuthState.loading() = WatchAuthLoading;
  const factory WatchAuthState.authenticated({required UserUid userUid}) =
      Authenticated;
  const factory WatchAuthState.unauthenticated() = Unauthenticated;
  const factory WatchAuthState.failure(Failure failure) = WatchAuthFailure;
}
