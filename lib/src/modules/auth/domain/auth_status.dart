import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_status.freezed.dart';

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus.unauthenticated() = AuthStatusUnauthenticated;

  const factory AuthStatus.authenticated({required UserUid userUid}) =
      AuthStatusAuthenticated;

  const factory AuthStatus.failure({required Failure failure}) =
      AuthStatusFailure;
}
