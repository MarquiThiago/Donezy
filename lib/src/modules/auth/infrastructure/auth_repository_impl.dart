import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/auth/domain/auth_repository.dart';
import 'package:donezy_app/src/modules/auth/domain/auth_status.dart';
import 'package:donezy_app/src/modules/common/domain/const/common_domain_const.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/user.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';
import 'package:donezy_app/src/modules/common/infrastructure/dto/user_dto.dart';
import 'package:donezy_app/src/modules/common/infrastructure/exception/custom_exception.dart';
import 'package:donezy_app/src/modules/common/infrastructure/exception/custom_exception_code.dart';
import 'package:donezy_app/src/modules/common/infrastructure/exception_handle.dart';
import 'package:donezy_app/src/modules/common/infrastructure/firebase/firestore_extension.dart';
import 'package:donezy_app/src/modules/common/infrastructure/firebase/firestore_helpers/user_firestore_helper.dart';
import 'package:firebase_auth/firebase_auth.dart'
    as firebase_auth
    show FirebaseAuth;
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._firebaseAuth, this._firestore) {
    unawaited(_init());
  }

  final firebase_auth.FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  StreamSubscription? _authStateSubscription;
  final StreamController<Either<Failure, AuthStatus>> _controller =
      StreamController.broadcast();

  StreamSubscription<Either<Failure, User>>? _userStreamSubscription;

  @override
  Stream<Either<Failure, AuthStatus>> get authStatusStream =>
      _controller.stream;

  Future<Either<Failure, Unit>> _init() async => exceptionHandler(
    execute: () async {
      const timeToWaitToRefresh = Duration(seconds: 3);
      await _dispose();

      _authStateSubscription = _firebaseAuth.authStateChanges().listen(
        (firebaseUser) {
          final user = firebaseUser;
          if (user == null) {
            _controller.add(const Right(AuthStatus.unauthenticated()));
            return;
          }

          Timer? timer;

          _userStreamSubscription = _watchUser(UserUid(user.uid)).listen(
            (result) => result.fold(
              (failure) => timer = Timer(timeToWaitToRefresh, () {
                _controller.add(Left(failure));
                unawaited(_refresh());
              }),
              (user) {
                timer?.cancel();

                _controller.add(Right(AuthStatus.authenticated(user: user)));
              },
            ),
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
  Future<Either<Failure, UserUid>> signInWithEmailAndPassword(
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

      return UserUid(user.uid);
    },
  );

  @override
  Future<Either<Failure, UserUid>> signUpWithEmailAndPassword(
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

      await _firestore
          .usersCollection()
          .doc(user.uid)
          .set(
            UserDTO(
              uid: user.uid,
              username: email.split('@')[0],
              displayName: user.displayName,
            ).toJson(),
          );

      return UserUid(user.uid);
    },
  );

  @override
  Future<Either<Failure, void>> signOut() async => exceptionHandler(
    execute: () async {
      await _firebaseAuth.signOut();
    },
  );

  Stream<Either<Failure, User>> _watchUser(UserUid userUid) {
    final docRef = _firestore
        .userDocument(userUid)
        .withConverter(
          fromFirestore: UserFirestoreHelpers.userFromFirestore,
          toFirestore: (_, __) => {},
        );

    return docRef.snapshots().map((snapshot) {
      final snapshotData = snapshot.data();
      if (snapshotData != null) {
        return snapshotData.fold(left, right);
      } else {
        return left(const Failure.userDocNonExistent());
      }
    });
  }

  Future<void> _refresh() async {
    await _authStateSubscription?.cancel();
    _authStateSubscription = null;
    await _userStreamSubscription?.cancel();
    _userStreamSubscription = null;

    await _init();
  }

  Future<void> _dispose() async => exceptionHandler(
    execute: () async {
      await _authStateSubscription?.cancel();
      _authStateSubscription = null;
    },
  );
}
