import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/auth/domain/auth_repository.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignOutUseCase {
  const SignOutUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<Either<Failure, void>> call() async => _authRepository.signOut();
}
