import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/auth/domain/auth_repository.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignInWithEmailAndPasswordUseCase {
  const SignInWithEmailAndPasswordUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<Either<Failure, UserCredential>> call(
    String email,
    String password,
  ) async => _authRepository.signInWithEmailAndPassword(email, password);
}
