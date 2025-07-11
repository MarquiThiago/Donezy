import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/auth/domain/auth_repository.dart';
import 'package:donezy_app/src/modules/auth/domain/auth_status.dart';
import 'package:donezy_app/src/modules/common/domain/const/common_domain_const.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';
import 'package:donezy_app/src/modules/common/infrastructure/exception/custom_exception.dart';
import 'package:donezy_app/src/modules/common/infrastructure/exception/custom_exception_code.dart';
import 'package:donezy_app/src/modules/common/infrastructure/exception_handle.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._firebaseAuth, this._firestore) {
    unawaited(_init());
  }

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  StreamSubscription<User?>? _authStateSubscription;
  final StreamController<Either<Failure, AuthStatus>> _controller =
      StreamController.broadcast();

  @override
  Stream<Either<Failure, AuthStatus>> get authStatusStream =>
      _controller.stream;

  Future<Either<Failure, Unit>> _init() async => exceptionHandler(
    execute: () async {
      await _dispose();

      _authStateSubscription = _firebaseAuth.authStateChanges().listen(
        (firebaseUser) {
          final user = firebaseUser;
          if (user == null) {
            _controller.add(const Right(AuthStatus.unauthenticated()));
            return;
          }
          _controller.add(
            Right(AuthStatus.authenticated(userUid: UserUid(user.uid))),
          );
        },
        onError: (error) {
          _controller.add(Left(error));

          Future.delayed(
            CommonDomainConst.defaultRetryDelay,
            () => unawaited(_init()),
          );
        },
      );

      return unit;
    },
  );

  @override
  Future<Either<Failure, UserCredential>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async => exceptionHandler(
    execute: () async {
      final result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = result.user;
      if (user == null) {
        throw CustomException(code: CustomExceptionCode.userNotFound);
      }
      return result;
    },
  );

  @override
  Future<Either<Failure, UserCredential>> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async => exceptionHandler(
    execute: () async {
      final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = result.user;
      if (user == null) {
        throw CustomException(code: CustomExceptionCode.userNotFound);
      }
      return result;
    },
  );

  @override
  Future<Either<Failure, void>> signOut() async => exceptionHandler(
    execute: () async {
      await _firebaseAuth.signOut();
    },
  );

  Future<void> _dispose() async => exceptionHandler(
    execute: () async {
      await _authStateSubscription?.cancel();
      _authStateSubscription = null;
    },
  );
}
