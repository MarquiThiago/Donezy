// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

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
    gh.lazySingleton<_i974.FirebaseFirestore>(
      () => firebaseInjectableModules.firestore,
    );
    gh.lazySingleton<_i70.NoteRepository>(
      () => _i1011.NoteRepositoryImpl(gh<_i974.FirebaseFirestore>()),
    );
    return this;
  }
}

class _$FirebaseInjectableModules extends _i166.FirebaseInjectableModules {}
