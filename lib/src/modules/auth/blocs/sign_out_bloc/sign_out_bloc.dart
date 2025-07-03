import 'package:donezy_app/src/modules/auth/domain/usecases/sign_out_usecase.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_out_event.dart';
part 'sign_out_state.dart';
part 'sign_out_bloc.freezed.dart';

@injectable
class SignOutBloc extends Bloc<SignOutEvent, SignOutState> {
  SignOutBloc(this._signOutUseCase) : super(const SignOutState.initial()) {
    on<SignOutEvent>(
      (event, emit) async => switch (event) {
        _SignOut() => _onSignOut(event, emit),
      },
    );
  }

  final SignOutUseCase _signOutUseCase;

  Future<void> _onSignOut(_SignOut event, Emitter<SignOutState> emit) async {
    emit(const SignOutState.loading());

    final result = await _signOutUseCase();

    result.fold(
      (failure) => emit(SignOutState.failure(failure)),
      (_) => emit(const SignOutState.success()),
    );
  }
}
