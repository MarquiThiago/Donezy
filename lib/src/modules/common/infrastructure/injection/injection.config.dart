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
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../../auth/blocs/sign_in_bloc/sign_in_bloc.dart' as _i146;
import '../../../auth/blocs/sign_out_bloc/sign_out_bloc.dart' as _i622;
import '../../../auth/blocs/sign_up_bloc/sign_up_bloc.dart' as _i477;
import '../../../auth/blocs/watch_auth_bloc/watch_auth_bloc.dart' as _i478;
import '../../../auth/dependencies/auth_module.dart' as _i86;
import '../../../auth/domain/auth_repository.dart' as _i254;
import '../../../auth/domain/usecases/sign_in_with_email_and_password_usecase.dart'
    as _i946;
import '../../../auth/domain/usecases/sign_out_usecase.dart' as _i648;
import '../../../auth/domain/usecases/sign_up_with_email_and_password_usecase.dart'
    as _i744;
import '../../../auth/domain/usecases/watch_auth_status_usecase.dart' as _i398;
import '../../../global/theme_mode/blocs/set_theme_mode/set_theme_mode_bloc.dart'
    as _i273;
import '../../../global/theme_mode/blocs/watch_theme_mode/watch_theme_mode_bloc.dart'
    as _i461;
import '../../../global/theme_mode/domain/persist_theme_mode_service.dart'
    as _i678;
import '../../../global/theme_mode/domain/usecases/set_theme_mode_usecase.dart'
    as _i291;
import '../../../global/theme_mode/domain/usecases/watch_theme_mode_usecase.dart'
    as _i869;
import '../../../global/theme_mode/infrastructure/persist_theme_mode_service_impl.dart'
    as _i895;
import '../../../note/dependencies/note_module.dart' as _i783;
import '../../../note/domain/note_repository.dart' as _i70;
import '../../../note/presentation/blocs/item_manager_bloc/item_manager_bloc.dart'
    as _i220;
import '../../../note/presentation/blocs/watch_notes_bloc/watch_notes_bloc.dart'
    as _i428;
import '../../../splash_screen/blocs/splash_bloc/splash_bloc.dart' as _i596;
import '../../domain/models/user_uid.dart' as _i68;
import '../firebase/firebase_injectable_modules.dart' as _i166;
import 'external_modules.dart' as _i219;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final externalModules = _$ExternalModules();
    final noteModule = _$NoteModule();
    final firebaseInjectableModules = _$FirebaseInjectableModules();
    final authModule = _$AuthModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => externalModules.prefs,
      preResolve: true,
    );
    gh.factory<_i70.NoteRepository>(() => noteModule.noteRepository());
    gh.singleton<_i59.FirebaseAuth>(
      () => firebaseInjectableModules.firebaseAuth,
    );
    gh.singleton<_i596.SplashBloc>(() => _i596.SplashBloc());
    gh.lazySingleton<_i974.FirebaseFirestore>(
      () => firebaseInjectableModules.firestore,
    );
    gh.singleton<_i678.PersistThemeModeService>(
      () => _i895.PersistThemeModeServiceImpl(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i428.WatchNotesBloc>(
      () => noteModule.watchNotesBloc(gh<_i68.UserUid>()),
    );
    gh.factory<_i220.ItemManagerBloc>(
      () =>
          _i220.ItemManagerBloc(gh<_i68.UserUid>(), gh<_i70.NoteRepository>()),
    );
    gh.singleton<_i254.AuthRepository>(
      () => authModule.authRepository(
        gh<_i59.FirebaseAuth>(),
        gh<_i974.FirebaseFirestore>(),
      ),
    );
    gh.singleton<_i869.WatchThemeModeUsecase>(
      () => _i869.WatchThemeModeUsecase(gh<_i678.PersistThemeModeService>()),
    );
    gh.singleton<_i291.SetThemeModeUsecase>(
      () => _i291.SetThemeModeUsecase(gh<_i678.PersistThemeModeService>()),
    );
    gh.singleton<_i273.SetThemeModeBloc>(
      () => _i273.SetThemeModeBloc(gh<_i291.SetThemeModeUsecase>()),
    );
    gh.singleton<_i461.WatchThemeModeBloc>(
      () => _i461.WatchThemeModeBloc(gh<_i869.WatchThemeModeUsecase>()),
    );
    gh.factory<_i946.SignInWithEmailAndPasswordUseCase>(
      () => authModule.signInWithEmailAndPasswordUseCase(
        gh<_i254.AuthRepository>(),
      ),
    );
    gh.factory<_i146.SignInBloc>(
      () =>
          authModule.signInBloc(gh<_i946.SignInWithEmailAndPasswordUseCase>()),
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
    return this;
  }
}

class _$ExternalModules extends _i219.ExternalModules {}

class _$NoteModule extends _i783.NoteModule {}

class _$FirebaseInjectableModules extends _i166.FirebaseInjectableModules {}

class _$AuthModule extends _i86.AuthModule {}
