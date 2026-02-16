import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/note.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';
import 'package:donezy_app/src/modules/note/domain/note_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watch_notes_event.dart';
part 'watch_notes_state.dart';
part 'watch_notes_bloc.freezed.dart';

class WatchNotesBloc extends Bloc<WatchNotesEvent, WatchNotesState> {
  WatchNotesBloc(this._noteRepository, this._userUid)
    : super(const WatchNotesState.initial()) {
    on<WatchNotesEvent>(
      (event, emit) => switch (event) {
        _Started() => _onStarted(event, emit),
      },
    );
  }

  final NoteRepository _noteRepository;
  final UserUid _userUid;

  Future<void> _onStarted(_Started event, Emitter<WatchNotesState> emit) async {
    emit(const WatchNotesState.loading());
    final result = _noteRepository.watchAll(_userUid);
    await emit.forEach(
      result,
      onData: (either) => either.fold(
        (failure) => WatchNotesState.failure(failure),
        (notes) => WatchNotesState.success(notes),
      ),
    );
  }
}
