// ignore_for_file: avoid_classes_with_only_static_members

import 'package:firebase_auth/firebase_auth.dart'
    show FirebaseAuthException, FirebaseException;
import 'package:flutter/services.dart';
import 'package:memo_app/src/modules/common/domain/failure/failure.dart';

abstract class GlobalExceptionHandle {
  static Failure handle(Object exception, [StackTrace? stackTrace]) {
    return switch (exception.runtimeType) {
      const (FirebaseException) => _handleFirebaseException(
        exception as FirebaseException,
      ),
      const (FirebaseAuthException) => _handleFirebaseAuthException(
        exception as FirebaseAuthException,
      ),
      const (PlatformException) => _handlePlatformException(
        exception as PlatformException,
      ),

      _ => Failure.unexpected(object: exception),
    };
  }

  static Failure _handleFirebaseException(FirebaseException e) {
    const Map<String, Failure> handle = {
      'not-found': Failure.notFound(),
      'permission-denied': Failure.permissionDenied(),
      'unavailable': Failure.unavailable(),
      'unauthorized': Failure.unauthorized(),
      'failed-precondition': Failure.badResponse(),
    };

    return handle[e.code] ?? Failure.unmappedFirebase(object: e);
  }

  static Failure _handleFirebaseAuthException(FirebaseAuthException e) {
    const Map<String, Failure> handle = {
      'invalid-email': Failure.invalidEmail(),
      'user-disabled': Failure.userDisabled(),
      'user-not-found': Failure.userNotFound(),
      'wrong-password': Failure.wrongPassword(),
      'requires-recent-login': Failure.requiresRecentLogin(),
      'admin-restricted-operation': Failure.adminBlockedOperation(),
      'email-already-in-use': Failure.emailAlreadyInUse(),
      'network-request-failed': Failure.networkRequestFailed(),
      'invalid-credential': Failure.invalidCredential(),
    };

    return handle[e.code] ?? Failure.unmappedFirebase(object: e);
  }

  static Failure _handlePlatformException(PlatformException e) {
    const Map<String, Failure> handle = {
      'UNAVAILABLE': Failure.unavailable(),
      'NOT_FOUND': Failure.notFound(),
      'sign_in_canceled': Failure.requestCanceled(),
      'sign_in_failed': Failure.googleSignIn(),
      'channel-error': Failure.googleChannelError(),
    };

    return handle[e.code] ?? Failure.unmappedBattery(object: e);
  }
}
