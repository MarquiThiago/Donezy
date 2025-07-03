import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/auth/domain/auth_repository.dart';
import 'package:donezy_app/src/modules/auth/domain/auth_status.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:injectable/injectable.dart';

@injectable
class WatchAuthStatusUseCase {
  const WatchAuthStatusUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Stream<Either<Failure, AuthStatus>> call() =>
      _authRepository.authStatusStream;
}
