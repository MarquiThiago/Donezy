part of 'sign_out_bloc.dart';

@freezed
sealed class SignOutState with _$SignOutState {
  const factory SignOutState.initial() = SignOutInitial;
  const factory SignOutState.loading() = SignOutLoading;
  const factory SignOutState.success() = SignOutSuccess;
  const factory SignOutState.failure(Failure failure) = SignOutFailure;
}
