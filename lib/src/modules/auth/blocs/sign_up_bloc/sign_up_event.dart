part of 'sign_up_bloc.dart';

@freezed
sealed class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) = _SignUpWithEmailAndPassword;
}
