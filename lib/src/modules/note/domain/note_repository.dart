import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/note.dart';
import 'package:donezy_app/src/modules/common/domain/models/note_request.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';

abstract interface class NoteRepository {
  Stream<Either<Failure, List<Note>>> watchAll(UserUid userUid);
  Stream<Either<Failure, Note>> watch(UserUid uid, String noteId);
  Future<Either<Failure, Unit>> create(NoteRequest request, UserUid uid);
  Future<Either<Failure, Unit>> delete(UserUid uid, String noteId);
  Future<Either<Failure, Unit>> update(
    NoteRequest request,
    UserUid uid,
    String noteId,
  );
}
