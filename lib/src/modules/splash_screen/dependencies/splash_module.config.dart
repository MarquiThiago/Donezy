// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:donezy_app/src/modules/auth/blocs/sign_in_bloc/sign_in_bloc.dart'
    as _i1068;
import 'package:donezy_app/src/modules/auth/blocs/sign_out_bloc/sign_out_bloc.dart'
    as _i468;
import 'package:donezy_app/src/modules/auth/blocs/sign_up_bloc/sign_up_bloc.dart'
    as _i395;
import 'package:donezy_app/src/modules/auth/blocs/watch_auth_bloc/watch_auth_bloc.dart'
    as _i341;
import 'package:donezy_app/src/modules/auth/dependencies/auth_module.dart'
    as _i117;
import 'package:donezy_app/src/modules/auth/domain/auth_repository.dart'
    as _i87;
import 'package:donezy_app/src/modules/auth/domain/usecases/sign_in_with_email_and_password_usecase.dart'
    as _i89;
import 'package:donezy_app/src/modules/auth/domain/usecases/sign_out_usecase.dart'
    as _i821;
import 'package:donezy_app/src/modules/auth/domain/usecases/sign_up_with_email_and_password_usecase.dart'
    as _i1048;
import 'package:donezy_app/src/modules/auth/domain/usecases/watch_auth_status_usecase.dart'
    as _i223;
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart'
    as _i303;
import 'package:donezy_app/src/modules/common/infrastructure/firebase/firebase_injectable_modules.dart'
    as _i900;
import 'package:donezy_app/src/modules/common/infrastructure/injection/external_modules.dart'
    as _i352;
import 'package:donezy_app/src/modules/global/theme_mode/blocs/set_theme_mode/set_theme_mode_bloc.dart'
    as _i415;
import 'package:donezy_app/src/modules/global/theme_mode/blocs/watch_theme_mode/watch_theme_mode_bloc.dart'
    as _i632;
import 'package:donezy_app/src/modules/global/theme_mode/domain/persist_theme_mode_service.dart'
    as _i298;
import 'package:donezy_app/src/modules/global/theme_mode/domain/usecases/set_theme_mode_usecase.dart'
    as _i942;
import 'package:donezy_app/src/modules/global/theme_mode/domain/usecases/watch_theme_mode_usecase.dart'
    as _i277;
import 'package:donezy_app/src/modules/global/theme_mode/infrastructure/persist_theme_mode_service_impl.dart'
    as _i668;
import 'package:donezy_app/src/modules/note/dependencies/note_module.dart'
    as _i745;
import 'package:donezy_app/src/modules/note/domain/note_repository.dart'
    as _i259;
import 'package:donezy_app/src/modules/note/presentation/blocs/item_manager_bloc/item_manager_bloc.dart'
    as _i283;
import 'package:donezy_app/src/modules/note/presentation/blocs/watch_notes_bloc/watch_notes_bloc.dart'
    as _i904;
import 'package:donezy_app/src/modules/splash_screen/presentation/blocs/splash_bloc/splash_bloc.dart'
    as _i98;
import 'package:donezy_app/src/modules/splash_screen/dependencies/splash_module.dart'
    as _i349;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

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
    final splashModule = _$SplashModule();
    final authModule = _$AuthModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => externalModules.prefs,
      preResolve: true,
    );
    gh.factory<_i259.NoteRepository>(() => noteModule.noteRepository());
    gh.singleton<_i59.FirebaseAuth>(
      () => firebaseInjectableModules.firebaseAuth,
    );
    gh.singleton<_i98.SplashBloc>(() => splashModule.splashBloc());
    gh.lazySingleton<_i974.FirebaseFirestore>(
      () => firebaseInjectableModules.firestore,
    );
    gh.singleton<_i298.PersistThemeModeService>(
      () => _i668.PersistThemeModeServiceImpl(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i904.WatchNotesBloc>(
      () => noteModule.watchNotesBloc(gh<_i303.UserUid>()),
    );
    gh.factory<_i283.ItemManagerBloc>(
      () => noteModule.itemManagerBloc(gh<_i303.UserUid>()),
    );
    gh.singleton<_i87.AuthRepository>(
      () => authModule.authRepository(
        gh<_i59.FirebaseAuth>(),
        gh<_i974.FirebaseFirestore>(),
      ),
    );
    gh.singleton<_i277.WatchThemeModeUsecase>(
      () => _i277.WatchThemeModeUsecase(gh<_i298.PersistThemeModeService>()),
    );
    gh.singleton<_i942.SetThemeModeUsecase>(
      () => _i942.SetThemeModeUsecase(gh<_i298.PersistThemeModeService>()),
    );
    gh.singleton<_i415.SetThemeModeBloc>(
      () => _i415.SetThemeModeBloc(gh<_i942.SetThemeModeUsecase>()),
    );
    gh.singleton<_i632.WatchThemeModeBloc>(
      () => _i632.WatchThemeModeBloc(gh<_i277.WatchThemeModeUsecase>()),
    );
    gh.factory<_i89.SignInWithEmailAndPasswordUseCase>(
      () => authModule.signInWithEmailAndPasswordUseCase(
        gh<_i87.AuthRepository>(),
      ),
    );
    gh.factory<_i1068.SignInBloc>(
      () => authModule.signInBloc(gh<_i89.SignInWithEmailAndPasswordUseCase>()),
    );
    gh.factory<_i1048.SignUpWithEmailAndPasswordUseCase>(
      () => _i1048.SignUpWithEmailAndPasswordUseCase(gh<_i87.AuthRepository>()),
    );
    gh.factory<_i821.SignOutUseCase>(
      () => _i821.SignOutUseCase(gh<_i87.AuthRepository>()),
    );
    gh.singleton<_i223.WatchAuthStatusUseCase>(
      () => _i223.WatchAuthStatusUseCase(gh<_i87.AuthRepository>()),
    );
    gh.factory<_i395.SignUpBloc>(
      () => _i395.SignUpBloc(gh<_i1048.SignUpWithEmailAndPasswordUseCase>()),
    );
    gh.singleton<_i341.WatchAuthBloc>(
      () => _i341.WatchAuthBloc(gh<_i223.WatchAuthStatusUseCase>()),
    );
    gh.factory<_i468.SignOutBloc>(
      () => _i468.SignOutBloc(gh<_i821.SignOutUseCase>()),
    );
    return this;
  }
}

class _$ExternalModules extends _i352.ExternalModules {}

class _$NoteModule extends _i745.NoteModule {}

class _$FirebaseInjectableModules extends _i900.FirebaseInjectableModules {}

class _$SplashModule extends _i349.SplashModule {}

class _$AuthModule extends _i117.AuthModule {}
