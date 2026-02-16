import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/note.dart';
import 'package:donezy_app/src/modules/common/domain/models/note_request.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';
import 'package:donezy_app/src/modules/common/infrastructure/dto/request_note/note_request_dto.dart';
import 'package:donezy_app/src/modules/common/infrastructure/exception_handle.dart';
import 'package:donezy_app/src/modules/common/infrastructure/firebase/firestore_extension.dart';
import 'package:donezy_app/src/modules/common/infrastructure/firebase/firestore_helpers/all_notes_firestore_helper.dart';
import 'package:donezy_app/src/modules/common/infrastructure/firebase/firestore_helpers/note_firestore_helper.dart';
import 'package:donezy_app/src/modules/note/domain/note_repository.dart';

class NoteRepositoryImpl implements NoteRepository {
  NoteRepositoryImpl(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Stream<Either<Failure, Note>> watch(UserUid userUid, String noteId) {
    final doc = _firestore
        .noteDocument(userUid, noteId)
        .withConverter(
          fromFirestore: (snapshot, _) => NoteFirestoreHelpers.from(snapshot),
          toFirestore: (note, _) => {},
        );

    return doc.snapshots().map((event) {
      final Either<Failure<dynamic>, Note>? response = event.data();
      return response != null
          ? response.fold(left, right)
          : left(const Failure.notFound());
    });
  }

  @override
  Stream<Either<Failure, List<Note>>> watchAll(UserUid userUid) => _firestore
      .notesCollection(userUid)
      .snapshots()
      .map((querySnapshot) => AllNotesFirestoreHelpers.from(querySnapshot));

  @override
  Future<Either<Failure, Unit>> create(NoteRequest request, UserUid uid) =>
      exceptionHandler(
        execute: () async {
          final response = await _firestore
              .notesCollection(uid)
              .add(NoteRequestDTO.fromDomain(request).toJson());

          if (response.id.isEmpty) {
            throw Exception('Failed to create note');
          }

          return unit;
        },
      );

  @override
  Future<Either<Failure, Unit>> delete(UserUid uid, String noteId) =>
      exceptionHandler(
        execute: () async {
          await _firestore.noteDocument(uid, noteId).delete();
          return unit;
        },
      );

  @override
  Future<Either<Failure, Unit>> update(
    NoteRequest request,
    UserUid uid,
    String noteId,
  ) => exceptionHandler(
    execute: () async {
      await _firestore
          .noteDocument(uid, noteId)
          .update(NoteRequestDTO.fromDomain(request).toJson());
      return unit;
    },
  );
}
