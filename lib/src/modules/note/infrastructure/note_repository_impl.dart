import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/note.dart';
import 'package:donezy_app/src/modules/common/infrastructure/exception_handle.dart';
import 'package:donezy_app/src/modules/note/domain/note_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: NoteRepository)
class NoteRepositoryImpl implements NoteRepository {
  NoteRepositoryImpl(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<Failure, Note>> create() => exceptionHandler(
    execute: () {
      // TODO: implement delete
      throw UnimplementedError();
    },
  );

  @override
  Future<Either<Failure, Unit>> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> update() {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Note>> watch() {
    // TODO: implement watch
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, List<Note>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }
}
