// ignore_for_file: avoid_classes_with_only_static_members

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/note.dart';
import 'package:donezy_app/src/modules/common/infrastructure/dto/notes/note_dto.dart';
import 'package:donezy_app/src/modules/common/infrastructure/exception/global_exception_handle.dart';

class AllNotesFirestoreHelpers {
  static Either<Failure, List<Note>> from(
    QuerySnapshot<Map<String, dynamic>> snapshot,
  ) {
    try {
      if (snapshot.docs.isEmpty) {
        return left(const Failure.notFound());
      }

      final notes = snapshot.docs.map(
        (doc) => NoteDTO.fromJson({...doc.data(), 'uid': doc.id}).toDomain(),
      );

      return right(notes.toList());
    } on Exception catch (exception) {
      return left(GlobalExceptionHandle.handle(exception));
    }
  }
}
