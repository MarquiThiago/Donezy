import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/note.dart';
import 'package:donezy_app/src/modules/common/domain/models/note_request.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';
import 'package:donezy_app/src/modules/note/domain/note_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_manager_event.dart';
part 'item_manager_state.dart';
part 'item_manager_bloc.freezed.dart';

class ItemManagerBloc extends Bloc<ItemManagerEvent, ItemManagerState> {
  ItemManagerBloc(this._userUid, this._noteRepository)
    : super(const ItemManagerState.initial()) {
    on<ItemManagerEvent>(
      (event, emit) => switch (event) {
        _Add() => _addItem(event, emit),
        _Delete() => null,
        _Update() => null,
      },
    );
  }

  final NoteRepository _noteRepository;
  final UserUid? _userUid;

  Future<void> _addItem(_Add event, Emitter<ItemManagerState> emit) async {
    if (_userUid == null) return;
    await _noteRepository.create(
      NoteRequest(
        title: event.title,
        content: event.content,
        dateCreated: DateTime.now(),
      ),
      _userUid,
    );
  }
}
