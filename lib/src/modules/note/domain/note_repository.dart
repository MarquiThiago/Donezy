import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/note.dart';

abstract interface class NoteRepository {
  Stream<Either<Failure, List<Note>>> watchAll();
  Stream<Either<Failure, Note>> watch();
  Future<Either<Failure, Note>> create();
  Future<Either<Failure, Unit>> delete();
  Future<Either<Failure, Unit>> update();
}
