import 'package:donezy_app/src/modules/auth/domain/usecases/sign_in_with_email_and_password_usecase.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(this._signInWithEmailAndPasswordUseCase)
    : super(const SignInState.initial()) {
    on<SignInEvent>(
      (event, emit) async => switch (event) {
        _SignInWithEmailAndPassword() => _onSignInWithEmailAndPassword(
          event,
          emit,
        ),
      },
    );
  }

  final SignInWithEmailAndPasswordUseCase _signInWithEmailAndPasswordUseCase;

  Future<void> _onSignInWithEmailAndPassword(
    _SignInWithEmailAndPassword event,
    Emitter<SignInState> emit,
  ) async {
    emit(const SignInState.loading());

    final result = await _signInWithEmailAndPasswordUseCase(
      event.email,
      event.password,
    );

    result.fold((failure) => emit(SignInState.failure(failure)), (userUid) {
      emit(SignInState.authenticated(userUid: userUid));
    });
  }
}
