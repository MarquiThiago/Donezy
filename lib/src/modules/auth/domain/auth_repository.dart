import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/auth/domain/auth_status.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, UserUid>> signInWithEmailAndPassword(
    String email,
    String password,
  );
  Future<Either<Failure, UserUid>> signUpWithEmailAndPassword(
    String email,
    String password,
  );
  Future<Either<Failure, void>> signOut();
  Stream<Either<Failure, AuthStatus>> get authStatusStream;
}
