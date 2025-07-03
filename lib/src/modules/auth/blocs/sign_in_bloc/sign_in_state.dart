part of 'sign_in_bloc.dart';

@freezed
sealed class SignInState with _$SignInState {
  const factory SignInState.initial() = SignInInitial;
  const factory SignInState.loading() = SignInLoading;
  const factory SignInState.authenticated({required UserUid userUid}) =
      SignInAuthenticated;
  const factory SignInState.unauthenticated() = SignInUnauthenticated;
  const factory SignInState.failure(Failure failure) = SignInFailure;
}
