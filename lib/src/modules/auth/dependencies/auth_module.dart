import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donezy_app/src/modules/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:donezy_app/src/modules/auth/domain/auth_repository.dart';
import 'package:donezy_app/src/modules/auth/domain/usecases/sign_in_with_email_and_password_usecase.dart';
import 'package:donezy_app/src/modules/auth/infrastructure/auth_repository_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit()
Future<void> configureAuthInjection(GetIt getIt) async {}

@module
abstract class AuthModule {
  @singleton
  AuthRepository authRepository(
    FirebaseAuth firebaseAuth,
    FirebaseFirestore firestore,
  ) => AuthRepositoryImpl(firebaseAuth, firestore);

  SignInWithEmailAndPasswordUseCase signInWithEmailAndPasswordUseCase(
    AuthRepository authRepository,
  ) => SignInWithEmailAndPasswordUseCase(authRepository);

  SignInBloc signInBloc(
    SignInWithEmailAndPasswordUseCase signInWithEmailAndPasswordUseCase,
  ) => SignInBloc(signInWithEmailAndPasswordUseCase);
}
