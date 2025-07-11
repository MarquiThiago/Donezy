// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../../auth/blocs/sign_in_bloc/sign_in_bloc.dart' as _i146;
import '../../../auth/blocs/sign_out_bloc/sign_out_bloc.dart' as _i622;
import '../../../auth/blocs/sign_up_bloc/sign_up_bloc.dart' as _i477;
import '../../../auth/blocs/watch_auth_bloc/watch_auth_bloc.dart' as _i478;
import '../../../auth/domain/auth_repository.dart' as _i254;
import '../../../auth/domain/usecases/sign_in_with_email_and_password_usecase.dart'
    as _i946;
import '../../../auth/domain/usecases/sign_out_usecase.dart' as _i648;
import '../../../auth/domain/usecases/sign_up_with_email_and_password_usecase.dart'
    as _i744;
import '../../../auth/domain/usecases/watch_auth_status_usecase.dart' as _i398;
import '../../../auth/infrastructure/auth_repository_impl.dart' as _i836;
import '../../../note/domain/note_repository.dart' as _i70;
import '../../../note/infrastructure/note_repository_impl.dart' as _i1011;
import '../firebase/firebase_injectable_modules.dart' as _i166;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final firebaseInjectableModules = _$FirebaseInjectableModules();
    gh.singleton<_i59.FirebaseAuth>(
      () => firebaseInjectableModules.firebaseAuth,
    );
    gh.lazySingleton<_i974.FirebaseFirestore>(
      () => firebaseInjectableModules.firestore,
    );
    gh.singleton<_i254.AuthRepository>(
      () => _i836.AuthRepositoryImpl(
        gh<_i59.FirebaseAuth>(),
        gh<_i974.FirebaseFirestore>(),
      ),
    );
    gh.lazySingleton<_i70.NoteRepository>(
      () => _i1011.NoteRepositoryImpl(gh<_i974.FirebaseFirestore>()),
    );
    gh.factory<_i946.SignInWithEmailAndPasswordUseCase>(
      () => _i946.SignInWithEmailAndPasswordUseCase(gh<_i254.AuthRepository>()),
    );
    gh.factory<_i744.SignUpWithEmailAndPasswordUseCase>(
      () => _i744.SignUpWithEmailAndPasswordUseCase(gh<_i254.AuthRepository>()),
    );
    gh.factory<_i648.SignOutUseCase>(
      () => _i648.SignOutUseCase(gh<_i254.AuthRepository>()),
    );
    gh.singleton<_i398.WatchAuthStatusUseCase>(
      () => _i398.WatchAuthStatusUseCase(gh<_i254.AuthRepository>()),
    );
    gh.factory<_i477.SignUpBloc>(
      () => _i477.SignUpBloc(gh<_i744.SignUpWithEmailAndPasswordUseCase>()),
    );
    gh.singleton<_i478.WatchAuthBloc>(
      () => _i478.WatchAuthBloc(gh<_i398.WatchAuthStatusUseCase>()),
    );
    gh.factory<_i622.SignOutBloc>(
      () => _i622.SignOutBloc(gh<_i648.SignOutUseCase>()),
    );
    gh.factory<_i146.SignInBloc>(
      () => _i146.SignInBloc(gh<_i946.SignInWithEmailAndPasswordUseCase>()),
    );
    return this;
  }
}

class _$FirebaseInjectableModules extends _i166.FirebaseInjectableModules {}
