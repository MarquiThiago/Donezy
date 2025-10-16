import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donezy_app/src/modules/auth/infrastructure/auth_repository_impl.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';
import 'package:donezy_app/src/modules/common/infrastructure/injection/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  late AuthRepositoryImpl repository;
  late FirebaseAuth firebaseAuth;
  late FirebaseFirestore firestore;

  setUp(() {
    firebaseAuth = getIt<FirebaseAuth>();
    firestore = getIt<FirebaseFirestore>();
    repository = AuthRepositoryImpl(firebaseAuth, firestore);
  });

  test('sign up with email and password', () async {
    // Arrange
    final email = 'email@gmail.com';
    final password = '123456';

    // Act

    final result = await repository.signUpWithEmailAndPassword(email, password);

    // Assert

    expect(result.isRight(), UserUid);
  });
}
