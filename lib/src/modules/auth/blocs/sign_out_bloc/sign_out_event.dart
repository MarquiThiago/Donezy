part of 'sign_out_bloc.dart';

@freezed
sealed class SignOutEvent with _$SignOutEvent {
  const factory SignOutEvent.signOut() = _SignOut;
}
