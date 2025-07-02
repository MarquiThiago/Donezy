// ignore_for_file: avoid_classes_with_only_static_members

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/note.dart';
import 'package:donezy_app/src/modules/common/infrastructure/dto/note_dto.dart';
import 'package:donezy_app/src/modules/common/infrastructure/exception/global_exception_handle.dart';

class NoteFirestoreHelpers {
  static Either<Failure, Note> from(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    try {
      if (!snapshot.exists) {
        return left(const Failure.notFound());
      }

      final data = snapshot.data();
      if (data == null) {
        return left(const Failure.notFound());
      }

      return right(NoteDTO.fromJson(data).toDomain());
    } on Exception catch (exception) {
      return left(GlobalExceptionHandle.handle(exception));
    }
  }
}
