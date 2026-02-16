import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';
import 'package:donezy_app/src/modules/common/infrastructure/injection/injection.dart';
import 'package:donezy_app/src/modules/note/domain/note_repository.dart';
import 'package:donezy_app/src/modules/note/infrastructure/note_repository_impl.dart';
import 'package:donezy_app/src/modules/note/presentation/blocs/item_manager_bloc/item_manager_bloc.dart';
import 'package:donezy_app/src/modules/note/presentation/blocs/watch_notes_bloc/watch_notes_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit()
Future<void> configureNoteInjection(GetIt getIt) async {}

@module
abstract class NoteModule {
  NoteRepository noteRepository() =>
      NoteRepositoryImpl(getIt<FirebaseFirestore>());

  WatchNotesBloc watchNotesBloc(UserUid userUid) =>
      WatchNotesBloc(noteRepository(), userUid);

  ItemManagerBloc itemManagerBloc(UserUid userUid) =>
      ItemManagerBloc(userUid, noteRepository());
}
