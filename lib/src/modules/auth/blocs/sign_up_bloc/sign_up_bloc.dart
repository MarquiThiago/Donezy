import 'package:donezy_app/src/modules/auth/domain/usecases/sign_up_with_email_and_password_usecase.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(this._signUpWithEmailAndPasswordUseCase)
    : super(const SignUpState.initial()) {
    on<SignUpEvent>(
      (event, emit) async => switch (event) {
        _SignUpWithEmailAndPassword() => _onSignUpWithEmailAndPassword(
          event,
          emit,
        ),
      },
    );
  }

  final SignUpWithEmailAndPasswordUseCase _signUpWithEmailAndPasswordUseCase;

  Future<void> _onSignUpWithEmailAndPassword(
    _SignUpWithEmailAndPassword event,
    Emitter<SignUpState> emit,
  ) async {
    emit(const SignUpState.loading());

    final result = await _signUpWithEmailAndPasswordUseCase(
      event.email,
      event.password,
    );

    result.fold((failure) => emit(SignUpState.failure(failure)), (
      userCredential,
    ) {
      final user = userCredential.user;
      if (user != null) {
        emit(SignUpState.success(userUid: UserUid(user.uid)));
      } else {
        emit(const SignUpState.failure(Failure.userNotFound()));
      }
    });
  }
}
