// ignore_for_file: avoid_classes_with_only_static_members

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/user.dart';
import 'package:donezy_app/src/modules/common/infrastructure/dto/user_dto.dart';
import 'package:donezy_app/src/modules/common/infrastructure/exception/global_exception_handle.dart';

class UserFirestoreHelpers {
  static Either<Failure, User> userFromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    // Required for the extension to work on repositories
    // ignore: avoid-unused-parameters
    SnapshotOptions? options,
  ) {
    try {
      if (!snapshot.exists) {
        return left(const Failure.notFound());
      }
      final data = snapshot.data();

      if (data == null) {
        return left(
          Failure.invalidData(object: 'Data of user ${snapshot.id} is null'),
        );
      }
      return right(UserDTO.fromJson(data).toDomain());
    } on Exception catch (exception) {
      return left(GlobalExceptionHandle.handle(exception));
    }
  }
}
