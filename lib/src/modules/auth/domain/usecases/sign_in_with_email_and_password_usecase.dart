import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/auth/domain/auth_repository.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';

class SignInWithEmailAndPasswordUseCase {
  const SignInWithEmailAndPasswordUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<Either<Failure, UserUid>> call(String email, String password) async =>
      _authRepository.signInWithEmailAndPassword(email, password);
}
